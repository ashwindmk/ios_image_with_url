
import UIKit

class ViewController: UIViewController {

    let strUrl = "https://firebasestorage.googleapis.com/v0/b/webengage-test-fe629.appspot.com/o/images%2Fbanner_podcasty.jpg?alt=media&token=91c770f3-06de-4944-a7b0-c13de192065c"
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func button(_ sender: UIButton) {
        if let url = URL(string: strUrl) {
            do {
                let imageData = try Data(contentsOf: url)
                self.imageView.image = UIImage(data: imageData)
            } catch let err {
                print("Error: \(err.localizedDescription)")
            }
        }
    }
    
}

