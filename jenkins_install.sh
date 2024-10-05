#!/bin/bash

# https://www.jenkins.io/doc/book/installing/kubernetes/

kubectl create namespace devops-tools
kubectl apply -f serviceAccount.yaml
kubectl create -f volume.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml


# 获取 jenkins initPasswd：kubectl logs jenkins-deployment-2539456353-j00w5 --namespace=devops-tools
# 添加 jnlp pod 模版 jenkins/inbound-agent:alpine  清空 运行命令和命令参数 两个字段
# k8s 集群内部地址：https://kubernetes.default.svc.cluster.local
# jenkins 在 k8s 集群内部地址：http://jenkins-service.devops-tools.svc.cluster.local:8080

