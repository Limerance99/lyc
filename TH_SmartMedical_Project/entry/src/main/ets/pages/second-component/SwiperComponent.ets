@Component
export struct SwiperComponent {
  @State currentIndex: number = 0;
  @Prop swiperDataStr: string;
  @State swiperData: SwiperData[] = [];
  private halfCount: number = Math.floor(3 / 2)
  private manualSlidingDuration = 800
  private automaticSlidingDuration = 300
  private automaticSwitchTime = 5000

  aboutToAppear() {
    this.swiperData = JSON.parse(this.swiperDataStr)
    this.currentIndex = this.halfCount
    setInterval(() => {
      this.startAnimation(true, this.manualSlidingDuration)
    }, this.automaticSwitchTime)
  }

  aboutToDisappear() {
    clearInterval()
  }

  getOffSetX(index: number): number {
    let offsetIndex: number = this.getImgCoefficients(index);
    let tempOffset: number = Math.abs(offsetIndex)
    let offsetX: number = 0;

    if (tempOffset === 1) {
      offsetX = -25 * offsetIndex;
    }

    return offsetX
  }

  getImgCoefficients(index: number) {
    let coefficient: number = this.currentIndex - index;
    let tempCoefficient: number = Math.abs(coefficient)

    if (tempCoefficient <= this.halfCount) {
      return coefficient
    }

    let dataLength: number = this.swiperData.length
    let tempOffset: number = dataLength - tempCoefficient

    if (tempOffset <= this.halfCount) {
      if (coefficient > 0) {
        return -tempOffset;
      }
      return tempOffset
    }
    return 0
  }

  startAnimation(isLeft: boolean, duration: number): void {
    animateTo({ duration: duration }, () => {
      let dataLength: number = this.swiperData.length
      let tempIndex: number = isLeft ? this.currentIndex + 1 : this.currentIndex - 1 + dataLength
      this.currentIndex = tempIndex % dataLength
    })
  }

  build() {
    Column() {
      Stack() {
        ForEach(this.swiperData, (item: SwiperData, index: number) => {
          Stack() {
            Image(item.pic_url).objectFit(ImageFit.Cover)
              .width('100%').height('100%')
              .borderRadius(10)
          }
          .backgroundColor(Color.White)
          .borderRadius(8)
          .offset({
            x: this.getOffSetX(index),
            y: 0
          })
          .blur(index !== this.currentIndex ? 12 : 0)
          .zIndex(index !== this.currentIndex && this.getImgCoefficients(index) === 0 ?
            0 : 2 - Math.abs(this.getImgCoefficients(index)))
          .width(330)
          .height(index !== this.currentIndex ? 150 : 180)
        })
      }
      .height(200)
      .width('100%')
      .gesture(
        PanGesture({ direction: PanDirection.Horizontal })
          .onActionStart((event: GestureEvent) => {
            this.startAnimation(event.offsetX < 0, this.automaticSlidingDuration)
          })
      ).alignContent(Alignment.Center)
    }
    .width('100%')
  }
}


    export class SwiperData {
      pic_url: Resource
      name: string
      singer: string

      constructor(pic_url: Resource, name: string, singer: string) {
        this.pic_url = pic_url
        this.name = name
        this.singer = singer
      }
    }

