import { router } from '@kit.ArkUI'
@Entry
@Component
struct John {

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
          Image($rawfile('image/consult/yisheng (2).jpg'))
            .width('100').height('70%').margin({left:10})
          Column(){
            Row(){
              Text('约翰医生').fontSize(27).margin({left:20,bottom:10})
              Text('主任医师').fontSize(20).margin({left:20,bottom:10}).fontColor('#ff5b5b5b')
            }
            Text('上海交通大学医学院附属瑞金医院').fontSize(15).margin({left:10})
            Row(){
              Text('病友推荐：9.8').fontSize(15).fontColor('#ff5b5b5b')
              Text('接诊量：241').fontSize(15).margin({left:15}).fontColor('#ff5b5b5b')
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
            Text('神经外科').fontSize(18).fontColor('#ff6ccdfc').margin({left:50})
          }
          .width('100%').margin({top:10,left:40})
          Text('擅长处理各种由外伤导致的颅脑和脊髓损伤，如颅骨骨折、脑挫裂伤、颅内血肿等。脑出血领域能够迅速进行手术干预，清除血肿并控制出血，从而降低患者的死亡率和致残率。颅内动脉瘤领域能够通过介入手术或开颅手术夹闭动脉瘤，防止其破裂出血。')
            .fontSize(17).width('90%').margin({top:10}).fontColor('#ff6b6a6a')

        }
        .backgroundColor('#ffecebeb')
        .width('97%')
        .borderRadius(10)
        .margin({top:10})

        Column(){
          Text('个人简介').fontSize(25).width('100%').margin({top:10,left:40})
          Text('John Smith，49岁，美国哈佛大学医学院神经科学专业博士研究生毕业。自2013年起，他在上海交通大学医学院附属瑞金医院担任神经科医生，至今已工作10年。John凭借深厚的医学理论基础、丰富的临床经验以及精湛的神经外科手术技巧，在神经疾病的诊断和治疗方面取得了显著成绩，尤其擅长处理颅脑损伤、脑肿瘤及脑血管病等复杂病例。他不仅赢得了患者的广泛赞誉，还积极参与科研与教学，为神经科学领域的发展做出了积极贡献。')
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
              url:'pages/zixun/Zixunjohn'
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