#!/bin/sh

# Copyright (c) 2018, WSO2 Inc. (http://wso2.com) All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#Ballerina Instance setup

cd /home/ubuntu
wget https://s3.us-east-2.amazonaws.com/ballerinaperformancetest/performance-ballerina/performance-ballerina-distribution-0.1.0-SNAPSHOT.tar.gz
wget https://s3.us-east-2.amazonaws.com/ballerinaperformancetest/performance-common/performance-common-distribution-0.1.1-SNAPSHOT.tar.gz
tar xzf performance-ballerina-distribution-0.1.0-SNAPSHOT.tar.gz
tar xzf performance-common-distribution-0.1.1-SNAPSHOT.tar.gz
wget https://product-dist.ballerina.io/downloads/0.980.1/ballerina-platform-linux-installer-x64-0.980.1.deb
sudo dpkg -i ballerina-platform-linux-installer-x64-0.980.1.deb
cd sar
sudo ./install-sar.sh
cd ..
