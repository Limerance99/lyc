import { router } from '@kit.ArkUI'
@Entry
@Component
struct Zhuce {

  build() {
    Column(){
      Row(){
        Column(){
            Image($rawfile('icon/my/向左.png'))
              .width(30).height(30).margin({left:10}).colorFilter(Color.White)
              .onClick(()=>{
                router.back()
              })
        }
        Column(){
          Text('快速注册').fontSize(20).margin({left:115}).fontColor('#ff757373')
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      Column({space: 5}){
        TextInput({  placeholder: '注册账号'})//$$作用是输入不同的账号密码会随之变化
          .placeholderColor(Color.Grey)
          .placeholderFont({ size:16, weight: 500 })
          .caretColor(Color.Blue)
          .width('95%')
          .height(50)
          .fontSize(20)
          .backgroundColor(Color.White)
        Divider().width('89%').color('#ff150a0a')

        TextInput({  placeholder: '注册密码'})
          .type(InputType.Password)
          .placeholderColor(Color.Grey)
          .placeholderFont({ size:16, weight: 500 })
          .caretColor(Color.Blue)
          .width('95%')
          .height(50)
          .fontSize(20)
          .backgroundColor(Color.White)
        Divider().width('89%').color('#ff150a0a')


        Button('注          册', { type: ButtonType.Normal, stateEffect: true })
          .borderRadius(8)
          .backgroundColor('#1296DB')
          .width('89%')
          .onClick(() => {
            console.log('username:');

            router.back()
          })
          .margin({top:30})
      }
      .margin({top:50})

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')
  }
}