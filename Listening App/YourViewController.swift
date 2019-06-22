
import UIKit
import youtube_ios_player_helper
class YourViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let youtubeView = YTPlayerView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 240))
        youtubeView.load(withVideoId: "6oMOQ9D1PnE")
        view.addSubview(youtubeView)
        
    }
    
}
