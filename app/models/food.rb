class Food < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'カブトマット' },
    { id: 3, name: 'クワガタマット' },
    { id: 4, name: 'オオヒラタケ' },
    { id: 5, name: 'ヒラタけ' },
    { id: 6, name: 'カンタケ' },
    { id: 7, name: 'カワラ' },
    { id: 8, name: 'その他' }
  ]
end
