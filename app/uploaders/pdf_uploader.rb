# encoding: utf-8

class PdfUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  # Add a white list of extensions which are allowed to be uploaded.
  # Solo debe aceptar pdfs
  def extension_white_list
    %w(pdf)
  end

  # Para aceptar nombres de archivos con tildes y caracteres "raros"
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/

end
