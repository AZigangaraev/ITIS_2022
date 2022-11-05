//
//   .swift
//  HomeWork108
//
//  Created by Илья Казначеев on 01.11.2022.
//

import UIKit

struct Car {
    
    var company: String
    var model: String
    var url: URL
}


class DataBase {
    
    static func getFor1Section() -> [Car] {
        return [
            Car(company: "Mercedes", model: "C-Class", url: URL(string: "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjpPMcFlSILk8bUtJiD_7p6Cvrzo8x_fBrFhWTg1CnRWyV5xkM9YXQA5nxDc0vZgFwQ5JFGT2Dyk9a6EsN6TM4rEQIon6N4488LM-HMDxiyp305OdjeA3Uzh2ocwdH_uz74PjmRJITPiJoutYRImeN65YFFOpjHSC0iIbnpAy04hfUVNpFcCgtJycaCYg/s1024/2023%20Mercedes-AMG%20C%2043%20Sedan%20-%20front%20view%20vertical.jpg")!),
            Car(company: "Audi", model: "RS6", url: URL(string: "https://wallpapershome.ru/images/pages/pic_v/22240.jpeg")!),
            Car(company: "BMW", model: "M8", url: URL(string: "https://zamanilka.ru/wp-content/uploads/2020/11/mobile-1080x1920-auto-bmw-6-576x1024.jpg")!),
            Car(company: "Mercedes", model: "C-Class", url: URL(string: "https://assets.audiomack.com/alex-alexandru-4/5e9f8438bdc1c7640e260f69160e47f4.jpeg?width=1000&height=1000&max=true")!),
            Car(company: "Audi", model: "RS6", url: URL(string: "https://wallpapershome.ru/images/pages/pic_v/22240.jpeg")!),
            Car(company: "BMW", model: "M8", url: URL(string: "https://zamanilka.ru/wp-content/uploads/2020/11/mobile-1080x1920-auto-bmw-6-576x1024.jpg")!),
            Car(company: "Mercedes", model: "C-Class", url: URL(string: "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjpPMcFlSILk8bUtJiD_7p6Cvrzo8x_fBrFhWTg1CnRWyV5xkM9YXQA5nxDc0vZgFwQ5JFGT2Dyk9a6EsN6TM4rEQIon6N4488LM-HMDxiyp305OdjeA3Uzh2ocwdH_uz74PjmRJITPiJoutYRImeN65YFFOpjHSC0iIbnpAy04hfUVNpFcCgtJycaCYg/s1024/2023%20Mercedes-AMG%20C%2043%20Sedan%20-%20front%20view%20vertical.jpg")!),
            Car(company: "Audi", model: "RS6", url: URL(string: "https://wallpapershome.ru/images/pages/pic_v/22240.jpeg")!),
            Car(company: "BMW", model: "M8", url: URL(string: "https://zamanilka.ru/wp-content/uploads/2020/11/mobile-1080x1920-auto-bmw-6-576x1024.jpg")!),
            Car(company: "Mercedes", model: "C-Class", url: URL(string: "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjpPMcFlSILk8bUtJiD_7p6Cvrzo8x_fBrFhWTg1CnRWyV5xkM9YXQA5nxDc0vZgFwQ5JFGT2Dyk9a6EsN6TM4rEQIon6N4488LM-HMDxiyp305OdjeA3Uzh2ocwdH_uz74PjmRJITPiJoutYRImeN65YFFOpjHSC0iIbnpAy04hfUVNpFcCgtJycaCYg/s1024/2023%20Mercedes-AMG%20C%2043%20Sedan%20-%20front%20view%20vertical.jpg")!),
            Car(company: "Audi", model: "RS6", url: URL(string: "https://wallpapershome.ru/images/pages/pic_v/22240.jpeg")!),
            Car(company: "BMW", model: "M8", url: URL(string: "https://zamanilka.ru/wp-content/uploads/2020/11/mobile-1080x1920-auto-bmw-6-576x1024.jpg")!),
        ]
    }
    
    static func getFor2Section() -> [Car] {
        return [
            Car(company: "Mercedes", model: "C-Class", url: URL(string: "https://monday.agency/wp-content/uploads/2018/05/23.jpg")!),
            Car(company: "Audi", model: "RS6", url: URL(string: "https://mt63.ru/wp-content/uploads/2020/03/Risunok-2224.jpg")!),
            Car(company: "BMW", model: "M8", url: URL(string: "https://atroxcustoms.com/6033-thickbox_default/carcasas-cubre-espejos-plastico-m-oem-bmw-serie-1-2-3-4-i3-x1-m2-f87.jpg")!),
            Car(company: "Mercedes", model: "C-Class", url: URL(string: "https://assets.audiomack.com/alex-alexandru-4/5e9f8438bdc1c7640e260f69160e47f4.jpeg?width=1000&height=1000&max=true")!),
            Car(company: "Audi", model: "RS6", url: URL(string: "https://avatars.yandex.net/get-music-content/193823/f1e5cb63.a.4928428-1/m1000x1000?webp=false")!),
            Car(company: "BMW", model: "M8", url: URL(string: "https://udiscoverbrand.co/img/products/107785-f22-mat-siyah-abs-otomatik-oen-goevde-kiti-tampon-mesh-izgara-grille-bmw-f22-2014-araba-styling.jpg")!),
            Car(company: "Mercedes", model: "C-Class", url: URL(string: "https://i.pinimg.com/originals/8c/a4/70/8ca47086180fde9a952b8a5769e2a1a2.jpg")!),
            Car(company: "Audi", model: "RS6", url: URL(string: "https://assets.blackxperience.com/content/blackauto/autonews/109507audi004.jpg")!),
            Car(company: "BMW", model: "M8", url: URL(string: "https://avatars.yandex.net/get-music-content/4399644/21d126cd.a.13531592-1/m1000x1000?webp=false")!),
            Car(company: "Mercedes", model: "C-Class", url: URL(string: "https://busprokat.by/img/minibuses/V_class_small.jpg")!),
            Car(company: "Audi", model: "RS6", url: URL(string: "https://assets.blackxperience.com/content/blackauto/autonews/s7-wide.jpg")!),
            Car(company: "BMW", model: "M8", url: URL(string: "https://iaarus.ru/wp-content/uploads/2018/08/bmw-x6-fotogalereya-foto-vysokogo-kachestva_1.jpg")!),
        ]
    }
    
}
