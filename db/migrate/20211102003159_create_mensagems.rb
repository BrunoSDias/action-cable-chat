class CreateMensagems < ActiveRecord::Migration[5.2]
  def change
    create_table :mensagems do |t|
      t.references :usuario, foreign_key: true
      t.references :sala_bate_papo, foreign_key: true
      t.text :conteudo

      t.timestamps
    end
  end
end
