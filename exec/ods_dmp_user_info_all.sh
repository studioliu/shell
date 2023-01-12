#!/bin/sh

source ../common_env.sh
# QUEUE_NAME="dataplatform"

# ScheduleTime=${ScheduleTime:-$1}
date=$(date +"%Y-%m-%d" -d "$ScheduleTime")

yes_bef2_day=`date -d "$ScheduleTime 2 days ago" +%Y%m%d`
yes_bef1_day=`date -d "$ScheduleTime 1 days ago" +%Y%m%d`

OUTPUT_PATH=${ODS_DMP_USER_INFO_ALL}/${yes_bef1_day}

# hadoop fs -test -e ${OUTPUT_PATH}
# if [ $? -ne 0 ];then
# hadoop fs -mkdir -p  ${OUTPUT_PATH}
# fi

check_await ${ODS_DMP_USER_INFO_ALL}/${yes_bef2_day}/_SUCCESS
check_await ${ODS_DMP_USER_INFO_DAILY}/${yes_bef1_day}/_SUCCESS

hadoop fs -rmr ${OUTPUT_PATH}

date_path=$(date +%Y/%m/%d -d "-1 day $ScheduleTime")
INPUT_PUBLISH_PATH="s3://mob-emr-test/dataplatform/DataWareHouse/data/dev/realtime_service_device/${date_path}/*/*/*"

## hive_cmd "
## use dwh;
## set mapreduce.map.memory.mb=2560;
## et mapreduce.map.java.opts=-Xmx2048m;
## et mapreduce.reduce.memory.mb=2560;
## et mapreduce.reduce.java.opts=-Xmx2048m;
## insert overwrite table dwh.ods_dmp_user_info_all partition(dt='${yes_bef1_day}')
## select coalesce(b.dev_id,a.dev_id) as dev_id,
## coalesce(b.dev_id_md5,a.dev_id_md5) as dev_id_md5,
## coalesce(b.dev_type,a.dev_type) as dev_type,
## coalesce(b.platform,a.platform) as platform,
## coalesce(b.install,a.install) as install,
## coalesce(b.interest,a.interest) as interest,
## coalesce(b.model,a.model) as model,
## coalesce(b.country,a.country) as country,
## coalesce(b.osversion,a.osversion) as osversion,
## coalesce(b.age,a.age) as age,
## coalesce(b.gender,a.gender) as gender,
## coalesce(b.behavior,a.behavior) as behavior,
## coalesce(b.update_date,a.update_date) as update_date
## from (select * from dwh.ods_dmp_user_info_all where dt='${yes_bef2_day}') a
## full join  (select * from dwh.ods_dmp_user_info_daily where dt='${yes_bef1_day}' )  b
## on a.dev_id=b.dev_id;
## "


# hadoop fs -rmr ${OUTPUT_PATH}

#  hive_cmd "
#  set hive.cli.print.header=false;
#  set hive.optimize.index.filter=true;
#  set mapreduce.task.io.sort.mb=512;
#  set mapreduce.map.speculative=true;
#  set mapreduce.reduce.speculative=true;
#
#  use dwh;
#  set mapreduce.map.memory.mb=2560;
#  set mapreduce.map.java.opts=-Xmx2048m;
#  set mapreduce.reduce.memory.mb=2560;
#  set mapreduce.reduce.java.opts=-Xmx2048m;
#  insert overwrite table dwh.ods_dmp_user_info_all partition(dt='${yes_bef1_day}')
#  select coalesce(b.dev_id,a.dev_id) as dev_id,
#  coalesce(b.dev_id_md5,a.dev_id_md5) as dev_id_md5,
#  coalesce(b.dev_type,a.dev_type) as dev_type,
#  coalesce(b.platform,a.platform) as platform,
#  coalesce(b.install,a.install) as install,
#  coalesce(b.interest,a.interest) as interest,
#  coalesce(b.model,a.model) as model,
#  coalesce(b.country,a.country) as country,
#  coalesce(b.osversion,a.osversion) as osversion,
#  coalesce(b.age,a.age) as age,
#  coalesce(b.gender,a.gender) as gender,
#  coalesce(b.behavior,a.behavior) as behavior,
#  coalesce(b.update_date,a.update_date) as update_date
#  from (select * from dwh.ods_dmp_user_info_all where dt='${yes_bef2_day}') a
#  full join  (select * from dwh.ods_dmp_user_info_daily where dt='${yes_bef1_day}' )  b
#  on a.dev_id=b.dev_id;
#  "

# --conf spark.memory.offHeap.enabled=true \
# --conf spark.memory.offHeap.size=6442450944 \
# --conf spark.sql.adaptive.enabled=true \
# --conf spark.sql.adaptive.shuffle.targetPostShuffleInputSize=268435456 \
spark-submit --class  mobvista.dmp.datasource.device.OdsDmpUserInfoAll \
    --name "DMP-OdsDmpUserInfoAll_${yes_bef1_day}-wangjf" \
    --conf spark.sql.shuffle.partitions=18000 \
	--conf spark.default.parallelism=18000 \
	--conf spark.serializer=org.apache.spark.serializer.KryoSerializer \
	--conf spark.yarn.executor.memoryOverhead=2048 \
	--conf spark.sql.files.maxPartitionBytes=268435456 \
	--files ${HIVE_SITE_PATH} \
	--master yarn \
	--deploy-mode cluster \
	--executor-memory 10G \
	--driver-memory 4G \
	--executor-cores 4 \
	--num-executors 100 \
	--jars ${JARS} \
	../${JAR}  \
	-cur_day ${date} -output ${OUTPUT_PATH} -coalesce 4000 -input ${INPUT_PUBLISH_PATH}
if [[ $? -ne 0 ]]; then
    exit 255
fi

mount_partition "ods_dmp_user_info_all" "dt='${yes_bef1_day}'" "${OUTPUT_PATH}"
if [[ $? -ne 0 ]]; then
    exit 255
fi
# hadoop fs -touchz ${OUTPUT_PATH}/_SUCCESS

