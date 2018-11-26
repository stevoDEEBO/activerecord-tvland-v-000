class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(network)
    network_id.call_letters
  end
end
