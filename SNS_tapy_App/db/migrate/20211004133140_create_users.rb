class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      #limitは最大文字数
      #nullの時はfalseになる
      t.string :name, limit: 128, null: false
      #メールアドレスの設定
      t.string :mail, limit: 256, null: false
      #パスワードの設定
      t.string :pass, limit: 256, null: false

      t.timestamps#create_atとupdate_atが自動追加
    end
    #usersテーブルのnameにindexを追加する
    add_index :users,:name
  end
end
