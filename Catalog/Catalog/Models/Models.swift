struct Combo {
    let name: String
    let image: String
    let price: Int
}

struct Drink {
    let name: String
    let image: String
    let price: Int
    let volume: Double
}

struct Models {
    private static let drinkList = [
        Drink(name: "Добрый Кола", image: "main-7", price: 58, volume: 0.25),
        Drink(name: "Добрый Апельсин", image: "main-8", price: 58, volume: 0.25),
        Drink(name: "Добрый Лимон-Лайм", image: "main-9", price: 58, volume: 0.25),
        Drink(name: "Айс Кофе Карамель", image: "main-10", price: 139, volume: 0.3),
        Drink(name: "Айс Кофе Карамель Миндальный", image: "main-11", price: 189, volume: 0.3),
        Drink(name: "Пунш Пряная Вишня-Смородина", image: "main-12", price: 105, volume: 0.330),
        Drink(name: "Миндальный Латте", image: "main-13", price: 159, volume: 0.27),
        Drink(name: "Коксовый Латте", image: "main-14", price: 159, volume: 0.27),
        Drink(name: "Латте", image: "main-15", price: 109, volume: 0.3),
        Drink(name: "Миндальный Флэт Уайт", image: "main-16", price: 201, volume: 0.24),
    ]
    
    private static let comboList = [
        Combo(name: "Биг Спешиал Три Сыра Комбо", image: "main", price: 382),
        Combo(name: "Двойной Биг Спешиал Комбо", image: "main-2", price: 433),
        Combo(name: "Биг Спешиал Комбо", image: "main-3", price: 353),
        Combo(name: "Гранд Де Люкс Комбо", image: "main-4", price: 298),
        Combo(name: "Двойной Гранд Комбо", image: "main-5", price: 344),
        Combo(name: "Гранд Комбо", image: "main-6", price: 266)
    ]
    
    public static func getComboList() -> [Combo]{
        return comboList
    }
    
    public static func getDrinkList() -> [Drink] {
        return drinkList
    }
}
