require 'globalize'
require 'carrierwave'
require 'carrierwave/orm/activerecord'
require 'dummy_app/uploaders/attachment_uploader'

class Asset < ActiveRecord::Base
  extend CarrierwaveGlobalize
  translates :attachment
  mount_translated_uploader :attachment, AttachmentUploader
end
