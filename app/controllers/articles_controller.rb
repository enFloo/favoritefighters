class ArticlesController < ActionController::Base
  before_filter :authoize, only: [:edit, :update]
end
