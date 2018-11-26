require 'pry'

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(net_call_letters)
    self.network = Network.new(call_letters: net_call_letters)
    #binding.pry
  end
end
