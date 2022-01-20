class CreateShortenedUrlIsTable < ActiveRecord::Migration[4.2]
    def change
        create_table : shortened_urls do |t|
            t.integer :owner_id
            t.string :owner_type, limit: 20
            t.text :url, null: false, length:2083 #original url
            t.string :unique_key, limit:10, null: false
            t.string :use_count, default: 0, null:false
            t.string :category
            t.datetime :expires_at
            t.timestamps
        end

        add_index :shortened_urls, :unique_key, unique: true
        add_index :shortened_urls, :url, length:2083
        add_index :shortened_urls, [:owner_id, :owner_type]
        add_index :shortened_urls, :category
    end

end