class AddColumnPratoIdToReceita < ActiveRecord::Migration[5.1]
  def change
    add_column :receita, :prato_id, :integer
  end
end
