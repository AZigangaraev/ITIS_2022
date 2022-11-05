//
//  Model.swift
//  HW
//
//  Created by Максим Тарасов on 21.10.2022.
//

import UIKit

struct Animal{
    var name: String
    var link: String
}

struct GetAnimal{
    static func getFirst() ->[Animal]{
        return [
            Animal(name: "Monkey", link: "https://i.pinimg.com/736x/db/5b/b7/db5bb767c76c153055233552d2f6c6ea--southeast-asia-monkey-business.jpg"),
            Animal(name: "Giraffe", link: "https://i.pinimg.com/originals/0f/5e/df/0f5edf677cbd4d1ecf8a29f3508a61d6.jpg"),
            Animal(name: "Camel", link: "https://i.pinimg.com/originals/79/b2/82/79b28207cfff2581c01752f7878c21ae.jpg"),
            Animal(name: "Crocodile", link: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Brillenkaiman_%2802%29_2006-09-19.JPG/600px-Brillenkaiman_%2802%29_2006-09-19.JPG"),
            Animal(name: "Tiger", link: "https://upload.wikimedia.org/wikipedia/commons/d/d4/Siberian_Tiger_by_Malene_Th.jpg"),
            Animal(name: "Elephant", link: "https://i.pinimg.com/originals/f7/ff/c6/f7ffc62d33e8a9c0146504e7115e0181.jpg"),
            Animal(name: "Zebra", link: "https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/national-zoo-zebra-don-johnson.jpg"),
            Animal(name: "Kangaroo", link: "https://i.pinimg.com/originals/5c/42/d1/5c42d1ec746f5deca556ea2c9dd6fc1e.jpg"),
            Animal(name: "Lion", link: "https://img.mensxp.com/media/content/2019/Jun/new-lsquo-lion-king-rsquo-clip-shows-baby-simba-amp-mufasa-having-fun600-1559909616_600x900.jpg"),
            Animal(name: "Bear", link: "https://blog.stanis.ru/imgs/62330.jpg"),
        ]
    }
    
    static func getSecond() ->[Animal]{
        return [
            Animal(name: "Chipmunk", link: "https://funart.pro/uploads/posts/2021-04/1618131133_61-p-burunduki-domashnie-zhivotnie-krasivo-foto-64.jpg"),
            Animal(name: "Cat", link: "https://thumbs.dreamstime.com/b/%D0%BC%D0%B8%D0%BB%D1%8B%D0%B9-%D0%BF%D0%BE%D1%80%D1%82%D1%80%D0%B5%D1%82-%D0%BA%D0%BE%D1%82%D0%B0-%D0%BA%D0%B2%D0%B0%D0%B4%D1%80%D0%B0%D1%82%D0%BD%D0%BE%D0%B5-%D1%84%D0%BE%D1%82%D0%BE-105311158.jpg"),
            Animal(name: "Snake", link: "https://i.pinimg.com/originals/99/32/4f/99324fe1cad6b2f8e0bd06bc28ba09a5.jpg"),
            Animal(name: "Turtle", link: "https://activefisher.net/wp-content/uploads/6/3/4/6345bf9dfdd80d8785d441e0868e8845.jpg"),
            Animal(name: "DwarfPig", link: "https://i.pinimg.com/originals/43/b9/f1/43b9f1fb5cb579589d3813717f70b95d.jpg"),
            Animal(name: "Mouse", link: "https://fthmb.tqn.com/1mF8KgAYNR1EbObFTrx5f2ZDJxU=/960x0/filters:no_upscale()/white-rat-on-brown-background-103304009-57ffea0a5f9b5805c2b0c54d.jpg"),
            Animal(name: "Capybara", link: "https://pp.userapi.com/c638529/v638529536/190c7/7bIY1HBqMII.jpg"),
            Animal(name: "Chinchilla", link: "https://na-dache.pro/uploads/posts/2021-11/1635856023_4-na-dache-pro-p-malenkie-domashnie-zhivotnie-foto-4.jpg"),
            Animal(name: "Dog", link: "https://damion.club/uploads/posts/2022-02/1644093983_35-damion-club-p-smeshnoi-doberman-zhivotnie-37.jpg"),
            Animal(name: "Hedgehog", link: "https://ic.pics.livejournal.com/vepoqinfidal/61106630/490974/490974_original.jpg"),
        ]
    }
}


