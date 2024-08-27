


class  Task {
  static  id:number = 1
  name:string =`任务${Task.id++}`
  finished:boolean = false


}

@Styles function  card(){
  .width('95%')
  .padding(20)
  .backgroundColor(Color.White)
  .borderRadius(15)
  .shadow({radius:6,color:'#1F000000',offsetX:2,offsetY:4})

}

@Extend(Text)function  finishedTask(){
  .decoration({type:TextDecorationType.LineThrough})
  .fontColor('#B1B2B1')
}



@Entry
@Component
struct PropPage {

  @State totalTask: number = 0
  @State finishTask: number = 0
  @State tasks: Task[] = []


  handleTaskChange(){

    // 更新任务总数量
    this.totalTask = this.tasks.length
    //更新筛选数组里面已完成的数据
    this.finishTask = this.tasks.filter(item =>item.finished).length

  }


  build() {
    Column({space:10}){
  //1,任务进度卡片
      Row(){
        Text('任务进度')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)

        Stack(){
          Progress({
            value:this.finishTask,
            total:this.totalTask,
            type:ProgressType.Ring
          })

          Row(){
            Text(this.finishTask.toString())
              .fontSize(24)
              .fontColor('#36D')
            Text('/' + this.totalTask.toString())
              .fontSize(24)
          }
        }
      }
      .card()
      .margin({top:20,bottom:20})
      .justifyContent(FlexAlign.SpaceEvenly)

      //新增任务按钮
      Button('新增任务')
        .width(200)
        .onClick(()=>{
          //新增任务数据
          this.tasks.push(new Task())

          this.handleTaskChange()

        })
      // 任务列表

      List({space:10}){
        ForEach(
          this.tasks,
          (item:Task,index:number) =>{
          ListItem(){
            Row(){
              Text(item.name)
                .fontSize(20)
              Checkbox()
                .select(item.finished)
                .onChange(val =>{
                  //更新当前任务状态
                  item.finished = val
                  this.handleTaskChange()
                })
            }
            .card()
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .swipeAction({end:this.DeleteButton(index)})


           }
        )


      }
      .width('100%')
      .layoutWeight(1)
      .alignListItem(ListItemAlign.Center)



    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F1F2F3')


  }

  @Builder DeleteButton(index:number){
    Button('DEL')
      .width(50)
      .height(50)
      .type(ButtonType.Circle)
      .backgroundColor(Color.Red)
      .margin(6)
      .onClick(()=>{
        this.tasks.splice(index,1)
        this.handleTaskChange()
      })
  }



}