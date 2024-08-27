//自定义组件
@Component
export  struct  Header {
  private title: ResourceStr = ''

  build() {

    Row(){

      Text('<<<')
        .fontSize(30)
        .fontColor('#F255')


      Text(this.title)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .fontColor('#F36')

      Blank()
      Text('O')
        .fontSize(30)
        .fontColor('#F36')

    }
    .width('100%')
    .height(30)
  }
}
