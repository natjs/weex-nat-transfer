# coding: utf-8

Pod::Spec.new do |s|
  s.name         = "WeexNatTransfer"
  s.version      = "1.0.0"

  s.summary      = "Nat.js weex plugin: nat-transfer"
  s.description  = <<-DESC
                   Nat.js module for weex: Transfer
                   DESC

  s.homepage     = "http://natjs.com"
  s.license      = "MIT"
  s.authors      = { "nat" => "hi@natjs.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/natjs/weex-nat-transfer.git", :tag => s.version }
  s.source_files  = "ios/Sources/*.{h,m,mm}"
  
  s.requires_arc = true
  s.dependency "WeexPluginLoader"
  s.dependency "WeexSDK"
  s.dependency "NatTransfer"
end
