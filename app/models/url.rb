class Url < ActiveRecord::Base
  belongs_to :user
  before_create :generate_alias

  private
  def generate_alias
    shortned_url = ""
    8.times{shortned_url << (65 + rand(25)).chr}
    self.url_alias = shortned_url
  end
end

