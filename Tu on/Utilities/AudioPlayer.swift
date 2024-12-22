//
//  FileA.swift
//  Tu on
//
//  Created by Ahmed El Gndy on 22/12/2024.
//

import AVFoundation
import UIKit

var audioPlayer : AVAudioPlayer?

func playSound(sound: String , type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch {
            print("Coundn't open the sound file")
        }
    }
}
