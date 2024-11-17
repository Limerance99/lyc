import { router } from '@kit.ArkUI'
@Entry
@Component
struct Taylor {

  build() {
    Column(){
      Row(){
        Column(){
          Image($rawfile('icon/返回白.png'))
            .width(30).height(30).margin({left:5}).colorFilter(Color.White)
            .onClick(()=>{
              router.back()
            })
        }
      }
      .width('100%')
      .backgroundColor('#ff7ad4ff')

      Column(){
        Row(){
          Image($rawfile('image/consult/yisheng (4).jpg'))
            .width('100').height('70%').margin({left:10})
          Column(){
            Row(){
              Text('泰勒医生').fontSize(27).margin({left:20,bottom:10})
              Text('主治医师').fontSize(20).margin({left:20,bottom:10}).fontColor('#ff5b5b5b')
            }
            Text('北京大学第三医院').fontSize(15).margin({left:10})
            Row(){
              Text('病友推荐：8.9').fontSize(15).fontColor('#ff5b5b5b')
              Text('接诊量：117').fontSize(15).margin({left:15}).fontColor('#ff5b5b5b')
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
            Text('骨科').fontSize(18).fontColor('#ff6ccdfc').margin({left:50})
          }
          .width('100%').margin({top:10,left:40})
          Text('擅长处理各种类型的骨折，包括四肢骨折、脊柱骨折、骨盆骨折等，以及骨折后的康复治疗。擅长处理肌肉、韧带、关节等软组织的损伤，如关节脱位、韧带撕裂等。擅长处理各种关节疾病，如骨关节炎、类风湿性关节炎、强直性脊柱炎等。在骨肿瘤的诊断和治疗方面，良性骨肿瘤和恶性骨肿瘤的手术治疗、化疗和放疗等综合治疗。')
            .fontSize(17).width('90%').margin({top:10}).fontColor('#ff6b6a6a')

        }
        .backgroundColor('#ffecebeb')
        .width('97%')
        .borderRadius(10)
        .margin({top:10})

        Column(){
          Text('个人简介').fontSize(25).width('100%').margin({top:10,left:40})
          Text('Taylor，37岁，是一位杰出的骨科医生，毕业于美国约翰斯·霍普金斯大学医学院并获得骨科博士学位。自2017年起，他一直在中国的北京大学第三医院骨科工作，至今已积累了6年的宝贵临床经验。Taylor医生在骨折治疗、脊柱外科、关节置换等多个骨科领域均有着深厚的专业知识和丰富的实践经验。他以其精湛的手术技巧、全面的诊疗能力和亲切的服务态度，赢得了广大患者的高度信任和好评。')
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
          .margin({top:15})
          .fontSize(20)
          .onClick(()=>{
            router.pushUrl({
              url:'pages/zixun/ZixunTaylor'
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