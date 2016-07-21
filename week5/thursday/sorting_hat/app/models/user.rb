class User < ActiveRecord::Base
  has_many :picks

  def record_pick!
    Pick.create(user_id: id, picked_at: DateTime.now)
  end
end
