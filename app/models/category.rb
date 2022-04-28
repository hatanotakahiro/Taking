class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ノートPC' },
    { id: 3, name: 'モニター' },
    { id: 4, name: 'ハードディスク' },
    { id: 5, name: 'ワイヤー' },
  ]
end