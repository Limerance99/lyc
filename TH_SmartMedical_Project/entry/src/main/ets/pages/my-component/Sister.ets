@Component
export struct Sister{
  build() {
    Column(){

      Scroll(){
        Column(){
          Column(){

            Row(){
              Text('姓名：').fontSize(18).margin({right:200}).fontColor('#8a8a8a')
              Text('王宁蝶').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('性别：').fontSize(18).margin({right:237}).fontColor('#8a8a8a')
              Text('女').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('年龄：').fontSize(18).margin({right:220}).fontColor('#8a8a8a')
              Text('19岁').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('民族：').fontSize(18).margin({right:223}).fontColor('#8a8a8a')
              Text('汉族').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('身份证号：').fontSize(18).margin({right:40}).fontColor('#8a8a8a')
              Text('410123567812349876').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('手机号：').fontSize(18).margin({right:130}).fontColor('#8a8a8a')
              Text('13327389486').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('血型：').fontSize(18).margin({right:210}).fontColor('#8a8a8a')
              Text('O型血').fontSize(18)
            }.margin({top:10})


          }
          .width('95%')
          .height('19%')
          .backgroundColor(Color.White)
          .margin({top:5})
          .borderRadius(10)

          Column(){

            Row(){
              Text('常驻类型：').fontSize(18).margin({right:190}).fontColor('#8a8a8a')
              Text('户籍').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('户籍所在地：').fontSize(18).margin({right:100}).fontColor('#8a8a8a')
              Text('河南省郑州市').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('现住址：').fontSize(18).margin({right:135}).fontColor('#8a8a8a')
              Text('河南省郑州市').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('文化程度：').fontSize(18).margin({right:190}).fontColor('#8a8a8a')
              Text('本科').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('职业：').fontSize(18).margin({right:225}).fontColor('#8a8a8a')
              Text('学生').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('婚姻情况：').fontSize(18).margin({right:190}).fontColor('#8a8a8a')
              Text('未婚').fontSize(18)
            }.margin({top:10})



          }
          .width('95%')
          .height('16%')
          .backgroundColor(Color.White)
          .margin({top:5})
          .borderRadius(10)

          Column(){

            Row(){
              Text('健康情况：').fontSize(18).margin({right:190}).fontColor('#8a8a8a')
              Text('鼻炎').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('确诊年份：').fontSize(18).margin({right:100}).fontColor('#8a8a8a')
              Text('2017年12月1日').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('病例来源：').fontSize(18).margin({right:100}).fontColor('#8a8a8a')
              Text('河南省中心医院').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('最近检查：').fontSize(18).margin({right:100}).fontColor('#8a8a8a')
              Text('2024年11月1日').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('检查医生：').fontSize(18).margin({right:170}).fontColor('#8a8a8a')
              Text('赵医生').fontSize(18)
            }.margin({top:10})

            Row(){
              Column(){
                Text('当前用药：').fontSize(18).margin({right:10,bottom:55}).fontColor('#8a8a8a')
              }
              Column({space:5}){
                Text('阿莫西林').fontSize(18).margin({left:145})
                Text('麻黄碱滴鼻液').fontSize(18).margin({left:110})
                Text('布地奈德鼻喷雾剂').fontSize(18).margin({left:75})
              }

            }.margin({top:10})
          }
          .width('95%')
          .height('21%')
          .backgroundColor(Color.White)
          .margin({top:5})
          .borderRadius(10)

          Column(){

            Row(){
              Text('既往史：').fontSize(18).margin({right:230}).fontColor('#8a8a8a')
              Text('无').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('过敏史：').fontSize(18).margin({right:160}).fontColor('#8a8a8a')
              Text('草莓、芒果').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('家族史：').fontSize(18).margin({right:235}).fontColor('#8a8a8a')
              Text('无').fontSize(18)
            }.margin({top:10})

            Row(){
              Text('遗传病史：').fontSize(18).margin({right:217}).fontColor('#8a8a8a')
              Text('无').fontSize(18)
            }.margin({top:10})

          }
          .width('95%')
          .height('11%')
          .backgroundColor(Color.White)
          .margin({top:5})
          .borderRadius(10)
        }
        .width('100%')
        .height(1200)
      }
      .height('89.5%')
      .scrollBar(BarState.Off)
    }
    .width('100%')
    .height('100%')
  }

}