require 'pry'

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(net_call_letters)
    self.network_id = Network.new(call_letters: net_call_letters.values).id
    #binding.pry
  end
end
