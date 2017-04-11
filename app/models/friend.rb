class Friend < ApplicationRecord

  def self.hoge
    graph = Koala::Facebook::API.new
    profile = graph.get_object('me')
    # data = graph.get_connections('me', 'friendlists')
  end

end
