import UIKit
import AVFoundation
class quiz2ViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        let sound = Bundle.main.path(forResource: "クイズ2 (online-audio-converter.com)", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch{
            print(error)
        }
    }
    @IBAction func button(_ sender: Any) {
        audioPlayer.play()
    }
}
