import { TestData } from "../../database/TestData"
import { HealthManagement } from "../index-component/HealthManagement"
import { HealthPlan } from "../index-component/HealthPlan"
import { MedicalRecord } from "../index-component/MedicalRecord"
import { Personal } from "../index-component/Personal"
import { RemindSettings } from "../index-component/ReminderSettings"

@Component
export struct Index{

  @State currentIndex: number = 0
  @State text: string = "我"
  @State space: number = 8
  @State arrowPosition: ArrowPosition = ArrowPosition.END

  build() {
    Column(){
      //part 1
      Row(){
        Select(TestData.selectOptions)
          .selected(0)
          .value(TestData.selectOptions[0].value)
          .backgroundColor('#ffefeeee')
      }

      Column(){
        //part 2
        Grid(){
          ForEach(TestData.person,(person:string,index:number)=>{
            GridItem(){
              Text(person)
                .fontSize(18)
                .fontColor(this.currentIndex == index ? '#0A59F7':'#999999')
                .onClick(()=>{
                  this.currentIndex = index
                })
            }
          })
        }
        .width('100%')
        .height(20)
        .columnsGap(15)
        .rowsTemplate('1fr')
        .scrollBar(BarState.Off)

        //part 3
        if (this.currentIndex == 0){
          Personal()
        }
        if (this.currentIndex == 1){
          MedicalRecord()
        }
        if (this.currentIndex == 2){
          HealthManagement()
        }
        if (this.currentIndex == 3){
          RemindSettings()
        }
        if (this.currentIndex == 4){
          HealthPlan()
        }
      }
      .width('100%')
      .height('100%')
      .justifyContent(FlexAlign.Start)

    }

  }
}
