class Team < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '横浜Fマリノス' },
    { id: 3, name: '川崎フロンターレ' },
    { id: 4, name: 'サンフレッチェ広島' },
    { id: 5, name: '鹿島アントラーズ' },
    { id: 6, name: 'セレッソ大阪' },
    { id: 7, name: 'FC東京' },
    { id: 8, name: '柏レイソル' },
    { id: 9, name: '名古屋グランパスエイト' },
    { id: 10, name: '浦和レッドダイヤモンズ' },
    { id: 11, name: '北海道コンサドーレ札幌' },
    { id: 12, name: 'サガン鳥栖' },
    { id: 13, name: '湘南ベルマーレ' },
    { id: 14, name: 'ヴィッセル神戸' },
    { id: 15, name: 'アビスパ福岡' },
    { id: 16, name: 'ガンバ大阪' },
    { id: 17, name: '京都サンガ' },
    { id: 18, name: '清水エスパルス' },
    { id: 19, name: 'ジュビロ磐田' },
    { id: 20, name: '日本代表ナショナルチーム' }
  ]

  include ActiveHash::Associations
  has_many :users

  end