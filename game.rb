def game1
    puts "じゃんけん、、" 
    puts "0(グー),1(パー),2(チョキ)"
    my_hands = gets.to_s.chomp
    opponent = rand(2).to_s
    puts "相手:" + opponent
    if my_hands == opponent
        puts "あいこ"
        puts "-------------------"
        game1
    elsif (my_hands == "0" && opponent == "2") || 
        (my_hands == "1" && opponent == "0") || 
        (my_hands == "2" && opponent == "1")
        puts "勝ち！"
        puts "-------------------"
        return "win"
    elsif (my_hands == "0" && opponent == "1") || 
        (my_hands == "1" && opponent == "2") || 
        (my_hands == "2" && opponent == "0")
        puts "負け！"
        puts "-------------------"
        return "lose"
    else
        puts "エラー"
    end
end
def game2
    if game1 == "win"
        puts "あっちむいて、、"
        puts "0(上)1(右)2(下)3(左)"
        my_direction = gets.to_s.chomp
        opponent2 = rand(3).to_s
        puts "相手:" + opponent2
        if my_direction == opponent2
            puts "勝ちました!"
            return "win"
        else
            puts "もう一回！"
            puts "-------------------"
            return "draw"
        end
    elsif game1 == "lose"
        puts "あっちむいて、、"
        puts "0(上)1(右)2(下)3(左)"
        my_direction = gets.to_s.chomp
        opponent2 = rand(3).to_s
        puts "相手:" + opponent2
        if my_direction == opponent2
            puts "負けました!"
            return "lose"
        else
            puts "もう一回！"
            puts "-------------------"
            return "draw"
        end
    else
        puts "エラー"
    end
end
   
while game2 == "draw"
    break if game2 == "win" || game2 == "lose"
end
    