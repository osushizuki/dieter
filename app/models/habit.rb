class Habit < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ほぼ運動しない。通勤デスクワーク程度' },
    { id: 3, name: '軽い運動。週に１〜２回程度の運動' },
    { id: 4, name: '中程度の運動。週に３〜５回程度の運動' },
    { id: 5, name: '激しい運動。週に６〜７回程度の運動' },
    { id: 6, name: '非常に激しい運動。一日に２回程度の運動' }
  ]

  include ActiveHash::Associations
  has_many :users

end