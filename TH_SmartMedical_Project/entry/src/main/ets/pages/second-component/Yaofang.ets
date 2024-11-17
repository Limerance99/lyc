import { router } from '@kit.ArkUI'
@Entry
@Component
struct Yaofang {

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
          Text('智慧药房').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      Scroll(){
        Column(){
          //part 2
          Search({ value: this.changeValue, placeholder: '搜索药品' })
            .searchButton('搜索')
            .searchIcon({
              src: $rawfile('icon/second/搜索.png')
            })
            .cancelButton({
              style: CancelButtonStyle.CONSTANT,
              icon: {
                src: $rawfile('icon/second/叉号.png')
              }
            })
            .width('90%')
            .height(40)
            .maxLength(20)
            .backgroundColor(Color.White)
            .placeholderColor(Color.Grey)
            .placeholderFont({ size: 14, weight: 400 })
            .textFont({ size: 14, weight: 400 })
            .onSubmit((value: string) => {
              this.submitValue = value
            })
            .onChange((value: string) => {
              this.changeValue = value
            })
            .margin(20)

          //part 3 药品种类
          Column(){

            Row(){
              Column({space:10}){
                Image($rawfile('image/picture/baojian.png')).width(65)
                Text('保健品').fontSize(17)
              }.margin({right:40})
              Column({space:10}){
                Image($rawfile('image/picture/xinzang.png')).width(65)
                Text('心脏药').fontSize(17)
              }.margin({right:20})
              Column({space:10}){
                Image($rawfile('image/picture/ganmao.png')).width(65)
                Text('感冒药').fontSize(17)
              }.margin({left:20})
              Column({space:10}){
                Image($rawfile('image/picture/guomin.png')).width(65)
                Text('过敏药').fontSize(17)
              }.margin({left:40})
            }.margin({top:10})

            Row(){
              Column({space:10}){
                Image($rawfile('image/picture/changwei.png')).width(65)
                Text('肠胃药').fontSize(17)
              }.margin({right:40})
              Column({space:10}){
                Image($rawfile('image/picture/ertong.png')).width(65)
                Text('儿童药').fontSize(17)
              }.margin({right:20})
              Column({space:10}){
                Image($rawfile('image/picture/guke.png')).width(65)
                Text('骨科药').fontSize(17)
              }.margin({left:20})
              Column({space:10}){
                Image($rawfile('image/picture/pifu.png')).width(65)
                Text('皮肤药').fontSize(17)
              }.margin({left:40})
            }.margin({top:25})
          }
          .width('100%')
          .height('28%')
          .backgroundColor(Color.White)

          //part4  咨询贴士
          Row(){
            Column(){
              Text('【温馨提示】不了解自己什么病情？不知道该吃什么药？咨询一下医生吧！')
                .fontSize(17).margin({left:5})
            }.width('65%')

            Row(){
              Button('去咨询',{type:ButtonType.Normal})
                .backgroundColor('#ff50bef3')
                .borderRadius(20)
                .width(100)
                .margin({left:10})
                .height(50)
                .fontSize(20)
                .fontColor(Color.White)
            }
          }
          .width('95%')
          .height('10%')
          .margin({top:10})
          .backgroundColor('#ffb4e3fa')
          .borderRadius(20)

          //part 5 药品信息
          Column(){
            Row(){
              Column(){
                Image($rawfile('image/picture/fanshilin.png')).width(120)
                Column({space:10}){
                  Text('凡士林   100mL').fontSize(17).fontWeight(600)
                  Text('治疗干燥性湿疹').fontSize(15).fontColor('#8a8a8a')
                  Text('￥22.5元').fontSize(17)
                }
                .margin({top:5})
              }
              .width('48%')
              .height('100%')
              .backgroundColor(Color.White)
              .borderRadius(5)

              Column(){
                Image($rawfile('image/picture/huoxiang.png')).width(140).margin({top:20})
                Column({space:10}){
                  Text('藿香正气水 10mL*10').fontSize(16).fontWeight(600).width('100%').margin({left:5})
                  Text('治疗灰指甲').fontSize(15).fontColor('#8a8a8a')
                  Text('￥23.8元').fontSize(17)
                }
                .margin({top:10})
              }
              .width('48%')
              .height('100%')
              .backgroundColor(Color.White)
              .margin({left:10})
              .borderRadius(5)
            }
            .width('95%')
            .height('20%')
            .margin({top:10})

            Row(){
              Column(){
                Image($rawfile('image/picture/ada.png')).width(140).margin({top:10})
                Column({space:10}){
                  Text('阿达帕林凝胶  30g').fontSize(17).fontWeight(600)
                  Text('治疗痤疮').fontSize(15).fontColor('#8a8a8a')
                  Text('￥35元').fontSize(17)
                }
                .margin({top:5})
              }
              .width('48%')
              .height('100%')
              .backgroundColor(Color.White)
              .borderRadius(5)

              Column(){
                Image($rawfile('image/picture/xigua.png')).width(120).margin({top:3})
                Column({space:10}){
                  Text('桂林西瓜霜  3.5g').fontSize(17).fontWeight(600)
                  Text('治疗口腔溃疡').fontSize(15).fontColor('#8a8a8a')
                  Text('￥15元').fontSize(17)
                }
                .margin({top:5})
              }
              .width('48%')
              .height('100%')
              .backgroundColor(Color.White)
              .margin({left:10})
              .borderRadius(5)
            }
            .width('95%')
            .height('20%')
            .margin({top:10})

          }.width('100%')
          .height(1000)
        }
      }
      .height('96%')
      .scrollBar(BarState.Off)

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#fff5f5f5')
  }
}