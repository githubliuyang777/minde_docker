#!/bin/bash
path="${BASH_SOURCE[0]}"
mies_path=$(cd $(dirname $path); pwd )
export MIES_INSTALL_PATH=${mies_path}
export LD_LIBRARY_PATH=${MIES_INSTALL_PATH}/lib:${MIES_INSTALL_PATH}/lib/grpc:${LD_LIBRARY_PATH}
export PYTHONPATH=${MIES_INSTALL_PATH}/bin:${PYTHONPATH}
export ATB_OPERATION_EXECUTE_ASYNC=1
export TASK_QUEUE_ENABLE=1
export HCCL_BUFFSIZE=120
# 运行时日志
export ASCEND_SLOG_PRINT_TO_STDOUT=0
export ASCEND_GLOBAL_LOG_LEVEL=3
export ASCEND_GLOBAL_EVENT_ENABLE=0
# 加速库日志
export ATB_LOG_TO_FILE=0
export ATB_LOG_TO_FILE_FLUSH=0
export ATB_LOG_TO_STDOUT=0
export ATB_LOG_LEVEL=ERROR
# 模型库日志
export ASDOPS_LOG_TO_FILE=0
export ASDOPS_LOG_TO_STDOUT=0
export ASDOPS_LOG_LEVEL=ERROR
# OCK后处理日志
export OCK_LOG_LEVEL=ERROR
export OCK_LOG_TO_STDOUT=0
/usr/local/Ascend/mindie/latest/mindie-service/bin/mindieservice_daemon
