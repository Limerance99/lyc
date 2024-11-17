import { router } from '@kit.ArkUI'
@Entry
@Component

struct Dzhao {
  build() {

    Column(){
      Row(){
        Column(){
          Image($rawfile('icon/返回白.png'))
            .width(30).height(30).margin({left:10}).colorFilter(Color.White)
            .onClick(()=>{
              router.back()
            })
        }
      }
      .width('100%')
      .backgroundColor('#ff7ad4ff')

      Column(){
          Row(){
            Image($rawfile('image/consult/yisheng (1).jpg'))
              .width('100').height('70%').margin({left:10})
            Column(){
              Row(){
                Text('赵医生').fontSize(27).margin({left:20,bottom:10})
                Text('主治医师').fontSize(20).margin({left:20,bottom:10}).fontColor('#ff5b5b5b')
              }
              Text('复旦大学附属华山医院').fontSize(15)
              Row(){
                Text('病友推荐：8.5').fontSize(15).fontColor('#ff5b5b5b')
                Text('接诊量：67').fontSize(15).margin({left:15}).fontColor('#ff5b5b5b')
              }
              .margin({top:15,left:20})
            }
          }
          .width('100%')
          .height('25%')
          .backgroundColor('#ff7ad4ff')
          .border({
            radius: { bottomLeft: 20, bottomRight: 20 },
          })

        Column(){
          Row(){
            Text('工作领域').fontSize(25)
            Text('眼科').fontSize(18).fontColor('#ff6ccdfc').margin({left:50})
          }
          .width('100%').margin({top:10,left:40})
          Text('专注于近视的防控和青少年眼科疾病的处理，如青少年近视的防治、小儿屈光和弱视的诊治等。专注于眼表疾病的诊断和治疗，如干眼症、结膜炎、角膜炎等。专注于斜视和弱视的诊断和治疗，以及小儿眼科疾病的处理。')
            .fontSize(17).width('90%').margin({top:10}).fontColor('#ff6b6a6a')

        }
        .backgroundColor('#ffecebeb')
        .width('97%')
        .borderRadius(10)
        .margin({top:10})

        Column(){
          Text('个人简介').fontSize(25).width('100%').margin({top:10,left:40})
          Text('赵医生，女，28岁，复旦大学医学院眼科专业硕士研究生毕业。自毕业以来，已在复旦大学附属华山医院眼科部门工作了4年。在华山医院的工作中，赵医生积累了丰富的眼科临床经验，擅长处理包括近视、远视、白内障、青光眼等在内的多种眼科疾病。她不仅技术精湛，更以亲切的服务态度和高度的责任心赢得了患者的信赖和好评。除了临床实践，赵医生还积极参与眼科医学的科研和教学，致力于推动眼科医学的进步。她的努力和贡献得到了同事和上级的一致认可。')
            .fontSize(17).width('90%').margin({top:10}).fontColor('#ff6b6a6a')
        }
        .backgroundColor('#ffecebeb')
        .width('97%')
        .borderRadius(10)
        .margin({top:10})


        Button('咨询',{type:ButtonType.Normal})
        .backgroundColor('#ff7ad4ff')
        .borderRadius(20)
        .width(100)
        .height(50)
          .margin({top:30})
          .fontSize(20)
          .onClick(()=>{
            router.pushUrl({
              url:'pages/zixun/Zixunzhao'
            })
          })

      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')

  }
}