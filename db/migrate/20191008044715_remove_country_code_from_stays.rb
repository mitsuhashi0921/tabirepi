class RemoveCountryCodeFromStays < ActiveRecord::Migration[5.2]
  def change
    remove_column :stays, :country_code, :string
  end
end
