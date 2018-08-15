# app/uploaders/photo_uploader.rb
class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def default_url(*args)
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "avatar.png"].compact.join('_'))
  end
  # Remove everything else
end
