#!/usr/bin/env bash

mkdir microservices
cd microservices

spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=product-service \
--package-name=demo.microservices.core.product \
--groupId=demo.microservices.core.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-service

spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=review-service \
--package-name=demo.microservices.core.review \
--groupId=demo.microservices.core.review \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
review-service

spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=recommendation-service \
--package-name=demo.microservices.core.recommendation \
--groupId=demo.microservices.core.recommendation \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
recommendation-service

spring init \
--boot-version=2.5.2 \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=product-composite-service \
--package-name=demo.microservices.composite.product \
--groupId=demo.microservices.composite.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-composite-service

cd ..
