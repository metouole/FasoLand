class AddUtilisateurIdToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :utilisateur_id, :integer
  end
end
