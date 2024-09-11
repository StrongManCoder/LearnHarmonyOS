import ShopInfo from '../viewmodel/ShopInfo'
import http from '@ohos.net.http';
import { JSON } from '@kit.ArkTS';
import { BusinessError } from '@kit.BasicServicesKit';

class ShopModel{
  baseURL:string = 'http://localhost:3000'
  pageNo:number = 1

  getShopList():Promise<string>{

    return new Promise((resolve,reject)=>{

      let httpRequest = http.createHttp()

      httpRequest.request(
        `${this.baseURL}/shops?pageNo=${this.pageNo}&pageSize=3`,
        {
          method:http.RequestMethod.GET
        }
      )
        .then( (resp:http.HttpResponse) => {

          if(resp.responseCode === 200){

            console.log('查询成功',resp.result)

            // const result:ShopInfo = resp.result;
            const result = resp.result.toString()

            console.log('成功的result ',result)

            resolve(result)
          }else {
            reject('查询失败')
          }

        })
        .catch( (error:BusinessError) =>{
          console.log('失败',error.message)

        })

    })




  }

}


const  shopModel = new ShopModel();

export  default shopModel as ShopModel