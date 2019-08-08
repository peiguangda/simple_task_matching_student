users_name = ["Dai", "Phan", "髙山", "拓海", "Tu", "Dang", "Dan"]
skill_name = ["C", "C++", "Java", "Ruby", "Python", "Javascript",
              "Nodejs", "R", "PHP"]
address_name = ["東京", "大阪", "関東", "北海道", "九州", "Ha Noi", "Ho Chi Minh"]
# student
10.times do |n|
  email = "student#{n + 1}@gmail.com"
  name = users_name.sample
  password = "123456"
  birthday = "12/10/1999"
  skill = skill_name.sample
  address = address_name.sample
  bank_account_number = (0...9).map { rand(10) }.join
  certificate = "N2"
  role = 0
  self_introduction = "学生として、毎日、大変なことがたくさんありますので、お金が必要です。しかし、学業や研究によって、継続的なアルバイトを実施
    する時間がないので、フリーランスなどの仕事を探しています。私はN2の資格に取って、経験もあって、御社に貢献することを希望しています。"
  User.create!(
      name: name,
      birthday: birthday,
      address: address,
      self_introduction: self_introduction,
      skill: skill,
      password: password,
      email: email,
      role: role,
      bank_account_number: bank_account_number,
      certificate: certificate
  )
end

# company
companys_name = ["Sun*", "Col-Well", "Honda", "Money Forward", "JFE", "Tech Global", "Framgia"]
10.times do |n|
  email = "company#{n + 1}@gmail.com"
  name = companys_name.sample
  password = "123456"
  birthday = "12/10/1999"
  skill = skill_name.sample
  address = address_name.sample
  bank_account_number = (0...9).map { rand(10) }.join
  certificate = "IOSS"
  role = 1
  self_introduction = "フランジアは2012年創業、現在6ヶ国、11都市にて1000名体制で活動しているITプロフェッショナルチームです。社員の8割がエンジニアで、システム設計・UI/UX設計・デザイン・インフラ構築を含むプロダクト開発、スタートアップのアクセラレートプログラム、テクノロジー人材育成を主な事業として展開しています。"
  User.create!(
      name: name,
      birthday: birthday,
      address: address,
      self_introduction: self_introduction,
      skill: skill,
      password: password,
      email: email,
      role: role,
      bank_account_number: bank_account_number,
      certificate: certificate
  )
end

# admin
admins_name = ["admin1", "admin2", "admin3", "admin4", "admin5", "admin6", "admin7"]
10.times do |n|
  email = "admin#{n + 1}@gmail.com"
  name = users_name.sample
  password = "123456"
  birthday = "12/10/1996"
  skill = skill_name.sample
  address = address_name.sample
  bank_account_number = (0...9).map { rand(10) }.join
  certificate = ""
  role = 3
  self_introduction = "アドミンです。"
  User.create!(
      name: name,
      birthday: birthday,
      address: address,
      self_introduction: self_introduction,
      skill: skill,
      password: password,
      email: email,
      role: role,
      bank_account_number: bank_account_number,
      certificate: certificate
  )
end
