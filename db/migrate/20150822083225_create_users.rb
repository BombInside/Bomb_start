class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # Authlogic::ActsAsAuthentic::Email
      t.string    :email
      t.string	  :name
      t.date      :b_date
      t.boolean   :admin
      t.boolean   :moderator
      t.string    :country
      t.string    :city
      t.string    :shcool
      t.string    :college
      t.string    :job
      t.boolean   :sex
      t.string    :company
      t.text      :bio

      # Authlogic::ActsAsAuthentic::Password
      t.string    :crypted_password
      t.string    :password_salt

      # Authlogic::ActsAsAuthentic::PersistenceToken
      t.string    :persistence_token

      # Authlogic::ActsAsAuthentic::SingleAccessToken
      t.string    :single_access_token

      # Authlogic::ActsAsAuthentic::PerishableToken
      t.string    :perishable_token

      # Authlogic::Session::MagicColumns
      t.integer   :login_count, default: 0, null: false
      t.integer   :failed_login_count, default: 0, null: false
      t.datetime  :last_request_at
      t.datetime  :current_login_at
      t.datetime  :last_login_at
      t.string    :current_login_ip
      t.string    :last_login_ip

      # Authlogic::Session::MagicStates
      t.boolean   :active, default: false
      t.boolean   :approved, default: false
      t.boolean   :confirmed, default: false

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end