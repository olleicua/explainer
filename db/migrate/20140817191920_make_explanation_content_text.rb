class MakeExplanationContentText < ActiveRecord::Migration
  def change
    change_column :explanations, :content, :text
  end
end
