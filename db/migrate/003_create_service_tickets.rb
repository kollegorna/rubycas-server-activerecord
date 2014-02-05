class CreateServiceTickets < ActiveRecord::Migration
  def change
    create_table :service_tickets do |t|
      t.string :ticket
      t.text :service
      t.datetime :consumed

      t.integer :ticket_granting_ticket_id

      t.timestamps
    end
  end
end