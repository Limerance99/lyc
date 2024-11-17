import { router } from '@kit.ArkUI'
@Entry
@Component
struct MoreDoctor {
  @State text: string = ''
  @State enterTypes: Array<EnterKeyType> =
    [EnterKeyType.Go, EnterKeyType.Search, EnterKeyType.Send, EnterKeyType.Done, EnterKeyType.Next,
      EnterKeyType.PREVIOUS, EnterKeyType.NEW_LINE]
  @State index: number = 0
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
          Text('医生列表').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      //part 2
      Scroll(){
        Column(){
          Row(){
            Image($rawfile('image/consult/touxiang 1.jpg')).width(70).margin({left:10})
            Column({space:10}){
              Row(){
                Text('赵医生').fontSize(20).margin({right:50})
              }
              Row(){
                Text('眼科 主治医师').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('咨询',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:66})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/zixun/Zixunzhao'
                  })
                })
            }
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(100)
          .margin({top:10})
          .border({
            radius: { bottomLeft: 20, bottomRight: 20 },
          })

          Row(){
            Image($rawfile('image/consult/touxiang 2.jpg')).width(70).margin({left:10})
            Column({space:10}){
              Row(){
                Text('约翰医生').fontSize(20).margin({right:65})
              }
              Row(){
                Text('神经外科 主任医师').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('咨询',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:30})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/zixun/Zixunjohn'
                  })
                })
            }

          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(100)
          .margin({top:5})
          .border({
            radius: { bottomLeft: 20, bottomRight: 20 },
          })

          Row(){
            Image($rawfile('image/consult/touxiang 3.jpg')).width(70).margin({left:10})
            Column({space:10}){
              Row(){
                Text('布朗医生').fontSize(20).margin({right:65})
              }
              Row(){
                Text('口腔科 副主任医师').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('咨询',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:30})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/zixun/ZixunBrown'
                  })
                })
            }
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(100)
          .margin({top:5})
          .border({
            radius: { bottomLeft: 20, bottomRight: 20 },
          })

          Row(){
            Image($rawfile('image/consult/touxiang 4.jpg')).width(70).margin({left:10})
            Column({space:10}){
              Row(){
                Text('泰勒医生').fontSize(20).margin({right:35})
              }
              Row(){
                Text('骨科 主治医师').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('咨询',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:65})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/zixun/Zixunliu'
                  })
                })
            }
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(100)
          .margin({top:5})
          .border({
            radius: { bottomLeft: 20, bottomRight: 20 },
          })

          Row(){
            Image($rawfile('image/consult/touxiang 5.jpg')).width(70).margin({left:10})
            Column({space:10}){
              Row(){
                Text('刘医生').fontSize(20).margin({right:70})
              }
              Row(){
                Text('儿科 副主任医师').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('咨询',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:47})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/zixun/ZixunTaylor'
                  })
                })
            }
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(100)
          .margin({top:5})
          .border({
            radius: { bottomLeft: 20, bottomRight: 20 },
          })

          Row(){
            Image($rawfile('image/consult/touxiang  6.jpg')).width(70).margin({left:10})
            Column({space:10}){
              Row(){
                Text('孙医生').fontSize(20).margin({right:70})
              }
              Row(){
                Text('消化科 主任医师').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('咨询',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:47})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/zixun/Zixunzhao'
                  })
                })
            }
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(100)
          .margin({top:5})
          .border({
            radius: { bottomLeft: 20, bottomRight: 20 },
          })

          Row(){
            Image($rawfile('image/consult/touxiang  7.jpg')).width(70).margin({left:10})
            Column({space:10}){
              Row(){
                Text('王医生').fontSize(20).margin({right:70})
              }
              Row(){
                Text('康复科 主治医师').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('咨询',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:47})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/zixun/Zixunzhao'
                  })
                })
            }
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(100)
          .margin({top:5})
          .border({
            radius: { bottomLeft: 20, bottomRight: 20 },
          })

          Row(){
            Image($rawfile('image/consult/touxiang  8.jpg')).width(70).margin({left:10})
            Column({space:10}){
              Row(){
                Text('戴维医生').fontSize(20).margin({right:70})
              }
              Row(){
                Text('肿瘤科 副主任医师').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('咨询',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:27})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/zixun/Zixunzhao'
                  })
                })
            }
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(100)
          .margin({top:5})
          .border({
            radius: { bottomLeft: 20, bottomRight: 20 },
          })
        }
        .height(1000)
      }
      .scrollBar(BarState.Off)
      .height('96%')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')
  }
}