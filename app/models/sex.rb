class Sex < ActiveHash::Base
  self.data = [
    { id: 1, name: '未定' },
    { id: 2, name: 'オス' },
    { id: 3, name: 'メス' }
  ]
end
