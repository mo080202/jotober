class ExtractLatLngJob < ActiveJob::Base
  queue_as :default

  def perform(jot)
    gps = EXIFR::JPEG.new()
    jot.photo_path
  end
end
