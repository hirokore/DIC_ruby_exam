blogs = {
  hirokore: {
    title: "hirokore_diary",
    content: "3/11 today is very tired.",
    omake: "bioooooooo deruma!!!"
  },
  nanami: {
    title: "nanami_diary",
    content: "3/11 today is albite too ...",
    omake: "No thank you."
  }
}

blogs

p blogs[:nanami][:omake]


kaisya = {network: 2 , server:5}
kaisyas = []

kaisyas << kaisya

kaisya = {network: 3 , server:7}

kaisyas << kaisya

kaisyas.each do | key |
  puts "it is #{key[:network]}"
  puts "it is #{key[:server]}"
end

kaisyasの中に入ってる値を一つずつ、|変数|に入れて
順番に処理していく


p kaisya
p kaisyas
