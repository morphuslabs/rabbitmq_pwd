RabbitMQ PWD
============

This little script helps you create password hashes
compatible with the latest version o RabbitMQ;

Getting started
===============

* Clone the project
* Install lua5.3
* Install luarocks
* Install lbase64 using luarocks
* Run main.lua (lua5.3 main.lua)

Why is this useful?
===================

Imagine you're using **rabbitmq** with **docker**
and you want to define your rabbitmq environment
on startup, that is, you don't want to change users
and channels and what-so-ever **after** the container
is running. The usual approach is to define a
**/etc/rabbitmq/definitions.json** file to be
loaded the container startup (official image supports
this) with all your configuration. The thing is, when
you're doing things this way and don't
want to set the users password in plain text, you
need to set it as hashes. This script helps you
turn a plain text password into a hash.