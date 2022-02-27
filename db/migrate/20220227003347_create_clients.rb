class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :cpf
      t.string :cep
      t.string :state
      t.string :street
      t.string :number

      t.timestamps
    end
  end
end
