# encoding: utf-8

class PdfUploader < CarrierWave::Uploader::Base
  # Choose what kind of storage to use for this uploader:
  storage :file

  def filename
    "#{model.course.initials}_" +
      "#{model.year}_" +
      "semestre_#{model.semester}_" +
      "examen_numero_#{model.test_number}_" +
      "#{model.teacher.name.downcase.tr(" ", "_")}." +
      "#{file.extension}" if original_filename
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/courses/#{model.course.name.downcase.tr(" ", "_")}"
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # Solo debe aceptar pdfs
  def extension_white_list
    %w(pdf)
  end

  # Para aceptar nombres de archivos con tildes y caracteres "raros"
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
end
