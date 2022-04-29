class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '貸出申請中' },
    { id: 3, name: '貸出中' },
    { id: 4, name: '返却申請中' },
    { id: 5, name: '返却済み' },
  ]
end