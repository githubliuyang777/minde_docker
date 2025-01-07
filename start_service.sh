#!/bin/bash
path="${BASH_SOURCE[0]}"
mies_path=$(cd $(dirname $path); pwd )
export MIES_INSTALL_PATH=/usr/local/Ascend/mindie/latest/mindie-service
export LD_LIBRARY_PATH=/usr/local/python3.11.10/lib/python3.11/site-packages/torch_npu/lib:/usr/local/python3.11.10/lib/python3.11/site-packages/torch/lib:/usr/local/Ascend/llm_model/lib:/usr/local/Ascend/mindie/latest/mindie-llm/lib/grpc:/usr/local/Ascend/mindie/latest/mindie-llm/lib:/usr/local/Ascend/mindie/latest/mindie-service/lib:/usr/local/Ascend/mindie/latest/mindie-service/lib/grpc:/usr/local/Ascend/mindie/latest/mindie-torch/lib:/usr/local/Ascend/mindie/latest/mindie-rt/lib:/usr/local/Ascend/nnal/atb/latest/atb/cxx_abi_0/lib:/usr/local/Ascend/nnal/atb/latest/atb/cxx_abi_0/examples:/usr/local/Ascend/ascend-toolkit/latest/tools/aml/lib64:/usr/local/Ascend/ascend-toolkit/latest/tools/aml/lib64/plugin:/usr/local/Ascend/ascend-toolkit/latest/lib64:/usr/local/Ascend/ascend-toolkit/latest/lib64/plugin/opskernel:/usr/local/Ascend/ascend-toolkit/latest/lib64/plugin/nnengine:/usr/local/Ascend/ascend-toolkit/latest/opp/built-in/op_impl/ai_core/tbe/op_tiling/lib/linux/aarch64:/usr/local/Ascend/driver/lib64/common:/usr/local/Ascend/driver/lib64/driver:
export PYTHONPATH=/usr/local/Ascend/llm_model:/usr/local/Ascend/mindie/latest/mindie-llm/lib:/usr/local/Ascend/mindie/latest/mindie-llm:/usr/local/Ascend/mindie/latest/mindie-service/bin:/usr/local/Ascend/ascend-toolkit/latest/python/site-packages:/usr/local/Ascend/ascend-toolkit/latest/opp/built-in/op_impl/ai_core/tbe:
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
export ASCEND_HOME_PATH=/usr/local/Ascend/ascend-toolkit/latest
env
/usr/local/Ascend/mindie/latest/mindie-service/bin/mindieservice_daemon
