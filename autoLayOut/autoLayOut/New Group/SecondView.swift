import UIKit

class SecondView: UIViewController {
    
    @IBOutlet var buttonT: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setConstraint()
    }
    
    private func setConstraint() {
        buttonT.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonT.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            buttonT.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            buttonT.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -100)
        ])
    }
    @IBAction func tapBack(_ sender: Any) {
        guard let first = storyboard?.instantiateViewController(withIdentifier: "first") as? ViewController else {return}
        first.modalPresentationStyle = .fullScreen
        present(first, animated: true)
    }
}

