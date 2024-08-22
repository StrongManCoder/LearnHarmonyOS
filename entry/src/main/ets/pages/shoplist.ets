
class Item{
  name:string
  image:ResourceStr
  price:number
  discount:number

  constructor(name:string,image:ResourceStr,price:number,discount:number = 0) {
    this.name = name
    this.image = image
    this.price = price
    this.discount = discount
  }
}



@Entry
@Component
struct Shoplist {

  private  items :Array<Item> = [
    new Item('华为Mate60',$r('app.media.startIcon'),69999,500),
    new Item('华为Mate70',$r('app.media.app_icon'),79999,888),
    new Item('华为Mate80',$r('app.media.startIcon'),89999),
    new Item('华为Mate90',$r('app.media.startIcon'),99999,1278),
    new Item('华为Mate100',$r('app.media.startIcon'),59999),
  ];

  build() {

    Column({space:8}) {

      Row(){
        Text('百亿补贴')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
          .fontColor('#F36')

      }
      .width('100%')
      .margin({bottom:20})
      
      ForEach(
        this.items,
        (item:Item) => {

          Row({space:10}){
            Image(item.image)
              .width(100)

            Column({space:4}){

              if(item.discount){
                Text(item.name)
                  .fontSize(20)
                  .fontWeight(FontWeight.Bold)
                Text('💰原价' + item.price)
                  .fontColor('#CCC')
                  .fontSize(14)
                  .decoration({type : TextDecorationType.LineThrough})

                Text('💰折扣价' + (item.price-item.discount))
                  .fontColor('#F36')
                  .fontSize(18)
                Text('💰折补贴' + item.discount)
                  .fontColor('#F36')
                  .fontSize(18)

              }else {
                Text(item.name)
                  .fontSize(20)
                  .fontWeight(FontWeight.Bold)
                Text('💰' + item.price)
                  .fontColor('#F36')
                  .fontSize(18)
              }


            }
            .alignItems(HorizontalAlign.Start)
          }
          .width('100%')
          .backgroundColor('#FFF')
          .borderRadius(20)
          .height(120)
          .padding(10)


        }
      )
      

    }
    .backgroundColor('#2222')
  }
}