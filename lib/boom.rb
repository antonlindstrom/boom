# coding: utf-8

begin
  require 'rubygems'
rescue LoadError
end

require 'fileutils'
require 'json/pure'

$:.unshift File.join(File.dirname(__FILE__), *%w[.. lib])

require 'boom/platform'
require 'boom/command'
require 'boom/config'
require 'boom/item'
require 'boom/list'

require 'boom/storage'
require 'boom/storage/base'
require 'boom/storage/json'
require 'boom/storage/redis'
require 'boom/storage/mongodb'
require 'boom/storage/keychain'

require 'boom/core_ext/symbol'

module Boom
  VERSION = '0.2.0'

  extend self

  def storage
    @storage ||= Boom::Storage.backend
  end

  def config
    @config ||= Boom::Config.new
  end

end
