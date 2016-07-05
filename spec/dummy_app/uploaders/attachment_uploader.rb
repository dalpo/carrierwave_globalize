require 'carrierwave'

class AttachmentUploader < CarrierWave::Uploader::Base
  storage :file

  # def store_dir
  #   "system/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end
end
