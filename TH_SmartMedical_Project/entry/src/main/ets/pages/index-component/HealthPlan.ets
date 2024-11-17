import { Card, TestData } from "../../database/TestData"
@Component
export struct HealthPlan{
  build() {
    Column({space:15}){
      Grid(){
        ForEach(TestData.HealthPlan,(card:Card)=>{

          GridItem(){
            Row(){
              Image(card.icon).width(30)
              Column({space:10}){
                Text(card.title).fontSize($r('app.float.FONT_SIZE_LARGE'))
              }
            }
            .width('100%')
            .height(100)
            .borderRadius(15)
            .backgroundColor('#ffb7d6f1')
            .justifyContent(FlexAlign.SpaceAround)
          }
        })
      }
      .width('100%')
      .height(230)
      .margin({top:30})
      .columnsGap(10)
      .rowsGap(10)
      .rowsTemplate('1fr 1fr')
      .columnsTemplate('1fr')
    }
  }

}