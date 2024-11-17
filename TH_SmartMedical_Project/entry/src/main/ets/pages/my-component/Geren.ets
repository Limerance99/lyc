import { router } from '@kit.ArkUI'
@Entry
@Component
struct Geren {

  build() {
    Column(){
      Row(){
        Column(){
          Image($rawfile('icon/my/向左.png')).width(30).height(30).margin({left:10})
            .onClick(()=>{
              router.back()
            })
        }
        Column(){
          Text('个人信息设置').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')

  }
}