import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(SoundName: sender.currentTitle!)
    }
    
    func playSound(SoundName: String) {
        let url = Bundle.main.url(forResource: SoundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
                player.play()
                
    }
    
        
    }


