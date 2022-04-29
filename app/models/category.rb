class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ノートPC' },
    { id: 2, name: 'モニター' },
    { id: 3, name: 'ハードディスク' },
    { id: 4, name: 'ワイヤー' },
  ]
end