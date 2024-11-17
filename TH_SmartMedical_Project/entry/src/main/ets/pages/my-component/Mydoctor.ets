import { router } from '@kit.ArkUI'
@Entry
@Component
struct Mydoctor {

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
          Text('我的医生').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      //part 2
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
          Button('咨询',{type:ButtonType.Normal})
            .backgroundColor('#ff7ad4ff')
            .borderRadius(20)
            .width(100)
            .height(50)
            .margin({left:40})
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
      .margin({top:5})





    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')
  }
}