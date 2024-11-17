@Component
export struct Medication{
  build() {
    Column(){
      Row(){
        Column({space:10}){
          Row(){
            Text('2024-11-12 15:00').fontSize(16).margin({right:117})
          }
          Row(){
            Text('999感冒灵颗粒（1盒半/14小袋子）').fontSize(16)
          }
          Row(){
            Text('健胃消食片（1盒）').fontSize(16).margin({right:117})
          }
          Row(){
            Text('胆宁片（3盒）').fontSize(16).margin({right:147})
          }
        }
        .margin({left:20})

        Column({space:10}){
          Text('未支付').fontSize(16).fontColor('#fff84242').margin({left:40})
          Text('￥78.9').fontSize(16).fontWeight(600).margin({left:40})
        }
        .margin({bottom:60})
      }
      .width('100%')
      .backgroundColor(Color.White)
      .height(130)


      Row(){
        Column({space:10}){
          Row(){
            Text('2024-10-23 17:00').fontSize(16).margin({right:117})
          }
          Row(){
            Text('云南白药创可贴（2盒）').fontSize(16).margin({right:80})
          }
          Row(){
            Text('云南白药喷雾（1瓶）').fontSize(16).margin({right:98})
          }
        }
        .margin({left:20,bottom:25})

        Column({space:10}){
          Text('未支付').fontSize(16).fontColor('#fff84242').margin({left:45})
          Text('￥58').fontSize(16).fontWeight(600).margin({left:40})
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
            Text('医用碘伏棉棒').fontSize(16).margin({right:85})
          }
          Row(){
            Text('布洛芬缓释胶囊').fontSize(16).margin({right:74})
          }
          Row(){
            Text('维C咀嚼片').fontSize(16).margin({right:110})
          }
        }
        .margin({left:20})

        Column({space:10}){
          Text('已支付').fontSize(16).fontColor('#ff4cf67d').margin({left:110})
          Text('￥69').fontSize(16).fontWeight(600).margin({left:105})
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