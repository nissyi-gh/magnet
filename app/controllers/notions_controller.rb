class NotionsController < ApplicationController
  def index
    @databases = Notion::Database.all
  end
end
