class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :description
      
      t.string :firstName
      t.string :lastName
      t.string :maidenName
      t.integer :age
      t.string :gender
      t.string :email,   null: false
      t.string :phone
      t.string :username, null: :false
      t.string :password
      t.string :birthDate
      t.string :image
      t.string :bloodGroup
      t.string :height
      t.string :weight
      t.string :eyeColor
      t.string :domain
      t.string :ip
      t.string :macAddress
      t.string :university
      t.string :ein
      t.string :ssn
      t.string :userAgent
      t.jsonb :hair, default: '{}'
      t.jsonb :address, default: '{}'
      t.jsonb :bank, default: '{}'
      t.jsonb :company, default: '{}'
      
      t.timestamps
    end
  end
end
