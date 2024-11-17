import { router } from '@kit.ArkUI'

@Entry
@Component

struct Guanzhu {

  @State changeValue: string = ''
  @State submitValue: string = ''

  @State text: string = ''
  @State enterTypes: Array<EnterKeyType> =
    [EnterKeyType.Go, EnterKeyType.Search, EnterKeyType.Send, EnterKeyType.Done, EnterKeyType.Next,
      EnterKeyType.PREVIOUS, EnterKeyType.NEW_LINE]
  @State index: number = 0
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
          Text('我的关注').fontSize(20).margin({left:110})
        }
      }
      .width('100%')
      .backgroundColor(Color.White)

      //part 2
      Search({ value: this.changeValue, placeholder: '搜索我的关注' })
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
        .height(40)
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

      //part 3 关注的人
      Column(){
        Row(){
          Image($rawfile('icon/my/touxiang-1.png')).width(70).margin({left:10})
          Column({space:10}){
            Row(){
              Text('社会主义接班人').fontSize(20).margin({left:10})
            }
            Row(){
              Text('为人民服务!  !  !').fontSize(13).fontColor('#ff818080').margin({right:40})
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
          .width(80)
          .margin({left:72})
          .backgroundColor('#ffd2d1d1')
          .justifyContent(FlexAlign.SpaceBetween)
          .borderRadius(20)
        }
        .width('100%')
        .backgroundColor('#8f8addff')
        .height(100)
        .margin({top:20})
        .border({
          radius: { bottomLeft: 20, bottomRight: 20 },
        })

        Row(){
          Image($rawfile('icon/my/touxiang-2.png')).width(70).margin({left:10})
          Column({space:10}){
            Row(){
              Text('银河铁骑').fontSize(20).margin({right:60})
            }
            Row(){
              Text('为探索宇宙之奥秘而学习...').fontSize(13).fontColor('#ff818080').margin({left:10})
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
          .width(80)
          .margin({left:59})
          .backgroundColor('#ffd2d1d1')
          .justifyContent(FlexAlign.SpaceBetween)
          .borderRadius(20)

        }
        .width('100%')
        .backgroundColor('#8f8addff')
        .height(100)
        .margin({top:5})
        .border({
          radius: { bottomLeft: 20, bottomRight: 20 },
        })

        Row(){
          Image($rawfile('icon/my/touxiang-3.png')).width(70).margin({left:10})
          Column({space:10}){
            Row(){
              Text('诺贝尔孤独奖').fontSize(20).margin({right:80})
            }
            Row(){
              Text('牛羊才成群结队，而狼群永远独行 ！').fontSize(13).fontColor('#ff818080').margin({left:10})
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
          .width(80)
          .backgroundColor('#ffd2d1d1')
          .justifyContent(FlexAlign.SpaceBetween)
          .borderRadius(20)
        }
        .width('100%')
        .backgroundColor('#8f8addff')
        .height(100)
        .margin({top:5})
        .border({
          radius: { bottomLeft: 20, bottomRight: 20 },
        })
      }

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffe2e1e1')
  }
}