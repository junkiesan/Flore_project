class AddBodyToArticle < ActiveRecord::Migration[6.0]
  def change
        add_column :articles, :body, :text, null: false
  end
end
