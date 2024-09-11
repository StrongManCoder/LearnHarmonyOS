import {Header} from '../../Component/CommonCOmponent'
import ShopInfo from  '../viewmodel/ShopInfo'
import  ShopItem from '../views/ShopItem'
import shopModel from '../model/ShopModel'
import JSONUtil from '../utils/JSONUtil'


@Entry
@Component
struct ShopPage {

  @State shops: ShopInfo[] = []

  isLoading: boolean = false

  aboutToAppear(): void {
    this.loadShopInfos()
  }


  build() {
    Column() {
      Header({title:'商铺列表'})
        .margin(20)

      List({space:10}){
        ForEach(this.shops, (shop:ShopInfo) => {
          ListItem(){
            ShopItem({shop:shop})
          }
        })
      }
      .width('100%')
      .height('80%')
      .layoutWeight(1)
      .onReachEnd(()=>{
        console.log('触底了')

        if(this.isLoading){
          this.isLoading = true
          console.log('加载数据')
          shopModel.pageNo ++
          this.loadShopInfos()
        }

      })


    }
    .height('100%')
    .width('100%')
    .padding(10)
  }

  //加载数据
  loadShopInfos(){

    console.log('开始请求接口',this.shops.length)

    shopModel.getShopList()
      .then((shops)=>{

        // const  shopssss =  JSONUtil.jsonToArray(ShopInfo,shops.toString());
        const  shopssss =JSON.parse(shops) as  ShopInfo[]
          console.log('数组个数啊',shopssss.length)

        shopssss.forEach( s =>{
          s.images.forEach((src,i)=>{
            s.images[i] = 'http://localhost:3000' + src
          })
        })

        //拼接上去后面的数据
        this.shops = this.shops.concat(shopssss);

        console.log(' this.shops数组个数啊',this.shops.length)

      })
      .catch(()=>{

      })



  }




}