class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(network_id)
    network_id
  end
end
