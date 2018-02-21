class CreateEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :local
      t.datetime :inicio

      t.timestamps
    end
  end
end
