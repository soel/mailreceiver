class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :title
      t.string :body
      t.string :from

      t.timestamps
    end
  end
end
