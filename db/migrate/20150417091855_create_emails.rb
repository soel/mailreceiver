class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :subject
      t.string :body
      t.string :from

      t.timestamps
    end
  end
end
