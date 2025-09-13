interface Progress {
  value: number, total?: number, type?: ProgressType
}

let progress: Progress = {
  value: 50,
  total: 100,
  type: ProgressType.Linear
}

@Component
export struct Home {
  build() {
    List() {
      // 餐厅简介
      ListItem() {
        Column() {
          Column() {
            Text('香满园餐厅')
              .fontSize(22)
              .fontWeight(800)
            Text('营业中 | 10:00-22:00')
            Text('解放路88号')
          }
          .width('100%')
          .height('50%')
          .justifyContent(FlexAlign.Center)
          .alignItems(HorizontalAlign.Start)
          Row() {
            Column() {
              Text('当前叫号')
              Text('A102')
                .fontWeight(600)
            }
            Column() {
              Text('您前方等待')
              Text('8桌')
                .fontWeight(600)
            }
            Column() {
              Text('预计等待')
              Text('35分钟')
                .fontWeight(600)
            }
          }
          .width('100%')
          .height('50%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .padding(10)
      }
      .width('100%')
      .height(180)
      .margin({bottom: 15})
      .borderRadius(20)
      .backgroundColor('#fff3f3f3')
      .clip(true)

      // 排队状态
      ListItem() {
        Column() {
          Row() {
            Text('您的排队状态')
              .fontWeight(800)
            Text('排队中')
              .fontWeight(800)
              .fontColor('#ff429bf8')
          }
          .width('100%')
          .height(40)
          .justifyContent(FlexAlign.SpaceBetween)
          Column() {
            Row() {
              Text('您的号码')
                .margin({right: 10})
              Text('A108')
                .fontWeight(800)
            }
            .width('100%')
            .justifyContent(FlexAlign.Start)
            Progress(progress)
              .width(300)
              .height(30)
            Row() {
              Text('A100')
              Text('当前 A110')
                .fontWeight(600)
              Text('A120')
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .width('100%')
          .justifyContent(FlexAlign.Center)
          .layoutWeight(1)
        }
        .padding(10)
        .height('100%')
      }
      .width('100%')
      .height(140)
      .margin({'bottom': 15})
      .borderRadius(20)
      .backgroundColor('#fff3f3f3')

      // 预约取号
      ListItem() {
        Column() {
          Row() {
            Text('预约取号')
              .fontWeight(800)
          }
          .width('100%')
          .height(30)
          .justifyContent(FlexAlign.Start)
          Text('用餐人数')
            .margin({bottom: 10})
          Row() {
            Button('1-2人')
              .width(90)
            Button('3-4人')
              .width(90)
            Button('5-6人')
              .width(90)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .margin({bottom: 10})
          Text('手机号码')
            .margin({bottom: 10})
          TextInput({placeholder: '输入手机号码'})
            .width(300)
            .margin({bottom: 10})
          Button('一键取号')
            .alignSelf(ItemAlign.Center)
            .width(300)
        }
        .width('100%')
        .height('100%')
        .padding(10)
        .alignItems(HorizontalAlign.Start)
      }
      .width('100%')
      .height(260)
      .margin({bottom: 15})
      .borderRadius(20)
      .backgroundColor('#fff3f3f3')
    }
    .width(330)
    .scrollBar(BarState.Off)
  }
}