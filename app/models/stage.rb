class Stage < ActiveRecord::Base
  has_many :artists

  def artists_count
    artists.count
  end

end
