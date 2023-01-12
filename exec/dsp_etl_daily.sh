#!/bin/bash

# # # # # # # # # # # # # # # # # # # # # # 
# @file  : dsp_etl_daily.sh
# @author: houying
# @date  : 17-2-17
# # # # # # # # # # # # # # # # # # # # # #

source ../common_env.sh

ScheduleTime=${ScheduleTime:-$1}
LOG_TIME=$(date -d "$ScheduleTime 1 days ago" "+%Y-%m-%d")
dt=$(date -d "$ScheduleTime 1 days ago" "+%Y%m%d")
date_path=$(date -d "$ScheduleTime 1 days ago" "+%Y/%m/%d")
old_path=$(date -d "$ScheduleTime 2 days ago" "+%Y/%m/%d")

rm_dt=$(date -d "$ScheduleTime  180 days ago" "+%Y%m%d")
rm_dt_path=$(date -d "$ScheduleTime  180 days ago" "+%Y/%m/%d")

## INPUT_DSP_PATH="$ADN_DSP_PATH/$date_path"
INPUT_DSP_PATH="${ETL_DSP_ORG_REQ_HOURS}/$date_path"

TMP_OUTPUT_PATH="${TMP_DSP_REQUEST_DAILY_PATH}/$date_path"
MDS_REQUEST_OUTPUT_PATH="${MDS_DSP_REQ_DAILY}/$date_path"
RM_MDS_REQUEST_OUTPUT_PATH="${MDS_DSP_REQ_DAILY}/$rm_dt_path"

check_await "${INPUT_DSP_PATH}/23/_SUCCESS"


hadoop fs -rm -r $TMP_OUTPUT_PATH
hadoop fs -rm -r $MDS_REQUEST_OUTPUT_PATH

## hadoop jar ../${JAR} mobvista.dmp.datasource.dsp.mapreduce.DspDailyEtlMR \
 ##    -Dmapreduce.job.reduces=400  -DdetailOutPath=${MDS_REQUEST_OUTPUT_PATH} -DoutPath=$TMP_OUTPUT_PATH \
 ##    "$INPUT_DSP_PATH" "$TMP_OUTPUT_PATH" || exit 1
: '
    hadoop jar ../${JAR}  mobvista.dmp.datasource.dsp.mapreduce.DspDailyEtlMR3 \
     -D mapreduce.job.inputformat.class=com.mobvista.ai.mrdemo.mapreduce.CombineOrcFileInputFormat \
      -Dmapreduce.map.memory.mb=3072 \
      -D mapreduce.map.java.opts=-Xmx2458m   \
      -Dmapreduce.reduce.memory.mb=3072    \
      -Dmapreduce.reduce.java.opts=-Xmx2458m \
      -Dmapreduce.job.reduces=3200  -DdetailOutPath=${MDS_REQUEST_OUTPUT_PATH} -DoutPath=$TMP_OUTPUT_PATH \
      -libjars /data/azkaban-hadoop/command-home/hadoop/hadoop-lib/orc-orcinputwriter-1.0-SNAPSHOT.jar,/data/azkaban-hadoop/command-home/hadoop/hadoop-lib/orc-core-1.5.0.jar,/data/azkaban-hadoop/command-home/hadoop/hadoop-lib/orc-mapreduce-1.5.0.jar,/data/azkaban-hadoop/command-home/hadoop/hadoop-lib/aircompressor-0.10.jar,/data/azkaban-hadoop/command-home/hadoop/hadoop-lib/hive-storage-api-2.6.0.jar,/data/azkaban-hadoop/command-home/hadoop/hadoop-lib/orc-shims-1.5.0.jar \
    "$INPUT_DSP_PATH" "$TMP_OUTPUT_PATH" || exit 1
'
 hadoop jar ../${JAR}  mobvista.dmp.datasource.dsp.mapreduce.DspDailyEtlMR3Demo \
     -D mapreduce.job.inputformat.class=com.mobvista.ai.mrdemo.mapreduce.CombineOrcFileInputFormat \
      -Dmapreduce.map.memory.mb=3072 \
      -D mapreduce.map.java.opts=-Xmx2458m   \
      -Dmapreduce.reduce.memory.mb=3072    \
      -Dmapreduce.reduce.java.opts=-Xmx2458m \
      -Dmapreduce.job.reduces=1600  -DdetailOutPath=${MDS_REQUEST_OUTPUT_PATH} -DoutPath=$TMP_OUTPUT_PATH \
      -libjars /data/azkaban-hadoop/command-home/hadoop/hadoop-lib/orc-orcinputwriter-1.0-SNAPSHOT.jar,/data/azkaban-hadoop/command-home/hadoop/hadoop-lib/orc-core-1.5.0.jar,/data/azkaban-hadoop/command-home/hadoop/hadoop-lib/orc-mapreduce-1.5.0.jar,/data/azkaban-hadoop/command-home/hadoop/hadoop-lib/aircompressor-0.10.jar,/data/azkaban-hadoop/command-home/hadoop/hadoop-lib/hive-storage-api-2.6.0.jar,/data/azkaban-hadoop/command-home/hadoop/hadoop-lib/orc-shims-1.5.0.jar \
    "$INPUT_DSP_PATH" "$TMP_OUTPUT_PATH" || exit 1


mount_partition "mds_dsp_request_daily" "\`date\`='$dt'" "$MDS_REQUEST_OUTPUT_PATH"

unmount_partition "mds_dsp_request_daily" "\`date\`='$rm_dt'" "$RM_MDS_REQUEST_OUTPUT_PATH"


hadoop fs -touchz $MDS_REQUEST_OUTPUT_PATH/_SUCCESS

