

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var  is1 = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }


    @objc func changePic() {
        
        if is1 == true {
            imageView.image = UIImage(named: "kanye2")
            myLabel.text = "Kanye West 2"
            is1 = false
        } else {
            imageView.image = UIImage(named: "kanye1")
            myLabel.text = "Kanye West 1"
            is1 = true
        }
        
    }

}

