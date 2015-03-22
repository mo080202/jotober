class CreateJots < ActiveRecord::Migration
  def change
    create_table :jots do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
