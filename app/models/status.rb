class Status < ActiveHash::Base
  self.data = [
    { id: 1, id_name: '貸出申請中' },
    { id: 2, id_name: '貸出中' },
    { id: 3, id_name: '返却申請中' },
    { id: 4, id_name: '返却済み' },
    { id: 5, id_name: '取消申請中' },
    { id: 6, id_name: '取消済み' },
    { id: 7, id_name: '延滞注意' },
    { id: 8, id_name: '貸出却下' }
  ]
end