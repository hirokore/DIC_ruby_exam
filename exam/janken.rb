require 'byebug'
# プレイヤー(自分)に「0 ~ 2」を入力させるロジックを書きます。
class Player
  def hand
    puts "0:ぐー 1:ちょき 2:ぱー"
    player_hand = gets.chomp
    puts player_hand
    while true
      if player_hand == "0" || player_hand == "2" || player_hand == "1"
        return player_hand.to_i
      else
        puts "グーチョキパー出して!!!"
        puts "0:ぐー 1:ちょき 2:ぱー"
        player_hand = gets.chomp
      end
    end
  end
end
# 敵が「0 ~ 2」の値をランダムで生成するロジックを書きます。
class Enemy
 def hand
   enemy_hand = rand(0..2)
 end
end
# プレイヤー(自分)が入力した「0 ~ 2」と、敵がランダムで生成した「0 ~ 2」をじゃんけんをさせて、その結果をコンソール上に出力するロジックを書きます。
class Janken
  def pon(player_hand, enemy_hand)
    janken = ["グー", "チョキ", "パー"]
    puts "相手の手は#{janken[enemy_hand]}です。"
    # Playerクラスの戻り値とEnemyクラスの戻り値からじゃんけんするロジックを作成します。
    result = ((player_hand - enemy_hand) + 3) % 3
    if result == 0
      puts "あいこ"
      return true
    elsif
      result == 1
      puts "あなたの負けです"
      return false
    elsif
      result == 2
      puts "あなたの勝ちです"
      return false
    end
  end
end
# じゃんけんゲームを実行するロジックを書きます。
class Action
 def self.jankenpon
   player = Player.new
   enemy = Enemy.new
   janken = Janken.new
   # 変数「next_game」に「true」を代入します。※「next_game」が「false」にならない限り、永久にwhileで繰り返し処理を実行するためです。
   next_game = true
   while next_game
     next_game = janken.pon(player.hand, enemy.hand)
   end
 end
end
# クラス名を使ってjankenponメソッドを呼び出します。
Action.jankenpon
