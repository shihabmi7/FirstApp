//
//  ViewController.swift
//  FirstApp
//
//  Created by Mahmud Riad on 6/29/18.
//  Copyright © 2018 Mahmud Hasan Riad. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerBtn: UIButton!
    @IBOutlet weak var hastleLbl: UILabel!
    @IBOutlet weak var onLbl: UILabel!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var cloudHolder: UIView!
    
    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        
        
        do{
            
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
            
            
        }catch let error as NSError{
            print(error.description)
        }
        
    }
    @IBAction func pressPowerBtn(_ sender: Any) {
        
        cloudHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerBtn.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            
            self.rocket.frame = CGRect(x: 0, y: 20, width: 195, height: 55)
            
        }) { (finished) in
            
            self.hastleLbl.isHidden = false
            self.onLbl.isEnabled = false
            
        }
    }
    
}

