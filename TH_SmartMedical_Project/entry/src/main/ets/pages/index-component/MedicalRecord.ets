import { Card, TestData } from "../../database/TestData"
import { router } from "@kit.ArkUI";

@Component
export struct MedicalRecord{
  @State currentIndex: number = 0
  build() {
    Column({space:15}){
      Grid(){
        ForEach(TestData.MedicalRecord,(card:Card)=>{

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
            // .onClick(()=>{
            //   router.pushUrl({
            //     url:'pages/index-component/Record'
            //   })
            //
            // })
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