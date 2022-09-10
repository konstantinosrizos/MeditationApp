//
//  MeditationApp.swift
//  Meditation
//
//  Created by Konstantinos Rizos on 10/9/22.
//

import SwiftUI

@main
struct MeditationApp: App {
	@State var audioManager = AudioManager()
	
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(audioManager)
        }
    }
}
