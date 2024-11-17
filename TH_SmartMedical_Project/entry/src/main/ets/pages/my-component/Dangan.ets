import { router } from '@kit.ArkUI'
import { TestData } from "../../database/TestData"
import { Me } from "../my-component/Me"
import { Dad } from "../my-component/Dad"
import { Mum } from "../my-component/Mum"
import { Gfather } from "../my-component/Gfather"
import { Gmother } from "../my-component/Gmother"
import { Sister } from "../my-component/Sister"
import { Brother } from "../my-component/Brother"
@Entry
@Component
struct Shoucang {

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
          Text('我的档案').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      //part 2
      Grid(){
        ForEach(TestData.family,(family:string,index:number)=>{
          GridItem(){
            Text(family)
              .margin({left:20})
              .fontSize(18)
              .fontColor(this.currentIndex == index ? '#0A59F7':'#999999')
              .onClick(()=>{
                this.currentIndex = index
              })
          }
        })
      }
      .backgroundColor('#fff6f6f6')
      .width('100%')
      .height(50)
      .columnsGap(15)
      .rowsTemplate('1fr')
      .scrollBar(BarState.Off)

      //part 4
      if (this.currentIndex == 0){
        Me()
      }
      if (this.currentIndex == 1){
        Dad()
      }
      if (this.currentIndex == 2){
        Mum()
      }
      if (this.currentIndex == 3){
        Gfather()
      }
      if (this.currentIndex == 4){
        Gmother()
      }
      if (this.currentIndex == 5){
        Sister()
      }
      if (this.currentIndex == 6){
        Brother()
      }

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')

  }
}