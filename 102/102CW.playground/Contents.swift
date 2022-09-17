import UIKit

//struct Address {
//func printDescription() {
//    let countru = adressParts.first{ $0.key = .country}
//}

//let address = Address(addresParts: [
//    .country = "Russia"
//])
//compact.map{$0}- превращает каждый элемент в неопцилнальный, если не сможет-скип

//struct Country {
//    let name : String
//}
//
//enum AddressType2 {
//    case country(String)
//    case sity(String)
//}
//
//let addressType: AddressType2 = .country(Country(name : "Russia"))
//
//switch addressType {
//case .country(let country):
//    print("")
//}
//dispatch
//1.objc mgSend [object printDescription]; - отсылается сообщение в объект, потом в рлдитель, пока не упадет приложение или не будет найден объект, который выполнит эту функцию
//2.swift vtable - находит объект в виртуальной таблице, вызывает
//3.ststic dicpatch - есть только одна такая функция, вызывается моментально
//4. (оптимизация при компиляции) inline - пример ниже
