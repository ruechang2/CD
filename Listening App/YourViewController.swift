import UIKit
import youtube_ios_player_helper

class YourViewController: UIViewController, YTPlayerViewDelegate {
    @IBOutlet weak var playerView: YTPlayerView!
    @IBOutlet weak var stateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self;
        self.playerView.load(withVideoId: "FiHSfk8veTk", playerVars: ["playsinline":1])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - IBAction
    @IBAction func tapPlay(_ sender: Any) {
   self.playerView.playVideo()
    }

    @IBAction func tapPause(_ sender: Any) {
   self.playerView.pauseVideo()
    }

    @IBAction func tapStop(_ sender: Any) {
     self.playerView.stopVideo()
        
    }

    
    // MARK: - delegate methods
    func playerView(_ playerView: YTPlayerView!, didChangeTo state: YTPlayerState) {
        switch (state) {
        case YTPlayerState.unstarted:
            stateLabel.text = "停止中"
        case YTPlayerState.playing:
            stateLabel.text = "再生中"
        case YTPlayerState.paused:
            stateLabel.text = "一時停止中"
        case YTPlayerState.buffering:
            stateLabel.text = "バッファリング中"
        case YTPlayerState.ended:
            stateLabel.text = "再生終了"
        default:
            break
        }
    }
}
