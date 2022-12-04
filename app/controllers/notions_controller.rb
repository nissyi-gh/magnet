class NotionsController < ApplicationController
  def index
    @databases = Notion::Database.get
  end
end
