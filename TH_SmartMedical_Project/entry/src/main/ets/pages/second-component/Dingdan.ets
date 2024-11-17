import { router } from '@kit.ArkUI'
import { TestData } from "../../database/TestData"
import { Register } from "../second-component/Register"
import { Consulation } from "../second-component/Consulation"
import { Medication } from "../second-component/Medication"
@Entry
@Component
struct Dingdan {

  @State changeValue: string = ''
  @State submitValue: string = ''
  @State currentIndex: number = 0

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
          Text('订单查询').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      //part 2
      Search({ value: this.changeValue, placeholder: '查询订单' })
        .searchButton('搜索')
        .searchIcon({
          src: $rawfile('icon/second/搜索.png')
        })
        .cancelButton({
          style: CancelButtonStyle.CONSTANT,
          icon: {
            src: $rawfile('icon/second/叉号.png')
          }
        })
        .width('90%')
        .height(40)
        .maxLength(20)
        .backgroundColor('#F5F5F5')
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 14, weight: 400 })
        .textFont({ size: 14, weight: 400 })
        .onSubmit((value: string) => {
          this.submitValue = value
        })
        .onChange((value: string) => {
          this.changeValue = value
        })
        .margin(20)

      //part 3
      Grid(){
        ForEach(TestData.orders,(orders:string,index:number)=>{
          GridItem(){
            Text(orders)
              .margin({left:35})
              .fontSize(18)
              .fontColor(this.currentIndex == index ? '#0A59F7':'#999999')
              .onClick(()=>{
                this.currentIndex = index
              })
          }
        })
      }
      .backgroundColor('#ffdbdbdb')
      .width('100%')
      .height(50)
      .columnsGap(15)
      .rowsTemplate('1fr')
      .scrollBar(BarState.Off)

      //part 4
      if (this.currentIndex == 0){
        Register()
      }
      if (this.currentIndex == 1){
        Consulation()
      }
      if (this.currentIndex == 2){
        Medication()
      }



    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')
  }

}