import { router } from '@kit.ArkUI'
@Entry
@Component
struct Brown {

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
          Image($rawfile('image/consult/yisheng (3).jpg'))
            .width('100').height('70%').margin({left:10})
          Column(){
            Row(){
              Text('布朗医生').fontSize(27).margin({left:20,bottom:10})
              Text('副主任医师').fontSize(20).margin({left:20,bottom:10}).fontColor('#ff5b5b5b')
            }
            Text('四川大学华西医院').fontSize(15).margin({left:10})
            Row(){
              Text('病友推荐：9.2').fontSize(15).fontColor('#ff5b5b5b')
              Text('接诊量：149').fontSize(15).margin({left:15}).fontColor('#ff5b5b5b')
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
            Text('口腔科').fontSize(18).fontColor('#ff6ccdfc').margin({left:50})
          }
          .width('100%').margin({top:10,left:40})
          Text('擅长儿童和成人错颌畸形的矫治，包括牙齿排列不齐、上下颌骨畸形、颜面畸形等的矫正。正畸治疗技术包括固定矫正器、功能矫正器、隐形矫治器等。擅长各类牙列缺损的修复，包括固定修复（如烤瓷牙、全瓷牙等）和活动修复（如活动义齿、全口义齿等）。擅长各类牙齿拔除术（包括复杂智齿拔除、埋伏牙拔除等），牙槽外科手术，以及口腔颌面部外伤的清创与缝合。')
            .fontSize(17).width('90%').margin({top:10}).fontColor('#ff6b6a6a')

        }
        .backgroundColor('#ffecebeb')
        .width('97%')
        .borderRadius(10)
        .margin({top:10})

        Column(){
          Text('个人简介').fontSize(25).width('100%').margin({top:10,left:40})
          Text('Brown，44岁，是一位经验丰富的口腔科医生，拥有英国伦敦大学国王学院口腔医学博士学位。自2015年起，他在中国四川大学华西医院口腔科工作，至今已积累了8年的临床经验。Brown医生擅长处理各类口腔疾病，包括牙体牙髓病、牙周病、口腔颌面外科疾病以及口腔修复和正畸等。他以其精湛的医疗技术和深厚的专业知识，赢得了患者的广泛赞誉和同行的尊重。')
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
              url:'pages/zixun/ZixunBrown'
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