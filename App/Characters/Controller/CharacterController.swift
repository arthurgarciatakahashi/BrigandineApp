//
//  CharacterController.swift
//  Characters
//
//  Created by arthur takahashi on 08/09/2018.
//  Copyright © 2018 arthur takahashi. All rights reserved.
//
// https://github.com/bigmountainstudio/DesignableX.git

import UIKit
import AVFoundation

class CharacterController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //MARK: Character Info View - Modal
    @IBOutlet var characterInfoView: UIView!
    @IBOutlet weak var characterInfoBackgroundImg: UIImageView!
    @IBOutlet weak var characterInfoLabelName: UILabel!
    
    //MARK: Character Main View
    @IBOutlet weak var alphaView: UIView!
    @IBOutlet weak var charTableView: UITableView!
    
    var dataTable : [ModelData] = []
    var contentOffset : CGPoint = CGPoint.init(x: 0, y: 0)
    var audioPlayer : AVAudioPlayer?
    
    fileprivate func startBackgroundAudio() {
        do {
            if let backgroundSoundMp3 = Bundle.main.path(forResource: "Leonia_theme", ofType: "mp3") {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: backgroundSoundMp3))
                audioPlayer?.prepareToPlay()
                audioPlayer?.volume = 0.3
                audioPlayer?.numberOfLoops = -1
                audioPlayer?.play()
                
            }
        }
        catch let error {
            print("\(error))")
        }
    }
    
    override func viewDidLoad() {
        let start = Date()
        
        super.viewDidLoad()
        startBackgroundAudio()
        dataTable = Data.getChars()
        charTableView.dataSource = self
        charTableView.delegate = self
        //TODO entender esta parte de height da tableview, implementar e remover esta parte daqui
        self.charTableView.frame = CGRect(
            x: self.charTableView.frame.origin.x,
            y: self.charTableView.frame.origin.y,
            width: self.charTableView.frame.size.width,
            height: self.view.frame.size.height - self.charTableView.frame.origin.y)
        let end = Date()

        print("Elapsed Time: \(end.timeIntervalSince(start))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.dataTable.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath) as! CharacterCell
        cell.setup(model: dataTable[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("clicou \(indexPath)")
        let data = dataTable[indexPath.row]
        
        characterInfoLabelName.text = data.name
        characterInfoBackgroundImg.image = data.fullPicture
        characterInfoView.center = view.center
        characterInfoView.transform = .init(scaleX: 0.8, y: 1.2)
        
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.alphaView.alpha = 0.6
            self.characterInfoView.transform = .identity
        })
        
        view.addSubview(characterInfoView)
    }
    
    @IBAction func closeCharacterInfo(_ sender: Any) {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.characterInfoView.transform = .init(scaleX: 0.2, y: 0.2)
            self.alphaView.alpha = 0
        }) { (success) in
            self.characterInfoView.removeFromSuperview()
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
