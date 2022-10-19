//
//  PlaySound.swift
//  Learn By Doing
//
//  Created by Sandil Hussain on 19/10/2022.
//

import Foundation
import AVFoundation

// MARK: - Audio Player
var audioPlayer: AVAudioPlayer?

func playAudio(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound files.")
        }
    }
}

