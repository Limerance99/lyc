import { TestData } from "../../database/TestData"
import { Card } from "../../database/TestData"
import { Index } from "../main-component/Index"
import { SwiperComponent, SwiperData } from './SwiperComponent'
import { router } from '@kit.ArkUI'

@Component
export struct Index_2{

  @State changeValue: string = ''
  @State submitValue: string = ''

  @State currentIndex: number = 0
  @State text: string = ''
  @State enterTypes: Array<EnterKeyType> =
    [EnterKeyType.Go, EnterKeyType.Search, EnterKeyType.Send, EnterKeyType.Done, EnterKeyType.Next,
      EnterKeyType.PREVIOUS, EnterKeyType.NEW_LINE]
  @State index: number = 0
  scroller: Scroller = new Scroller()

  dataList : SwiperData[] = []
  aboutToAppear(){
    this.dataList.push(new SwiperData($rawfile('image/consult/SM1 (1).jpg'), 'When I\'m gone', 'Eminem'))
    this.dataList.push(new SwiperData($rawfile('image/consult/SM1 (2).jpg'), 'Black Beatles', 'Rey'))
    this.dataList.push(new SwiperData($rawfile('image/consult/SM1 (3).jpg'), 'Galway Girl', 'Swift'))
    this.dataList.push(new SwiperData($rawfile('image/consult/SM1 (4).jpg'), 'Galway Girl', 'Swift'))
  }

  build() {
    Scroll(){
      Column(){
        //part 1 顶部栏
        Search({ value: this.changeValue, placeholder: '请输入要查找的文章/医生...' })
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
          .height(50)
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

        //part 2 轮播图
        Column(){
          SwiperComponent({swiperDataStr: JSON.stringify(this.dataList) })
        }

        //part 3
        Column(){
          Row(){
            Row(){
              Image($rawfile('image/consult/预约挂号.png')).width(45).margin({left:10})
              Column({space:10}){
                Row(){
                  Text('预约挂号').fontSize(20).margin({right:10})
                }
                Row(){
                  Text('在线快捷挂号').fontSize(18).fontColor('#ff818080')
                }
              }
              .margin({left:10})
            }
            .width('48%')
            .backgroundColor('#ffc0fcb8')
            .height(100)
            .margin({bottom:10,right:10})
            .borderRadius(30)
            .onClick(()=>{
              router.pushUrl({
                url:'pages/second-component/Guahao'
              })
            })

            Row(){
              Image($rawfile('image/consult/查看订单.png')).width(45).margin({left:10})
              Column({space:10}){
                Row(){
                  Text('订单查询').fontSize(20).margin({right:10})
                }
                Row(){
                  Text('了解最近病情').fontSize(18).fontColor('#ff818080')
                }
              }
              .margin({left:10})
            }
            .width('48%')
            .backgroundColor('#ffc0fcb8')
            .height(100)
            .margin({bottom:10})
            .borderRadius(20)
            .onClick(()=>{
              router.pushUrl({
                url:'pages/second-component/Dingdan'
              })
            })
          }
          .justifyContent(FlexAlign.SpaceBetween)
        }
        //part 4
        Column(){
          Row(){
            Column({space:10}){
              Image($rawfile('image/consult/智慧药房.png')).width(40).height(40)
              Text('智慧药房').fontSize(13)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/second-component/Yaofang'
              })
            })

            Column({space:10}){
              Image($rawfile('image/consult/医院.png')).width(40).height(40)
              Text('附近医院').fontSize(13)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/second-component/Hospital'
              })
            })

            Column({space:10}){
              Image($rawfile('image/consult/病种管理.png')).width(40).height(40)
              Text('病种信息').fontSize(13)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/second-component/Bingzhong'
              })
            })

            Column({space:10}){
              Image($rawfile('image/consult/问诊体检.png')).width(40).height(40)
              Text('快速问诊').fontSize(13)
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/second-component/Wenzhen'
              })
            })

            // Column({space:10}){
            //   Image($rawfile('image/consult/用药申请.png')).width(40).height(40)
            //   Text('用药咨询').fontSize(13)
            // }
            // .onClick(()=>{
            //   router.pushUrl({
            //     url:'pages/second-component/Yongyao'
            //   })
            // })

          }
          .width('100%')
          .margin({top:30})
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .backgroundColor('white')
        .width('95%')
        .height(120)
        .borderRadius(20)

        //part 5 医院专家
        Column(){
          Row(){
            Text().width(4).height(30).backgroundColor(Color.Red).margin({top:5})
            Text('医院专家').fontSize(20).margin({right:200,top:10})
            Text('查看更多').fontSize(15).margin({top:10}).fontColor(Color.Gray)
              .onClick(()=>{
                router.pushUrl({
                  url:'pages/second-component/MoreDoctor'
                })
              })
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        Column() {
          Scroll(this.scroller) {
            Row({ space: 30 }) {
              Actor1()
              Actor2()
              Actor3()
              Actor4()
              Actor5()
            }
            .height(50)
            .backgroundColor('#EEEEEE')
          }
          .height(200)
          .width('100%')
          .backgroundColor('#EEEEEE')
          .scrollable(ScrollDirection.Horizontal)
          .scrollBar(BarState.Off)
        }
        .justifyContent(FlexAlign.Center)
        .backgroundColor('Color.Pink')

        //part 6 医学文章
        Column(){
          Row(){
            Text().width(4).height(30).backgroundColor(Color.Red)
            Text('医学文章').fontSize(20).margin({top:5,right:200})
            Text('查看更多').fontSize(15).margin({top:10}).fontColor(Color.Gray)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          Row(){
            Image($rawfile('image/consult/yiliao.png')).width('95%').margin({top:10}).height(55)
          }

        }

        Column(){
          Row(){
            Column(){
              Image($rawfile('image/consult/xinwen (2).png'))
                .width(160)
              Column(){
                Row(){
                  Text('国内AI医学影像产业有力起跑')
                    .fontSize(13)
                    .textAlign(TextAlign.Center)
                    .margin({top:10,left:30,right:20})
                }
                .justifyContent(FlexAlign.Center)
                Row(){
                  Image($rawfile('image/consult/微信2.png')).width(17).height(17).margin({left:5})
                  Image($rawfile('image/consult/微博.png')).width(17).height(17).margin({left:5})
                  Image($rawfile('image/consult/QQ2.png')).width(17).height(17).margin({left:5})
                }
                .margin({left:90,top:10})
              }
            }
            .width('44.4%')
            .backgroundColor(Color.White)
            .height(150)
            .margin({top:20,right:20})
            .onClick(()=>{
              router.pushUrl({
                url:'pages/second-component/Xinwen1'
              })
            })

            Column(){
              Image($rawfile('image/consult/xinwen (1).png'))
                .width(160)

              Column(){
                Row(){
                  Text('医学人文关怀提升行动方案发布')
                    .fontSize(13)
                    .textAlign(TextAlign.Center)
                    .margin({top:10,left:30,right:20})
                }
                .justifyContent(FlexAlign.Center)
                Row(){
                  Image($rawfile('image/consult/微信2.png')).width(17).height(17).margin({left:5})
                  Image($rawfile('image/consult/微博.png')).width(17).height(17).margin({left:5})
                  Image($rawfile('image/consult/QQ2.png')).width(17).height(17).margin({left:5})
                }
                .margin({left:90,top:10})
              }

            }
            .width('44.4%')
            .backgroundColor(Color.White)
            .height(150)
            .margin({top:20})
            .onClick(()=>{
              router.pushUrl({
                url:'pages/second-component/Xinwen2'
              })
            })
          }
        }

        Column(){
          Row(){
            Column(){
              Image($rawfile('image/consult/xinwen (3).png'))
                .width(160)

              Column(){
                Row(){
                  Text('医学文学携手跨界 共筑精神健康')
                    .fontSize(13)
                    .textAlign(TextAlign.Center)
                    .margin({top:10,left:30,right:20})
                }
                .justifyContent(FlexAlign.Center)
                Row(){
                  Image($rawfile('image/consult/微信2.png')).width(17).height(17).margin({left:5})
                  Image($rawfile('image/consult/微博.png')).width(17).height(17).margin({left:5})
                  Image($rawfile('image/consult/QQ2.png')).width(17).height(17).margin({left:5})
                }
                .margin({left:90,top:10})
              }

            }
            .width('44.4%')
            .backgroundColor(Color.White)
            .height(150)
            .margin({top:20,right:20})
            .onClick(()=>{
              router.pushUrl({
                url:'pages/second-component/Xinwen3'
              })
            })

            Column(){
              Image($rawfile('image/consult/xinwen (4).png'))
                .width(160)

              Column(){
                Row(){
                  Text('医学研究从现象驱动转向数据驱动')
                    .fontSize(13)
                    .textAlign(TextAlign.Center)
                    .margin({top:10,left:30,right:20})
                }
                .justifyContent(FlexAlign.Center)
                Row(){
                  Image($rawfile('image/consult/微信2.png')).width(17).height(17).margin({left:5})
                  Image($rawfile('image/consult/微博.png')).width(17).height(17).margin({left:5})
                  Image($rawfile('image/consult/QQ2.png')).width(17).height(17).margin({left:5})
                }
                .margin({left:90,top:10})
              }

            }
            .width('44.4%')
            .backgroundColor(Color.White)
            .height(150)
            .margin({top:20})
            .onClick(()=>{
              router.pushUrl({
                url:'pages/second-component/Xinwen4'
              })
            })
          }
        }

        //part 7 交友
        Column(){
          Row(){
            Text().width(4).height(30).backgroundColor(Color.Red)
            Text('医学分享').fontSize(20).margin({top:5,right:267})
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .margin({top:10})
        }

        //美少女战士
        Column(){
          Row(){
            Column(){
              Row(){
                Image($rawfile('image/consult/touxiang1.png')).width(60).margin({left:10})
                Column({space:10}){
                  Row(){
                    Text('美少女战士').fontSize(18).margin({left:5})
                  }
                  Row(){
                    Text('10年从医经验').fontSize(13).fontColor('#ff818080')
                  }
                }
                Row(){
                  Column(){
                    Image($rawfile('image/consult/加号.png')).width(23)
                  }
                  Column(){
                    Text('关注').fontSize(17).fontColor(Color.White)
                  }
                }
                .width(90)
                .height(30)
                .margin({left:80})
                .backgroundColor('#8fdb0922')
                .justifyContent(FlexAlign.SpaceAround)
                .borderRadius(10)
              }
              .width('100%')
              .margin({top:10})

              Row(){
                Text('医护人员评职称必备，医学老师、护...').fontWeight(800)
              }
              .width('100%')
              .margin({top:20,left:20})

              Row(){
                Text('#医学期刊 #科普《四川广播电视报》《贵州健康报》《医药导报》《致富快报 》《健康之友报（周报）（科普类） 》')
                  .fontColor('#8a8a8a')
              }
              .width('95%')
              .margin({top:10})

              Row(){
                Text('在中国，医护人员评职称通常需要满足一定的学术要求，包括发表论文、撰写科普文章等。健康科普文章的发表可以是评职称的一个重要组成部分，因为它能够体现医护人员的专业能力和对社会的贡献。以下是一些关于如何撰写和发表健康科普文章的建议：......')
                  .textIndent(30)
              }
              .width('95%')
              .margin({top:10})

              Row(){
                Image($rawfile('image/consult/xw1.jpg')).width(120)
                Image($rawfile('image/consult/xw2.jpg')).width(120).margin({left:30})
              }
              .margin({top:10})
            }
            .margin({bottom:280})
          }
          .width('95%')
          .backgroundColor(Color.Pink)
          .height(400)
          .margin({top:20})
          .borderRadius(20)
        }

        //社会主义接班人
        Column(){
          Row(){
            Column(){
              Row(){
                Image($rawfile('icon/my/touxiang-1.png')).width(60).margin({left:10})
                Column({space:10}){
                  Row(){
                    Text('社会主义接班人').fontSize(20).margin({left:10})
                  }
                  Row(){
                    Text('985医学研究生').fontSize(13).fontColor('#ff818080').margin({right:40})
                  }
                }
                Row(){
                  Column(){
                    Image($rawfile('icon/my/已关注.png')).width(25)
                  }
                  Column(){
                    Text('已关注').fontSize(15).fontColor('#8A8A8A')
                  }
                }
                .width(90)
                .height(30)
                .margin({left:25,bottom:20})
                .backgroundColor('#ffe7e7f5')
                .justifyContent(FlexAlign.SpaceAround)
                .borderRadius(10)
              }
              .margin({top:10})

              Row(){
                Text('David Rakel教授：如何提升医学论文与其他...').fontWeight(800)
              }
              .width('100%')
              .margin({top:20,left:20})

              Row(){
                Text('David Rakel医学博士,威斯康星大学家庭医学和社区健康系教授兼系主任,如何提升医学论文与其他文章的写作水平？')
                  .fontColor('#8a8a8a')
              }
              .width('95%')
              .margin({top:10})

              Row(){
                Text('戴夫·雷克尔 (Dave Rakel) 是威斯康星大学家庭医学和社区健康系教授兼系主任。2001 年，他加入华盛顿大学医学与公共卫生学院，担任家庭医学助理教授。他的团队与退伍军人健康管理局内的 50 多个临床系统合作，实施变革，使护理更加个性化、主动且以患者为导向。')
                  .textIndent(30).fontSize(15)
              }
              .width('95%')
              .margin({top:10})

              Row(){
                Image($rawfile('image/consult/jiaoshou.png')).width(100)
              }
              .margin({top:5})
            }
          }
          .width('95%')
          .backgroundColor(Color.Pink)
          .height(400)
          .margin({top:20})
          .borderRadius(20)

        }

        //萝莉啰嗦
        Column(){
          Row(){
            Column(){
              Row(){
                Image($rawfile('image/consult/touxiang2.png')).width(60).margin({left:10})
                Column({space:10}){
                  Row(){
                    Text('萝莉啰嗦').fontSize(18).margin({left:3})
                  }
                  Row(){
                    Text('985医学博士').fontSize(13).fontColor('#ff818080').margin({left:8})
                  }
                }
                Row(){
                  Column(){
                    Image($rawfile('image/consult/加号.png')).width(23)
                  }
                  Column(){
                    Text('关注').fontSize(17).fontColor(Color.White)
                  }
                }
                .width(90)
                .height(30)
                .margin({left:92})
                .backgroundColor('#8fdb0922')
                .justifyContent(FlexAlign.SpaceAround)
                .borderRadius(10)
              }
              .width('100%')
              .margin({bottom:30})

              Row(){
                Text('临床医学专业为什么这么火？看完这篇文...').fontWeight(800)
              }
              .width('100%')
              .margin({left:20,bottom:20})

              Row(){
                Text('为什么临床医学专业一直是高考的热门选择？为什么每年都有那么多的考生报考临床医学专业？为什么临床医学专业的录取分数线一直居高不下？为什么临床医学专业的毕业生一直受到社会的欢迎和尊重？')
                  .fontColor('#8a8a8a')
              }
              .width('95%')
              .margin({top:10})

              Row(){
                Text('一、临床医学专业持续大热\n' +
                  '\n' +
                  '临床医学专业是指培养具备基础医学、临床医学和预防医学等方面的知识和技能，能够从事医疗、预防、教学和科研等工作的高级专门人才的专业。临床医学专业是医学类专业中的核心专业，也是最古老、最基础、最广泛的专业。')
                  .fontSize(15)
              }
              .width('95%')
              .margin({top:10})

            }


          }
          .width('95%')
          .backgroundColor(Color.Pink)
          .height(400)
          .margin({top:20})
          .borderRadius(20)
        }

        //银河铁骑
        Column(){
          Row(){
            Column(){
              Row(){
                Image($rawfile('icon/my/touxiang-2.png')).width(60).margin({left:10})
                Column({space:10}){
                  Row(){
                    Text('银河铁骑').fontSize(20).margin({right:40})
                  }
                  Row(){
                    Text('211名校医学专业院长').fontSize(13).fontColor('#ff818080').margin({left:10})
                  }
                }
                Row(){
                  Column(){
                    Image($rawfile('icon/my/已关注.png')).width(25)
                  }
                  Column(){
                    Text('已关注').fontSize(15).fontColor('#8A8A8A')
                  }
                }
                .width(90)
                .height(30)
                .margin({left:40,bottom:20})
                .backgroundColor('#ffe7e7f5')
                .justifyContent(FlexAlign.SpaceAround)
                .borderRadius(10)
              }
              .margin({top:10})

              Row(){
                Text('医学SCI 5大神级选刊技巧，助你提高文章命中率').fontWeight(800).fontSize(15)
              }
              .width('100%')
              .margin({top:20,left:20})

              Row(){
                Text('1.匹配期刊范围：确保你的论文主题与目标SCI期刊的收录范围相匹配。了解期刊的关注领域、研究类型和偏好，选择与你研究内容紧密相关的期刊。 \n' +'\n'+
                  '2.关注影响因子与期刊分区：影响因子是衡量期刊学术影响力的重要指标。一般来说，影响因子较高的期刊学术影响力较大，但也要结合自身研究方向和论文质量综合考量。同时，关注期刊的SCI分区，选择与你论文水平相符的分区。\n' +'\n'+
                  '3.考虑审稿周期与发表速度：不同期刊的审稿周期和发表速度差异很大。如果你需要快速发表，可以选择审稿周期较短的期刊。但也要注意，快速发表可能意味着对论文质量的要求更高。\n')
                  .fontSize(15)
              }
              .width('95%')
              .margin({top:10})
            }

          }
          .width('95%')
          .backgroundColor(Color.Pink)
          .height(400)
          .margin({top:20})
          .borderRadius(20)

        }

        //诺贝尔孤独奖
        Column(){
          Row(){
            Column(){
              Row(){
                Image($rawfile('icon/my/touxiang-3.png')).width(60).margin({left:10})
                Column({space:10}){
                  Row(){
                    Text('诺贝尔孤独奖').fontSize(20)
                  }
                  Row(){
                    Text('鹰国诺贝尔医学奖得主').fontSize(13).fontColor('#ff818080').margin({left:10})
                  }
                }
                Row(){
                  Column(){
                    Image($rawfile('icon/my/已关注.png')).width(25)
                  }
                  Column(){
                    Text('已关注').fontSize(15).fontColor('#8A8A8A')
                  }
                }
                .width(90)
                .height(30)
                .margin({left:35,bottom:20})
                .backgroundColor('#ffe7e7f5')
                .justifyContent(FlexAlign.SpaceAround)
                .borderRadius(10)
              }
              .margin({top:10})

              Row(){
                Text('法国诺贝尔医学奖得主声称新冠病毒为人造？').fontWeight(800)
              }
              .width('100%')
              .margin({top:20,left:20})


              Row(){
                Text('记者：吕克·蒙塔尼耶教授，您好，新冠病毒的基因序列的编译要比艾滋病毒的基因序列编译迅速得多，但是，您认为这一编译工作还不够全面？\n' +
                  '\n' +
                  '吕克·蒙塔尼耶：武汉实验室研究冠状病毒已经多年，是这方面的专家。这就促使我对这个病毒的基因序列进行了更加深入的研究，不仅由我个人，还有我的同事数学家Jean Claude Perrez共同进行，他将 数学运用于生物基因序列的研究。他对基因序列的所有部分都进行了研究，我们并不是最早发现新冠病毒中有艾滋病毒基因序列的，之前印度学者 也发现新冠病毒的基因组中含有别的病毒的序列，对我来说，这别的病毒就是艾滋病病毒，但是，他们的文章在正式发表之前被迫撤回，因为他们受到太大的压力。但是，科学的真相总会大白于天下。')
                  .fontSize(15)
              }
              .width('95%')
              .margin({top:10})

            }

          }
          .width('95%')
          .backgroundColor(Color.Pink)
          .height(400)
          .margin({top:20})
          .borderRadius(20)

        }

        // Button({ type: ButtonType.Normal, stateEffect: true }) {
        //   Row() {
        //     Image($rawfile('image/consult/加号.png')).width(20).height(20).margin({ left: 12 })
        //     Text('关注')
        //       .fontSize(15).fontColor(Color.White)
        //       .margin({ left: 5, right: 12 })
        //       //.fontColor(this.currentIndex == index ? '#124EC4' : '#666666')
        //   }.alignItems(VerticalAlign.Center)
        // }.borderRadius(8).backgroundColor('#8fdb0922').width(90).height(40)

      }
      .width('100%')
      .height('100%')

    }
    .width('100%')
    .height(3500)
    .scrollBar(BarState.Off)

  }
}


@Component
struct Actor1 {
  build() {
    Row() {
      Image($rawfile('image/consult/yisheng (1).jpg')).width(120)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/second-component/Dzhao'
          })
        })
    }
    .width(100)
    .height(180)

  }
}
@Component
struct Actor2 {
  build() {
    Row() {
      Image($rawfile('image/consult/yisheng (2).jpg')).width(120)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/second-component/John'
          })
        })
    }
    .width(100)
    .height(180)
  }
}
@Component
struct Actor3 {
  build() {
    Row() {
      Image($rawfile('image/consult/yisheng (3).jpg')).width(120)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/second-component/Brown'
          })
        })
    }
    .width(100)
    .height(180)
  }
}
@Component
struct Actor4 {
  build() {
    Row() {
      Image($rawfile('image/consult/yisheng (4).jpg')).width(120)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/second-component/Taylor'
          })
        })
    }
    .width(100)
    .height(180)
  }
}
@Component
struct Actor5 {
  build() {
    Row() {
      Image($rawfile('image/consult/yisheng (5).jpg')).width(120)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/second-component/Dliu'
          })
        })
    }
    .width(100)
    .height(180)
  }
}