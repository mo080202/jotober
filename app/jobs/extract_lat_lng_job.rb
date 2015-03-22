class ExtractLatLngJob < ActiveJob::Base
  queue_as :default

  def perform(jot)
    gps = EXFIRLLJPEG.new()
    jot.photo_path
  end
end
