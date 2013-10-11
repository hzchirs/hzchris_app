class AddPasswordDigestToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :password_digest, :string
  end
end
