import UIKit

class Cell: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private var phoneNumberLabel: UILabel = .init()
    private var nicknameLabel: UILabel = .init()
    private var realNameLabel: UILabel = .init()
    private var avatarImage: UIImage = .init()
    
    func didSelect(account: Account) {
        phoneNumberLabel.text = account.user.phoneNumber
        nicknameLabel.text = account.user.nickname
        realNameLabel.text = account.user.realName
        avatarImage = UIImage(named: account.user.avatar)!
    }

}
