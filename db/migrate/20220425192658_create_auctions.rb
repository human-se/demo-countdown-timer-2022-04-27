class CreateAuctions < ActiveRecord::Migration[6.1]
  def change
    create_table :auctions do |t|
      t.string :title
      t.string :description
      t.datetime :deadline

      t.timestamps
    end
  end
end
