import UIKit

 class LayersViewController: UIViewController {

     override func viewDidLoad() {
         super.viewDidLoad()
         setup()
         view.backgroundColor = .gray
         NotificationCenter.default.addObserver(self, selector: #selector(reanimate), name: UIApplication.willEnterForegroundNotification, object: nil)
     }

     override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
         mark1Layer()
         mark2Layer()
         animate()
     }
     
     @objc func reanimate() {
         animate()
      }
     
     private let animatingView: UIView = .init()
     private let label: UILabel = .init()
     private let label2: UILabel = .init()
     private let layerFilter: UIView = .init()

     private func mark1Layer() {
         let mark1 = CALayer()
         mark1.frame = CGRect(origin: .init(x: 200, y: 800),
                               size: CGSize(width: 35, height: 35))
         view.layer.addSublayer(mark1)
         mark1.backgroundColor = UIColor.white.cgColor
         let anim = CABasicAnimation(keyPath: "backgroundColor")
         anim.fromValue = mark1.backgroundColor
         anim.toValue = UIColor.red.cgColor
         anim.duration = 1
         anim.repeatCount = 100
         anim.autoreverses = true
         let key = "background color animation"
         mark1.add(anim, forKey: key)
     }
     
     private func mark2Layer() {
         let mark2 = CALayer()
         mark2.frame = CGRect(origin: .init(x: 200, y: 675),
                               size: CGSize(width: 35, height: 100))
         view.layer.addSublayer(mark2)
         mark2.backgroundColor = UIColor.white.cgColor
         let anim2 = CABasicAnimation(keyPath: "backgroundColor")
         anim2.fromValue = mark2.backgroundColor
         anim2.toValue = UIColor.red.cgColor
         anim2.duration = 1
         anim2.repeatCount = 100
         anim2.autoreverses = true
         let key = "background color animation"
         mark2.add(anim2, forKey: key)
     }

     private func setup() {
         view.addSubview(label)
         label.text = "Smoking KILLS!"
         label.textColor = .red
         label.font = .systemFont(ofSize: 40)
         label.sizeToFit()
         label.frame.origin = CGPoint(x: 80, y: 50)
     }

     private func animate() {
         UIView.animate(
             withDuration: 0.3,
             delay: 0,
             options: [ .repeat, .autoreverse ]
         ) { [self] in
             label.frame.origin.y = 80
         }
         
         let overallAnimationDuration: Double = 6
         
         let viewToAnimate = UIView(frame: CGRect(x: 0, y: 0, width: 150, height: 100))
         viewToAnimate.backgroundColor = .blue
         viewToAnimate.center = view.center
         
         view.addSubview(viewToAnimate)
         
         UIView.animateKeyframes(withDuration: overallAnimationDuration, delay: 0, options: [.calculationModeLinear], animations: { [self] in
             
             UIView.addKeyframe(withRelativeStartTime: 0,
                                relativeDuration: 0.15,
                                animations: {viewToAnimate.transform = CGAffineTransform(rotationAngle: CGFloat(Float.pi/2))})
             
             UIView.addKeyframe(withRelativeStartTime: 2/overallAnimationDuration,
                                relativeDuration: 0.2,
                                animations: {
                 let moveDown = CGAffineTransform(translationX: 0, y: 200)
                 viewToAnimate.backgroundColor = .red
                 viewToAnimate.transform = moveDown
                 viewToAnimate.layer.cornerRadius = viewToAnimate.frame.height / 2
             })
             
             UIView.addKeyframe(withRelativeStartTime: 3/overallAnimationDuration,
                                relativeDuration: 0.2,
                                animations: {
                 let moveUp = CGAffineTransform(translationX: 0, y: -200)
                 viewToAnimate.backgroundColor = .blue
                 viewToAnimate.transform = moveUp
                 viewToAnimate.layer.cornerRadius = viewToAnimate.frame.height / 2
             })
             
             UIView.addKeyframe(withRelativeStartTime: 4/overallAnimationDuration,
                                relativeDuration: 0.2,
                                animations: {
                 let moveCenter = CGAffineTransform(translationX: 0, y: 0)
                 viewToAnimate.backgroundColor = .white
                 viewToAnimate.transform = moveCenter
                 viewToAnimate.layer.cornerRadius = viewToAnimate.frame.height / 20
                 viewToAnimate.frame = CGRect(
                     origin: CGPoint(x: 50, y: 400), size: CGSize(width: 275, height: 30))
             })
             
             view.addSubview(self.layerFilter)
             layerFilter.backgroundColor = .orange
             layerFilter.frame = CGRect(origin: CGPoint(x: 50, y: 400), size: CGSize(width: 75, height: 30))
             
         }, completion: {finished in print("All animations are complete")})
     }
 }
