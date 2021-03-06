class PosterUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file
  process :resize_to_fill => [250, 344]

  version :thumb do
    process :resize_to_fill => [80,110]
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

end
