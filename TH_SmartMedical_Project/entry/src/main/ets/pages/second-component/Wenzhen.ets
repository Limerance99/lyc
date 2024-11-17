import { router } from '@kit.ArkUI'
@Entry
@Component
struct Wenzhen {
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
          Text('快速问诊').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      //part 2
      Scroll(){
        Column(){
          Text('2024年11月11日 14:23').fontSize(15).fontColor('#ffbabbbc').margin({top:10})
          //我
          Row(){
            Row(){
              Text('我头疼应该买什么药？').fontSize(15).fontColor(Color.White).margin({left:10})
            }.backgroundColor('#ff4774fd').width('70%').height('3%')
            .borderRadius(10).margin({right:10})
            Image($rawfile('image/consult/touxiang2.png')).width(60).borderWidth(2).borderRadius(50).borderColor('#ffe2e1e1')
          }.margin({left:150,top:10})

          //AI
          Row(){
            Image($rawfile('image/picture/doubao.png')).width(60).borderWidth(2).borderRadius(50).margin({bottom:280}).borderColor('#ffe2e1e1')
            Row(){
              Text('头疼的原因有多种，如感冒、偏头痛、紧张性头痛等，不同原因用药不同。\n' +
                ' \n' +
                '如果是感冒引起的头疼，可服用对乙酰氨基酚、布洛芬等，它们能解热镇痛，缓解头疼和发热等症状。\n' +
                ' \n' +
                '若是偏头痛，可使用麦角胺咖啡因、佐米曲普坦等药物。麦角胺咖啡因能使脑动脉血管的过度扩张与搏动恢复正常；佐米曲普坦可以收缩血管，减轻偏头痛症状。\n' +
                ' \n' +
                '紧张性头痛可以服用乙哌立松等肌肉松弛剂来缓解肌肉紧张，减轻疼痛。\n' +
                ' \n' +
                '不过，自行买药前最好先咨询医生或药师建议，因为头疼也可能是其他严重疾病的症状。').fontSize(15).fontColor(Color.Black).margin({left:10})
            }.backgroundColor(Color.White).width('100%').height('28%')
            .borderRadius(10).margin({left:10})
          }.margin({right:100,top:10})

          Text('   2024年11月12日 8:37').fontSize(15).fontColor('#ffbabbbc').margin({top:10})
          //我
          Row(){
            Row(){
              Text('感冒的时候应该注意什么？').fontSize(15).fontColor(Color.White).margin({left:10})
            }.backgroundColor('#ff4774fd').width('70%').height('5%')
            .borderRadius(10).margin({right:10})
            Image($rawfile('image/consult/touxiang2.png')).width(60).borderWidth(2).borderRadius(50).borderColor('#ffe2e1e1')
          }.margin({left:150,top:10})

          //AI
          Row(){
            Image($rawfile('image/picture/doubao.png')).width(60).borderWidth(2).borderRadius(50).margin({bottom:280}).borderColor('#ffe2e1e1')
            Row(){
              Text('感冒时要注意以下几点:\n' +
                ' \n' +
                '一是多休息，这样能让身体集中精力对抗病毒或细菌，帮助身体更快恢复。\n' +
                ' \n' +
                '二是多喝水，建议多喝温水，它能缓解喉咙疼痛，还可以促进新陈代谢，帮助身体排出毒素。\n' +
                ' \n' +
                '三是注意饮食，尽量选择清淡、易消化的食物，比如米粥、面条等，避免食用辛辣、油腻、刺激性食物，否则可能会加重肠胃负担。\n' +
                ' \n' +
                '四是注意通风，保持室内空气流通，新鲜的空气有助于减少病毒和细菌的浓度。\n' +
                ' \n' +
                '五是适当增减衣物，根据体温和环境温度来调整，避免着凉或过热。\n' +
                ' \n' +
                '六是避免传染他人，咳嗽和打喷嚏时用纸巾或手肘遮住口鼻，防止病毒传播。').fontSize(15).fontColor(Color.Black).margin({left:10,top:10})
            }.backgroundColor(Color.White).width('100%').height('35%')
            .borderRadius(10).margin({left:10})
          }.margin({right:100,top:10})
        }.height(1200)
      }.height('90%').scrollBar(BarState.Off)



      //part 3
      Search({ value: this.changeValue, placeholder: '输入问题问AI' })
        .searchButton('发送')
        .searchIcon({
          src: $rawfile('image/picture/相机小.png')
        })
        .cancelButton({
          style: CancelButtonStyle.CONSTANT,
          icon: {
            src: $rawfile('image/picture/语音.png')
          }
        })
        .width('95%')
        .height(50)
        .maxLength(20)
        .backgroundColor(Color.White)
        .placeholderColor(Color.Grey)
        .placeholderFont({ size: 15, weight: 400 })
        .textFont({ size: 14, weight: 400 })
        .onSubmit((value: string) => {
          this.submitValue = value
        })
        .onChange((value: string) => {
          this.changeValue = value
        })
        .margin(5)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')
  }
}