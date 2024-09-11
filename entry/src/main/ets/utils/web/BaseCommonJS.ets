import { webview } from '@kit.ArkWeb'
import { JavaScriptItem } from './JavaScriptItem';
import { ParamsItem } from './ParamsItem';
import call from '@ohos.telephony.call';
import { common, Want } from '@kit.AbilityKit';
import { BusinessError } from '@kit.BasicServicesKit';
import { PreferencesUtil } from '../PreferencesUtil';
import { CommonConstants } from '../../../../../../../wiwork_harmony/commons/utils/src/main/ets/common/CommonConstants';
import { DialogUtil } from '../action/DialogUtil';
import { HMNavPathStack } from '@hadss/hmrouter';

export default class BaseCommonJS {
  controller: webview.WebviewController
  appPathStack: NavPathStack
  baseCommonMethodList: string [] = ["backmainpage", "call", "cancel", "close", "closeActivity", "closeDetail", "closePage",
    "CloseTrainHelpPage", "downLoadFile", "downLoadPic", "finish", "getUserId", "gobacdList", "goBack", "goBackClaimed",
    "goCallPhone", "returnLogin", "showAlert", "toDownloadZip", "wiwjToken", "finishReturn"]


  constructor(controller: webview.WebviewController) {
    this.controller = controller;
    this.appPathStack = new NavPathStack()


  }





  //--------------------基础JS方法 ------------------

  /**
   * 关闭页面
   */
  backmainpage() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面
   */
  cancel() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面
   */
  close() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面
   */
  closeActivity() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面
   */
  closeDetail() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面
   */
  closePage() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面
   */
  CloseTrainHelpPage() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面
   */
  finish() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面
   */
  gobacdList() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面
   */
  goBack() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面
   */
  goBackClaimed() {
    this.appPathStack.pop()
  }

  /**
   * 关闭页面发送通知
   */
  finishReturn() {
    this.appPathStack.pop("refresh")
  }


  /**
   * 下载文件
   * H5跳转到外部浏览器下载文件
   * @param path
   */
  downLoadFile(path: string) {

    let context = getContext(this) as common.UIAbilityContext;
    let wantInfo: Want = {
      // uncomment line below if wish to implicitly query only in the specific bundle.
      // bundleName: 'com.example.myapplication',
      action: 'ohos.want.action.viewData',
      // entities can be omitted.
      entities: ['entity.system.browsable'],
      uri: `${path}}`
    }
    context.startAbility(wantInfo).then(() => {

    }).catch((err: BusinessError) => {

    })

  }

  /**
   * 下载文件
   * H5跳转到外部浏览器下载文件
   * @param path
   */
  toDownloadZip(path: string) {

    let context = getContext(this) as common.UIAbilityContext;
    let wantInfo: Want = {
      // uncomment line below if wish to implicitly query only in the specific bundle.
      // bundleName: 'com.example.myapplication',
      action: 'ohos.want.action.viewData',
      // entities can be omitted.
      entities: ['entity.system.browsable'],
      uri: `${path}}`
    }
    context.startAbility(wantInfo).then(() => {

    }).catch((err: BusinessError) => {

    })

  }


  /**
   * 下载文件
   * H5跳转到外部浏览器下载文件
   * @param path
   */
  downLoadPic(path: string) {

  }


  /**
   * 拨打电话
   * @param number
   */
  call(number: string) {
    call.makeCall(number)
  }

  /**
   * 拨打电话
   * @param number
   */
  goCallPhone(number: string) {
    call.makeCall(number)
  }

  /**
   * 跳转登录页
   */
  returnLogin(number: string) {
    this.appPathStack.pushPath({
      name: 'login/LoginPage'
    })
  }


  /**
   * 显示弹窗
   */
  showAlert(title: string, content: string) {
    DialogUtil.showConfirmDialog({
      title: title, message: `${content}`, confirm: {
        value: '确认', action: () => {

        }
      }
    })
  }

  /**
   * 获取用户id
   */
  getUserId(): Promise<string> {
    return PreferencesUtil.getString(CommonConstants.PREFERENCE_USER_ID_KEY)

  }

  /**
   * 获取token
   */
  wiwjToken(): Promise<string> {
    return PreferencesUtil.getString(CommonConstants.PREFERENCE_TOKEN_KEY)

  }
}