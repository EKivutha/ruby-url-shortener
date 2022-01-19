class CreateShorteners < ActiveRecord::Migration[7.0]
  def change
    create_table :shorteners do |t|
      t.string :short
      t.string :long
      t.numeric :identifier

      t.timestamps
    end
  end
end
