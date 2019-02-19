class AddDefaultValueToPhotoInYachts < ActiveRecord::Migration[5.2]
  def change
    change_column :yachts, :photo, :string, :default => ""
  end
end
