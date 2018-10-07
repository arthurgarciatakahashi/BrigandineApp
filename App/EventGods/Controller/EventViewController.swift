//
//  ViewController.swift
//  BrigandineEventGods
//
//  Created by arthur takahashi on 19/06/2018.
//  Copyright © 2018 arthur takahashi. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {

    let arrayGods = Bundle.main.paths(forResourcesOfType: "png", inDirectory: "Images/Gods")
    
    @IBOutlet weak var imgEvent: UIImageView!
    @IBAction func changeEventImage(_ sender: UITapGestureRecognizer) {
        let randomIndex = Int(arc4random_uniform(UInt32(arrayGods.count)))

        imgEvent.image = UIImage(named: arrayGods[randomIndex]);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let orientation = UIInterfaceOrientation.landscapeLeft.rawValue;
        UIDevice.current.setValue(orientation, forKey: "orientation")
        
        self.changeEventImage(UITapGestureRecognizer())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }
    override var shouldAutorotate: Bool {
        return true;
    }
    
}

