//
//  ContentView.swift
//  Meditation
//
//  Created by Konstantinos Rizos on 10/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		MeditationView(meditationViewModel: MeditationViewModel(meditation: .data))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
			.environmentObject(AudioManager())
    }
}
