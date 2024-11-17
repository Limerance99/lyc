import { router } from '@kit.ArkUI'
@Entry
@Component
struct Guahao {

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
          Text('预约挂号').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      Scroll(){
        Column(){
          //中医
          Text('中医').fontSize(30).fontWeight(500).width('100%').margin({top:10})
          Row(){
            Image($rawfile('image/consult/hua.png')).width(60).margin({left:10})
            Column({space:10}){
              Row(){
                Text('华佗').fontSize(20).margin({right:110})
              }
              Row(){
                Text('外科针灸 外科鼻祖').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:40})
                .fontSize(20)
                .fontColor(Color.Black)
            }
            .onClick(()=> {
              router.pushUrl({
                url: 'pages/second-component/Yuyue'
              })
            })
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(100)
          .margin({top:10})
          .border({
            radius: { bottomLeft: 20, bottomRight: 20 },
          })

          Row(){
            Image($rawfile('image/consult/zhang.png')).width(60).margin({left:10})
            Column({space:10}){
              Row(){
                Text('张仲景').fontSize(20).margin({right:20})
              }
              Row(){
                Text('内科 医圣').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:110})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=> {
                  router.pushUrl({
                    url: 'pages/second-component/Yuyue'
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
            Image($rawfile('image/consult/bian.png')).width(60).margin({left:10})
            Column({space:10}){
              Row(){
                Text('扁鹊').fontSize(20).margin({right:70})
              }
              Row(){
                Text('内外兼修 医祖').fontSize(18).fontColor('#ff818080')
              }
            }
            .margin({left:20})
            Row(){
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:80})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=> {
                  router.pushUrl({
                    url: 'pages/second-component/Yuyue'
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
          //西医
          Text('西医').fontSize(30).fontWeight(500).width('100%').margin({top:10})
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
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:66})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=> {
                  router.pushUrl({
                    url: 'pages/second-component/Yuyue'
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
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:30})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=> {
                  router.pushUrl({
                    url: 'pages/second-component/Yuyue'
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
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:30})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=> {
                  router.pushUrl({
                    url: 'pages/second-component/Yuyue'
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
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:65})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=> {
                  router.pushUrl({
                    url: 'pages/second-component/Yuyue'
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
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:47})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=> {
                  router.pushUrl({
                    url: 'pages/second-component/Yuyue'
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
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:47})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=> {
                  router.pushUrl({
                    url: 'pages/second-component/Yuyue'
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
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:47})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=> {
                  router.pushUrl({
                    url: 'pages/second-component/Yuyue'
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
              Button('预约',{type:ButtonType.Normal})
                .backgroundColor('#ff7ad4ff')
                .borderRadius(20)
                .width(100)
                .height(50)
                .margin({left:27})
                .fontSize(20)
                .fontColor(Color.Black)
                .onClick(()=> {
                  router.pushUrl({
                    url: 'pages/second-component/Yuyue'
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
        .height(1500)
      }
      .scrollBar(BarState.Off)
      .height('96%')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')

  }
}