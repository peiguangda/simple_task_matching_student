ApplicationRecord.reset_column_information
Rails.application.eager_load!
ActiveRecord::Base.descendants.each { |model| model.reset_column_information }

users_name = ["Dai", "Phan", "髙山", "拓海", "Tu", "Dang", "Dan"]
skill_name = ["C", "C++", "Java", "Ruby", "Python", "Javascript",
              "Nodejs", "R", "PHP"]
address_name = ["東京", "大阪", "関東", "北海道", "九州", "Ha Noi", "Ho Chi Minh"]

10.times do |n|
  email = "user-#{n + 1}@gmail.com"
  name = users_name.sample
  password = "123456789"
  birthday = "12/10/1999"
  skill = skill_name.sample
  address = address_name.sample
  bank_account_number = (0...9).map { rand(10) }.join
  certificate = "N2"
  role = "3"
  self_introduction = "学生として、毎日、大変なことがたくさんありますので、お金が必要です。しかし、学業や研究によって、継続的なアルバイトを実施
    する時間がないので、フリーランスなどの仕事を探しています。私はN2の資格に取って、経験もあって、御社に貢献することを希望しています。"
    User.create!(
          name: name,
          birthday: birthday,
          address:  address,
          self_introduction: self_introduction,
          skill: skill,
          password: password,
          email: email,
          role: role,
          bank_account_number: bank_account_number,
          certificate: certificate
          )
      end
       
 user = User.create!(
           name: "Sun Asterisk",
           birthday: "09/23/19 09:48 AM",
           address:  "東京",
           self_introduction: "私たちはSUN*です。",
           password: "123456789",
           email: "user-1555@gmail.com",
           bank_account_number: "123456789",
    )
       

 user.tasks.build(
  name: "食品製造・加工（食品)",
  content: "5時間の短時間勤務、カンタン作業、お菓子の製造
         コンビニやスーパーでよく見かけるチョコレートなどのお菓子を製造している工場でのお仕事です。
         機械から出来上がってきた製品がラインに流れてくるので、その製品を目視検査・検品をする作業がメインになります！
         カンタンな作業なので未経験でも安心し",
  field:"レストラン",
  area:  "大阪",
  salary: 1300,
  registration_deadline: Time.now,
  task_deadline: Time.now+100000,
  veteran: true,
  status: true,
  descript_url: "フリーランスの仕事",
  money_unit:  "円",
  time_to_do: "1ヶ月"
  ).save

user.tasks.build(
  name: "配膳スタッフ",
  content: "配膳スタッフ
(ひだ高山 倭乃里STAFF)(正社員)
客室にて食事の配膳,準備,片付け,客室案内をお願いします。
　　主なお仕事は…
・客室でのお客様への接客案内、
・お料理の提供
・片付けなど",
  field:"健康",
  area:  "神戸",
  salary: 200000,
  registration_deadline: Time.now,
  task_deadline: Time.now+100000,
  veteran: true,
  status: false,
  descript_url: "フリーランスの仕事",
  money_unit:  "円",
  time_to_do: "1ヶ月"
  ).save
 
user.tasks.build(
  name: "荷揚げ",
  content: "
クレーン玉掛けを使用した荷積み・荷下ろし作業
ステンレス製コイルをトラックへ荷積し、荷下ろすお仕事です。
高時給1400円×残業多めでガッチリ稼げる
嬉しい土日休み！さらに交通費もあり、
～65歳くらいの男性スタッフ活躍中。
まずはお気軽にお問い合わせください。",
  field:"交通手段",
  area:  "大阪",
  salary: 1400,
  registration_deadline: Time.now,
  task_deadline: Time.now+100000,
  veteran: true,
  status: false,
  descript_url: "フリーランスの仕事",
  money_unit:  "円",
  time_to_do: "1ヶ月"
  ).save
  
  user.tasks.build(
  name: "Web・デジタルマーケティング",
  content: "
    US本社と協働して、ゴルフクラブやUSアパレルの日本版ECサイトを立ち上げ、また安定稼働させる。
    デジタルマーケティング、デジタルマーチャンダイジングによりECサイトの向上を図り、利益および認知度をあげる。
    ECチームは６名(シニアマネージャー１名)で構成されています。　",
  field:"IT",
  area:  "東京",
  salary: 400,
  registration_deadline: Time.now,
  task_deadline: Time.now+100000,
  veteran: true,
  status: false,
  descript_url: "フリーランスの仕事",
  money_unit:  "円",
  time_to_do: "1ヶ月"
  ).save


  user.tasks.build(
  name: "マーケティング・販促企画",
  content: "
    ・宣伝PR企画
　　PR活動手配、プレスリリースの作成と配信、取材対応
    自社PRイベントの企画と運営、タイアップ営業、グッズ企画と監修
    ソーシャルメディアの企画と運営　",
  field:"メディア",
  area:  "東京",
  salary: 500,
  registration_deadline: Time.now,
  task_deadline: Time.now+100000,
  veteran: true,
  status: true,
  descript_url: "フリーランスの仕事",
  money_unit:  "円",
  time_to_do: "1ヶ月"
  ).save
  
#   user.tasks.create!(
#   name: "設計・開発エンジニア（機械・メカトロ）",
#   content: "プラントの新設・増設及び改造に伴う設計業務をお任せします。
#     社内での条件出し、国内の設備メーカーと仕様検討、そしてプラント稼動後の量産対応と一貫した業務を担当。
#     チーム体制で業務を行っているため、助け合いながら業務を進めていってください。
#     ☆ゆくゆくは海外赴任をしていただける方を想定しています。グローバルに活躍をしたい方には最適な求人です。",
#   field: "エネルギー",
#   area: "関東",
#   salary: 500,
# 　registration_deadline: Time.now,
#   task_deadline: Time.now+100000,
#   veteran: true,
#   descript_url: "フリーランスの仕事",
#   money_unit:  "円",
#   time_to_do: "1ヶ月"
#   )

#   user.tasks.build(
#   name: "サービス系",
#   content: "
#     衣類のお直し及び受付・接客。
# 　　お客様の大切なお洋服を長く
# 　　愛用いただくお手伝いのシゴト。
# 　　未経験の方は、パンツのスソ上げや
# 　　商品の検品・仕上げからお願いします。",
#   field:"農業",
#   area:  "大阪",
#   salary: 900,
# 　registration_deadline: Time.now,
#   task_deadline: Time.now+100000,
#   veteran: true,
#   descript_url: "フリーランスの仕事",
#   money_unit:  "円",
#   time_to_do: "1ヶ月"
#   ).save


#   user.tasks.build(
#   name: "製造作業",
#   content: "
#     製造作業
# ■マシンオペレーター・運搬作業
# 封筒製造に必要な用紙をハンドリフトを使用し運搬後、機械にセットしボタンをポン。
# カットされた用紙から余分な紙を型抜きの要領で外して頂くお仕事です。",
#   field:"製造業",
#   area:  "大阪",
#   salary: 1150,
# 　registration_deadline: Time.now,
#   task_deadline: Time.now+100000,
#   veteran: true,
#   descript_url: "フリーランスの仕事",
#   money_unit:  "円",
#   time_to_do: "1ヶ月"
#   ).save


#   user.tasks.build(
#   name: "一般・営業事務",
#   content: "
#     営業部門での一般事務 
#     ・保険契約の計上
#     ・精算業務 
#     ・代理店からの照会対応、事務指導 
#     ・電話・メール・店頭対応（お客さま・代理店等）
#     ・書類の受付・発送、仕分・分類・ファイリング 
#     ・エクセルを用いたデータの入力・加工・修正 
#     ・その他庶務など。",
#   field:"販売",
#   area:  "東京",
#   salary: 191580,
# 　registration_deadline: Time.now,
#   task_deadline: Time.now+100000,
#   veteran: true,
#   descript_url: "フリーランスの仕事",
#   money_unit:  "円",
#   time_to_do: "1ヶ月"
#   ).save

#   user.tasks.build(
#   name: "経理・簿記",
#   content: "
#     経理・簿記
# ＜経理事務のお仕事＞
# ・経費精算、伝票処理
# ・現金入出金処理
# ・電話対応
# ・来客対応
# などをお願いします。",
#   field:"経理",
#   area:  "東京",
#   salary: 179025,
# 　registration_deadline: Time.now,
#   task_deadline: Time.now+100000,
#   veteran: true,
#   descript_url: "フリーランスの仕事",
#   money_unit:  "円",
#   time_to_do: "1ヶ月"
#   ).save
  