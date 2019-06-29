import UIKit
import AVFoundation
class quiz3ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let BarButtonItemAppearance = UIBarButtonItem.appearance()
        BarButtonItemAppearance.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.clear], for: .normal)
        
        let sound = Bundle.main.path(forResource: "10-6, Matsugaya 3Chome (online-audio-converter.com)", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch{
            print(error)
        }
    }
    @IBAction func button3(_ sender: Any) {
            audioPlayer.play()
    }
    
}
