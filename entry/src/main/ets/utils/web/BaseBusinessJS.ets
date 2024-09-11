import BaseCommonJS from './BaseCommonJS';
import { webview } from '@kit.ArkWeb';
import { ToastUtil } from '../action/ToastUtil';
import { StrUtil } from '../StrUtil';

export default class BaseBusinessJS extends BaseCommonJS {
  baseBusinessMethodList: string [] = ["addTakeLook"
    , "checkContract", "defresh", "EditNeed", "editTakeLook", "focusMap", "getAgent", "goAccessoryManage",
    "goAuditProcess", "goAutoInterview",
    "goCentreGovList", "goCoupon", "goDimension", "goEducationDetail", "goHistoryRecommend", "goInviteToRegister",
    "goMaintainCensure", "goMyTotal"
    , "goPickSaleHouse", "goProtocolDetail", "goScoreLevel", "integralDetail", "intentionPush", "jumpAMSHouseDetails"
    , "JumpInviteRange", "JumpMapApp", "JumpNewWeb", "JumpProject", "launchChatActionCallBack",
    "launchHouseTypeListCallBack", "launchNewHouseListActionWithCallBack"
    , "launchShareActionCallBack", "launchToShareImageCallBack", "lectureEntry", "luanchNativeShare",
    "NewProjectCustomer", "openMapFindRoom", "openWTPoster", "previewPDF"
    , "returnContract", "selectCBD", "selectOS", "share", "showLocationClock", "showScanQR", "skipMap",
    "skipNotPutAway", "submit"
    , "threeDHouse", "toCustomerDetail", "toHouseDetail", "toHouseEnter", "toKongKanCheckIn", "toKongKanInvitation",
    "transactionCommonUpload", "transactionUploadInformation"
    , "transactionViewRequiredInformation", "transactionViewRequiredInformation", "editCustomerBaseInfo",
    "EditFocusInfo", "enterToCorrectionError"
    , "FocusTakelook"]

  constructor(controller: webview.WebviewController) {
    super(controller)
  }


  /**
   *跳转新房新增带看
   */
  addTakeLook(recordId: string) {
    this.appPathStack.pushPath({
      name: "", param: new Object({
        "isNew": 1, "RecordId": recordId
      })
    })
  }

  /**
   *查看合同pdf加载
   */
  checkContract(pdfUrl: string) {
    this.appPathStack.pushPath({
      name: "", param: new Object({
        "pdfUrl": pdfUrl
      })
    })
  }

  /**
   *跳转修改客户需求
   */
  EditNeed(lookCode: string) {
    this.appPathStack.pushPath({
      name: "", param: new Object({
        "isNew": 0, "LookPkid": lookCode
      })
    })
  }

  /**
   *聚焦地点
   */
  focusMap(projectName: string, address: string, lat: string, lng: string) {
    this.appPathStack.pushPath({
      name: "", param: new Object({
        "projectName": projectName,
        "address": address,
        "lat": lat,
        "lng": lng
      })
    })
  }

  /**
   *选择接收人/选择所属人
   */
  getAgent(businessType: string) {
    this.appPathStack.pushPath({
      name: "", param: new Object({
        "businessType": businessType
      })
    })
  }


  /**
   *跳转补充协议-附件管理
   */
  goAccessoryManage(hasAttachment: number, agrtId: string) {
    if (hasAttachment !== 1) {
      ToastUtil.showShort('暂无附件')
      return
    }
    this.appPathStack.pushPath({
      name: "", param: new Object({
        "agrtId": agrtId
      })
    })
  }

  /**
   *跳转补充协议-审批流程
   */
  goAuditProcess(agrtId: string) {
    this.appPathStack.pushPath({
      name: "", param: new Object({
        "agrtId": agrtId
      })
    })
  }

  /**
   *跳转自主面访页面
   */
  goAutoInterview(url: string) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    this.appPathStack.pushPath({
      name: "", param: new Object({
        "url": url
      })
    })
  }

  /**
   *跳转央产房屋类型查询
   */
  goCentreGovList() {
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转邀约注册活动-我的卡券
   */
  goCoupon() {
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转好房分子页面
   */
  goDimension(url: string) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转教育配套详情页面
   */
  goEducationDetail(url: string) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转历史聚焦页面
   */
  goHistoryRecommend(houseId: string) {
    if (StrUtil.isEmpty(houseId)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转官网注册邀请页
   */
  goInviteToRegister() {
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转维护人维护指责页面
   */
  goMaintainCensure(url: string, title: string) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转邀约注册活动-我的累计
   */
  goMyTotal() {
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转新房编辑带看
   */
  editTakeLook(lookCode: string) {
    this.appPathStack.pushPath({
      name: "", param: new Object({
        "lookCode": lookCode
      })
    })
  }


  /**
   *选择甄选房源
   */
  goPickSaleHouse(json: string) {
    this.appPathStack.pushPath({
      name: "", param: new Object({
        "data": json
      })
    })
  }

  /**
   *跳转协议详情pdf
   */
  goProtocolDetail(pdfPath: string, pdfPath1: string) {
    this.appPathStack.pushPath({
      name: "", param: new Object({})
    })
  }

  /**
   *跳转房源维护分、偏离度、 好房分解读
   */
  goScoreLevel(url: string) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    let s = "goodHouse"
    if (url.includes('#/maintenance')) {
      s = "defendScore"
    } else if (url.includes('#/degree')) {
      s = "degree"
    } else {
      s = "goodHouse"
    }
    this.appPathStack.pushPath({
      name: "", param: new Object({})
    })
  }

  /**
   *跳转信用分子页面
   */
  integralDetail(url: string) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转pdf预览
   */
  intentionPush(url: string, type: number) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    if (type === 1) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转相寓详情
   */
  jumpAMSHouseDetails(url: string,houseCode:string,roomId:string,sfContractNo:string) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *新房空看：邀请范围
   */
  JumpInviteRange(params: string) {
    if (StrUtil.isEmpty(params)) {
      ToastUtil.showShort('正在获取数据请稍候')
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转百度地图
   */
  JumpMapApp(lat: string,lng:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转当前新页面
   */
  JumpNewWeb(url: string,title: string) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转新房项目详情
   */
  JumpProject(projectName: string,pkid: string,projectItemPkid: string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 跳转爱聊页面
   */
  launchChatActionCallBack(name: string,phone: string, id: string,imgurl:string,cityId:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转楼盘户型列表
   */
  launchHouseTypeListCallBack(estateid: string,estateName: string,cityid:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *跳转新房列表
   */
  launchNewHouseListActionWithCallBack(cityID: string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 爱客多分享
   */
  launchShareActionCallBack(json: string) {
    if (StrUtil.isEmpty(json)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 图片分享
   */
  launchToShareImageCallBack(json: string) {
    if (StrUtil.isEmpty(json)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 跳转讲盘通关
   */
  lectureEntry(projectPkid: string) {
    if (StrUtil.isEmpty(projectPkid)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 跳转到图片上传
   */
  luanchNativeShare(id: string,type:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 跳转新建报备
   */
  NewProjectCustomer(groupName: string,groupTypeName:string,projectItemPkid:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 跳转新房地图找房
   */
  openMapFindRoom(lat: string,lng:string,projectItemPkid:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   * 新房分享
   */
  openWTPoster(json: string) {
    if (StrUtil.isEmpty(json)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   *跳转到pdf预览页
   */
  previewPDF(url: string,title:string) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   *跳转合同列表
   */
  returnContract() {

    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   *选择商圈
   */
  selectCBD(areaId: string) {
    if (StrUtil.isEmpty(areaId)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   * 选择大区
   */
  selectOS() {

    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   * 业主自荐跳转
   */
  share(shareType: string,shareId:string,batchNo:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   *面访打卡、业主房源录入房源地址弹窗
   */
  // showLocationClock(longitude: string,latitude:string,name:string) {
  //
  //   this.appPathStack.pushPath({
  //     name: ""
  //   })
  // }
  /**
   *面访打卡、业主房源录入房源地址弹窗
   */
  showLocationClock(clockTime:string,clockAddress: string,longitude:string,latitude:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   * 面访扫码展示
   */
  showScanQR(clockTime:string,clockAddress: string,longitude:string,latitude:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   * 跳转相寓位置周边
   */
  skipMap(latitude: string,longitude:string,name:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   * 跳转未上架原因页面
   */
  skipNotPutAway(houseId: string,businessType:string,planningUtilizationId:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   * 委托书录入--提交审核
   */
  submit(url: string) {
    if (StrUtil.isEmpty(url)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   *已废弃/返回是否是3D房源
   */
  threeDHouse(dflag: boolean) {

    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 跳转房源详情
   */
  toHouseDetail(houseId: string,callLimitFlag:string,businessType:string,url:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   * 跳转房源录入页
   */
  toHouseEnter(houseDetail: string) {
    if (StrUtil.isEmpty(houseDetail)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   * 新房空看：空看  空看打卡
   */
  toKongKanCheckIn(params: string) {
    if (StrUtil.isEmpty(params)) {
      ToastUtil.showShort('正在获取数据请稍候')
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }
  /**
   * 新房空看：集中看 空看邀请
   */
  toKongKanInvitation(params: string) {
    if (StrUtil.isEmpty(params)) {
      ToastUtil.showShort('正在获取数据请稍候')
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 备件上传
   */
  transactionCommonUpload(instanceId: string) {
    if (StrUtil.isEmpty(instanceId)) {
      return
    }
    //请求接口  tmsApp/validToken/attachUploadV2
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 跳转资料上传页
   */
  transactionUploadInformation(cityid: string,contractNo:string,providerType:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 跳转查看所需资料页
   */
  transactionViewRequiredInformation(cityid: string,contractNo:string,flowCode:string,providerType:string) {

    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 教育配套详情关闭页面发送通知
   */
  confirmAssociatedCommunity(msg: string,handler:string) {
    this.appPathStack.pop(msg)
  }


  /**
   * 跳转客源基本信息修改页
   */
  editCustomerBaseInfo(custCode: string) {
    if (StrUtil.isEmpty(custCode)) {
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   *项目详情：修改聚焦
   */
  EditFocusInfo(pkid: string,scanUserid:string) {
    if (StrUtil.isEmpty(pkid)) {
      ToastUtil.showShort('正在获取数据请稍候')
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }

  /**
   * 跳转纠错详情  暂定
   */
  enterToCorrectionError(msg: string) {

  }

  /**
   * 聚焦详情：打卡
   */
  FocusTakelook(pkid: string,lat:string,lng:string) {
    if (StrUtil.isEmpty(pkid)) {
      ToastUtil.showShort('正在获取数据请稍候')
      return
    }
    this.appPathStack.pushPath({
      name: ""
    })
  }




  /**
   *空方法
   */
  defresh() {
  }
}