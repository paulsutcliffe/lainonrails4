# encoding: utf-8

class BannerImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "system/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :larger do
    process :resize_to_limit => [950, nil]
  end
  version :medium do
    process :resize_to_fit => [470, 210]
  end
  version :small do
    process :resize_to_fit => [190, 190]
  end
  version :thumb do
    process :resize_to_fit => [90, 90]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
