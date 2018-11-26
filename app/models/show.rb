require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def build_network(net_call_letters)
    self.network_id = Network.new(call_letters: net_call_letters)
    binding.pry
  end
end
