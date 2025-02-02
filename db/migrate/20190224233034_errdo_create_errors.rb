class ErrdoCreateErrors < ActiveRecord::Migration[5.1]
  def change
    create_table :errors do |t|
      t.text :exception_class_name
      t.text :exception_message
      t.string :http_method
      t.text :host_name
      t.text :url

      t.text :backtrace

      t.string :backtrace_hash
      t.integer :occurrence_count, default: 0
      t.datetime :last_occurred_at

      t.string :last_experiencer_type
      t.integer :last_experiencer_id

      t.integer :status, default: 0
      t.string :importance, default: "error"


      t.timestamps null: false
    end

    create_table :error_occurrences do |t|
      t.integer :error_id

      t.string :experiencer_type
      t.integer :experiencer_id

      t.string :ip
      t.text :user_agent
      t.string :referer
      t.text :query_string
      t.text :form_values
      t.text :param_values
      t.text :cookie_values
      t.text :header_values

      t.integer :ocurrence_count, default: 1
      t.timestamps null: false
    end

    add_index :errors, :backtrace_hash, unique: true
    add_index :errors, :importance
    add_index :errors, :last_experiencer_id
    add_index :errors, :last_experiencer_type

    add_index :error_occurrences, :experiencer_id
    add_index :error_occurrences, :experiencer_type
    add_index :error_occurrences, :error_id
  end
end
