class Player
  def hand
    puts "0:ぐー 1:ちょき 2:ぱー"
    player_hand = gets.to_i
    while true
      if player_hand < 0 || player_hand > 2
        puts "グーチョキパー出して!!!"
        puts "0:ぐー 1:ちょき 2:ぱー"
        player_hand = gets.to_i
      else
        return player_hand
      end
    end
  end
end

class Enemy
 def hand
   enemy_hand = rand(0..2)
 end
end

class Janken

  def pon(player_hand, enemy_hand)
    # 変数「janken」に["グー", "チョキ", "パー"]を代入します。
    janken = ["グー", "チョキ", "パー"]
    #「相手の手は#{敵の生成した値}です。」と出力させます。
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
