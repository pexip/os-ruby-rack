# -*- mode: ruby; coding: utf-8 -*-
require 'rbconfig' unless defined? RbConfig
ruby = File.join(RbConfig::CONFIG['bindir'], RbConfig::CONFIG['ruby_install_name'])

task :default do
  sh "#{ruby} /usr/bin/bacon -I./test -w -a"
end
