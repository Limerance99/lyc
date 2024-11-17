import { Card, TestData } from "../../database/TestData"
import { Router, router } from "@kit.ArkUI"

@Component
export struct Personal{
  build() {
    Scroll(){
      Column({space:15}){
        Row(){
          Text('身体指标').width('50%').fontSize($r('app.float.FONT_SIZE_MAX')).margin({top:20})
          Text('全部信息').width('50%').fontSize(15).margin({top:20,left:110}).fontColor('#8a8a8a')
            .onClick(()=>{
              router.pushUrl({
                url:'pages/my-component/Dangan'
              })
            })
        }
        Grid(){
          ForEach(TestData.Personal,(card:Card)=>{
            GridItem(){
              Column(){
                Column(){
                  Image(card.icon).width(30).margin({right:100})
                  Text(card.title).fontSize($r('app.float.FONT_SIZE_LARGE')).margin({right:20}).width('70%')
                  Text(card.detail).fontSize($r('app.float.FONT_SIZE_MIN')).margin({right:90,bottom:20})
                  Image($rawfile('icon/personal/shuimian.png')).width('90%')
                }
                .width('100%')
                .height(200)
                .borderRadius(15)
                .backgroundColor(Color.White)
                .justifyContent(FlexAlign.SpaceAround)
              }
            }
          })
        }
        .width('100%')
        .height(850)
        .columnsGap(10)
        .rowsGap(10)
        .rowsTemplate('1fr 1fr 1fr 1fr ')
        .columnsTemplate('1fr 1fr')
      }

    }
    .width('95%')
    .height('90%')
    .scrollBar(BarState.Off)
  }


}