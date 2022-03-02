#!/bin/bash

# 网络
hostname=AnolisOS-dev
net=ens160
ifcfg=/etc/sysconfig/network-scripts/ifcfg-$net
ip=192.168.20.100
gateway=192.168.20.2
dns1=192.168.20.2

echo "设置hostname $hostname"
hostnamectl --static set-hostname $hostname

echo '修改ssh配置'
sed -i '/^#UseDNS/c UseDNS no' /etc/ssh/sshd_config
sed -i '/^GSSAPIAuthentication/c GSSAPIAuthentication no' /etc/ssh/sshd_config
systemctl restart sshd

echo "修改ip $ifcfg"
# 自启
sed -i '/ONBOOT=*/c ONBOOT="yes"' $ifcfg
# 删除
sed -i "/IPADDR=/d" $ifcfg
sed -i "/PREFIX=/d" $ifcfg
sed -i "/GATEWAY=/d" $ifcfg
sed -i "/DNS1=/d" $ifcfg
# 替换
sed -i '/BOOTPROTO=*/c BOOTPROTO="static"' $ifcfg
# 末尾添加
sed -i "\$a IPADDR=\"$ip\"" $ifcfg
sed -i '$a PREFIX="24"' $ifcfg
sed -i "\$a GATEWAY=\"$gateway\"" $ifcfg
sed -i "\$a DNS1=\"$dns1\"" $ifcfg

# echo '配置IP HOST映射关系'
# cat >> /etc/hosts << EOF
# 192.168.20.160 AnolisOS-n1
# 192.168.20.171 AnolisOS-n2
# 192.168.20.172 AnolisOS-n3
# EOF

echo "查看 $ifcfg"
cat $ifcfg

echo '重启网卡'
nmcli c reload
nmcli c up $net
