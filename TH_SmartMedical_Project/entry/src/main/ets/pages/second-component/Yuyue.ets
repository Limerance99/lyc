import { router } from '@kit.ArkUI'
import { TestData } from "../../database/TestData"
@Entry
@Component
struct Yuyue {
  private selectedDate: Date = new Date('')

  @State isMilitaryTime: boolean = false
  private selectedTime: Date = new Date('2022-07-22T08:00:00')

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
          Text('预约挂号').fontSize(20).margin({left:120})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      //part 2
      Column(){
        Row(){
          Image($rawfile('icon/second/时间段.png')).width(25).margin({top:2,right:5})
          Text('选择预约时间段').fontSize(23).margin({top:8}).fontColor('#ff56c6fc')
        }

        Row(){
          Select(TestData.selectOptions_2)
            .selected(0)
            .value(TestData.selectOptions_2[0].value)
        }.margin({top:8})
      }.backgroundColor(Color.White).width('95%').borderRadius(10).margin({top:10})


      Column(){
        Row(){
          Image($rawfile('icon/second/日历表.png')).width(25).margin({top:2,right:5})
          Text('选择预约日期').fontSize(23).margin({top:8}).fontColor('#ff56c6fc')
        }
        .justifyContent(FlexAlign.SpaceAround)

        Column() {
          CalendarPicker({ hintRadius: 10, selected: this.selectedDate })
            .edgeAlign(CalendarAlign.END)
            .textStyle({ color: "#ff182431", font: { size: 20, weight: FontWeight.Normal } })
            .margin(10)
            .onChange((value) => {
              console.info("CalendarPicker onChange:" + JSON.stringify(value))
            })
        }.alignItems(HorizontalAlign.Center).width("100%")
      }.backgroundColor(Color.White).borderRadius(10).margin({top:10}).width('95%')

      // Column() {
      //   TextInput({ placeholder: '选择预约时间段' })
      //     .showUnderline(true)
      //     .underlineColor({
      //       normal: Color.Gray,
      //       typing: Color.Blue,
      //       error: Color.Red,
      //       disable: Color.Gray
      //     })
      //   .onChange((value) => {
      //     console.info("CalendarPicker onChange:" + JSON.stringify(value))
      //   })
      // }
      // .width('90%')

      Button('确     认     预     约', { type: ButtonType.Normal, stateEffect: true })
        .borderRadius(8)
        .backgroundColor('#1296DB')
        .width('89%')
        .margin({top:500})
        .onClick(()=>{
          router.back()
        })


    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')
  }
}