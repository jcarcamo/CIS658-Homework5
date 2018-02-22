class AddAuthorToBugs < ActiveRecord::Migration[5.1]
  def change
    add_reference :bugs, :author, foreign_key: true
  end
end
