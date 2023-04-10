//
//  ViewController.swift
//  Xylophone
//
//  Created by Vsevolod Lashin on 09.04.2023.
//

import UIKit
import AVFoundation

final class ViewController: UIViewController {
    
    @IBOutlet var soundViews: [UIView]!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        soundViews.forEach { soundView in
            soundView.layer.cornerRadius = 10
        }
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(with: sender.titleLabel?.text ?? "")
        
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
    
    func playSound(with sound: String) {
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
}


