@Component
export struct Consulation{
  build() {
    Column(){
      Row(){
        Column({space:10}){
          Row(){
            Text('2024-11-12 15:00').fontSize(16).margin({right:50})
          }
          Row(){
            Text('咨询医生：约翰 主任医生').fontSize(16).margin({right:5})
          }
          Row(){
            Text('咨询类型：神经外科').fontSize(16).margin({right:40})
          }
          Row(){
            Text('咨询人：刘一谌').fontSize(16).margin({right:73})
          }
        }
        .margin({left:20})

        Column({space:10}){
          Text('正在咨询').fontSize(16).fontColor('#fff84242').margin({left:90})
          Text('￥18.9').fontSize(16).fontWeight(600).margin({left:85})
        }
        .margin({bottom:60})
      }
      .width('100%')
      .backgroundColor(Color.White)
      .height(130)


      Row(){
        Column({space:10}){
          Row(){
            Text('2024-10-23 17:00').fontSize(16).margin({right:92})
          }
          Row(){
            Text('咨询医生：布朗 副主任医生').fontSize(16).margin({right:30})
          }
          Row(){
            Text('咨询类型：口腔科').fontSize(16).margin({right:98})
          }
          Row(){
            Text('咨询人：贾金奥').fontSize(16).margin({right:115})
          }
        }
        .margin({left:20})

        Column({space:10}){
          Text('已完成').fontSize(16).fontColor('#ff4cf67d').margin({left:60})
          Text('￥27.9').fontSize(16).fontWeight(600).margin({left:60})
        }
        .margin({bottom:60})
      }
      .width('100%')
      .backgroundColor(Color.White)
      .height(130)
      .margin({top:10})


      Row(){
        Column({space:10}){
          Row(){
            Text('2024-11-9 10:00').fontSize(16).margin({right:60})
          }
          Row(){
            Text('咨询医生：泰勒 主治医生').fontSize(16).margin({right:5})
          }
          Row(){
            Text('咨询类型：骨科').fontSize(16).margin({right:74})
          }
          Row(){
            Text('咨询人：尤馨雨').fontSize(16).margin({right:75})
          }
        }
        .margin({left:20})

        Column({space:10}){
          Text('已完成').fontSize(16).fontColor('#ff4cf67d').margin({left:100})
          Text('￥36.9').fontSize(16).fontWeight(600).margin({left:100})
        }
        .margin({bottom:60})
      }
      .width('100%')
      .backgroundColor(Color.White)
      .height(130)
      .margin({top:10})
    }
  }

}