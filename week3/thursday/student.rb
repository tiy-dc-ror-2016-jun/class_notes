class Student < ActiveRecord::Base
  belongs_to :group

  # https://github.com/austenlockwood
  def github_url
    "https://github.com/#{github_username}" if github_username
  end
end
