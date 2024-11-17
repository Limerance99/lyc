import { router } from '@kit.ArkUI'
@Entry
@Component
struct Bingzhong {

  @State changeValue: string = ''
  @State submitValue: string = ''

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
          Text('病种信息').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      Scroll(){
        Column(){
          //part 2 呼吸系统疾病
          Row(){
            Text().width(4).height(30).backgroundColor('#ff4e9dfc').margin({top:5,left:5})
            Text('呼吸系统疾病').fontSize(20).fontColor('#ff4e9dfc').margin({left:10,top:10})
            Text('查看更多').fontSize(15).fontColor('#8a8a8a').margin({left:180,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Text('慢性支气管炎：长期咳嗽、咳痰，伴有喘息症状').fontSize(16).margin({right:30})
              Text('慢性阻塞肺疾病：肺气肿、慢性支气管炎、呼吸困难').fontSize(16)
              Text('哮喘：反复发作的喘息、气急、胸闷或咳嗽').fontSize(16).margin({right:65})
            }
            .margin({left:10})
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(130)
          .margin({top:5})

          //心脑血管疾病
          Row(){
            Text().width(4).height(30).backgroundColor('#ff4e9dfc').margin({top:5,left:5})
            Text('心脑血管疾病').fontSize(20).fontColor('#ff4e9dfc').margin({left:10,top:10})
            Text('查看更多').fontSize(15).fontColor('#8a8a8a').margin({left:180,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Text('高血压：持续血压高于正常水平，可能引发心脏病').fontSize(16).margin({right:20})
              Text('脑卒中（中风）：脑血管破裂或阻塞导致的脑部损伤').fontSize(16).margin({right:5})
              Text('慢性心力衰竭：心脏泵血功能下降').fontSize(16).margin({right:133})
            }
            .margin({left:10})
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(130)
          .margin({top:5})

          //消化系统疾病
          Row(){
            Text().width(4).height(30).backgroundColor('#ff4e9dfc').margin({top:5,left:5})
            Text('消化系统疾病').fontSize(20).fontColor('#ff4e9dfc').margin({left:10,top:10})
            Text('查看更多').fontSize(15).fontColor('#8a8a8a').margin({left:180,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Text('慢性胃炎：胃黏膜长期慢性炎症，有胃痛、消化不良等症状').fontSize(16).margin({right:20})
              Text('慢性肝炎：肝脏长期受损，可能引发肝硬化、肝癌').fontSize(16).margin({right:25})
              Text('消化性溃疡：胃十二指肠溃疡，可能导致出血、穿孔').fontSize(16).margin({right:10})
            }
            .margin({left:10})
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(130)
          .margin({top:5})

          //其他慢性疾病
          Row(){
            Text().width(4).height(30).backgroundColor('#ff4e9dfc').margin({top:5,left:5})
            Text('其他慢性疾病').fontSize(20).fontColor('#ff4e9dfc').margin({left:10,top:10})
            Text('查看更多').fontSize(15).fontColor('#8a8a8a').margin({left:180,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Text('慢性贫血：长期贫血可能导致身体各系统功能下降').fontSize(16).margin({right:20})
              Text('骨质疏松症：骨密度降低，容易发生骨折').fontSize(16).margin({right:85})
              Text('精神类疾病：精神分裂症、抑郁症').fontSize(16).margin({right:135})
            }
            .margin({left:10})
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(130)
          .margin({top:5})

          //
          Row(){
            Text().width(4).height(30).backgroundColor('#ff4e9dfc').margin({top:5,left:5})
            Text('心病科').fontSize(20).fontColor('#ff4e9dfc').margin({left:10,top:10})
            Text('查看更多').fontSize(15).fontColor('#8a8a8a').margin({left:240,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Text('慢性支气管炎：长期咳嗽、咳痰，伴有喘息症状').fontSize(16).margin({right:30})
              Text('慢性阻塞肺疾病：肺气肿、慢性支气管炎、呼吸困难').fontSize(16)
              Text('哮喘：反复发作的喘息、气急、胸闷或咳嗽').fontSize(16).margin({right:65})
            }
            .margin({left:10})
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(130)
          .margin({top:5})

          //
          Row(){
            Text().width(4).height(30).backgroundColor('#ff4e9dfc').margin({top:5,left:5})
            Text('脑病科').fontSize(20).fontColor('#ff4e9dfc').margin({left:10,top:10})
            Text('查看更多').fontSize(15).fontColor('#8a8a8a').margin({left:240,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Text('慢性支气管炎：长期咳嗽、咳痰，伴有喘息症状').fontSize(16).margin({right:30})
              Text('慢性阻塞肺疾病：肺气肿、慢性支气管炎、呼吸困难').fontSize(16)
              Text('哮喘：反复发作的喘息、气急、胸闷或咳嗽').fontSize(16).margin({right:65})
            }
            .margin({left:10})
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(130)
          .margin({top:5})

          //
          Row(){
            Text().width(4).height(30).backgroundColor('#ff4e9dfc').margin({top:5,left:5})
            Text('肿瘤科').fontSize(20).fontColor('#ff4e9dfc').margin({left:10,top:10})
            Text('查看更多').fontSize(15).fontColor('#8a8a8a').margin({left:240,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Text('慢性支气管炎：长期咳嗽、咳痰，伴有喘息症状').fontSize(16).margin({right:30})
              Text('慢性阻塞肺疾病：肺气肿、慢性支气管炎、呼吸困难').fontSize(16)
              Text('哮喘：反复发作的喘息、气急、胸闷或咳嗽').fontSize(16).margin({right:65})
            }
            .margin({left:10})
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(130)
          .margin({top:5})

          //
          Row(){
            Text().width(4).height(30).backgroundColor('#ff4e9dfc').margin({top:5,left:5})
            Text('康复科').fontSize(20).fontColor('#ff4e9dfc').margin({left:10,top:10})
            Text('查看更多').fontSize(15).fontColor('#8a8a8a').margin({left:240,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Text('慢性支气管炎：长期咳嗽、咳痰，伴有喘息症状').fontSize(16).margin({right:30})
              Text('慢性阻塞肺疾病：肺气肿、慢性支气管炎、呼吸困难').fontSize(16)
              Text('哮喘：反复发作的喘息、气急、胸闷或咳嗽').fontSize(16).margin({right:65})
            }
            .margin({left:10})
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(130)
          .margin({top:5})

          //
          Row(){
            Text().width(4).height(30).backgroundColor('#ff4e9dfc').margin({top:5,left:5})
            Text('骨科').fontSize(20).fontColor('#ff4e9dfc').margin({left:10,top:10})
            Text('查看更多').fontSize(15).fontColor('#8a8a8a').margin({left:260,top:10})
          }.width('100%')

          Row(){
            Column({space:10}){
              Text('慢性支气管炎：长期咳嗽、咳痰，伴有喘息症状').fontSize(16).margin({right:30})
              Text('慢性阻塞肺疾病：肺气肿、慢性支气管炎、呼吸困难').fontSize(16)
              Text('哮喘：反复发作的喘息、气急、胸闷或咳嗽').fontSize(16).margin({right:65})
            }
            .margin({left:10})
          }
          .width('100%')
          .backgroundColor(Color.White)
          .height(130)
          .margin({top:5})
        }
        .height(2000)
      }
      .height('96%')
      .scrollBar(BarState.Off)


    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')
  }
}