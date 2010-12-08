class CreateUploadedFiles < ActiveRecord::Migration
  def self.up
    create_table :uploaded_files do |t|
      t.integer :user_id
      t.string  :asset_file_name
      t.string  :asset_content_type
      t.integer :asset_file_size
      t.datetime :asset_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :uploaded_files
  end
end
