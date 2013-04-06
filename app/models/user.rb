class User < ActiveRecord::Base
  attr_accessible :email, :password

  has_one :profile

  has_many :articles, order: "published_At DESC, title ASC", 
  										depedent: :destroy

  #TODO: continuar por la pagina 113/403 del pdf: antes de rails g migration create_articles_categories
end
