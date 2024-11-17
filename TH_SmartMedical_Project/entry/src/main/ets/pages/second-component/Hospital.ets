import { router } from '@kit.ArkUI'
@Entry
@Component
struct Hospital {
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
          Text('附近医院').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      Scroll(){
        Column(){
          //part 2
          Search({ value: this.changeValue, placeholder: '查询附近医院' })
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

          //part 3
          Column(){
            //河南省中医院
            Row(){
              Image($rawfile('image/picture/heyi.jpg')).width(100).margin({left:10})
              Column({space:5}){
                Row(){
                  Text('河南省中医院').fontSize(16).margin({right:50}).fontWeight(600)
                }
                Row(){
                  Text('4.2公里 惠济区').fontSize(12).fontColor('#ff818080').margin({right:65})
                }
                Row(){
                  Text('三甲医院').fontSize(12).fontColor('#ff6161fa').margin({right:95})
                }
                Row(){
                  Text('公立  异地医保').fontSize(12).fontColor('#ff82f882').margin({right:70})
                }
              }
              .margin({left:5})
              Column({space:5}){
                Image($rawfile('icon/电话.png')).width(20)
                Text('电话').fontSize(12)
              }.margin({left:65})
              Column({space:5}){
                Image($rawfile('icon/路线.png')).width(20)
                Text('路线').fontSize(12)
              }.margin({left:5})
            }
            .width('100%')
            .backgroundColor(Color.White)
            .height(100)
            .margin({top:10})

            //郑州大学第一附属医院
            Row(){
              Image($rawfile('image/picture/zhengyi.jpg')).width(100).margin({left:10})
              Column({space:5}){
                Row(){
                  Text('郑州大学第一附属医院').fontSize(16).margin({right:50}).fontWeight(600)
                }
                Row(){
                  Text('11.9公里 五里堡商圈').fontSize(12).fontColor('#ff818080').margin({right:100})
                }
                Row(){
                  Text('三甲医院').fontSize(12).fontColor('#ff6161fa').margin({right:160})
                }
                Row(){
                  Text('全国综合医院权威榜  第19名').fontSize(12).fontColor('#ff82f882').margin({right:55})
                }
              }
              .width('55%')
              .margin({left:5})
              Column({space:5}){
                Image($rawfile('icon/电话.png')).width(20)
                Text('电话').fontSize(12)
              }.margin({right:1})
              Column({space:5}){
                Image($rawfile('icon/路线.png')).width(20)
                Text('路线').fontSize(12)
              }.margin({left:5})
            }
            .width('100%')
            .backgroundColor(Color.White)
            .height(100)
            .margin({top:10})

            //郑州医大医院
            Row(){
              Image($rawfile('image/picture/yida.jpg')).width(100).margin({left:10})
              Column({space:5}){
                Row(){
                  Text('郑州医大医院').fontSize(16).margin({right:110}).fontWeight(600)
                }
                Row(){
                  Text('10公里 花园路商圈').fontSize(12).fontColor('#ff818080').margin({right:110})
                }
                Row(){
                  Text('妇幼医院').fontSize(12).fontColor('#ff6161fa').margin({right:160})
                }
                Row(){
                  Text('医疗资质  女性生育评估').fontSize(12).fontColor('#ff82f882').margin({right:80})
                }
              }
              .margin({left:4})
              Column({space:5}){
                Image($rawfile('icon/电话.png')).width(20)
                Text('电话').fontSize(12)
              }.margin({left:5})
              Column({space:5}){
                Image($rawfile('icon/路线.png')).width(20)
                Text('路线').fontSize(12)
              }.margin({left:5})
            }
            .width('100%')
            .backgroundColor(Color.White)
            .height(100)
            .margin({top:10})

            //郑州三服堂国医馆
            Row(){
              Image($rawfile('image/picture/zhongyi.jpg')).width(100).margin({left:10})
              Column({space:5}){
                Row(){
                  Text('郑州三服堂国医馆').fontSize(16).margin({right:83}).fontWeight(600)
                }
                Row(){
                  Text('7.6公里 南阳路商圈').fontSize(12).fontColor('#ff818080').margin({right:105})
                }
                Row(){
                  Text('中医院').fontSize(12).fontColor('#ff6161fa').margin({right:175})
                }
                Row(){
                  Text('一客一消毒  无烟区').fontSize(12).fontColor('#ff82f882').margin({right:105})
                }
              }
              .width('55%')
              .margin({left:5})
              Column({space:5}){
                Image($rawfile('icon/电话.png')).width(20)
                Text('电话').fontSize(12)
              }.margin({right:1})
              Column({space:5}){
                Image($rawfile('icon/路线.png')).width(20)
                Text('路线').fontSize(12)
              }.margin({left:5})
            }
            .width('100%')
            .backgroundColor(Color.White)
            .height(100)
            .margin({top:10})

            Row(){
              Image($rawfile('image/picture/heyi.jpg')).width(100).margin({left:10})
              Column({space:5}){
                Row(){
                  Text('河南省中医院').fontSize(16).margin({right:50}).fontWeight(600)
                }
                Row(){
                  Text('4.2公里 惠济区').fontSize(12).fontColor('#ff818080').margin({right:65})
                }
                Row(){
                  Text('三甲医院').fontSize(12).fontColor('#ff6161fa').margin({right:95})
                }
                Row(){
                  Text('公立  异地医保').fontSize(12).fontColor('#ff82f882').margin({right:70})
                }
              }
              .margin({left:5})
              Column({space:5}){
                Image($rawfile('icon/电话.png')).width(20)
                Text('电话').fontSize(12)
              }.margin({left:65})
              Column({space:5}){
                Image($rawfile('icon/路线.png')).width(20)
                Text('路线').fontSize(12)
              }.margin({left:5})
            }
            .width('100%')
            .backgroundColor(Color.White)
            .height(100)
            .margin({top:10})

            Row(){
              Image($rawfile('image/picture/heyi.jpg')).width(100).margin({left:10})
              Column({space:5}){
                Row(){
                  Text('河南省中医院').fontSize(16).margin({right:50}).fontWeight(600)
                }
                Row(){
                  Text('4.2公里 惠济区').fontSize(12).fontColor('#ff818080').margin({right:65})
                }
                Row(){
                  Text('三甲医院').fontSize(12).fontColor('#ff6161fa').margin({right:95})
                }
                Row(){
                  Text('公立  异地医保').fontSize(12).fontColor('#ff82f882').margin({right:70})
                }
              }
              .margin({left:5})
              Column({space:5}){
                Image($rawfile('icon/电话.png')).width(20)
                Text('电话').fontSize(12)
              }.margin({left:65})
              Column({space:5}){
                Image($rawfile('icon/路线.png')).width(20)
                Text('路线').fontSize(12)
              }.margin({left:5})
            }
            .width('100%')
            .backgroundColor(Color.White)
            .height(100)
            .margin({top:10})

            Row(){
              Image($rawfile('image/picture/heyi.jpg')).width(100).margin({left:10})
              Column({space:5}){
                Row(){
                  Text('河南省中医院').fontSize(16).margin({right:50}).fontWeight(600)
                }
                Row(){
                  Text('4.2公里 惠济区').fontSize(12).fontColor('#ff818080').margin({right:65})
                }
                Row(){
                  Text('三甲医院').fontSize(12).fontColor('#ff6161fa').margin({right:95})
                }
                Row(){
                  Text('公立  异地医保').fontSize(12).fontColor('#ff82f882').margin({right:70})
                }
              }
              .margin({left:5})
              Column({space:5}){
                Image($rawfile('icon/电话.png')).width(20)
                Text('电话').fontSize(12)
              }.margin({left:65})
              Column({space:5}){
                Image($rawfile('icon/路线.png')).width(20)
                Text('路线').fontSize(12)
              }.margin({left:5})
            }
            .width('100%')
            .backgroundColor(Color.White)
            .height(100)
            .margin({top:10})

            Row(){
              Image($rawfile('image/picture/heyi.jpg')).width(100).margin({left:10})
              Column({space:5}){
                Row(){
                  Text('河南省中医院').fontSize(16).margin({right:50}).fontWeight(600)
                }
                Row(){
                  Text('4.2公里 惠济区').fontSize(12).fontColor('#ff818080').margin({right:65})
                }
                Row(){
                  Text('三甲医院').fontSize(12).fontColor('#ff6161fa').margin({right:95})
                }
                Row(){
                  Text('公立  异地医保').fontSize(12).fontColor('#ff82f882').margin({right:70})
                }
              }
              .margin({left:5})
              Column({space:5}){
                Image($rawfile('icon/电话.png')).width(20)
                Text('电话').fontSize(12)
              }.margin({left:65})
              Column({space:5}){
                Image($rawfile('icon/路线.png')).width(20)
                Text('路线').fontSize(12)
              }.margin({left:5})
            }
            .width('100%')
            .backgroundColor(Color.White)
            .height(100)
            .margin({top:10})
          }
          .height(1000)
        }
      }
      .height('96%')
      .scrollBar(BarState.Off)

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')
  }
}