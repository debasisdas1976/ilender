#!/bin/bash


##### ---------------------------------------------------------------
###### KAFKA EVENTS
##### ---------------------------------------------------------------

NAMESPACE=cp4waiops
KAFKA_TOPIC_FOR_EVENTS=cp4waiops-cartridge-alerts-noi-uwlw23hs

SASL_USERNAME=cp4waiops-cartridge-kafka-auth-0

SASL_PASSWORD=rdCkFQDhFbTM
SEC="-X security.protocol=SASL_SSL -X ssl.ca.location=./data/ca.crt -X sasl.mechanisms=SCRAM-SHA-512 -X sasl.username=cp4waiops-cartridge-kafka-auth-0 -X sasl.password=rdCkFQDhFbTM"
BROKER="iaf-system-kafka-bootstrap-cp4waiops.itzroks-5500028307-moy5le-6ccd7f378ae819553d37d5f2ee142bd6-0000.eu-gb.containers.appdomain.cloud:443"

##### ---------------------------------------------------------------
###### Application URL
##### ---------------------------------------------------------------
API_URL=http://ilender-frontweb-service-route-url
API_URL_CREDIT_SCORE=http://ilender-creditscore-service-route-url/creditscore


##### ---------------------------------------------------------------
###### Memory Leak Param
##### ---------------------------------------------------------------
### memory consumption for each request
export increaseSizeInKB=500
export memoryMaxPercentage=99

##### ---------------------------------------------------------------
###### Load using locust
##### ---------------------------------------------------------------
export P_USERS=100
export P_USER_SPAWN_RATE=5
export P_TIME_DURATION=4m
# export P_TIME_DURATION=2m

export P_HOST=$API_URL
export P_LOG=ERROR
export P_RUN_MODE=inferencing


