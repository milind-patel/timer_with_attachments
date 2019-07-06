class CreatePlays < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
    	t.string :source
	  	t.integer :timer
	    t.timestamps
    end
  end
end
