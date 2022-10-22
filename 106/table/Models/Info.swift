struct Info {
    let name:String
    let image:String
}
extension Info {
    static func getInfoList () -> [Info] {
        var infos: [Info] = []

        let names = DataManager.shared.brandName.self
        let images = DataManager.shared.images.self
        
        let iter = names.count
        for index in 0..<iter {
            let info = Info(name: names[index],image: images[index])
            infos.append(info)
        }
        return infos
    }
    
}

