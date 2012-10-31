# encoding: utf-8

class Kindeditor::ImageUploader < Kindeditor::AssetUploader
  
  CarrierWave.configure do |config|
    config.storage = :upyun
    config.upyun_username = "hosanna"
    config.upyun_password = 'hosanna92304150'
    config.upyun_bucket = "72cy-dev"
    config.upyun_bucket_domain = "72cy-dev.b0.upaiyun.com"
  end

  storage :upyun

  def extension_white_list
    EXT_NAMES[:image]
  end

end

