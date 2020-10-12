# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.create([
{
email: "itoyoku@gmail.com", 
password: "110489", 
corporation_name: "イトーヨーク", 
store_name: "大阪駅前店", 
store_image_id: "", 
store_introduction: "JR大阪駅南口を出てすぐ。食料品から衣料品、日用品まで幅広く取り揃えております。売り場面積は関西最大級！何かご入用がありましたら、ぜひイトーヨーク大阪駅前店をご利用くだしませ。", 
address: "大阪市北区22-22-22", 
postal_code: "5301104", 
telephone_number: "0611041104", 
area_id: ""
},

{
email: "live@gmail.com", 
password: "060606", 
corporation_name: "ライブ", 
store_name: "パシフィックスクエア店", 
store_image_id: "", 
store_introduction: "大阪御堂筋線新大阪駅北改札を南出口より南西へ6分。1960年より地元に愛されて開店60年。地域に愛される1番店を目指して日々営業中です。", 
address: "大阪市淀川区12-34-56", 
postal_code: "5320606", 
telephone_number: "0641414141", 
area_id: ""
},

{
email: "eeon@gmail.com", 
password: "881010", 
corporation_name: "エーオン", 
store_name: "心斎橋店", 
store_image_id: "", 
store_introduction: "御堂筋線心斎橋駅北口よりまっすぐ歩いて4分。エーオンショッピングモール内にて営業中。", 
address: "大阪市中王区33-33-33", 
postal_code: "5352345", 
telephone_number: "0612345678", 
area_id: ""
}
])

User.create([
{
email: "raiti@gmail.com", 
password: "100984", 
handle_name: "ライチ", 
gender: "男", 
age: "23"
},

{
email: "moyashi@gmail.com", 
password: "608444", 
handle_name: "モヤシ", 
gender: "女", 
age: "28"
},

{
email: "harami@gmail.com", 
password: "888888", 
handle_name: "ハラミ", 
gender: "男", 
age: "32"
}

])