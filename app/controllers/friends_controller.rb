class FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
    @hoge = Friend.hoge
  end
end
