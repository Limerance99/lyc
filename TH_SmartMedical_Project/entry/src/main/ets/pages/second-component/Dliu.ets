import { router } from '@kit.ArkUI'
@Entry
@Component
struct Dliu {

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
          Image($rawfile('image/consult/yisheng (5).jpg'))
            .width('100').height('70%').margin({left:10})
          Column(){
            Row(){
              Text('刘医生').fontSize(27).margin({left:20,bottom:10})
              Text('副主任医师').fontSize(20).margin({left:20,bottom:10}).fontColor('#ff5b5b5b')
            }
            Text('北京协和医院').fontSize(15).margin({left:10})
            Row(){
              Text('病友推荐：9.2').fontSize(15).fontColor('#ff5b5b5b')
              Text('接诊量：158').fontSize(15).margin({left:15}).fontColor('#ff5b5b5b')
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
            Text('儿科').fontSize(18).fontColor('#ff6ccdfc').margin({left:50})
          }
          .width('100%').margin({top:10,left:40})
          Text('擅长评估儿童的生长发育情况，包括身高、体重、头围等生长指标的监测，以及性早熟、矮小症等生长发育异常的诊断和治疗。擅长处理各种新生儿疾病，如新生儿窒息、新生儿黄疸、新生儿肺炎、新生儿败血症等，以及新生儿危重症的抢救和治疗。在呼吸系统疾病的诊断和治疗方面具有丰富的经验，如小儿感冒、咳嗽、哮喘、肺炎、支气管炎等。')
            .fontSize(17).width('90%').margin({top:10}).fontColor('#ff6b6a6a')

        }
        .backgroundColor('#ffecebeb')
        .width('97%')
        .borderRadius(10)
        .margin({top:10})

        Column(){
          Text('个人简介').fontSize(25).width('100%').margin({top:10,left:40})
          Text('刘医生，37岁，是一位经验丰富的儿科专家，拥有北京大学医学部儿科专业博士学位，并曾在美国哈佛大学医学院进行博士后研修。自2016年起，他在北京协和医院儿科工作，至今已积累了7年的丰富临床经验。刘医生擅长处理儿童生长发育、呼吸系统疾病、消化系统疾病以及神经系统疾病等多个领域的疑难杂症。')
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
          .margin({top:20})
          .fontSize(20)
          .onClick(()=>{
            router.pushUrl({
              url:'pages/zixun/Zixunliu'
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