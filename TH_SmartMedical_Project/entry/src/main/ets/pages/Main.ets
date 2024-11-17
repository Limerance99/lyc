import { Index }from './main-component/Index'
import { Index_2 }from './second-component/Consult'
import { Index_3 }from './my-component/Index_3'
@Entry
@Component
struct Main {
  @State currentIndex: number = 0
  @Builder
  tabBuilder(index: number, defIcon: string, actIcon: string, name: string) {
    Column({space : 5}) {
      Image($rawfile(this.currentIndex == index ? actIcon : defIcon)).width(25)
      Text(name).fontSize(15).fontColor(this.currentIndex == index ? '#124EC4' : '#666666')
    }.width('100%')
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, index: this.currentIndex }) {
        TabContent() {
          //将Index组件引入到Main中，形成父子组件
          Index()
        }
        .backgroundColor('#ffefeeee')
        .tabBar(this.tabBuilder(0, 'icon/首页.png','icon/首页2.png','首页'))

        TabContent() {
          Index_2()
        }
        .backgroundColor('#ffefeeee')
        .tabBar(this.tabBuilder(1,'icon/资讯.png','icon/资讯2.png', '资讯'))

        TabContent() {
          Index_3()
        }
        .backgroundColor('#ffefeeee')
        .tabBar(this.tabBuilder(2, 'icon/我的.png','icon/我的2.png','我的'))
      }

      .width(360)
      .height('100%')
      .barMode(BarMode.Fixed)
      .scrollable(false)
      .animationDuration(0)
      .onChange((index: number) => {
        this.currentIndex = index
      })
    }.width('100%').height('100%')
  }

}