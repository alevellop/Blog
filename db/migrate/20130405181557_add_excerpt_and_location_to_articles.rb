class AddExcerptAndLocationToArticles < ActiveRecord::Migration
  def up
    add_column :articles, :excerpt, :string
    add_column :articles, :location, :string
  end

  def down

  	remove_column :articles, :excerpt
  	remove_column :Articles, :location
  end
end
