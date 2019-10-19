//
//  ViewController.swift
//  StopSign
//
//  Created by Greg Brooks on 2019-10-18.
//  Copyright © 2019 Tiny Square St udios. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UITableViewController {

    var player: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "AvenirNext-Heavy", size: 35)!]
        
        // Do any additional setup after loading the view.
    }




    func playSound(soundName: String) {
        player?.stop()
        
        do {
            if let fileURL = Bundle.main.path(forResource: soundName, ofType: "m4a") {
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileURL))
            } else {
                print("No file with specified name exists")
            }
        } catch let error {
            print("Can't play the audio file failed with an error \(error.localizedDescription)")
        }
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       switch indexPath.section {
           case 0:
            switch indexPath.row {
            case 0:
                tableView.deselectRow(at: indexPath, animated: true)
                playSound(soundName: "stop_no_door")
                player?.play()
                break
            case 1:
                tableView.deselectRow(at: indexPath, animated: true)
                playSound(soundName: "stop_dirty_road")
                player?.play()
                break
            case 2:
                tableView.deselectRow(at: indexPath, animated: true)
                playSound(soundName: "stop_no_hoods")
                player?.play()
                break
            case 3:
                tableView.deselectRow(at: indexPath, animated: true)
                playSound(soundName: "stop_secret_ing")
                player?.play()
                break
            case 4:
               tableView.deselectRow(at: indexPath, animated: true)
               playSound(soundName: "stop_no_butter")
               player?.play()
               break
            default:
                print("Error cant make out selection")
                break
        }
        break
        default:
            print("Error cant make out selection")
            break
        }
    
    }
    

}

