import UIKit
import AVFoundation
class answer2ViewController: UIViewController {
    var player1: AVAudioPlayer!
    var player2: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        let sound = Bundle.main.path(forResource: "Correct-answer", ofType: "mp3")
        do {
            player1 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch{
            print(error)
        }
        
        
        let sound2 = Bundle.main.path(forResource: "fail-buzzer-01", ofType: "mp3")
        do {
            player2 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound2!))
        }
        catch{
            print(error)
        }
        
    
}
    

    
    
    
    
    
    @IBOutlet weak var Edit2: UITextField!
    
  
    @IBAction func button2(_ sender: Any) {
    
    var value:String?;
        value = Edit2.text;
        
        if value == "destination?" as String as String {
            
            player1.play()
            
        }else{
            player2.play()
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }


}
