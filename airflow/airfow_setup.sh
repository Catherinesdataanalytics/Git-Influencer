#!/usr/bin/env bash

###get pip3
sudo apt install python3-pip

#change .bashrc
echo "#airflow vars" >> ~/.bashrc
echo "export SLUGIFY_USES_TEXT_UNIDECODE=yes" >> ~/.bashrc
source ~/.bashrc

#intall airflow with hooks
pip3 install apache-airflow[postgres,s3]
airflow initdb
airflow webserver
