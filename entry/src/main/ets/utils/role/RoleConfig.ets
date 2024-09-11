
import { PreferencesUtil } from '../PreferencesUtil';
import { List } from '@kit.ArkTS';
import { CommonConstants } from '../../../../../../../wiwork_harmony/commons/utils/src/main/ets/common/CommonConstants';
import { StrUtil } from '../StrUtil';

export class RoleConfig {
  static readonly new_house_project = "newHouseListForAgent"; //新房项目
  static readonly home_build = "WIWK:HOME:BUILDING"; //采集
  static readonly home_houseviewing = "WIWK:HOME:HOUSEVIEWING"; //看房
  static readonly home_contract = "WIWK:HOME:CONTRACTMANAGEMENT"; //合同
  static readonly home_signin = "WIWK:HOME:SIGNIN"; //签到
  static readonly home_secondhand = "WIWK:HOME:SECONDHAND"; //二手房
  static readonly home_rent = "WIWK:HOME:RENT"; //租房
  static readonly home_implement = "WIWK:HOME:IMPLEMENT"; //贷款计算器/购房工具
  static readonly message_user = "WIWK:MESSAGE:USER"; //消息
  static readonly pending_user = "WIWK:PENDING:USER"; //待办
  static readonly telephone_directory = "WIWK:TELEPHONE:DIRECTORY:USER"; //通讯录
  static readonly user_center = "WIWK:USER:CENTER"; //我的
  static readonly study_center = "WIWK:HOME:STUDY"; //学习中心
  static readonly nhpage_manager = "NH:NHPAGE:MANAGER"; //新房首页
  static readonly nhbuild_manager = "NH:NHBUILD:MANAGER"; //新房楼盘
  static readonly nhcustomer_manager = "NH:NHCUSTOMER:MANAGER"; //新房客户

  static readonly rent_check = "WIWK:HOME:LIMITEDCUSTOMER"; //限制性校验
  static readonly existing_home_calculate = "TMS:MINTAX:MANAGER"; //存量房计算器
  static readonly question_answer = "WIWK:HOME:ANSWER"; //问答
  static readonly owner_entrust = "WIWK:HOME:OWNERENTRUST"; //业主委托

  static readonly rent_contract = "WIWK:SCM:LEASE:DRAFTCONT:MANAGER"; //租赁合同
  static readonly rent_quick_resign = "SCM:LEASE:DRAFTCONT:QUICK_RESIGN"; //租赁合同-快签
  static readonly rent_look = "WIWK:SCM:CUST:WATCH:LEASE:QUERY"; //租赁带看
  static readonly rent_withdraw = "SCM:LEASE:FORMALCONT:REVOKE"; //租赁撤回功能权限码
  static readonly deal_look = "WIWK:SCM:CUST:WATCH:BUY:QUERY"; //买卖带看
  static readonly entrust_contract = "WIWK:HOME:BROKERAGECONTRACT"; //委托合同
  static readonly call_400 = "WIWK:HOME:400NUMBER"; //400来电录音
  static readonly data_kanban = "WIWK:HOME:MYRANKING"; //战绩榜-数据看板
  static readonly home_wechat = "WIWK:HOME:WECHATASSISTANT"; //小程序二期
  static readonly home_aikeduo = "WIWK:HOME:WECHATASSISTANT"; //爱可多

  static readonly all_function = "WIWK:HOME:ALLFunction"; //自定义 首页全部功能code

  static readonly robot_customer_service = "WIWK:HOME:ANSWERING"; //机器人权限

  static readonly house_source_lease = "WIWK:SCM:HOUS:RENT:LIST:MANAGER"; //房源租赁查询
  static readonly house_source_buy_and_sell = "WIWK:SCM:HOUS:SELL:LIST:MANAGER"; //房源买卖查询
  static readonly customer_lease = "WIWK:SCM:CUST:RENT:LIST:MANAGER"; //客源租赁查询
  static readonly customer_buy_and_sell = "WIWK:SCM:CUST:SELL:LIST:MANAGER"; //客源买卖查询
  static readonly house_source_enter = "WIWK:SCM:HOUS:ADD:MANAGER"; // 非v+房源录入
  static readonly hs_enter_sh = "WIWK:SCM:HOUS:ADD:SHANGHAI"; // v+上海房源录入
  static readonly hs_enter_ty = "WIWK:SCM:HOUS:ADD:TAIYUAN"; // v+太原房源录入
  static readonly hs_enter_nj = "WIWK:SCM:HOUS:ADD:NANJING"; // v+南京房源录入
  static readonly hs_enter_sz = "WIWK:SCM:HOUS:ADD:SUZHOU"; // v+苏州房源录入
  static readonly hs_enter_tj = "WIWK:SCM:HOUS:ADD:TIANJIN"; // v+天津房源录入

  static readonly hs_enter_sale = "SCM:HOUSE:BUY:ADD"; // 买卖新增
  static readonly hs_enter_rent = "SCM:HOUSE:LEASE:ADD"; // 租赁新增


  static readonly customer_source_lease_enter = "WIWK:SCM:CUST:RENT:ADD:MANAGER"; //租赁客源录入
  static readonly customer_source_buy_and_sell_enter = "WIWK:SCM:CUST:SELL:ADD:MANAGER"; //买卖客源录入
  static readonly potential_cust_manager = "SCM:CUST:POTENTAIL:LIST:MANAGER"; // 线上来客管理


  static readonly chenken_soup = "WIWK:HOME:TODYIMAGE"; //心灵鸡汤
  static readonly bargin_personal_integral_limit = "APS:CREDIT-POINT:PERSON-BOARD:MANAGER"; //个人信用分看板  我的页--信用分
  static readonly general_personal_integral_limit = "APS:CREDIT-POINT:RENT-PERSON-BOARD:MANAGER"; //普租个人信用分看板
  static readonly live_personal_integral_limit = "APS:CREDIT-POINT:FZ-PERSON-BOARD:MANAGER"; //相寓个人信用分看板
  static readonly department_integral_limit = "APS:CREDIT-POINT:DEPT-BOARD:MANAGER"; //部门信用分看板  我的页--信用二期(领导查看)权限码
  static readonly performance_limit = "APS:PERF-POINT:PERSON-BOARD:MANAGER"; // 我的页--绩效分
  static readonly integral_shop = "APS:CREDIT-POINT:MALL:MANAGER"; // 我的页--积分商城


  // 买卖委托详情底部按钮权限
  static readonly sale_entry_modification = "SCM:HOUSE:SALE:PROMOTE_PROXY:DRAFT_MODIFY_INFO"; //买卖-委托书已录入修改信息（简版委托）
  static readonly sale_electronic_signature = "SCM:HOUSE:SALE:PROMOTE_PROXY:ELECTRONIC_SEAL"; //买卖-电子签章（简版委托）
  static readonly sale_upload_attachment = "SCM:HOUSE:SALE:PROMOTE_PROXY:UPLOAD_ANNEX"; //买卖-上传附件（简版委托）
  static readonly sale_review_modification = "SCM:HOUSE:SALE:PROMOTE_PROXY:REJECT_MODIFY_INFO"; //买卖-审核驳回修改信息（简版委托）
  static readonly sale_review_attachment = "SCM:HOUSE:SALE:PROMOTE_PROXY:REJECT_MODIFY_ANNEX"; //买卖-审核驳回修改附件（简版委托）
  static readonly sale_submit_review = "SCM:HOUSE:SALE:PROMOTE_PROXY:REJECT_SUBMIT_AUDIT"; //买卖-审核驳回提交审核（简版委托）
  // 买卖委托详情小眼睛图标权限
  static readonly sale_look_business_name = "SCM:HOUSE:SALE:PROMOTE_PROXY:DETAIL_ROLE_NAME"; //买卖-查看产权人/代理人/企业 姓名（简版委托）
  static readonly sale_look_common_title_number =
    "SCM:HOUSE:SALE:PROMOTE_PROXY:ROLE_HOUSE_CER"; //买卖-查看产权证号/共有产权证号（简版委托）
  static readonly sale_look_enterprise_id_number =
    "SCM:HOUSE:SALE:PROMOTE_PROXY:DETAIL_ROLE_IDCARD"; //买卖-查看产权人/代理人/企业 证件编号（简版委托）
  static readonly sale_look_company_address = "SCM:HOUSE:SALE:PROMOTE_PROXY:DETAIL_ROLE_ADDRESS"; //买卖-查看产权人/企业 地址（简版委托）
  static readonly sale_look_house_located = "SCM:HOUSE:SALE:PROMOTE_PROXY:DETAIL_ADDRESS"; //买卖-查看房屋坐落（简版委托）
  static readonly sale_look_house_number = "SCM:HOUSE:SALE:PROMOTE_PROXY:DETAIL_HOUSENUMBER"; //买卖-查看门牌号（简版委托）
  // 租赁委托详情底部按钮权限
  static readonly lease_entry_modification = "SCM:HOUSE:LEASE:PROMOTE_PROXY:DRAFT_MODIFY_INFO"; //租赁-委托书已录入修改信息（简版委托）
  static readonly lease_electronic_signature = "SCM:HOUSE:LEASE:PROMOTE_PROXY:ELECTRONIC_SEAL"; //租赁-电子签章（简版委托）
  static readonly lease_upload_attachment = "SCM:HOUSE:LEASE:PROMOTE_PROXY:UPLOAD_ANNEX"; //租赁-上传附件（简版委托）
  static readonly lease_review_modification = "SCM:HOUSE:LEASE:PROMOTE_PROXY:REJECT_MODIFY_INFO"; //租赁-审核驳回修改信息（简版委托）
  static readonly lease_review_attachment = "SCM:HOUSE:LEASE:PROMOTE_PROXY:REJECT_MODIFY_ANNEX"; //租赁-审核驳回修改附件（简版委托）
  static readonly lease_submit_review = "SCM:HOUSE:LEASE:PROMOTE_PROXY:REJECT_SUBMIT_AUDIT"; //租赁-审核驳回提交审核（简版委托）
  // 租赁委托详情小眼睛图标权限
  static readonly lease_look_business_name =
    "SCM:HOUSE:LEASE:PROMOTE_PROXY:DETAIL_ROLE_NAME"; //租赁-查看产权人/代理人/企业 姓名（简版委托）
  static readonly lease_look_common_title_number =
    "SCM:HOUSE:LEASE:PROMOTE_PROXY:ROLE_HOUSE_CER"; //租赁-查看产权证号/共有产权证号（简版委托）
  static readonly lease_look_enterprise_id_number =
    "SCM:HOUSE:LEASE:PROMOTE_PROXY:DETAIL_ROLE_IDCARD"; //租赁-查看产权人/代理人/企业 证件编号（简版委托）
  static readonly lease_look_company_address =
    "SCM:HOUSE:LEASE:PROMOTE_PROXY:DETAIL_ROLE_ADDRESS"; //租赁-查看产权人/企业 地址（简版委托）
  static readonly lease_look_house_located = "SCM:HOUSE:LEASE:PROMOTE_PROXY:DETAIL_ADDRESS"; //租赁-查看房屋坐落（简版委托）
  static readonly lease_look_house_number = "SCM:HOUSE:LEASE:PROMOTE_PROXY:DETAIL_HOUSENUMBER"; //租赁-查看门牌号（简版委托）
  // 核验租赁小眼睛图标权限
  static readonly verification_lease_look_business_name =
    "SCM:HOUSE:LEASE:RECORD:DETAIL_ROLE_NAME"; //核验租赁-查看产权人/代理人/企业 姓名（简版委托）
  static readonly verification_lease_look_common_title_number =
    "SCM:HOUSE:LEASE:RECORD:ROLE_HOUSE_CER"; //核验租赁-查看产权证号/共有产权证号（简版委托）
  static readonly verification_lease_look_enterprise_id_number =
    "SCM:HOUSE:LEASE:RECORD:DETAIL_ROLE_IDCARD"; //核验租赁-查看产权人/代理人/企业 证件编号（简版委托）
  static readonly verification_lease_look_company_address =
    "SCM:HOUSE:LEASE:RECORD:DETAIL_ROLE_ADDRESS"; //核验租赁-查看产权人/企业 地址（简版委托）
  static readonly verification_lease_look_house_located = "SCM:HOUSE:LEASE:RECORD:DETAIL_ADDRESS"; //核验租赁-查看房屋坐落（简版委托）
  static readonly verification_lease_look_house_number = "SCM:HOUSE:LEASE:RECORD:DETAIL_HOUSENUMBER"; //核验租赁-查看门牌号（简版委托）
  // 核验买卖小眼睛图标权限
  static readonly verification_sale_look_business_name =
    "SCM:HOUSE:SALE:RECORD:DETAIL_ROLE_NAME"; //核验买卖-查看产权人/代理人/企业 姓名（简版委托）
  static readonly verification_sale_look_common_title_number =
    "SCM:HOUSE:SALE:RECORD:ROLE_HOUSE_CER"; //核验买卖-查看产权证号/共有产权证号（简版委托）
  static readonly verification_sale_look_enterprise_id_number =
    "SCM:HOUSE:SALE:RECORD:DETAIL_ROLE_IDCARD"; //核验买卖-查看产权人/代理人/企业 证件编号（简版委托）
  static readonly verification_sale_look_company_address =
    "SCM:HOUSE:SALE:RECORD:DETAIL_ROLE_ADDRESS"; //核验买卖-查看产权人/企业 地址（简版委托）
  static readonly verification_sale_look_house_located = "SCM:HOUSE:SALE:RECORD:DETAIL_ADDRESS"; //核验买卖-查看房屋坐落（简版委托）
  static readonly verification_sale_look_house_number = "SCM:HOUSE:SALE:RECORD:DETAIL_HOUSENUMBER"; //核验买卖-查看门牌号（简版委托）

  static readonly office_report = "WIWK:HOME:OFFICEREPORT";
  static readonly summary_report = "WIWK:HOME:SUMMARYREPORT"; //大区战报
  static readonly house_manager = "WIWK:HOME:SELFSERVICE"; //房源管理
  static readonly newhouse_manager = "WIWK:HOME:NEWHOUSE"; //新房
  static readonly entrust_contract_sz = "WIWK:ENTRUST:SUZHOU"; //苏州委托合同
  static readonly main_business_statistics = "WIWK:ENTRUST:BUSINESSSTATISTICS"; //主业务统计
  static readonly system_v = "WIWK:SH:SYSTEM:ANSWERTHEQUESTION"; //v+系统答疑
  static readonly ams_rent_query = "AMS:FORRENT:MANAGER"; //相寓待租 原来的AMS:RENT:QUERY:FOR:APP
  static readonly rent_contract_sh = "WIWK:SHANGHAI:SCM:LEASE:DRAFTCONT:MANAGER"; //上海租赁合同
  static readonly take_look_sh = "WIWK:SHANGHAI:SCM:CUST:WATCH:LEASE:QUERY"; //上海带看
  static readonly home_idol = "WIWK:HOME:IDOL"; //我的爱豆
  static readonly takelook_alteration_card_belonger = "SCM:CUSTOM:BELONGER:CHANGE"; //带看已打卡列表中变更打卡归属人按钮权限
  static readonly ams = "SCM:CUSTOM:LEASE_REFERRAL:AMS"; //相寓代成交筛选权限
  static readonly ams_deal = "SCM:SHOWINGHOUSE:LEASE:FEEDBACK:AMSDEAL"; //相寓代成交可选择的经纪人列表数据权限
  static readonly PERMISSONREFRESH = "permissionrefresh"; //权限刷新
  static readonly POSITIONREFRESH = "positionrefresh"; //岗位刷新
  static readonly vr_home_vrhomepage = "WIWK:HOME:VRHOMEPAGE"; //VR专栏权限
  static readonly business_number = "SCM:RESEARCH:BUSINESS:NUMBER"; //查看他签买卖公客核心信息
  static readonly rent_number = "SCM:RESEARCH:RENT:NUMBER"; //查看他签租赁公客核心信息
  static readonly buy_customer_show_number = "SCM:BUY:CUSTOMER_NUMBER:SHOW_NUMBER"; //查看私客真实电话-买卖
  static readonly rent_customer_show_number = "SCM:RENT:CUSTOMER_NUMBER:SHOW_NUMBER"; //查看私客真实电话-租赁
  static readonly sale_tel_view_hidden = "SCM:CUSTOM:SALE_TEL_VIEW_HIDDEN"; //查看公客真实电话-买卖
  static readonly lease_tel_view_hidden = "SCM:CUSTOM:LEASE_TEL_VIEW_HIDDEN"; //查看公客真实电话-租赁
  static readonly LEASE_TEL_ADD = "SCM:CUSTOM:LEASE_TEL_ADD"; //添加电话权限-租赁
  static readonly BUY_TEL_ADD = "SCM:CUSTOM:BUY_TEL_ADD"; //添加电话权限-买卖
  static readonly HR_CLOCKIN = "WIWK:HR:CLOCKIN"; //内容知识-移动打卡 权限
  static readonly SETBUYCUSTOMERPIN = "SET:BUY:CUSTOMER:PIN"; //手动置顶买卖客户 权限
  static readonly SETBUYCUSTOMERUNPIN = "SET:BUY:CUSTOMER:UNPIN"; //取消置顶买卖客户 权限
  static readonly SETRENTCUSTOMERPIN = "SET:RENT:CUSTOMER:PIN"; //手动置顶租赁客户 权限
  static readonly SETRENTCUSTOMERUNPIN = "SET:RENT:CUSTOMER:UNPIN"; //取消置顶租赁客户 权限
  static readonly MAP_FIND_SALE = "SCM:SALE:HOUSE:MAP:FIND"; //买卖地图找房功能权限码
  static readonly MAP_FIND_LEASE = "SCM:LEASE:HOUSE:MAP:FIND"; //租赁地图找房功能权限码
  static readonly EDUCATE_SALE = "SCM:HOUSE:SALE:EDUCATE:QUERY"; //买卖-更多中展示教育配套筛选项 权限码
  static readonly EDUCATE_LEASE = "SCM:HOUSE:LEASE:EDUCATE:QUERY"; //租赁-更多中展示教育配套筛选项权限码

  static readonly EDUCATION_MATCH = "BDIR:SCHOOL:DISTRICT:VIEW"; //教育配套入口的权限码
  static readonly SCM_HOUSE_LEASE_SUPER_COREINFO = "SCM:HOUSE:LEASE:SUPER:COREINFO"; //房源详情页超级权限


  static async checkAvailable(roleCode: string) {
    let privileges = await PreferencesUtil.getModel<Array<string>>(CommonConstants.PREFERENCE_PRIVILEGES_KEY)
    let hasCode = privileges?.find((pri) => pri == roleCode)
    return !StrUtil.isNull(hasCode)
  }

  static initPrivileges(privileges: string[]) {
    PreferencesUtil.putModel(CommonConstants.PREFERENCE_PRIVILEGES_KEY, privileges)
  }

  // static async deletePrivilege(privilege: string) {
  //   let privileges = await PreferencesUtil.getModel<Array<string>>(CommonConstants.PREFERENCE_PRIVILEGES_KEY)
  //   if (privileges !== null) {
  //     if (privileges.length > 0) {
  //       privileges.pop(privilege)
  //     }
  //   }
  // }
}