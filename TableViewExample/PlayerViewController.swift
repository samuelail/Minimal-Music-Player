//
//  PlayerViewController.swift
//  TableViewExample
//
//  Created by Sonar on 1/3/19.
//  Copyright © 2019 Sonar. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var waveView: SwiftyWaveView!
    
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  waveView.start()
        self.backBtn.tintColor = UIColor.gray
        self.userImg.layer.cornerRadius = self.userImg.frame.size.height/2
        
        // set the shadow of the progressbar
        self.progressBar.layer.shadowColor = UIColor.gray.cgColor
        self.progressBar.layer.shadowOffset = CGSize(width: -12, height: 6)
        self.progressBar.layer.shadowRadius = 10
        self.progressBar.layer.shadowOpacity = 1
 
    }
    
    @IBAction func playBtn(_ sender: UIButton) {
        waveView.start()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
