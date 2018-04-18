class CreateSendMails < ActiveRecord::Migration[5.1]
  def change
    create_table :send_mails do |t|
      t.string :email
      t.timestamps
    end
  end
end
