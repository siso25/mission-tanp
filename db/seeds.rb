# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 商品データ
Gift.create(brand_id: 1, brand_name: 'kailijumei', price: 1980, image_file_path: '/products/popular_2.jpg', name: 'Kailijumei フラワーティントリップ【限定カラー】', category_id: 1, category_name: 'リップ・ティント' )
Gift.create(brand_id: 2, brand_name: 'Sears(シアーズ)', price:7700 , image_file_path: '/products/popular_3.jpg', name: '【Sears】テディベア＆誕生石オープンハート', category_id: 2, category_name: 'ネックレス')
Gift.create(brand_id: 3, brand_name: 'ATB - UV', price: 2805, image_file_path: '/products/popular_4.jpg',name: 'ATB-UV+マスク 3枚セット', category_id: 3, category_name: 'マスク')
Gift.create(brand_id: 4, brand_name: 'FLOWERRiUM（フラワリウム）®', price: 4290, image_file_path: '/products/popular_5.jpg',name: 'FLOWERRiUM（フラワリウム）® toilette(トワレ)', category_id: 4, category_name: 'ハーバリウム')
Gift.create(brand_id: 5, brand_name: 'gelato pique(ジェラートピケ)', price: 13420, image_file_path: '/products/popular_6.jpg',name: '【gelato pique】ベビモコマルチBD 上下セット', category_id: 5, category_name: 'レディースパジャマ')
Gift.create(brand_id: 1, brand_name: 'kailijumei', price: 2728, image_file_path: '/products/beauty_1.jpg',name: 'Kailijumei｜フラワーリップ（日本限定ピンクゴールド）', category_id: 1, category_name: 'リップ・ティント')
Gift.create(brand_id: 2, brand_name: 'Sears(シアーズ)', price: 10900, image_file_path: '/products/beauty_2.jpg',name: 'ギフトセット〝リップ＆誕生石ネックレス＆テディベア〟｜セット商品', category_id: 6, category_name: 'セット商品')
Gift.create(brand_id: 6, brand_name: 'TANGLE TEEZER', price: 2530, image_file_path: '/products/beauty_3.jpg',name: '【TANGLE TEEZER】コンパクトスタイラー', category_id: 7, category_name: 'ヘアケア')
Gift.create(brand_id: 7, brand_name: 'Padonni(パドンニ)', price: 1620, image_file_path: '/products/food_1.jpg',name: '【ありが豚でありがとうを！！】ビッグソルト(ボーイ)', category_id: 8, category_name: '調味料')
Gift.create(brand_id: 8, brand_name: 'Summerbird', price: 4400, image_file_path: '/products/food_2.jpg',name: '【Summerbird ORGANIC】数量限定 チョコレート＆フラワー限定ギフトボックス｜チョコレート', category_id: 8, category_name: 'チョコレート')
Gift.create(brand_id: 9, brand_name: '八天堂', price: 1750, image_file_path: '/products/food_3.jpg',name: 'Thankyou クリームパン6個詰め合わせ', category_id: 9, category_name: '洋菓子')
Gift.create(brand_id: 10, brand_name: 'パーカー', price: 4048, image_file_path: '/products/accessory_1.jpg',name: '【名入れギフト】PARKER ボールペン IM', category_id: 10, category_name: 'ボールペン')
Gift.create(brand_id: 11, brand_name: 'MR. & MRS. CHIEF(ミスターアンドミセスチーフ)', price: 19800, image_file_path: '/products/accessory_2.jpg',name: '【MR.&MRS CHIEF】WEEK! ハンカチ 8枚セット', category_id: 11, category_name: 'ハンカチ')
Gift.create(brand_id: 12, brand_name: 'CC Zecchin(シーシーゼッキン)', price: 8800, image_file_path: '/products/accessory_3.jpg',name: 'ヴェネチアングラス時計(DG5422)', category_id: 12, category_name: '腕時計')
Gift.create(brand_id: 5, brand_name: 'gelato pique(ジェラートピケ)', price: 13200, image_file_path: '/right_side/new_product_1.jpg',name: 'スムーズィーハートbaby 5点セット', category_id: 13, category_name: 'ベビーウェア')
Gift.create(brand_id: 5, brand_name: 'gelato pique(ジェラートピケ)', price: 11880, image_file_path: '/right_side/new_product_2.jpg',name: 'スムーズィーlite 3BD 上下セット', category_id: 14, category_name: 'レディースウェア')
Gift.create(brand_id: 13, brand_name: 'dunhill(ダンヒル)', price: 24200, image_file_path: '/right_side/new_product_3.jpg',name: '【dunhill】 DU19F2F47SG001R 名刺入れ｜名刺入れ', category_id: 15, category_name: '名刺入れ')
Gift.create(brand_id: 14, brand_name: 'EMPORIO ARMANI(エンポリオアルマーニ)', price: 36760, image_file_path: '/right_side/new_product_4.jpg',name: '【EMPORIO ARMANI】 Y4R237-YLA0E/81072 二つ折り財布｜財布', category_id: 16, category_name: '財布')
Gift.create(brand_id: 15, brand_name: 'MICHAEL KORS(マイケルコース)', price: 21780, image_file_path: '/right_side/new_product_5.jpg',name: 'MICHAEL KORS 32F9G0LE9L/230 長財布｜財布', category_id: 16, category_name: '財布')

# ランキングデータ
RankingOrder.create(gift_id: 3,category_id: 1, category_name: '人気プレゼントランキング', rank: 2)
RankingOrder.create(gift_id: 4,category_id: 1, category_name: '人気プレゼントランキング', rank: 3)
RankingOrder.create(gift_id: 5,category_id: 1, category_name: '人気プレゼントランキング', rank: 4)
RankingOrder.create(gift_id: 6,category_id: 1, category_name: '人気プレゼントランキング', rank: 5)
RankingOrder.create(gift_id: 7,category_id: 1, category_name: '人気プレゼントランキング', rank: 6)
RankingOrder.create(gift_id: 8,category_id: 2, category_name: 'ビューティーの人気プレゼント', rank: 1)
RankingOrder.create(gift_id: 9,category_id: 2, category_name: 'ビューティーの人気プレゼント', rank: 2)
RankingOrder.create(gift_id: 10,category_id: 2, category_name: 'ビューティーの人気プレゼント', rank: 3)
RankingOrder.create(gift_id: 11,category_id: 3, category_name: 'グルメ・スイーツの人気プレゼント', rank: 1)
RankingOrder.create(gift_id: 12,category_id: 3, category_name: 'グルメ・スイーツの人気プレゼント', rank: 2)
RankingOrder.create(gift_id: 13,category_id: 3, category_name: 'グルメ・スイーツの人気プレゼント', rank: 3)
RankingOrder.create(gift_id: 14,category_id: 4, category_name: '小物・文房具の人気プレゼント', rank: 1)
RankingOrder.create(gift_id: 15,category_id: 4, category_name: '小物・文房具の人気プレゼント', rank: 2)
RankingOrder.create(gift_id: 16,category_id: 4, category_name: '小物・文房具の人気プレゼント', rank: 3)
RankingOrder.create(gift_id: 17,category_id: 5, category_name: '新着プレゼント', rank: 1)
RankingOrder.create(gift_id: 18,category_id: 5, category_name: '新着プレゼント', rank: 2)
RankingOrder.create(gift_id: 19,category_id: 5, category_name: '新着プレゼント', rank: 3)
RankingOrder.create(gift_id: 20,category_id: 5, category_name: '新着プレゼント', rank: 4)
RankingOrder.create(gift_id: 21,category_id: 5, category_name: '新着プレゼント', rank: 5)