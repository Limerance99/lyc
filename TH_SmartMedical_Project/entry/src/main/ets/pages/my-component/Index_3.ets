import { LengthMetrics } from "@kit.ArkUI"
import { router } from '@kit.ArkUI'
@Component
export struct Index_3 {

  @State isActiveWLAN: boolean = false
  @State isActiveBluetooth: boolean = false

  build() {
    Scroll(){
      Column() {
        //part1
        Column(){
          Row() {
            Column() {
              Image($rawfile('icon/my/火箭.png')).width(80).height(80)
            }
            .height(80)
            .width(80)
            .borderColor('#ffbab9b9')
            .borderRadius(50)
            .borderWidth(2)
            .justifyContent(FlexAlign.Center)

            Column(){
              Row(){
                Text('探险者').fontSize(25).margin({right:55})
              }
              Row(){
                Text('UID:194910011500').fontSize(15).fontColor('#ff7c7c7c').height(90)
              }
            }
            .height(50)
            .margin({left:20})

            Row(){
                Image($rawfile('icon/my/二维码.png'))
                  .width(25)
                  .height(25)
                  .margin({right:5})
                  .onClick(()=>{
                    router.pushUrl({
                      url:'pages/my-component/Erweima'
                    })
                  })

                Image($rawfile('icon/my/向右.png'))
                  .width(25)
                  .height(25)
                  .onClick(()=>{
                    router.pushUrl({
                      url:'pages/my-component/Erweima'
                    })
                  })

            }
            .width('95%')
            .position({x:'100%',y:'8%'})
            .markAnchor({x:50})
          }
          .width('100%')
          .margin({top:20})

          Row(){
            Column({space:10}){
              Image($rawfile('icon/my/我的关注.png')).width(30).height(30)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/my-component/Guanzhu'
                  })
                })
              Text('我的关注').fontSize(15)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/my-component/Guanzhu'
                  })
                })
            }
            Column({space:10}){
              Image($rawfile('icon/my/档案.png')).width(30).height(30)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/my-component/Dangan'
                  })
                })
              Text('我的档案').fontSize(15)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/my-component/Shoucang'
                  })
                })
            }
            Column({space:10}){
              Image($rawfile('icon/my/医生.png')).width(30).height(30)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/my-component/Mydoctor'
                  })
                })
              Text('我的医生').fontSize(15)
                .onClick(()=>{
                  router.pushUrl({
                    url:'pages/my-component/Mydoctor'
                  })
                })
            }
          }
          .width('90%')
          .margin({top:20})
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .height('17%')
        .backgroundColor('#8f8addff')
        .width('100%')
        .border({
          radius: { bottomLeft: 20, bottomRight: 20 },
        })

        //part 2
        Column(){
          Row(){
            Text('我的功能').fontSize(23).margin({left:10,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Image($rawfile('icon/my/钱包.png')).width(40).height(40)
              Text('我的钱包').fontSize(15)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/my-component/Qianbao'
              })
            })

            Column({space:10}){
              Image($rawfile('icon/my/预约信息.png')).width(40).height(40)
              Text('我的预约').fontSize(15)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/my-component/Myyuyue'
              })
            })

            Column({space:10}){
              Image($rawfile('icon/my/文件夹.png')).width(40).height(40)
              Text('我的报告').fontSize(15)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/my-component/Baogao'
              })
            })

            Column({space:10}){
              Image($rawfile('icon/my/订单.png')).width(40).height(40)
              Text('我的订单').fontSize(15)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/my-component/Mydingdan'
              })
            })

          }
          .width('100%')
          .margin({top:30})
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .backgroundColor('white')
        .width('95%')
        .height(150)
        .borderRadius(20)
        .margin({top:20})

        //part 3
        Column(){
          Row(){
            Text('其他功能').fontSize(23).margin({left:10,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Image($rawfile('icon/my/药物.png')).width(40).height(40)
              Text('药物推荐').fontSize(15)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/my-component/Yaowu'
              })
            })

            Column({space:10}){
              Image($rawfile('icon/my/就诊记录.png')).width(40).height(40)
              Text('就诊记录').fontSize(15)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/my-component/Jiuzhen'
              })
            })

            Column({space:10}){
              Image($rawfile('icon/my/医保卡.png')).width(40).height(40)
              Text('医保卡管理').fontSize(15)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/my-component/Yibaoka'
              })
            })

            Column({space:10}){
              Image($rawfile('icon/my/银行卡.png')).width(40).height(40)
              Text('银行卡管理').fontSize(15)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/my-component/Yinhangka'
              })
            })

          }
          .width('100%')
          .margin({top:20})
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .backgroundColor('white')
        .width('95%')
        .height(150)
        .borderRadius(20)
        .margin({top:10})

        //part4
        Column(){
          Row(){
            Image($rawfile('icon/my/个人信息设置.png')).width(20).margin({left:20})
            Column(){
              Text('个人信息设置').fontSize(20).margin({left:20})
            }
            Column(){
              Image($rawfile('icon/my/向右.png')).width(20).margin({left:140})
            }
          }.width('100%')
        }
        .backgroundColor('white')
        .width('98%')
        .height(50)
        .margin({top:20})
        .justifyContent(FlexAlign.Center)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/my-component/Geren'
          })
        })


        Column(){
          Row(){
            Image($rawfile('icon/my/账号管理.png')).width(20).margin({left:20})
            Column(){
              Text('账号与安全').fontSize(20).margin({left:20})
            }
            Column(){
              Image($rawfile('icon/my/向右.png')).width(20).margin({left:160})
            }
          }.width('100%')
        }
        .backgroundColor('white')
        .width('98%')
        .height(50)
        .margin({top:7})
        .justifyContent(FlexAlign.Center)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/my-component/Zhanghao'
          })
        })

        Column(){
          Row(){
            Image($rawfile('icon/my/应用设置.png')).width(20).margin({left:20})
            Column(){
              Text('应用设置').fontSize(20).margin({left:20})
            }
            Column(){
              Image($rawfile('icon/my/向右.png')).width(20).margin({left:180})
            }
          }.width('100%')
        }
        .backgroundColor('white')
        .width('98%')
        .height(50)
        .margin({top:7})
        .justifyContent(FlexAlign.Center)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/my-component/Yingyong'
          })
        })

        Column(){
          Row(){
            Image($rawfile('icon/my/投诉建议2.png')).width(20).margin({left:20})
            Column(){
              Text('投诉与建议').fontSize(20).margin({left:20})
            }
            Column(){
              Image($rawfile('icon/my/向右.png')).width(20).margin({left:160})
            }
          }.width('100%')
        }
        .backgroundColor('white')
        .width('98%')
        .height(50)
        .margin({top:7})
        .justifyContent(FlexAlign.Center)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/my-component/Tousu'
          })
        })

        Column(){
          Row(){
            Image($rawfile('icon/my/通知.png')).width(20).margin({left:20})
            Column(){
              Text('消息与通知').fontSize(20).margin({left:20})
            }
            Column(){
              Image($rawfile('icon/my/向右.png')).width(20).margin({left:160})
            }
          }.width('100%')
        }
        .backgroundColor('white')
        .width('98%')
        .height(50)
        .margin({top:7})
        .justifyContent(FlexAlign.Center)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/my-component/Xiaoxi'
          })
        })

        Button('退出登录',{type:ButtonType.Normal})
          .fontColor(Color.Black)
          .borderRadius(5)
          .width('90%')
          .backgroundColor('#8f8addff')
          .margin({top:10})
          .stateEffect(true)
          .onClick(()=>{
            router.pushUrl({
              url:'pages/Login'
            })
          })


      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .height(1200)
    .scrollBar(BarState.Off)

    }
}