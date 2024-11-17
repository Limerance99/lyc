import { SwiperComponent, SwiperData} from './SwiperComponent'
import { image } from '@kit.ImageKit'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  dataList : SwiperData[] = []
aboutToAppear(){
  this.dataList.push(new SwiperData($rawfile('image/consult/SM1 (1).jpg'), 'When I\'m gone', 'Eminem'))
  this.dataList.push(new SwiperData($rawfile('image/consult/SM1 (1).jpg'), 'Black Beatles', 'Rey'))
  this.dataList.push(new SwiperData($rawfile('image/consult/SM1 (1).jpg'), 'Galway Girl', 'Swift'))
}

build() {
    Column() {
      //轮播图
      SwiperComponent({swiperDataStr: JSON.stringify(this.dataList) }).margin({ top: 10 })

      List({ space: 10, initialIndex: 0 }) {
        ForEach(this.dataList, (item: SwiperData, index) => {
          ListItem() {
            Column() {
              Stack() {
                Image(item.pic_url).width(130).height(130)
                  .borderRadius(20)
                  .shadow({
                    radius: 100,
                    color: '#E0E0E0',
                    offsetX: 5,
                    offsetY: 10
                  })
              }
              Text(item.name).margin({ top: 15 }).fontWeight(FontWeight.Medium)
            }
          }.padding({ top: 15 })
        })
      }
      .listDirection(Axis.Horizontal)
      .edgeEffect(EdgeEffect.Spring)
      .width('100%')
      .height(200)

    }
    // .padding(24)
    .height('100%')
    .width('100%')
  }
}