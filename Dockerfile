FROM swr.cn-southwest-2.myhuaweicloud.com/modelfoundry/mindie:1.0.RC3-800I-A2-arm64
COPY start_service.sh /usr/local/Ascend/mindie/latest/mindie-service/
RUN chmod +x /usr/local/Ascend/mindie/latest/mindie-service/start_service.sh &&
    source ~/.bashrc
ENTRYPOINT ["/usr/local/Ascend/mindie/latest/mindie-service/bin/mindieservice_daemon"]
