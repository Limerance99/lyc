import { image } from '@kit.ImageKit'
import { router } from '@kit.ArkUI'

@Entry
@Component
struct Login {
  @State username:string='pathfinder'
  @State password:string='123456'

  build() {
    Column(){
      //part1 logo
      Column(){
        Image($rawfile('image/logo.png'))
          .width(100).height(100).margin({top:50})
        Text('Smart Medical')
          .margin({top:25})
          .fontSize(30).fontColor('#1296DB').fontWeight(600)
        Text('医次元之家')
          .margin({top:2})
          .fontSize(18).fontColor('#1296DB').fontWeight(600)
      }
      .width('100%')

      //part2 login-from
      Column({space: 5}){
        TextInput({  placeholder: '手机号/用户名/邮箱',text:$$this.username})//$$作用是输入不同的账号密码会随之变化
          .placeholderColor(Color.Grey)
          .placeholderFont({ size:16, weight: 500 })
          .caretColor(Color.Blue)
          .width('95%')
          .height(50)
          .fontSize(20)
          .backgroundColor(Color.White)
        Divider().width('89%').color('#ff150a0a')

        TextInput({  placeholder: '密码',text:$$this.password})
          .type(InputType.Password)
          .placeholderColor(Color.Grey)
          .placeholderFont({ size:16, weight: 500 })
          .caretColor(Color.Blue)
          .width('95%')
          .height(50)
          .fontSize(20)
          .backgroundColor(Color.White)
        Divider().width('89%').color('#ff150a0a')

        Row(){
          Text('忘记密码')
            .fontSize(15).fontColor('#1296DB')
            .onClick(()=>{
              router.pushUrl({
                url:'pages/Wangji'
              })
            })
          Text('快速注册')
            .fontSize(15).fontColor('#1296DB')
            .onClick(()=>{
              router.pushUrl({
                url:'pages/Zhuce'
              })
            })
        }
        .width('89%')
        .justifyContent(FlexAlign.SpaceBetween)
        .margin({top:10})

        Button('登          录', { type: ButtonType.Normal, stateEffect: true })
          .borderRadius(8)
          .backgroundColor('#1296DB')
          .width('89%')
          .onClick(() => {
            console.log('username:',this.username,'password:',this.password);

            router.pushUrl({
              url:'pages/Main'
            })
          })
          .margin({bottom:50})

        Column(){
          Row(){
            Divider().width('20%').color('#666666')
            Text('其他登录方式').fontSize(14).fontColor('#999999').width(130).textAlign(TextAlign.Center)
            Divider().width('20%').color('#666666')
          }
          .margin({top:60})
          Row(){
            Image($rawfile('icon/微信.png')).width(25)
            Image($rawfile('icon/apple.png')).width(25)
            Image($rawfile('icon/抖音.png')).width(25)
            Image($rawfile('icon/QQ.png')).width(25)
          }
          .width('60%')
          .margin({top:10})
          .justifyContent(FlexAlign.SpaceEvenly)

        }
        .height('30%')
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}