export class TestData{
  static selectOptions: SelectOption[]=[
    { value:'我'},{ value:'爸爸'},{ value:'妈妈'},{ value:'爷爷'},{ value:'奶奶'},
  ]

  static selectOptions_2: SelectOption[]=[
    { value:'08:00-09:00'},{ value:'09:00-10:00'},{ value:'10:00-11:00'},{ value:'14:00-15:00'},{ value:'15:00-16:00'},{ value:'16:00-17:00'},{ value:'17:00-18:00'}
  ]

  static person : string[]=['个人数据','医疗档案','健康管理','提醒设置','健康计划']
  static orders : string[]=['挂号预约','咨询问诊','药品购买']
  static family : string[]=['我','父亲','母亲','爷爷','奶奶','姐姐','哥哥']

  static Personal: Card []=[
    { icon:$rawfile('icon/personal/体重.png'),title:'体重',detail:'74.2KG'},
    { icon:$rawfile('icon/personal/测身高.png'),title:'身高',detail:'185cm'},
    { icon:$rawfile('icon/personal/高血压.png'),title:'血压',detail:'112mmHg'},
    { icon:$rawfile('icon/personal/血氧.png'),title:'血氧饱和度',detail:'97%'},
    { icon:$rawfile('icon/personal/睡眠.png'),title:'睡眠',detail:'8h37min'},
    { icon:$rawfile('icon/personal/心率.png'),title:'心率',detail:'73bmp'},
    { icon:$rawfile('icon/personal/血糖.png'),title:'血糖',detail:'5.5mmol/L'},
    { icon:$rawfile('icon/personal/体脂率.png'),title:'体脂率',detail:'11.9%'}
]
  static MedicalRecord: Card []=[
    { icon:$rawfile('icon/personal/就诊记录.png'),title:'就诊记录'},
    { icon:$rawfile('icon/personal/检查报告.png'),title:'检查报告'}
  ]

  static HealthManagement: Card []=[
    { icon:$rawfile('icon/personal/饮食记录.png'),title:'饮食记录'},
    { icon:$rawfile('icon/personal/运动记录.png'),title:'运动记录'},
    { icon:$rawfile('icon/personal/睡眠定制.png'),title:'睡眠记录'}
  ]

  static RemindSettings: Card []=[
    { icon:$rawfile('icon/personal/就诊提醒.png'),title:'就诊提醒'},
    { icon:$rawfile('icon/personal/服药提醒.png'),title:'服药提醒'},
    { icon:$rawfile('icon/personal/体检提醒.png'),title:'体检提醒'}
  ]

  static HealthPlan: Card []=[
    { icon:$rawfile('icon/personal/目标制定.png'),title:'制定目标'}
  ]


}
export interface Card{
  icon: Resource
  title: string
  detail?:string
}
