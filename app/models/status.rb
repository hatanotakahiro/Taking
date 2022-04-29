class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '貸出申請中' },
    { id: 2, name: '貸出中' },
    { id: 3, name: '返却申請中' },
    { id: 4, name: '返却済み' },
    { id: 5, name: '取消申請中' },
    { id: 6, name: '取消済み' },
    { id: 7, name: '延滞注意' },
  ]
end