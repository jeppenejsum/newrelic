#
# Cookbook Name:: newrelic
# Attributes:: php-agent
#
# Copyright 2012-2014, Escape Studios
#
ext_conf_dir = node['php'].nil? "" : node['php']['ext_conf_dir']
default['newrelic']['php-agent']['startup_mode'] = "agent"
default['newrelic']['php-agent']['web_server']['service_name'] = "apache2"
default['newrelic']['php-agent']['php_recipe'] = "php::default"
default['newrelic']['php-agent']['config_file'] = "#{ext_conf_dir}/newrelic.ini"
