import { router } from '@kit.ArkUI'
@Entry
@Component
struct Zixun {
  @State changeValue: string = ''
  @State submitValue: string = ''

  build() {
    Column(){
      //part 1
      Row(){
        Column(){
          Image($rawfile('icon/my/向左.png')).width(30).height(30).margin({left:10})
            .onClick(()=>{
              router.back()
            })
        }
        Column(){
          Text('咨询').fontSize(20).margin({left:140})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      //
      Row(){
        Image($rawfile('image/consult/yisheng (1).jpg'))
          .width('100').height('88%').margin({left:10})
        Column(){
          Row(){
            Text('赵医生').fontSize(27).margin({left:20,bottom:10})
            Text('主治医师').fontSize(20).margin({left:20,bottom:10}).fontColor('#ff5b5b5b')

          }
          Text('复旦大学附属华山医院').fontSize(15)
          Row(){
            Text('病友推荐：8.5').fontSize(15).fontColor('#ff5b5b5b')
            Text('接诊量：67').fontSize(15).margin({left:15}).fontColor('#ff5b5b5b')
          }
          .margin({top:15,left:20})

          Row(){
            Text('眼科').fontSize(18).fontColor(Color.Blue).margin({left:20,top:2})
          }.backgroundColor('#ff68fc9f')
          .borderRadius(10).width('20%').height('20%')
          .margin({top:10})
        }
      }
      .width('100%')
      .height('20%')
      .backgroundColor('#ff7ad4ff')
      .border({
        radius: { bottomLeft: 20, bottomRight: 20 },
      })

      //part 2
      Scroll(){
        Column(){
          Text('2024年11月11日 14:23').fontSize(15).fontColor('#ffbabbbc').margin({top:10})
          //我
          Row(){
            Row(){
              Text('赵医生你好，我想问您一些问题您有时间吗？').fontSize(15).fontColor(Color.White).margin({left:10})
            }.backgroundColor('#ff4774fd').width('70%').height('5%')
            .borderRadius(10).margin({right:10})
            Image($rawfile('image/consult/touxiang2.png')).width(60).borderWidth(2).borderRadius(50).borderColor('#ffe2e1e1')
          }.margin({left:150,top:10})

          //AI
          Row(){
            Image($rawfile('image/consult/touxiang 1.jpg')).width(50).borderWidth(4).borderRadius(50).borderColor('#ffe2e1e1')
            Row(){
              Text('您好，我有时间，有什么问题请问。').fontSize(15).fontColor(Color.Black).margin({left:10})
            }.backgroundColor(Color.White).width('100%').height('3%')
            .borderRadius(10).margin({left:10})
          }.margin({right:100,top:10})

          //我
          Row(){
            Row(){
              Text('我最近在学校眼睛总是疼为什么啊？').fontSize(15).fontColor(Color.White).margin({left:10})
            }.backgroundColor('#ff4774fd').width('70%').height('5%')
            .borderRadius(10).margin({right:10})
            Image($rawfile('image/consult/touxiang2.png')).width(60).borderWidth(2).borderRadius(50).borderColor('#ffe2e1e1')
          }.margin({left:150,top:10})

          //AI
          Row(){
            Image($rawfile('image/consult/touxiang 1.jpg')).width(50).borderWidth(4).borderRadius(50).borderColor('#ffe2e1e1')
            Row(){
              Text('可能是用眼过度。长时间看电子屏幕、阅读或者在光线不好的环境下用眼，会使眼睛疲劳、干涩，进而疼痛。比如很多人一整天都对着电脑。').fontSize(15).fontColor(Color.Black).margin({left:10,top:10})
            }.backgroundColor(Color.White).width('100%').height('9%')
            .borderRadius(10).margin({left:10})
          }.margin({right:100,top:10})

          //我
          Row(){
            Row(){
              Text('那我应该怎么样才能缓解眼睛疲劳啊？').fontSize(15).fontColor(Color.White).margin({left:10})
            }.backgroundColor('#ff4774fd').width('70%').height('5%')
            .borderRadius(10).margin({right:10})
            Image($rawfile('image/consult/touxiang2.png')).width(60).borderWidth(2).borderRadius(50).borderColor('#ffe2e1e1')
          }.margin({left:150,top:10})

          //AI
          Row(){
            Image($rawfile('image/consult/touxiang 1.jpg')).width(50).borderWidth(4).borderRadius(50).borderColor('#ffe2e1e1').margin({bottom:250})
            Row(){
              Text('首先要注意让眼睛充分休息。遵循“20 - 20 - 20”原则，即每看电子屏幕20分钟，就向20英尺（约6米）以外的地方看至少20秒。同时，减少连续阅读或使用电子设备的时间。\n' +
                ' \n' +
                '调整环境光线也很重要。确保阅读和工作环境的光线柔和、均匀，避免在过亮或过暗的地方用眼。如果是使用电子设备，可适当调节屏幕亮度、对比度和色温，减少眼睛的负担。\n' +
                ' \n' +
                '还可以使用人工泪液来缓解眼睛干涩。选择不含防腐剂的人工泪液，按说明书使用，能为眼睛补充水分，减轻干涩和疼痛。另外，用温热的毛巾敷眼，每次10 - 15分钟，也可以促进眼部血液循环，缓解眼部疲劳。').fontSize(15).fontColor(Color.Black).margin({left:10,top:10})
            }.backgroundColor(Color.White).width('100%').height('34%')
            .borderRadius(10).margin({left:10})
          }.margin({right:100,top:10})



        }.height(1000)
      }.height('70%').scrollBar(BarState.Off)





      //part 3
      Search({ value: this.changeValue, placeholder: '问医生' })
        .searchButton('发送')
        .searchIcon({
          src: $rawfile('icon/second/搜索.png')
        })
        .cancelButton({
          style: CancelButtonStyle.CONSTANT,
          icon: {
            src: $rawfile('icon/second/叉号.png')
          }
        })
        .width('95%')
        .height(50)
        .maxLength(20)
        .backgroundColor(Color.White)
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 15, weight: 400 })
        .textFont({ size: 14, weight: 400 })
        .onSubmit((value: string) => {
          this.submitValue = value
        })
        .onChange((value: string) => {
          this.changeValue = value
        })
        .margin(1)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')
  }
}