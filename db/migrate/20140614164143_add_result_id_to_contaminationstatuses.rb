class AddResultIdToContaminationstatuses < ActiveRecord::Migration
  def change
    add_column :contaminationstatuses, :result_id, :integer
    add_index :contaminationstatuses, :result_id
  end
end
