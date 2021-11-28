class Menu < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ウォーキング' },
    { id: 3, name: 'ジョギング' },
    { id: 4, name: 'ランニング' },
    { id: 5, name: 'ウエイトトレーニング' },
    { id: 6, name: '水泳' },
  ]

  include ActiveHash::Associations
  has_many :exercises

end