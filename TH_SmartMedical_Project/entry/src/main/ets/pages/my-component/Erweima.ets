import { router, Router } from '@kit.ArkUI'

@Entry
@Component
struct Erweima {
  build() {
    Column(){

      //part 1 顶部
      Row(){
        Image($rawfile('icon/my/向左.png')).width(30).height(30).margin({left:10})
          .onClick(()=>{
            router.back()
        })

        Image($rawfile('icon/my/更多.png')).width(25).height(25).margin({right:10})
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      //part 2 头像名称
      Row(){
        Column() {
          Image($rawfile('icon/my/火箭.png')).width(60).height(60)
        }
        .height(60)
        .width(60)
        .borderColor('#ffbab9b9')
        .borderRadius(50)
        .borderWidth(2)
        .justifyContent(FlexAlign.Center)

        Column(){
          Row(){
            Text('探险者').fontSize(23).margin({right:5})
          }
          Row(){
            Text('河南  郑州').fontSize(15).fontColor('#ff7c7c7c').height(90)
          }
        }
        .height(50)
        .margin({left:20})
      }
      .width('100%')
      .margin({left:100,top:80})

      //part 3 二维码
      Row(){
        Image($rawfile('icon/my/erweima.png')).width('70%').margin({top:50})
      }

      //part 4
      Row(){
        Text('扫一扫上面的二维码图片，加我为朋友').margin({top:30}).fontSize(13).fontColor('#ffbebcbc')
      }

      //part 5
      Row(){
        Text('扫一扫   |   换个样式   |   保存图片').fontSize(15).fontColor('#ff3d66f5')
      }
      .width('100%')
      .height(350)
      .justifyContent(FlexAlign.Center)
    }

  }
}