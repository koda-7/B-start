class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'カブトムシ' },
    { id: 3, name: 'クワガタ' },
    { id: 4, name: 'カナブン' }
  ]
end
