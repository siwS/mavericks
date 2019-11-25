class CreateSlackMessagesProcessed < ActiveRecord::Migration[5.2]
  def change
    create_table :slack_messages_processed do |t|
      t.string :slack_message_id
      t.string :channel_id
      t.string :user_id
      t.string :event_id
    end
  end
end
