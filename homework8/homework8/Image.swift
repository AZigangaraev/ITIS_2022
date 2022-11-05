//
// Image.swift
// Homework
//
// Created by Lambert Lani on 11/5/22.
//

import UIKit
enum Section{
  case cat([Item])
  var item : [Item]{
    switch self{
    case .cat(let item):
      return item
    }
  }
  var title: String{
    switch self{
    case .cat(_):
      return "^-^"
    }
  }
}
struct Item{
  let title: String
  let image: String
}
struct Cat {
  let cat: Section = {
    .cat([
      .init(title: "1", image: "https://sun9-35.userapi.com/impg/-9r_ypxcD2Y0z_l74qOVjgNiOwVC7rbweMTepw/9XGQ3Re-w1I.jpg?size=1280x1280&quality=95&sign=3a08a13c4cb9786922d347f6ec775cc7&type=album"),
      .init(title: "2", image: "https://sun9-7.userapi.com/impg/AkkHWC6iKkdNJmBHArOJVGsq-RCcc1yfm4oJOg/dibJMQN0R0o.jpg?size=640x640&quality=95&sign=e5df7890f11261fa25cd9c25212e3d19&type=album"),
      .init(title: "3", image: "https://sun9-78.userapi.com/impg/Wsn6AjDIS4-Ta6jIm793AdUyE2J4JrN-yJlkiw/q220z-zaMl4.jpg?size=720x720&quality=96&sign=49ddf38e21ca4bbddbe160fda68dd79c&type=album"),
      .init(title: "4", image: "https://sun9-27.userapi.com/impg/iLMt7K-svjqECnJChCmi7arIJnRhkDyDXJnHvA/VmTDibIAz58.jpg?size=640x640&quality=95&sign=f4fe7ade9e015d37c6ccc4f9f64a9d18&type=album"),
      .init(title: "5", image: "https://sun9-79.userapi.com/impg/QW2jqhF1kgcqejl46lk85ggL9nDjKdi8azf4XA/QR4_lnyMKBg.jpg?size=398x600&quality=96&sign=7da24e32f1a9eda535f0ad09fa32c714&type=album"),
      .init(title: "6", image: "https://sun9-39.userapi.com/impg/jqK7IE-mubuEq4BmCaGyM9N2ZF3ykduIOuoxIQ/MrChVOwTaHM.jpg?size=532x616&quality=96&sign=5f3fd7e6eec071bab94ee99e827efa16&type=album"),
      .init(title: "7", image: "https://sun9-2.userapi.com/impg/hQj3-iq77-HxMF8X7x6vhsoDu8lrpT8G9wfwow/8VzbfSAVGCE.jpg?size=1280x1280&quality=96&sign=81e4eb9188c6d802bb336218a24c76ef&type=album"),
      .init(title: "8", image: "https://sun9-38.userapi.com/impg/uuZ7RCO26s66gXS_BauQRivDlCox6agIOokoeg/XZ37EDIUwpg.jpg?size=596x596&quality=95&sign=df6962fc5679a03eb88393412cee3ba5&type=album"),
      .init(title: "9", image: "https://sun9-77.userapi.com/impg/iiwEBY8Qezb5XNj_t4pbRl_-BZcVrjARkuvJzw/4GLFWMBdeuY.jpg?size=604x604&quality=96&sign=b17a8b42f8b55fec9e3655c935f6ea08&type=album"),
      .init(title: "10", image: "https://sun9-86.userapi.com/impg/AsbiTvtbttIZLJVj0Cw0e4PM5zMLs9o7bgh8eQ/FiB1XNq3OO0.jpg?size=980x824&quality=95&sign=4d86c9323c749362df0fe16c313ecd2d&type=album"),
      .init(title: "11", image: "https://sun9-11.userapi.com/impg/kIif_wufo6zohiMpO9sc1ikOmJzUX_vk8P6FIw/7IkKTn61dCc.jpg?size=749x486&quality=95&sign=b9103a318b7b8e576ab482b4e309d67c&type=album"),
      .init(title: "12", image: "https://sun9-74.userapi.com/impg/8Kb3ICRsJxCGKiDV4cK3zn758qYfqLzJiwUT8A/ldwQK6OcT54.jpg?size=750x745&quality=96&sign=c117d2a8593f43c3b916d72d0f1da375&type=album"),
    ])
  }()
}
