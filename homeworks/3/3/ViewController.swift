import UIKit

class ViewController: UIViewController {
    let myView = UIView(frame: CGRect(x: 50, y: 152, width: 300, height: 500))
    let label:UILabel = .init()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //red square
        myView.backgroundColor = .red
        view.addSubview(myView)
        view.backgroundColor =  .purple
        //myView.addSubview(label)
        label.layer.position = .zero
        label.textAlignment = .center
        label.text = "Продам соль"
        
        label.frame = CGRect(x: 50, y: 230, width: 200, height: 20)
        myView.addSubview(label)
        keyFrameAnimation(for: myView)
        
        
        //button
        let button = UIButton(frame: CGRect(x: (view.frame.size.width + 320)/2 ,
                                            y: view.frame.size.height - 70,
                                            width: 20,
                                            height: 20))
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.setTitle("X", for: .normal)
        button.addTarget(self, action: #selector(animate1), for: .touchUpInside)
        view.addSubview(button)
        
    }
    //animation for square
    @objc func animate1 () {
        UIView.animate(withDuration: 2, animations: {
            self.myView.frame = CGRect(x: 50, y: 250, width: 100, height: 100)
        })
    }
    //animation for button
    func keyFrameAnimation (for animate:UIView) {
        let overAllAnimationDuration: Double = 6
        UIButton.animateKeyframes(withDuration:
        overAllAnimationDuration,
                delay: 0,
                options: [.autoreverse], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.15, animations: {
                animate.transform = CGAffineTransform(rotationAngle: CGFloat(Float.pi * 2))
            })
            UIView.addKeyframe(withRelativeStartTime: 0,
                               relativeDuration: 0.15,animations: {
                self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(Float.pi * 2))
    
                
            })
            UIView.addKeyframe(withRelativeStartTime: 3/overAllAnimationDuration,
                               relativeDuration: 0.2,
                               animations: { [self] in
                let moveRight = CGAffineTransform(translationX: 0, y: 0)
                myView.backgroundColor = .blue
                myView.transform = moveRight
                myView.layer.cornerRadius = myView.frame.height
                
            })
            UIView.addKeyframe(withRelativeStartTime: 4/overAllAnimationDuration,
                               relativeDuration: 0.2,
                               animations: { [self] in
                let moveUP = CGAffineTransform(translationX: 0, y: -100)
                myView.backgroundColor = .green
                myView.alpha = 0.3
                myView.transform = moveUP
    
            })
            UIView.addKeyframe(withRelativeStartTime: 5/overAllAnimationDuration,
                               relativeDuration: 0.2,
                               animations: { [self] in
                let moveDown = CGAffineTransform(translationX: 0, y: 100)
                myView.backgroundColor = .cyan
                myView.alpha = 0.3
                myView.transform = moveDown
            })

        }) {finished in
            print("all animations are complete")
        }
    }
}

                  
    

