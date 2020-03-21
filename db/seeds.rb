# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

engineer = Category.create(name: "ITエンジニア")
designer = Category.create(name: "デザイナー")
business = Category.create(name: "ビジネス")
writer = Category.create(name: "ライター")
creative = Category.create(name: "クリエイティブ")
web = Category.create(name: "WEB制作")
office = Category.create(name: "事務・総務・法務")
ski = Category.create(name: "スキル・資格")
finance = Category.create(name: "金融")
estate = Category.create(name: "建築・不動産")
medical = Category.create(name: "医療・健康")
profession = Category.create(name: "法律・士業")
other = Category.create(name: "その他")

engineer_se = engineer.children.create(name: "SE(システムエンジニア)")
engineer_programer = engineer.children.create(name: "プログラマー")
engineer_programer_smartphone = engineer.children.create(name: "プログラマー(スマートフォン)")
engineer_ios = engineer.children.create(name: "iOSアプリエンジニア")
engineer_android = engineer.children.create(name: "Androidアプリエンジニア")
engineer_itconsultant = engineer.children.create(name: "ITコンサルタント")
engineer_network = engineer.children.create(name: "ネットワークエンジニア")
engineer_server = engineer.children.create(name: "サーバー/インフラエンジニア")
engineer_db = engineer.children.create(name: "データベースエンジニア")
engineer_desktop = engineer.children.create(name: "WEBアプリエンジニア")
engineer_duty = engineer.children.create(name: "業務アプリエンジニア")
engineer_tester = engineer.children.create(name: "テスター")
engineer_pm = engineer.children.create(name: "プロジェクトマネージャー")
engineer_other = engineer.children.create(name: "その他エンジニア")

designer_graphic = designer.children.create(name: "グラフィックデザイナー")
designer_illustrator = designer.children.create(name: "イラストレーター")
designer_web = designer.children.create(name: "ウェブデザイナー")
designer_industory = designer.children.create(name: "工業デザイナー")
designer_editorial = designer.children.create(name: "エディトリアルデザイナー")
designer_product = designer.children.create(name: "プロダクトデザイナー")
designer_dtp = designer.children.create(name: "DTPオペレーター/デザイナー")
designer_creative = designer.children.create(name: "クリエイティブデザイナー")
designer_game = designer.children.create(name: "ゲームデザイナー")
designer_book = designer.children.create(name: "装丁家/ブックデザイナー")
designer_other = designer.children.create(name: "その他デザイナー")

business_ceo = business.children.create(name: "社長")
business_manager = business.children.create(name: "会社役員")
business_entrepreneur = business.children.create(name: "起業家")
business_sale = business.children.create(name: "営業代行")
business_student = business.children.create(name: "学生起業")
business_consultant = business.children.create(name: "コンサルタント")
business_sell = business.children.create(name: "IT営業")
business_web = business.children.create(name: "WEBディレクター/WEBプロデューサー")
business_sem = business.children.create(name: "SEO/SEOコンサルタント")
business_analyze = business.children.create(name: "WEBアナリスト")
business_merchandise = business.children.create(name: "マーチャンダイザー")
business_research = business.children.create(name: "リサーチャー")
business_market = business.children.create(name: "マーケッター")
business_account = business.children.create(name: "会計/財務担当")
business_finance = business.children.create(name: "財務担当")
business_advertise = business.children.create(name: "広告/PR担当")
business_support = business.children.create(name: "サポーター")
business_career = business.children.create(name: "キャリアコンサルタント")

writer_write = writer.children.create(name: "ライター/編集")
writer_copy = writer.children.create(name: "コピーライター")
writer_edit = writer.children.create(name: "編集者")
writer_technic = writer.children.create(name: "テクニカルライター")
writer_translate = writer.children.create(name: "翻訳者")

creative_video = creative.children.create(name: "映像カメラマン/ディレクター")
creative_advertise = creative.children.create(name: "広告/CMプランナー")
creative_picture = creative.children.create(name: "写真家/カメラマン")
creative_music = creative.children.create(name: "音楽家/作曲家/作詞家")
creative_anime = creative.children.create(name: "漫画家/アニメーター")
creative_interior = creative.children.create(name: "インテリアコーディネーター/デザイナー")
creative_garden = creative.children.create(name: "庭師/ガーデンデザイナー")

web_programer = web.children.create(name: "WEBプログラマー")
web_html = web.children.create(name: "HTMLコーダー/マークアップエンジニア")
web_ui = web.children.create(name: "UI/UXデザイナー")
web_flash = web.children.create(name: "Flashデザイナー")

office_general = office.children.create(name: "一般/営業事務")
office_medical = office.children.create(name: "医療事務")
office_legal = office.children.create(name: "法務")
office_human = office.children.create(name: "人事・総務")

ski_manner = ski.children.create(name: "ビジネススキル/マナー")
ski_pc = ski.children.create(name: "パソコン")
ski_english = ski.children.create(name: "英語講師")
ski_translator = ski.children.create(name: "翻訳家")
ski_interpreter = ski.children.create(name: "通訳者")
ski_puncher = ski.children.create(name: "キーパンチャー")

finance_fp = finance.children.create(name: "ファイナンシャルプランナー")
finance_insurance = finance.children.create(name: "保険")
finance_ifa = finance.children.create(name: "IFA")
finance_stock = finance.children.create(name: "株式投資")
finance_fx = finance.children.create(name: "FX")
finance_currency = finance.children.create(name: "仮想通貨")
finance_invest = finance.children.create(name: "投資")
finance_other = finance.children.create(name: "その他金融")

estate_architect = estate.children.create(name: "建築家")
estate_house = estate.children.create(name: "宅地建物取引主任者")
estate_consultant = estate.children.create(name: "不動産コンサルタント")

medical_doctor = medical.children.create(name: "医師")
medical_psychology = medical.children.create(name: "心理カウンセラー")
medical_tooth = medical.children.create(name: "歯科医師")
medical_acupuncture = medical.children.create(name: "鍼灸師")
medical_medicine = medical.children.create(name: "薬剤師")

profession_lawer = profession.children.create(name: "弁護士")
profession_administrative = profession.children.create(name: "行政書士")
profession_judicial = profession.children.create(name: "司法書士")
profession_socialinsurance = profession.children.create(name: "社会保険労務士")
profession_tax = profession.children.create(name: "税理士")
profession_small = profession.children.create(name: "中小企業診断士")
profession_land = profession.children.create(name: "土地家屋診断士")
profession_public = profession.children.create(name: "公認会計士")
profession_estate = profession.children.create(name: "不動産鑑定士")

other_side = other.children.create(name: "副業")
other_fortune = other.children.create(name: "占い師")
other_counselor = other.children.create(name: "カウンセラー")


program1 = Skill1.create(name: "プログラミング")
biz1 = Skill1.create(name: "ビジネス")
write1 = Skill1.create(name: "ライティング")
create1 = Skill1.create(name: "クリエイティブ")
language1 = Skill1.create(name: "外国語")
fin1 = Skill1.create(name: "金融")
pro1 = Skill1.create(name: "法律・士業")
others1 = Skill1.create(name: "その他")

program2 = Skill2.create(name: "プログラミング")
biz2 = Skill2.create(name: "ビジネス")
write2 = Skill2.create(name: "ライティング")
create2 = Skill2.create(name: "クリエイティブ")
language2 = Skill2.create(name: "外国語")
fin2 = Skill2.create(name: "金融")
pro2 = Skill2.create(name: "法律・士業")
others2 = Skill2.create(name: "その他")

program3 = Skill3.create(name: "プログラミング")
biz3 = Skill3.create(name: "ビジネス")
write3 = Skill3.create(name: "ライティング")
create3 = Skill3.create(name: "クリエイティブ")
language3 = Skill3.create(name: "外国語")
fin3 = Skill3.create(name: "金融")
pro3 = Skill3.create(name: "法律・士業")
others3 = Skill3.create(name: "その他")

program4 = Skill4.create(name: "プログラミング")
biz4 = Skill4.create(name: "ビジネス")
write4 = Skill4.create(name: "ライティング")
create4 = Skill4.create(name: "クリエイティブ")
language4 = Skill4.create(name: "外国語")
fin4 = Skill4.create(name: "金融")
pro4 = Skill4.create(name: "法律・士業")
others4 = Skill4.create(name: "その他")

program5 = Skill5.create(name: "プログラミング")
biz5 = Skill5.create(name: "ビジネス")
write5 = Skill5.create(name: "ライティング")
create5 = Skill5.create(name: "クリエイティブ")
language5 = Skill5.create(name: "外国語")
fin5 = Skill5.create(name: "金融")
pro5 = Skill5.create(name: "法律・士業")
others5 = Skill5.create(name: "その他")

program1_js = program1.children.create(name: "Javascript")
program1_ruby = program1.children.create(name: "Ruby")
program1_python = program1.children.create(name: "Python")
program1_php = program1.children.create(name: "PHP")
program1_java = program1.children.create(name: "Java")
program1_c = program1.children.create(name: "C")
program1_cplus = program1.children.create(name: "C++")
program1_csharp = program1.children.create(name: "C#")
program1_swift = program1.children.create(name: "Swift")
program1_scala = program1.children.create(name: "Scala")
program1_r = program1.children.create(name: "R")
program1_go = program1.children.create(name: "Go")
program1_net = program1.children.create(name: "VisualBasic.NET")
program1_kotlin = program1.children.create(name: "Kotlin")
program1_html = program1.children.create(name: "HTML")
program1_css = program1.children.create(name: "CSS")

biz1_sales = biz1.children.create(name: "営業")
biz1_market = biz1.children.create(name: "マーケテイング")
biz1_custmor = biz1.children.create(name: "集客")
biz1_presen = biz1.children.create(name: "プレゼン")
biz1_nego = biz1.children.create(name: "交渉")
biz1_account = biz1.children.create(name: "会計/財務")

write1_copy = write1.children.create(name: "コピーライティング")
write1_translate = write1.children.create(name: "翻訳")
write1_edit = write1.children.create(name: "編集")

create1_camera = create1.children.create(name: "カメラ")
create1_lyric = create1.children.create(name: "作詞")
create1_music = create1.children.create(name: "作曲")
create1_anime = create1.children.create(name: "作画")
create1_design = create1.children.create(name: "デザイン")

language1_english = language1.children.create(name: "英語")
language1_flance = language1.children.create(name: "フランス語")
language1_china = language1.children.create(name: "中国語")
language1_corea = language1.children.create(name: "韓国語")
language1_italy = language1.children.create(name: "イタリア語")
language1_spain = language1.children.create(name: "スペイン語")
language1_portugal = language1.children.create(name: "ポルトガル語")
language1_germanic = language1.children.create(name: "ドイツ語")
language1_hindi = language1.children.create(name: "ヒンドゥー語")

fin1_fp = fin1.children.create(name: "ファイナンシャルプランナー")
fin1_insurance = fin1.children.create(name: "保険")
fin1_ifa = fin1.children.create(name: "IFA")
fin1_stock = fin1.children.create(name: "株式投資")
fin1_fx = fin1.children.create(name: "FX")
fin1_currency = fin1.children.create(name: "仮想通貨")
fin1_invest = fin1.children.create(name: "トレード")

pro1_lawer = pro1.children.create(name: "弁護士")
pro1_administrative = pro1.children.create(name: "行政書士")
pro1_judicial = pro1.children.create(name: "司法書士")
pro1_socialinsurance = pro1.children.create(name: "社会保険労務士")
pro1_tax = pro1.children.create(name: "税理士")
pro1_small = pro1.children.create(name: "中小企業診断士")
pro1_land = pro1.children.create(name: "土地家屋診断士")
pro1_public = pro1.children.create(name: "公認会計士")
pro1_estate = pro1.children.create(name: "不動産鑑定士")

others1_side = others1.children.create(name: "副業")
others1_fortune = others1.children.create(name: "占い")
others1_counselor = others1.children.create(name: "カウンセラー")

program2_js = program2.children.create(name: "Javascript")
program2_ruby = program2.children.create(name: "Ruby")
program2_python = program2.children.create(name: "Python")
program2_php = program2.children.create(name: "PHP")
program2_java = program2.children.create(name: "Java")
program2_c = program2.children.create(name: "C")
program2_cplus = program2.children.create(name: "C++")
program2_csharp = program2.children.create(name: "C#")
program2_swift = program2.children.create(name: "Swift")
program2_scala = program2.children.create(name: "Scala")
program2_r = program2.children.create(name: "R")
program2_go = program2.children.create(name: "Go")
program2_net = program2.children.create(name: "VisualBasic.NET")
program2_kotlin = program2.children.create(name: "Kotlin")
program2_html = program2.children.create(name: "HTML")
program2_css = program2.children.create(name: "CSS")

biz2_sales = biz2.children.create(name: "営業")
biz2_market = biz2.children.create(name: "マーケテイング")
biz2_custmor = biz2.children.create(name: "集客")
biz2_presen = biz2.children.create(name: "プレゼン")
biz2_nego = biz2.children.create(name: "交渉")
biz2_account = biz2.children.create(name: "会計/財務")

write2_copy = write2.children.create(name: "コピーライティング")
write2_translate = write2.children.create(name: "翻訳")
write2_edit = write2.children.create(name: "編集")

create2_camera = create2.children.create(name: "カメラ")
create2_lyric = create2.children.create(name: "作詞")
create2_music = create2.children.create(name: "作曲")
create2_anime = create2.children.create(name: "作画")
create2_design = create2.children.create(name: "デザイン")

language2_english = language2.children.create(name: "英語")
language2_flance = language2.children.create(name: "フランス語")
language2_china = language2.children.create(name: "中国語")
language2_corea = language2.children.create(name: "韓国語")
language2_italy = language2.children.create(name: "イタリア語")
language2_spain = language2.children.create(name: "スペイン語")
language2_portugal = language2.children.create(name: "ポルトガル語")
language2_germanic = language2.children.create(name: "ドイツ語")
language2_hindi = language2.children.create(name: "ヒンドゥー語")

fin2_fp = fin2.children.create(name: "ファイナンシャルプランナー")
fin2_insurance = fin2.children.create(name: "保険")
fin2_ifa = fin2.children.create(name: "IFA")
fin2_stock = fin2.children.create(name: "株式投資")
fin2_fx = fin2.children.create(name: "FX")
fin2_currency = fin2.children.create(name: "仮想通貨")
fin2_invest = fin2.children.create(name: "トレード")

pro2_lawer = pro2.children.create(name: "弁護士")
pro2_administrative = pro2.children.create(name: "行政書士")
pro2_judicial = pro2.children.create(name: "司法書士")
pro2_socialinsurance = pro2.children.create(name: "社会保険労務士")
pro2_tax = pro2.children.create(name: "税理士")
pro2_small = pro2.children.create(name: "中小企業診断士")
pro2_land = pro2.children.create(name: "土地家屋診断士")
pro2_public = pro2.children.create(name: "公認会計士")
pro2_estate = pro2.children.create(name: "不動産鑑定士")

others2_side = others2.children.create(name: "副業")
others2_fortune = others2.children.create(name: "占い")
others2_counselor = others2.children.create(name: "カウンセラー")

program3_js = program3.children.create(name: "Javascript")
program3_ruby = program3.children.create(name: "Ruby")
program3_python = program3.children.create(name: "Python")
program3_php = program3.children.create(name: "PHP")
program3_java = program3.children.create(name: "Java")
program3_c = program3.children.create(name: "C")
program3_cplus = program3.children.create(name: "C++")
program3_csharp = program3.children.create(name: "C#")
program3_swift = program3.children.create(name: "Swift")
program3_scala = program3.children.create(name: "Scala")
program3_r = program3.children.create(name: "R")
program3_go = program3.children.create(name: "Go")
program3_net = program3.children.create(name: "VisualBasic.NET")
program3_kotlin = program3.children.create(name: "Kotlin")
program3_html = program3.children.create(name: "HTML")
program3_css = program3.children.create(name: "CSS")

biz3_sales = biz3.children.create(name: "営業")
biz3_market = biz3.children.create(name: "マーケテイング")
biz3_custmor = biz3.children.create(name: "集客")
biz3_presen = biz3.children.create(name: "プレゼン")
biz3_nego = biz3.children.create(name: "交渉")
biz3_account = biz3.children.create(name: "会計/財務")

write3_copy = write3.children.create(name: "コピーライティング")
write3_translate = write3.children.create(name: "翻訳")
write3_edit = write3.children.create(name: "編集")

create3_camera = create3.children.create(name: "カメラ")
create3_lyric = create3.children.create(name: "作詞")
create3_music = create3.children.create(name: "作曲")
create3_anime = create3.children.create(name: "作画")
create3_design = create3.children.create(name: "デザイン")

language3_english = language3.children.create(name: "英語")
language3_flance = language3.children.create(name: "フランス語")
language3_china = language3.children.create(name: "中国語")
language3_corea = language3.children.create(name: "韓国語")
language3_italy = language3.children.create(name: "イタリア語")
language3_spain = language3.children.create(name: "スペイン語")
language3_portugal = language3.children.create(name: "ポルトガル語")
language3_germanic = language3.children.create(name: "ドイツ語")
language3_hindi = language3.children.create(name: "ヒンドゥー語")

fin3_fp = fin3.children.create(name: "ファイナンシャルプランナー")
fin3_insurance = fin3.children.create(name: "保険")
fin3_ifa = fin3.children.create(name: "IFA")
fin3_stock = fin3.children.create(name: "株式投資")
fin3_fx = fin3.children.create(name: "FX")
fin3_currency = fin3.children.create(name: "仮想通貨")
fin3_invest = fin3.children.create(name: "トレード")

pro3_lawer = pro3.children.create(name: "弁護士")
pro3_administrative = pro3.children.create(name: "行政書士")
pro3_judicial = pro3.children.create(name: "司法書士")
pro3_socialinsurance = pro3.children.create(name: "社会保険労務士")
pro3_tax = pro3.children.create(name: "税理士")
pro3_small = pro3.children.create(name: "中小企業診断士")
pro3_land = pro3.children.create(name: "土地家屋診断士")
pro3_public = pro3.children.create(name: "公認会計士")
pro3_estate = pro3.children.create(name: "不動産鑑定士")

others3_side = others3.children.create(name: "副業")
others3_fortune = others3.children.create(name: "占い")
others3_counselor = others3.children.create(name: "カウンセラー")

program4_js = program4.children.create(name: "Javascript")
program4_ruby = program4.children.create(name: "Ruby")
program4_python = program4.children.create(name: "Python")
program4_php = program4.children.create(name: "PHP")
program4_java = program4.children.create(name: "Java")
program4_c = program4.children.create(name: "C")
program4_cplus = program4.children.create(name: "C++")
program4_csharp = program4.children.create(name: "C#")
program4_swift = program4.children.create(name: "Swift")
program4_scala = program4.children.create(name: "Scala")
program4_r = program4.children.create(name: "R")
program4_go = program4.children.create(name: "Go")
program4_net = program4.children.create(name: "VisualBasic.NET")
program4_kotlin = program4.children.create(name: "Kotlin")
program4_html = program4.children.create(name: "HTML")
program4_css = program4.children.create(name: "CSS")

biz4_sales = biz4.children.create(name: "営業")
biz4_market = biz4.children.create(name: "マーケテイング")
biz4_custmor = biz4.children.create(name: "集客")
biz4_presen = biz4.children.create(name: "プレゼン")
biz4_nego = biz4.children.create(name: "交渉")
biz4_account = biz4.children.create(name: "会計/財務")

write4_copy = write4.children.create(name: "コピーライティング")
write4_translate = write4.children.create(name: "翻訳")
write4_edit = write4.children.create(name: "編集")

create4_camera = create4.children.create(name: "カメラ")
create4_lyric = create4.children.create(name: "作詞")
create4_music = create4.children.create(name: "作曲")
create4_anime = create4.children.create(name: "作画")
create4_design = create4.children.create(name: "デザイン")

language4_english = language4.children.create(name: "英語")
language4_flance = language4.children.create(name: "フランス語")
language4_china = language4.children.create(name: "中国語")
language4_corea = language4.children.create(name: "韓国語")
language4_italy = language4.children.create(name: "イタリア語")
language4_spain = language4.children.create(name: "スペイン語")
language4_portugal = language4.children.create(name: "ポルトガル語")
language4_germanic = language4.children.create(name: "ドイツ語")
language4_hindi = language4.children.create(name: "ヒンドゥー語")

fin4_fp = fin4.children.create(name: "ファイナンシャルプランナー")
fin4_insurance = fin4.children.create(name: "保険")
fin4_ifa = fin4.children.create(name: "IFA")
fin4_stock = fin4.children.create(name: "株式投資")
fin4_fx = fin4.children.create(name: "FX")
fin4_currency = fin4.children.create(name: "仮想通貨")
fin4_invest = fin4.children.create(name: "トレード")

pro4_lawer = pro4.children.create(name: "弁護士")
pro4_administrative = pro4.children.create(name: "行政書士")
pro4_judicial = pro4.children.create(name: "司法書士")
pro4_socialinsurance = pro4.children.create(name: "社会保険労務士")
pro4_tax = pro4.children.create(name: "税理士")
pro4_small = pro4.children.create(name: "中小企業診断士")
pro4_land = pro4.children.create(name: "土地家屋診断士")
pro4_public = pro4.children.create(name: "公認会計士")
pro4_estate = pro4.children.create(name: "不動産鑑定士")

others4_side = others4.children.create(name: "副業")
others4_fortune = others4.children.create(name: "占い")
others4_counselor = others4.children.create(name: "カウンセラー")

program5_js = program5.children.create(name: "Javascript")
program5_ruby = program5.children.create(name: "Ruby")
program5_python = program5.children.create(name: "Python")
program5_php = program5.children.create(name: "PHP")
program5_java = program5.children.create(name: "Java")
program5_c = program5.children.create(name: "C")
program5_cplus = program5.children.create(name: "C++")
program5_csharp = program5.children.create(name: "C#")
program5_swift = program5.children.create(name: "Swift")
program5_scala = program5.children.create(name: "Scala")
program5_r = program5.children.create(name: "R")
program5_go = program5.children.create(name: "Go")
program5_net = program5.children.create(name: "VisualBasic.NET")
program5_kotlin = program5.children.create(name: "Kotlin")
program5_html = program5.children.create(name: "HTML")
program5_css = program5.children.create(name: "CSS")

biz5_sales = biz5.children.create(name: "営業")
biz5_market = biz5.children.create(name: "マーケテイング")
biz5_custmor = biz5.children.create(name: "集客")
biz5_presen = biz5.children.create(name: "プレゼン")
biz5_nego = biz5.children.create(name: "交渉")
biz5_account = biz5.children.create(name: "会計/財務")

write5_copy = write5.children.create(name: "コピーライティング")
write5_translate = write5.children.create(name: "翻訳")
write5_edit = write5.children.create(name: "編集")

create5_camera = create5.children.create(name: "カメラ")
create5_lyric = create5.children.create(name: "作詞")
create5_music = create5.children.create(name: "作曲")
create5_anime = create5.children.create(name: "作画")
create5_design = create5.children.create(name: "デザイン")

language5_english = language5.children.create(name: "英語")
language5_flance = language5.children.create(name: "フランス語")
language5_china = language5.children.create(name: "中国語")
language5_corea = language5.children.create(name: "韓国語")
language5_italy = language5.children.create(name: "イタリア語")
language5_spain = language5.children.create(name: "スペイン語")
language5_portugal = language5.children.create(name: "ポルトガル語")
language5_germanic = language5.children.create(name: "ドイツ語")
language5_hindi = language5.children.create(name: "ヒンドゥー語")

fin5_fp = fin5.children.create(name: "ファイナンシャルプランナー")
fin5_insurance = fin5.children.create(name: "保険")
fin5_ifa = fin5.children.create(name: "IFA")
fin5_stock = fin5.children.create(name: "株式投資")
fin5_fx = fin5.children.create(name: "FX")
fin5_currency = fin5.children.create(name: "仮想通貨")
fin5_invest = fin5.children.create(name: "トレード")

pro5_lawer = pro5.children.create(name: "弁護士")
pro5_administrative = pro5.children.create(name: "行政書士")
pro5_judicial = pro5.children.create(name: "司法書士")
pro5_socialinsurance = pro5.children.create(name: "社会保険労務士")
pro5_tax = pro5.children.create(name: "税理士")
pro5_small = pro5.children.create(name: "中小企業診断士")
pro5_land = pro5.children.create(name: "土地家屋診断士")
pro5_public = pro5.children.create(name: "公認会計士")
pro5_estate = pro5.children.create(name: "不動産鑑定士")

others5_side = others5.children.create(name: "副業")
others5_fortune = others5.children.create(name: "占い")
others5_counselor = others5.children.create(name: "カウンセラー")

fulltime = Jointype.create(name: "フルタイム")
weekend = Jointype.create(name: "週末のみ")
subwork = Jointype.create(name: "副業として")
shorttime = Jointype.create(name: "短期参画")
longtime = Jointype.create(name: "長期参画")
real = Jointype.create(name: "本格起業")
request = Jointype.create(name: "業務委託")
partner = Jointype.create(name: "パートナーシップ")
consul = Jointype.create(name: "参画形態は要相談")

# User.create!(name:  "管理者アカウント", email: "admin@example.jp", password:  "11111111", password_confirmation: "11111111", sex: "不明", age: "不明", area: "不明", performance1: "不明", performance2: "不明", performance3: "不明", performance4: "不明", performance5: "不明", introduce: "不明", project: "不明", want_to_do: "不明", want_to_meet: "不明", jointype: "不明", admin: true, category_id: "3", skill1_id: "1", skill2_id: "1", skill3_id: "1", skill4_id: "1", skill5_id: "1", skill1_period: "不明", skill2_period: "不明", skill3_period: "不明", skill4_period: "不明", skill5_period: "不明")