class Vote < ActiveRecord::Base
  belongs_to :user

  def loud_choices
    choice.upcase
  end

end
