import UIKit
import AVFoundation
class quizViewController: UIViewController {
    var audioPlayer: AVAudioPlayer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let sound = Bundle.main.path(forResource: "1", ofType: "mp3")
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
