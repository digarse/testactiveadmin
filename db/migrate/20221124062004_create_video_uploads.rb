class CreateVideoUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :video_uploads do |t|
      t.string :name
      t.string :description
      t.belongs_to :product, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end
