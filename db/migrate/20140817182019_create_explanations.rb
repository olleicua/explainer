class CreateExplanations < ActiveRecord::Migration
  def change
    create_table :explanations do |t|
      t.string :content
      t.belongs_to :statement, index: true

      t.timestamps
    end
  end
end
