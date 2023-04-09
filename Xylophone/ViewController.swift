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
    
    private var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        soundViews.forEach { soundView in
            soundView.layer.cornerRadius = 10
        }
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
    }
    
}

