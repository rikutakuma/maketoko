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
store_introduction: "JR大阪駅南口を出てすぐ。食料品から衣料品、日用品まで幅広く取り揃えております。売り場面積は関西最大級！何かご入用がありましたら、ぜひイトーヨーク大阪駅前店をご利用くださいませ。", 
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
area_id: "1"
},

{
email: "maketoko@gmail.com", 
password: "123456", 
corporation_name: "マケトコ", 
store_name: "天王寺店", 
store_image_id: "", 
store_introduction: "天王寺駅から徒歩6分。天王寺エリア最大級の食品売り場で豊富な品揃えをご用意しております。", 
address: "大阪市天王寺区悲田院町1-7-5", 
postal_code: "5555555", 
telephone_number: "06199871123", 
area_id: "1"
},

{
email: "eeon2@gmail.com", 
password: "123456", 
corporation_name: "エーオン", 
store_name: "池田店", 
store_image_id: "", 
store_introduction: "先月改装OPENしました。ただいまOPENセール中！ぜひ、ご来店くださいませ。", 
address: "池田氏旭丘2-77-2", 
postal_code: "5554444", 
telephone_number: "0698765432", 
area_id: "2"
},

{
email: "maketoko2@gmail.com", 
password: "123456", 
corporation_name: "マケトコ", 
store_name: "箕面市店", 
store_image_id: "", 
store_introduction: "箕面の滝からすぐ。観光に来られた際にはぜひご来店ください。", 
address: "箕面市箕面44-55-32", 
postal_code: "5553333", 
telephone_number: "0634534565", 
area_id: "3"
},

{
email: "live2@gmail.com", 
password: "123456", 
corporation_name: "ライブ", 
store_name: "関大前店", 
store_image_id: "", 
store_introduction: "関西大学の正門前で営業中。学生様はもちろん地域のお客様にもご利用いただいております。", 
address: "吹田市淡路33-44-55", 
postal_code: "5329876", 
telephone_number: "0600889977", 
area_id: "8"
},

{
email: "itoyoku2@gmail.com", 
password: "123456", 
corporation_name: "イトーヨーク", 
store_name: "堺店", 
store_image_id: "", 
store_introduction: "大阪南部最大級のスーパーマーケットです。ご入用のある方は、ぜひイトーヨーク堺店へお越しください。", 
address: "堺市東雲西町24-24-24", 
postal_code: "5312323", 
telephone_number: "0687687688", 
area_id: "12"
},

{
email: "nandai@gmail.com", 
password: "123456", 
corporation_name: "ナンダイ", 
store_name: "枚方店", 
store_image_id: "", 
store_introduction: "枚方で創業した老舗スーパー。地域に密着して40年。枚方にお越しの際はぜひお立ち寄りください。", 
address: "枚方市宮の坂56-43-12", 
postal_code: "5356789", 
telephone_number: "0609874321", 
area_id: "25"
},

{
email: "kinomiya@gmail.com", 
password: "123456", 
corporation_name: "KINOMIYA", 
store_name: "東大阪店", 
store_image_id: "", 
store_introduction: "東大阪の工場街で営業中。お弁当をはじめとした惣菜を積極的に販売しております。昼食や帰宅後の夕食にぜひお買い求めください。", 
address: "東大阪市稲田新町1-6-18", 
postal_code: "5368974", 
telephone_number: "0623428987", 
area_id: "32"
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
},

{
email: "apple@gmail.com", 
password: "123456", 
handle_name: "りんご", 
gender: "女", 
age: "44"
},

{
email: "sitlus@gmail.com", 
password: "123456", 
handle_name: "シトラス", 
gender: "男", 
age: "38"
},

{
email: "gotoratan@gmail.com", 
password: "123456", 
handle_name: "カテジナ", 
gender: "女", 
age: "27"
},

{
email: "peperon@gmail.com", 
password: "123456", 
handle_name: "ペペロン", 
gender: "女", 
age: "23"
},

{
email: "korokoro@gmail.com", 
password: "123456", 
handle_name: "さくら", 
gender: "女", 
age: "62"
},

{
email: "takagi@gmail.com", 
password: "123456", 
handle_name: "社長", 
gender: "男", 
age: "56"
},

{
email: "maketoko3@gmail.com", 
password: "123456", 
handle_name: "まけとこ", 
gender: "男", 
age: "42"
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

Send.create([
{
store_id: "1",
title: "本日は卵1パック98円！",
send_comment: "先着１００名様限定です。",
send_image_id: ""
},

{
store_id: "1",
title: "焼き芋はじめました。",
send_comment: "農産売り場で販売中です。",
send_image_id: ""
},

{
store_id: "2",
title: "シャウエッセンが298円",
send_comment: "本日限定。売り切れ御免。",
send_image_id: ""
}

])

Infomation.create([
{
store_id: "1",
titles: "毎月５のつく日はポイント５倍！",
introduction: "ぜひ、ご利用ください。",
info_image_id: ""
},

{
store_id: "2",
titles: "毎週水曜日は5％割引デー！",
introduction: "ぜひ、ご利用ください。",
info_image_id: ""
}


])

Relationship.create([
{
user_id: "1",
store_id: "1"
},

{
user_id: "2",
store_id: "1"
},

{
user_id: "3",
store_id: "1"
},

{
user_id: "4",
store_id: "1"
},

{
user_id: "5",
store_id: "1"
},

{
user_id: "6",
store_id: "1"
},

{
user_id: "7",
store_id: "1"
},

{
user_id: "1",
store_id: "2"
},

{
user_id: "2",
store_id: "2"
},

{
user_id: "3",
store_id: "2"
},

{
user_id: "4",
store_id: "2"
},

{
user_id: "5",
store_id: "2"
},

{
user_id: "1",
store_id: "3"
},

{
user_id: "2",
store_id: "3"
},

{
user_id: "3",
store_id: "3"
},

{
user_id: "3",
store_id: "4"
},

{
user_id: "5",
store_id: "4"
},

{
user_id: "8",
store_id: "5"
},

{
user_id: "9",
store_id: "6"
},

{
user_id: "10",
store_id: "7"
},

{
user_id: "6",
store_id: "8"
},

{
user_id: "2",
store_id: "8"
},

{
user_id: "7",
store_id: "8"
},

{
user_id: "8",
store_id: "9"
},

{
user_id: "4",
store_id: "10"
}

])








