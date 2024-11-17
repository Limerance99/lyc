@Component
export struct Register{
  build() {
    Column(){
      Row(){
        Column({space:10}){
          Text('2024-10-13 9:30').fontSize(16).margin({right:170})
          Text('预约医生：赵医生').fontSize(16).margin({right:165})
          Text('预约科室：复旦大学附属华山医院 眼科').fontSize(16).margin({right:19})
          Text('就诊人：刘一谌').fontSize(16).margin({right:185})
        }
        .margin({left:20})

        Column({space:10}){
          Text('已支付').fontSize(16).fontColor('#ff4cf67d').margin({left:15})
          Text('￥309').fontSize(16).fontWeight(600).margin({left:13})
        }
        .margin({bottom:60})
      }
      .width('100%')
      .backgroundColor(Color.White)
      .height(130)


      Row(){
        Column({space:10}){
          Text('2024-9-21 15:00').fontSize(16).margin({right:185})
          Text('预约医生：布朗医生').fontSize(16).margin({right:165})
          Text('预约科室：四川大学华西医院 口腔科').fontSize(16).margin({right:50})
          Text('就诊人：贾金奥').fontSize(16).margin({right:200})
        }
        .margin({left:20})

        Column({space:10}){
          Text('未支付').fontSize(16).fontColor('#fff84242').margin({right:16})
          Text('￥289').fontSize(16).fontWeight(600).margin({right:17})
        }
        .margin({bottom:60})
      }
      .width('100%')
      .backgroundColor(Color.White)
      .height(130)
      .margin({top:10})


      Row(){
        Column({space:10}){
          Text('2024-11-11 8:00').fontSize(16).margin({right:185})
          Text('预约医生：泰勒医生').fontSize(16).margin({right:165})
          Text('预约科室：北京大学第三医院 骨科').fontSize(16).margin({right:65})
          Text('就诊人：尤馨雨').fontSize(16).margin({right:195})
        }
        .margin({left:20})

        Column({space:10}){
          Text('未支付').fontSize(16).fontColor('#fff84242').margin({right:12})
          Text('￥528').fontSize(16).fontWeight(600).margin({right:14})
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