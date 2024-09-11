import BaseBusinessJS from './BaseBusinessJS';
import { webview } from '@kit.ArkWeb';
import { StrUtil } from '../StrUtil';
import { ToastUtil } from '../action/ToastUtil';
import { LogUtil } from '../LogUtil';
import { JavaScriptItem } from './JavaScriptItem';

export default class BaseBusinessPageJS extends BaseBusinessJS {
  baseBusinessPageMethodList: string [] =
    ["AddFocusPicture", "addHouse", "backH5", "backShowAlert", "claimPopupWindow", "completeInput", "DaikanUploadAtt",
      "editCustomerContact", "followInputCompleted"
      , "freshButton", "getCustomerSourceInfo", "getH5Url", "getIsPass", "getNewDetailUrl", "getOnsaleHouseList",
      "goBackList", "goEntrustEnter", "goInterviewInvitation", "goInviteOwners"
      , "gone", "goScanQR", "goToChatAction", "gotoNewTodoList", "hideWater", "hzIntentionComplete", "inputCompleted",
      "isButtonTouchEnabled", "isDetail", "isShowShareButton", "JumpCustomer", "jumpHouseDetail", "jumpTakeLookDetails",
      "JumpToFragment", "launchGainIntegralPageForAidoumallCallBack", "launchOrderListPageForAidoumallCallBack",
      "launchSubOrderResPageForAidoumallCallBack", "loadComplete",
      "locationClock", "map", "muteLocalAudio", "nativeSendCmd", "NewFocusInfo", "newTakeALook"
      , "openMap", "openShare", "receiveDialog", "returnEntrustList", "save", "saveEntrySuccess", "selectArea",
      "selectBuildings"
      , "sendSign", "sendTitle", "setExposurePage", "setPrintItems", "setTitile", "setTitle", "shareActionCallBack",
      "shareCreditImgaeCard"
      , "ShowFocusScan", "showHouseBookButton", "showVRError", "showWater", "startVR", "startVRVoice", "stopVRVoice",
      "submitSuccess"
      , "toDo", "todoGoBack", "toline", "toList", "updateBtnState", "updateCustomerRole", "updateTitle", "visible"
      , "CreatePic", "goReport", "houseReportPreviewSendCallBack", "launchBrokerChatActionCallBack",
      "launchNewHouseDetailCallBack"
      , "launchWeb", "locationMapNav", "morningPaperShare", "newHouseReportClock", "openAKD", "openBJNHdetail",
      "sendHistoryCreditUrl", "shareHouseVerification", "AddNeed", "checkPhone"
      , "EnterChuangguan", "EnterLianxi", "launchNewHouseDetail", "launchNewHouseDetailActionWithCallBack",
      "notesCustomerShare", "notesDetailsShare", "notesHouseShare", "onIMChat"
      , "openShareProject", "openShareProjectFile", "shareApplets", "shareWxMin"]

  constructor(controller: webview.WebviewController) {
    super(controller)
  }

  /**
   * Injects the JavaScript object into window and invoke the function in window.
   *
   * @returns javaScriptProxy object.
   */
  javaScriptProxy(object:object,jsName: string, jsMethod: string[]): JavaScriptProxy {
    let methods: string[] = []
    methods= methods.concat(jsMethod)
    methods=methods.concat(this.baseCommonMethodList, this.baseBusinessMethodList, this.baseBusinessPageMethodList)
    let result: JavaScriptProxy = {
      object: object,
      name: jsName,
      methodList: methods,
      controller: this.controller
    }
    return result;
  }

  /**
   * initialize the bridge.
   */
  initJsBridge(js: string): void {
    this.controller.runJavaScript(js);
  }

  /**
   *聚焦详情: 添加附件图片
   */
  AddFocusPicture(pkid: string, focusCode: string) {
    if (StrUtil.isEmpty(pkid) || StrUtil.isEmpty(focusCode)) {
      ToastUtil.showShort('正在获取数据请稍候')

    }
    this.appPathStack.pushPath({
      name: "", param: new Object({})
    })
  }

  /**
   *关联房间webView
   */
  addHouse() {

  }

  /**
   *清除历史记录，回到列表页
   */
  backH5() {
    this.controller.clearHistory()
    this.controller.refresh()
  }

  /**
   *返回是否显示提醒弹窗
   */
  backShowAlert(flag: string) {

  }

  /**
   *认领线上来客
   */
  claimPopupWindow(choose: string, claimStatusName: string) {

  }

  /**
   *委托书录入完成
   */
  completeInput(recordId: string) {

  }

  /**
   *新房带看上传图片
   */
  DaikanUploadAtt(daikanJson: string) {
    if (StrUtil.isEmpty(daikanJson)) {
      return

    }
    this.appPathStack.pushPath({
      name: "", param: new Object({})
    })
  }

  /**
   *设置客户联系方式
   */
  editCustomerContact(custCode: string, pkid: string, editPermissonType: string) {

  }

  /**
   *关闭页面发通知
   */
  followInputCompleted(isGong: string) {

  }

  /**
   *房源详情刷新底部按
   */
  freshButton() {

  }

  /**
   *h5跟进用 有效公客和失效公客 true  其他false
   */
  getCustomerSourceInfo(customerStatus: string) {

  }

  /**
   *刷新新url页面
   */
  getH5Url(url: string, type: string) {

  }

  /**
   *房源详情分享按钮控制
   */
  getIsPass() {

  }

  /**
   *
   */
  getNewDetailUrl(url: string) {

  }

  /**
   *跳转房源列表
   */
  getOnsaleHouseList(msg: object, handler: object) {

  }

  /**
   *返回上一个页面
   */
  goBackList(type: number) {
    this.appPathStack.pop()
  }

  /**
   *跳转到录入页面【委托书录入详情——>去录入——>录入页面】
   */
  goEntrustEnter(houseId: string, businessType: string, url: string) {

  }

  /**
   *跳转到另外一个WebView
   */
  goInterviewInvitation(url: string) {

  }

  /**
   *跳转邀请页面
   */
  goInviteOwners(type: string, proxyId: string) {

  }

  /**
   *底部按钮显示控制
   */
  gone() {

  }

  /**
   *跳转扫一扫
   */
  goScanQR(businessType: string) {

  }

  /**
   *跳转爱聊页面弹窗
   */
  goToChatAction(userId: string) {

  }

  /**
   *关闭页面发送消息
   */
  gotoNewTodoList(index: string) {
  }

  /**
   *隐藏水印
   */
  hideWater() {

  }

  /**
   *关闭页面发送消息
   */
  hzIntentionComplete(page: string) {

  }

  /**
   *保存成功后跳转客源详情页
   */
  inputCompleted(customerNo: string, customerId: string, businessType: string, customerName: string,
    customerRole: string, url: string) {

  }

  /**
   *底部按钮点击控制
   */
  isButtonTouchEnabled(isClick: boolean) {

  }

  /**
   *是否详情页
   */
  isDetail() {

  }

  /**
   *显示分享按钮
   */
  isShowShareButton(isShow: number) {

  }

  /**
   *跳转
   */
  JumpCustomer(custCode: string, isGuowang: string) {

  }

  /**
   *跳转房源详情页
   */
  jumpHouseDetail(houseId: string, callLimitFlag: string, businessType: string, url: string) {

  }

  /**
   *跳转带看详情
   */
  umpTakeLookDetails(showingId: string) {

  }

  /**
   *待办消息通知
   */
  JumpToFragment() {

  }

  /**
   *跳转获取积分页
   */
  launchGainIntegralPageForAidoumallCallBack() {

  }

  /**
   *跳转订单列表
   */
  launchOrderListPageForAidoumallCallBack() {

  }

  /**
   *跳转提交订单结果页
   */
  launchSubOrderResPageForAidoumallCallBack(order_id: string, payment_integral: string) {

  }

  /**
   *加载成功标识
   */
  loadComplete() {
  }

  /**
   *定位打卡
   */
  locationClock(cycleId: string, businessType: string, houseId: string) {

  }

  /**
   *弹窗
   */
  map(buildingLng: string, buildingLat: string, houseName: string, houseId: string) {

  }

  /**
   *VR相关
   */
  muteLocalAudio(type: string) {

  }

  /**
   *VR相关
   */
  nativeSendCmd(cmdString: string) {

  }

  /**
   *项目详情：录入聚焦
   */
  NewFocusInfo(json: string) {
    if (StrUtil.isEmpty(json)) {
      ToastUtil.showShort('正在获取数据请稍候')

    }
  }

  /**
   *跳转带看录入
   */
  newTakeALook(custCode: string, demandType: string) {

  }

  /**
   *跳转地图
   */
  openMap(lat: string, lng: string, projectItemPkid: string) {

  }

  /**
   *分享
   */
  openShare() {

  }

  /**
   *接收线上来客
   */
  receiveDialog() {

  }

  /**
   *返回
   */
  returnEntrustList() {
    this.appPathStack.pop()
  }

  /**
   *仅关闭
   */
  save() {
    this.appPathStack.pop()
  }

  /**
   *完成录入  跳转到发送合同
   */
  saveEntrySuccess(json: string) {

  }

  /**
   *跳转地区选择
   */
  selectArea(provinceName: string, cityName: string, cityCode: string) {

  }

  /**
   *跳转楼盘选择
   */
  selectBuildings() {

  }

  /**
   *发送签字，关闭页面
   */
  sendSign(recordId: string) {
    this.appPathStack.pop()
  }

  /**
   *设置标题
   */
  sendTitle(title: string) {

  }

  /**
   *type：1.联系人信息 2 客户信息 3 客户需求
   */
  setExposurePage(type: string) {

  }

  /**
   *
   */
  setPrintItems(str: string) {

  }

  /**
   *设置标题
   */
  setTitile(title: string) {

  }

  /**
   *设置标题
   */
  setTitle(title: string) {

  }

  /**
   *
   */
  shareActionCallBack() {

  }

  /**
   *分享弹窗
   */
  shareCreditImgaeCard(url: string) {

  }

  /**
   *聚焦详情：现场扫码
   */
  ShowFocusScan(focusCode: string) {

  }

  /**
   *关注房源,关注房源按钮：0不展示 1展示关注房源按钮 2展示取消关注房源按钮
   */
  showHouseBookButton(showHouseBookButton: string) {

  }

  /**
   *VR相关
   */
  showVRError(error: string) {
    LogUtil.debug('BaseBusinessPageJS', error)
  }

  /**
   *显示水印
   */
  showWater() {

  }

  /**
   *VR相关
   */
  startVR() {

  }

  /**
   *VR相关
   */
  startVRVoice() {

  }

  /**
   *VR相关
   */
  stopVRVoice() {

  }

  /**
   *提交成功
   */
  submitSuccess() {

  }

  /**
   *跳转到我的待办，选中待办任务
   */
  toDo() {

  }

  /**
   *关闭页面发送消息
   */
  todoGoBack() {

  }

  /**
   *线上来客认领页面点击
   */
  toline(customerNo: string, customerId: string, businessType: string, customerName: string, customerRole: string,
    url: string) {

  }

  /**
   *待办相关
   */
  toList() {

  }

  /**
   *控制UI
   */
  updateBtnState() {

  }

  /**
   * H5转介完成时，刷新页面会将customerRole字段传过来
   */
  updateCustomerRole(custRole: string, clientType: string) {

  }

  /**
   *设置标题
   */
  updateTitle(title: string) {

  }

  /**
   *底部按钮显示控制
   */
  visible() {

  }

  /**
   *生成海报
   */
  CreatePic(commId: string, commName: string) {

  }


  /**
   *跳转房源报告
   */
  goReport(pdfUrl: string, title: string) {

  }

  /**
   *发送通知消息
   */
  houseReportPreviewSendCallBack() {

  }

  /**
   *跳转到爱聊详情
   */
  launchBrokerChatActionCallBack(targetId: string, headUrl: string, name: string, phoneNumber: string) {

  }

  /**
   *跳转楼盘详情
   */
  launchNewHouseDetailCallBack() {

  }

  /**
   *再次启动当前页面
   */
  launchWeb(type: string, url: string) {

  }

  /**
   *获取位置
   */
  locationMapNav(destLatitude: number, destLongitude: number, destName: string) {

  }

  /**
   *发送我家早报
   */
  morningPaperShare(title: string, imgUrl: string, linkUrl: string, articleId: string) {

  }

  /**
   *跳转新房报备打卡
   */
  newHouseReportClock(recordId: string, projectId: string, projectItemPkid: string) {

  }

  /**
   *跳转爱客多页面
   */
  openAKD() {

  }

  /**
   *跳转爱客多新房详情
   */
  openBJNHdetail(estateId: string) {

  }

  /**
   *跳转页面
   */
  sendHistoryCreditUrl(url: string) {

  }

  /**
   *跳转房源验真分享页面
   */
  shareHouseVerification(dataType: string) {

  }

  /**
   *跳转新增客户需求
   */
  AddNeed() {

  }

  /**
   *查看核心
   */
  checkPhone() {

  }


  /**
   *进入闯关
   */
  EnterChuangguan(communityId: string, platform: string) {

  }


  /**
   *进入闯关练习
   */
  EnterLianxi(communityId: string, platform: string) {

  }


  /**
   *跳转新房详情页
   */
  launchNewHouseDetail(estateID: string, cityID: string, propertyTypeID: string) {

  }

  /**
   *专题跳转新房详情
   */
  launchNewHouseDetailActionWithCallBack(estateID: string, propertyTypeID: string, cityID: string) {

  }

  /**
   *项目笔记客户版分享
   */
  notesCustomerShare(json: string) {

  }


  /**
   *项目笔记详情版分享
   */
  notesDetailsShare(json: string) {

  }

  /**
   *项目笔记-户型鉴赏分享
   */
  notesHouseShare(json: string) {

  }

  /**
   *新房爱聊点击
   */
  onIMChat(json: string) {

  }

  /**
   *新房微信项目推广
   */
  openShareProject(params: string) {

  }

  /**
   *新房带看单分享
   */
  openShareProjectFile(params: string) {

  }

  /**
   *面访邀请、沟通邀请分享
   */
  shareApplets(houseId: string, businessType: string, interviewType: string, cycleId: string) {

  }

  /**
   *房源改价分享
   */
  shareWxMin(title: string, path: string, thumbImageUrl: string) {

  }
}