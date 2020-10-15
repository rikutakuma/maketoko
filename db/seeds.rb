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
area_id: "1"
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
area_id: "1"
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

Area.create([
{area_name:"大阪市", is_active:true},
{area_name:"豊中市", is_active:true},
{area_name:"池田市", is_active:true},
{area_name:"箕面市", is_active:true},
{area_name:"能勢町", is_active:true},
{area_name:"豊能町", is_active:true},
{area_name:"高槻市", is_active:true},
{area_name:"吹田市", is_active:true},
{area_name:"茨木市", is_active:true},
{area_name:"摂津市", is_active:true},
{area_name:"島本町", is_active:true},
{area_name:"堺市", is_active:true},
{area_name:"泉大津市", is_active:true},
{area_name:"和泉市", is_active:true},
{area_name:"高石市", is_active:true},
{area_name:"忠岡町", is_active:true},
{area_name:"岸和田市", is_active:true},
{area_name:"貝塚市", is_active:true},
{area_name:"泉佐野市", is_active:true},
{area_name:"泉南市", is_active:true},
{area_name:"阪南市", is_active:true},
{area_name:"熊取町", is_active:true},
{area_name:"田尻町", is_active:true},
{area_name:"岬町", is_active:true},
{area_name:"枚方市", is_active:true},
{area_name:"寝屋川市", is_active:true},
{area_name:"守口市", is_active:true},
{area_name:"大東市", is_active:true},
{area_name:"門真市", is_active:true},
{area_name:"四條畷市", is_active:true},
{area_name:"交野市", is_active:true},
{area_name:"東大阪市", is_active:true},
{area_name:"八尾市", is_active:true},
{area_name:"柏原市", is_active:true},
{area_name:"富田林市", is_active:true},
{area_name:"河内長野市", is_active:true},
{area_name:"松原市", is_active:true},
{area_name:"羽曳野市", is_active:true},
{area_name:"藤井寺市", is_active:true},
{area_name:"大阪狭山市", is_active:true},
{area_name:"太子町", is_active:true},
{area_name:"河南町", is_active:true},
{area_name:"千早赤阪村", is_active:true},
])











