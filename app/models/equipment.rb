class Equipment < ActiveHash::Base
  self.data = [
    { id: 1, id_name: 'ノートPC' },
    { id: 2, id_name: 'モニター' },
    { id: 3, id_name: 'ハードディスク' },
    { id: 4, id_name: 'ワイヤー' }
  ]
end