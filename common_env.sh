#!/usr/bin/env bash
# 定义DMP脚本通用配置项

#GA
GA_PREPARE_PATH_SRC="s3://ga-sample-external/daily-export"
GA_PREPARE_PATH="s3://mob-emr-test/dataplatform/datawarehourse/dmp/daily_export"
GA_INSTALL_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_ga_install_daily"
GA_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_ga_device_daily"
GA_TOTAL_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_ga_device_total"
GA_ACTIVE_DAILY_PATH="s3://mob-emr-test/dataplatform/datawarehourse/dmp/daily_export/"
GA_ACTIVE_TOTAL_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_ga_active_total"
GA_ODS_RAW_DATA_PATH="s3://live-ga-doppler/data/emr/ga_rawdata"
ODS_OTHER_DEVICE_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_other_device_daily"


#APP_INFO & APP_TAG
APP_TAG_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_app_tag"
APP_INFO_IOS_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_app_info_ios"
APP_INFO_ADR_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_app_info_adr"
DIM_APP_INFO_IOS="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_app_info_ios_category"
DIM_APP_INFO_ADR="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_app_info_adr_category"
#install list
DM_INSTALL_LIST="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_install_list"
#interest tag
DM_INTEREST_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_interest_tag"

DM_DEV_INTEREST_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dev/dm_interest_tag"

DM_INTEREST_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_interest_tag_daily"
DMP_ADN_DSP_PROFILE_TOTAL="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_profile_total/dsp"
DMP_ADN_DSP_DEVICE_IDS="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_dsp_devices_ids_daily"
DM_DC_INTEREST_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_interest_tag_dc"
## DM_DEVICE_TAG_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_device_tag"
DM_DEVICE_TAG_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dmp_device_tag"
DM_DEVICE_TAG_STATISTICS_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_device_tag_statistics"

# dm_device_tag_daily
DM_DEVICE_TAG_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_device_tag_daily"

NGINX_LOG="s3://mob-ad/adn/nginxlog/tksetting"
ADN_CLICK_PATH="s3://mob-ad/adn/tracking-v3/click"
ADN_INSTALL_PATH="s3://mob-ad/adn/tracking-v3/install"
ADN_EVENT_PATH="s3://mob-ad/adn/tracking-v3/event"
ADN_REQUEST_PATH="s3://mob-ad/adn/tracking-v3/request"
ADN_PRE_CLICK_PATH="s3://mob-ad/adn/tracking-v3/pre_click"
ADN_ADX_REQ_ORG="s3://mob-ad/adn/adx-v1/request"
ADN_DSP_PATH="s3://mob-ad/adn/dsp_orc/request"
DMP_ADN_REQUEST_DEVICE_IDS="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_ids_mapping"

ETL_DSP_REQ_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_dsp_request_daily"
ETL_ADN_INSTALL_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_adn_install_daily"
ETL_ADN_SDK_CLICK_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_adn_sdk_click_daily"
ETL_ADN_SDK_REQUEST_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_adn_sdk_request_daily"
ETL_ADN_INSTALL_TMP_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/tmp/adn_install_tmp_daily"
ETL_ADN_CLICK_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/tmp/adn_click_daily"
ETL_ADN_PRE_CLICK_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/tmp/adn_pre_click_daily"
ETL_ADN_MERGE_CLICK_PRE_CLICK="s3://mob-emr-test/dataplatform/DataWareHouse/data/tmp/merge_click_pre_click"
ETL_TOUTIAO_LAUNCH_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_toutiao_launch_daily"
ETL_ADN_REQUEST_OTHER_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_adn_request_other_daily"
ETL_DSP_REQ_MDS_HOURS="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/mds_dsp_request_daily_hours"
ETL_DSP_ORG_REQ_HOURS="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/etl_dsp_org_request_daily_hours"
ETL_DSP_REQ_ETL_HOURS="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/etl_dsp_request_daily_hours"
ETL_ADN_ORG_REQ_HOURS="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/etl_adn_org_request_daily_hours"
ETL_DSP_DEALERID_PKG_MAPPING="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dealerid_pkg_mapping/dealerid_pkg.csv"
ETL_DSP_DEALERID_RETARGET_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_dsp_dealer_retarget_daily"


MDS_DSP_REQ_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/mds_dsp_request_daily"
MDS_ADN_SDK_REQUEST_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/mds_adn_request_daily"
MDS_DMP_ADDRESS_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/mds_dmp_address_daily"
MDS_DSP_REQ_CLUSTER_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/mds_dsp_request_cluster_daily"
MDS_ADN_SDK_REQUEST_CLUSTER_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/mds_adn_request_cluster_daily"

ADN_TOTAL_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_adn_device_total"
DMP_TOTAL_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_dmp_device_total"

CAMPAIGN_LIST_SRC="s3://mob-emr-test/dataplatform/DataWareHouse/data/export/campaign_list"
DIM_ADN_CAMPAIGN="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_adn_campaign"
DIM_CAMPAIGN_LIST="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_campaign_list"
DM_CAMPAIGN_TAG="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_campaign_tag"
DIM_CAMPAIGN_PACKAGE_3S="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_campaign_package_3s"
DIM_CAMPAIGN_PACKAGE_ADN="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_campaign_package_adn"
DIM_CAMPAIGN_ADN_TAG="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_campaign_adn_tag"
DIM_MANUAL_MAPPING="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_manual_appid_package/appid_package1"

## dsp
ADN_DSP_CLICK="s3://mob-emr/mob_dsp/data_analysis/log_adn_dsp_click_day"

#Setting
NGINX_SETTING_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/Nginx/Setting"
APP_ID_MAPPING_TMP="s3://mob-emr-test/dataplatform/DataWareHouse/data/Nginx/GlobalSetting_tmp"
APP_ID_MAPPING="s3://mob-emr-test/dataplatform/DataWareHouse/data/Nginx/GlobalSetting"

REVENUE_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_ga_revenue"
#gender
GENDER_TP_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_gender_thirdparty_data_daily"
GENDER_TP_TOTAL="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_gender_thirdparty_data_total"
GENDER_EXTRACT_DEVICE_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/install_list"
GENDER_GET_DSP_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/get_dsp_gender"
GENDER_GET_GA_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/get_ga_gender"
GENDER_GET_BIG_MEDIA_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/get_bm_gender"
GENDER_GET_FACEBOOK_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/get_fb_gender"
GENDER_GET_THIRDPART_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/get_other_gender"
GENDER_MERGE_INSTALL="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/merge_install_gender"
GENDER_CALC_PACKAGE="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/calc_package_gender"
GENDER_CALC_PACKAGE_DICT="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/calc_package_dict"
GENDER_CALC_DEVICE="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_device_gender"
GENDER_MERGE_DEVICE="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dmp_device_gender"
GENDER_VALIDATE="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/validate"
GENDER_PRID_SCORE="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/gender_predict_score"
GENDER_PRID_SCORE_THRESHOLD="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/gender_predict_score_threshold"
INSTALL_GENDER_LR="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/merge_install_gender_lr"
INSTALL_GENDER_LR_BIN="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/merge_install_gender_lr_bin"


#behavior
BEHAVIOR_TP_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_behavior_thirdparty_data_daily"
BEHAVIOR_TP_TOTAL="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_behavior_thirdparty_data_total"

#age
AGE_EXTRACT_DEVICE_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/age_install_list"
AGE_GET_DSP_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/get_dsp_age"
AGE_GET_GA_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/get_ga_age"
AGE_MERGE_INSTALL="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/merge_install_age"
AGE_CALC_PACKAGE="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/calc_package_age"
AGE_CALC_PACKAGE_DICT="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/calc_package_dict_age"
AGE_CALC_DEVICE="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_device_age"
AGE_VALIDATE="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/age_validate"

DIM_CATEGORY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_category"
DIM_SEGMENT_TAG_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_segment_tag"
DIM_CATEGORY_NEW_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_category_new"

#zarola
ZAROLA_INSTALL_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/import/zarola/*"
ZAROLA_INSTALL_OUTPUT="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/zarola/output"

#3s
DIM_CAMPAIGN_3S_LIST="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_campaign_3s_list/"
INSTALL_DAILY_3S="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/3s_install_daily"
EVENT_DEFINE_3S="s3://trackingcsv-3s/trackingcsv/event_define"
PATH_3S="s3://trackingcsv-3s/trackingcsv/install"
EVNET_3S_PATH="s3://mob-ad/3s/trackinglogs/event"
EVENT_SS_PATH="s3://mob-ad/adn/tracking-v3/event"
POSTBACK_INSTALL_3S_PATH="s3://mob-ad/adn/tracking-v3/postback_install"
POSTBACK_EVENT_3S_PATH="s3://mob-ad/adn/tracking-v3/postback_event"
ETL_3S_POSTBACK_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_3s_postback_daily"
ALI_USER_ACTIVATION_SYS_TO3S="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ali_user_activation_syn_to3s"
ALI_USERINFO_TO_3S_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ali_user_activation_syn_to3s_res"
ALI_USERINFO_TO_3S_TOUTIAO_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ali_user_activation_syn_to3s_toutiao_res"


#appsflyer
ETL_AF_ORG_DAILY="s3://mob-emr-test/appsflyer"
ETL_AF_ORG_TOTAL="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_af_org_total"
## appsflyers
ETL_AF_ORG_NEW_DAILY="s3://mob-emr/appsflyer_audience/latest"
ETL_MPARTICLE_ORG_DAILY="s3://mob-emr/adn/mparticle/mparticle_audience_retarget"



#tencent adx
ODS_ADN_ADX_REQ_TMP="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_adn_adx_req_tmp"
DIM_ADN_ADX_PKG="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_adn_adx_package"
ADN_ADX_DEVICE_TAG="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/adn_adx_device_tag"

#mp sdk
MP_REQUEST_PATH="s3://mob-ad/mob-ad/adn/mob_scheme/*/"
MP_REQUEST_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/mp_request_daily"

#clever (抢发)
CLEVER_NGINX_LOG="s3://mob-ad/adn/nginxlog/tracking"
CLEVER_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_adn_clever_daily/"

#adn_sdk (adn_sdk 数据)
ADN_SDK_LOG="s3://mob-ad/adn/nginxlog/analytics2"
ADN_SDK_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_adn_sdk_daily"

# userInfo
ODS_DMP_USER_INFO="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_dmp_user_info"
ODS_DMP_USER_INFO_ALL="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_dmp_user_info_all"
ODS_DMP_USER_INFO_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_dmp_user_info_daily"
DMP_EVENT_TAG_DAILY="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dmp_event_tag_daily"

# event org log tab
ODS_DMP_EVENT_ORG="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_dmp_event_org"
ETL_CAMPAIN_LIST_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_adn_campaign_list"
ODS_DMP_EVENT_TAG="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_dmp_event_tag"
ODS_DMP_EVENT_DAILY_OTHERS="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_dmp_event_tag_daily_others"



#tmp path
TMP_DSP_PROFILE_RECOVER="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/tmp_dsp_profile_total_recover"
PACKAGE_TMP_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/package_name"
INSTALL_PACKAGE_TMP_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/package_name_install"
TMP_IOS_APP_INFO_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/app_info_ios"
TMP_ADR_APP_INFO_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/app_info_adr"
TMP_IOS_APP_INFO_SPARK_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/app_info_ios_spark"
TMP_ADR_APP_INFO_SPARK_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/app_info_adr_spark"
TMP_BUNDLE_APP_INFO_SPARK_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/app_info_bundle_spark"
TMP_CRAWLER_INFO_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/app_info_crawler"
TMP_PKG_JOIN_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/package_join"
TMP_EGGPLANTS_INPUT_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/eggplants/input"
TMP_EGGPLANTS_OUTPUT_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/eggplants/output"
TMP_EGGPLANTS_PROGRESS_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/eggplants/progress"
TMP_PKG_TAG_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/pkg_tag_map"
TMP_INSTALL_DAILY_3S="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/3s_install_daily_tmp"
TMP_ADSERVER_PACKAGE_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/adserver_packageName"
TMP_ADSERVER_PKG_TMP_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/adserver_packageName_tmp"
TMP_INSTALL_DAILY_ADN="s3://mob-emr-test/dataplatform/DataWareHouse/data/tmp/adn_install_tmp_daily_tmp"
TMP_AND_REQUEST_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/etl_adn_sdk_request_daily"

DSP_BUNDLE_OUTPUT_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/etl_dsp_request_daily_tbl"
TMP_DSP_REQUEST_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/etl_dsp_request_daily"

TMP_GA_INSTALL_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/ods_ga_install_daily"
TMP_INTEREST_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/tmp/dm_interest_tag"

# bundle_package_mapping
BUNDLE_PACKAGE_MAPPING_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/bundle_package_mapping"

# unmatch bundle data
UNMATCH_DATA_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/unmatch_bundle"

# 所有数据源未bundle去重
DISTINCT_BUNDLE_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/distinct_bundle"

# 包名黑名单
PACKAGE_BLACK_LIST="s3://mob-emr-test/dataplatform/DataWareHouse/dm_package_black_list"

DIM_PACKAGE_TAGS_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_package_tags"
DIM_CAMPAIGN_TAGS_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dim_campaign_tags"

# HIVE_SITE_PATH="/data/azkaban-hadoop/scientist-online/spark/conf/hive-site.xml"

HIVE_SITE_PATH="/data/azkaban-hadoop/command-home/spark-offline/conf/hive-site.xml"
# HIVE_SITE_PATH="${SPARK_HOME}/conf/hive-site.xml"

TOUTIAO_LAUNCH_PATH="s3://mob-ad/adn/tracking-v3/midway_backend"

#install list
DM_TOUTIAO_LAUNCH_TOTAL="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_toutiao_campaign_total"

# joypacios
JOYPAC_DAILY_LOG_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_joypc_sdk_daily"
JOYPAC_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/joypac_daily"

# ali
ALI_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_baichuan_daily"
ALI_USER_ACTIVATION_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ali_user_activation_daily"
ALI_IOS_USER_ACTIVATION_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ali_ios_user_activation_daily"
ALI_USER_ACTIVATION_15DAYS_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ali_user_activation_rec15days"
ALI_IOS_USER_ACTIVATION_15DAYS_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ali_ios_user_activation_rec15days"
ALI_USER_ACTIVATION_POSTBACK_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ali_user_activation_postback_daily"
ALI_IOS_USER_ACTIVATION_POSTBACK_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ali_ios_user_activation_postback_daily"
ETL_ALI_USERINFO_ACTIVATION_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_ali_user_activation_total"
ETL_ALI_IOS_USERINFO_ACTIVATION_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_ali_ios_user_activation_total"


# bytedance
BYTEDANCE_LOG_PATH="s3://mob-emr-test/dmp/install_app/toutiaodmp_increment"
BYTEDANCE_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/bytedance_daily"

# facebook
FACEBOOK_LOG_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_fb_org_daily"
FACEBOOK_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_facebook_daily"
FACEBOOK_TOTAL_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_facebook_total"
FACEBOOK_UNMATCHED_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_fb_unmatched_history"

#bigmedia
BIGMEDIA_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/etl_topmedia_domestic_org_daily"
BIGMEDIA_DAILY_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/ods_bigmedia_domestic_daily"

# device_id_md5_match
DEVICE_ID_MD5_MATCH_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/device_id_md5_match"

# dm_active_tag
# DM_ACTIVE_TAG_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dev/dm_active_tag"

DM_ACTIVE_TAG_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dwh/dm_active_tag"

# dm_device_region
DM_DEVICE_REGION="s3://mob-emr-test/dataplatform/DataWareHouse/data/dev/dm_device_region"

JAR=./DMP.jar

# 检查_SUCCESS文件,若不存在则循环检测
# $1 check file
check_await() {
    while [[ true ]];
    do
        if hadoop fs -ls "$1" > /dev/null 2>&1
        then
            break
        fi
        sleep 300
    done
}

# $1 sql
hive_cmd() {
export HIVE_CONF_DIR=/data/azkaban-hadoop/command-home/hive-offline/conf
# local HIVE_CMD="/data/hadoop-alternative/hive-offline/bin/hive"
# if [ ! -f $HIVE_CMD ];then
  HIVE_CMD="hive"
# fi
${HIVE_CMD} -e "
set hive.cli.print.header=false;
set hive.optimize.index.filter=true;
set mapreduce.task.io.sort.mb=512;
set mapreduce.map.speculative=true;
set mapreduce.reduce.speculative=true;
$1;
"
}

# 挂载hive分区
# $1 table name
# $2 partition
# $3 hdfs path
mount_partition() {
local count=1
local limit=3
while [ $count -le $limit ];do
   hive_cmd "
    use dwh;
    ALTER TABLE $1 ADD IF NOT EXISTS PARTITION ($2)
        LOCATION '$3';
    "

    if [ $? -eq 0 ];then
      break
    else
      if [ $count -eq $limit ];then
        exit 255
      else
        count=$(( $count + 1 ))
      fi
    fi
done
}

# 挂载hive分区
# $1 table name
# $2 partition
# $3 hdfs path
unmount_partition() {
local count=1
local limit=3
while [ $count -le $limit ];do
   hive_cmd "
    use dwh;
    ALTER TABLE $1 DROP IF EXISTS PARTITION ($2);
    "

    if [ $? -eq 0 ];then
        hadoop fs -rm -r $3
        break
    else
      if [ $count -eq $limit ];then
        exit 255
      else
        count=$(( $count + 1 ))
      fi
    fi
done
}

# $1 database
# $2 table
# $3 partition
# $4 path
common_mount_partition() {
local count=1
local limit=3
while [ ${count} -le ${limit} ];do
   hive_cmd "
    use $1;
    ALTER TABLE $2 ADD IF NOT EXISTS PARTITION ($3)
        LOCATION '$4';
    "

    if [ $? -eq 0 ];then
      break
    else
      if [ $count -eq $limit ];then
        exit 255
      else
        count=$(( $count + 1 ))
      fi
    fi
done
}

# 卸载hive分区
# $1 database
# $2 table
# $3 partition
# $4 path
common_unmount_partition() {
local count=1
local limit=3
while [ ${count} -le ${limit} ];do
   hive_cmd "
    use $1;
    ALTER TABLE $2 DROP IF EXISTS PARTITION ($3);
    "

    if [ $? -eq 0 ];then
        hadoop fs -rm -r $4
        break
    else
      if [ ${count} -eq ${limit} ];then
        exit 255
      else
        count=$(( $count + 1 ))
      fi
    fi
done
}

# $1 要计算的路径,多个路径用分号分隔
calculate_reduce_num() {
    local __count=0
    local array="$(echo $1|tr ";" "\n")"
    for d in $array;do
        __dus=`hadoop fs -du -s "$d"|awk -v'FS= ' '{print $1}'`
        for __du in $__dus;do
            __count=`expr $__count + ${__du:- 0} `
        done

    done

    local __num=`echo "$__count" | awk -v'FS= ' '{print int($1/1000/1000/800 + 1);}'`
    if [ $__num -eq 0 ]; then
        echo "1"
    else
        echo $__num
    fi
}

# 发送邮件
# $1 发件人
# $2 收件人，逗号间隔
# $3 标题
# $4 正文
send_mail(){
  # 初始化参数
  local MAIL_FROM=$1
  local MAIL_MEMBERS=$2
  local MAIL_TITLE=$3
  local MAIL_BODY=$4

  # 组装内容
  local MAIL_MSG="$(echo "
    From:${MAIL_FROM}
    To:${MAIL_MEMBERS}
    Subject:${MAIL_TITLE}
    Content-Type: text/html; charset=utf-8
    <!DOCTYPE html PUBLIC -//W3C//DTD HTML 4.01 Transitional//ENhttp://www.w3.org/TR/html4/loose.dtd>
    <html>
      <head><meta http-equiv=Content-Type content=text/html; charset=utf-8 pageEncoding=UTF-8></head>
      <body>${MAIL_BODY}</body>
    </html>
  " | head -n-1 | tail -n+2 | sed -r 's/^[\t ]+//g')"

  # 发送邮件
  /usr/sbin/sendmail -t <<< "${MAIL_MSG}"
}

# 从expect date起，获取最近的存在的目录，若expect date指定的目录不存在，则发报警
# $1 path
# $2 expect date, format yyyyMMdd
# $3 sub partition
get_recently_dir() {
    local path="$1"
    local expect_date="$2"
    local sub_partition="$3"
    while :
    do
        local year=${expect_date:0:4}
        local month=${expect_date:4:2}
        local day=${expect_date:6:2}
        local check_path="$path/$year/$month/$day/$sub_partition"
        if hadoop fs -test -e "${check_path}"
        then
            echo "$check_path"
#            if [[ "$expect_date" != "$2" ]]
#            then
##                send_mail "dmp_monitor@mobvista.com" "feng.liang@mobvista.com" "<p>[报警]DMP标签任务${JOB_NAME}" "期待$path: $2, 但是不存在</p><p>返回$check_path</p>"
#            fi
            break
        fi
        local expect_date=$(date -d "$expect_date 1 days ago" "+%Y%m%d")
    done
}

#$1 path
#$2 date
build_path_by_date() {
    local path="$1"
    local expect_date="$2"
    local year=${expect_date:0:4}
    local month=${expect_date:4:2}
    local day=${expect_date:6:2}
    echo "$path/$year/$month/$day"
}

#$1 orig_str
#$2 append_str
#$3 split_str
append() {
    local ORIG_STR="$1"
    if [[ -z "$ORIG_STR" ]]
    then
        echo "$2"
    else
        echo "${ORIG_STR}${3}${2}"
    fi
}

matchBundlePackage() {
   local date_path=$1
   local old_path=$2
   local pf_index=$3
   local pkg_index=$4
   local input_path=$5
   local output_path=$6
   local part=$7
   local jar=$8
   local unmatch_input_path=${UNMATCH_DATA_PATH}/$old_path/$part
   local unmatch_output_path=${UNMATCH_DATA_PATH}/$date_path/$part
   local bundle_pkg_path=${BUNDLE_PACKAGE_MAPPING_PATH}/$date_path

   class="mobvista.dmp.main.BundleMatchJob"
   if [ "$part" = "dsp" ];then
     class="mobvista.dmp.main.DSPBundleMatchJob"
   fi

   check_await "$bundle_pkg_path/_SUCCESS"

   hadoop fs -rm -r $output_path
   hadoop fs -rm -r $unmatch_output_path

   command="
    spark-submit --master yarn --deploy-mode cluster --executor-memory 4g --driver-memory 3g  --executor-cores 2  --num-executors 48 \
     --conf spark.yarn.executor.memoryOverhead=2048 --conf spark.network.timeout=720s \
     --conf spark.sql.shuffle.partitions=${coalesce} \
     --conf spark.dynamicAllocation.maxExecutors=100 \
     --conf spark.dynamicAllocation.enabled=true \
     --conf spark.default.parallelism=2000 \
     --class ${class} ${jar} \
     -input $input_path  -output $output_path -pfIndex $pf_index -pkgIndex $pkg_index \
     -bundlePkgPath ${bundle_pkg_path} -unmatchOutputPath ${unmatch_output_path} \
     -parallelism 2000 -coalesce 200
    "

    hadoop fs -test -e $unmatch_input_path
    if [ $? -eq 0 ];then
       command="$command -unmatchInputPath ${unmatch_input_path}"
    elif [[ $? -ne 0 && "$part" = "ga" ]];then
       command="$command -unmatchInputPath `get_recently_dir "${UNMATCH_DATA_PATH}" "${date_path//\/""}" "ga"`"
    fi

    echo -e "command : \n $command"
    eval $command
    if [ "$?" -ne "0" ];then
      exit 255
    fi
}

make_dir () {
 if [ $# -lt 1 ]; then
   echo "ERROR: please set a path"
   exit 255
 fi

 local path=$1

 hadoop fs -test -e $path
 if [ $? -ne 0 ];then
   hadoop fs -mkdir -p $path
   if [ $? -ne 0 ];then
     echo "ERROR: mkdir $path fail"
     exit 255
   fi
 else
   echo "$path : File exists"
 fi
}

remove_dir() {
  if [ $# -lt 1 ]; then
    echo "ERROR: please set a path"
    exit 255
  fi

  local path=$1
  if [ "$path" = "/" ];then
    echo "rm '$path' is refused"
    exit 255
  fi
  hadoop fs -rm -r $path
}

if [ -z "${SPARK_HOME}" ]; then
  source "$(dirname "$0")"/find-spark-home
fi

JARS=""
for jar in $(ls ${SPARK_HOME}/auxlib)
do
    jar="${SPARK_HOME}/auxlib/${jar}"
    if [ -z "${JARS}" ]
    then
        JARS=${jar}
    else
        JARS=${JARS},${jar}
    fi
done

userInfoJob() {
   local LOG_TIME=$1
   local dailyPath=$2
   local dailyFormat=$3
   local dailyDidIndex=$4
   local dailyDidTypeIndex=$5
   local dailyPltIndex=$6
   local dailyCountryIndex=${7}
   local agePath=$8
   local genderPath=$9
   local totalPath=${10}
   local outputPath=${11}
   local coalesce=${12}
   local jar=${13}
   local exeNum=${14}
   local parallelism=${15}

   check_await $dailyPath/_SUCCESS
#   hadoop fs -rm -r $outputPath

   command="
    spark-submit --class mobvista.dmp.datasource.device.OdsDmpUserInfo \
     --conf spark.yarn.executor.memoryOverhead=3072 --conf spark.network.timeout=720s \
     --conf spark.sql.shuffle.partitions=$(( $coalesce * 2 )) \
     --conf spark.dynamicAllocation.maxExecutors=${exeNum} \
     --conf spark.dynamicAllocation.enabled=true \
     --conf spark.default.parallelism=${parallelism} \
     --conf spark.speculation=true \
     --conf spark.speculation.quantile=0.9 \
     --conf spark.speculation.multiplier=1 \
     --jars ${JARS} \
     --files ${HIVE_SITE_PATH} \
     --master yarn --deploy-mode cluster --executor-memory 5g --driver-memory 3g  --executor-cores 2  --num-executors 20 \
     ${jar} -date $LOG_TIME -dailyPath $dailyPath -agePath $agePath -genderPath $genderPath \
     -dailyFormat ${dailyFormat} -dailyDidIndex $dailyDidIndex -dailyDidTypeIndex $dailyDidTypeIndex -dailyPltIndex $dailyPltIndex -dailyCountryIndex $dailyCountryIndex \
     -outputPath $outputPath -parallelism ${parallelism} -coalesce ${coalesce}
    "

    hadoop fs -test -e $totalPath
    if [ $? -eq 0 ];then
      command="$command -totalPath $totalPath"
    fi

    echo -e "command : \n $command"
    eval $command
    if [ "$?" -ne "0" ];then
      exit 255
    fi
}

get_recently_date() {
    local path="$1"
    local expect_date="$2"
    local sub_partition="$3"

    while :
    do
        local year=${expect_date:0:4}
        local month=${expect_date:4:2}
        local day=${expect_date:6:2}
        local check_path="$path/$year/$month/$day/$sub_partition"
        if hadoop fs -test -e "${check_path}"
        then
            echo "${year}${month}${day}"
            break
        fi
        local expect_date=$(date -d "$expect_date 1 days ago" "+%Y%m%d")
    done
}
