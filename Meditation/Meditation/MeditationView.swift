//
//  MeditationView.swift
//  Meditation
//
//  Created by Konstantinos Rizos on 10/9/22.
//

import SwiftUI

struct MeditationView: View {
	@State private var showPlayer = false
	@StateObject var meditationViewModel: MeditationViewModel
	
    var body: some View {
		VStack(spacing: 0) {
			// MARK: Image
			Image(meditationViewModel.meditation.image)
				.resizable()
				.scaledToFit()
				.frame(height: UIScreen.main.bounds.height / 3)
			
			// MARK: Meditations details
			ZStack {
				// MARK: Background
				Color(red: 24/255, green: 23/255, blue: 22/255)
				
				VStack(alignment: .leading, spacing: 24) {
					
					VStack(alignment: .leading, spacing: 8) {
						Text("Music")
						
						Text(DateComponentsFormatter.abbreviated.string(from: meditationViewModel.meditation.duration) ?? meditationViewModel.meditation.duration.formatted() + "s")
					}
					.font(.subheadline)
					.textCase(.uppercase)
					.opacity(0.7)
					
					// MARK: Title
					Text(meditationViewModel.meditation.title)
						.font(.title)
					
					// MARK: Play Button
					Button {
						showPlayer = true
					} label: {
						Label("Play", systemImage: "play.fill")
							.font(.headline)
							.foregroundColor(.black)
							.padding(.vertical, 10)
							.frame(maxWidth: .infinity)
							.background(.white)
							.cornerRadius(20)
					}

					
					// MARK: Description
					Text(meditationViewModel.meditation.description)
					
					Spacer()
				}
				.foregroundColor(.white)
				.padding(20)
			}
			.frame(height: UIScreen.main.bounds.height * 2 / 3)
		}
		.ignoresSafeArea()
		.fullScreenCover(isPresented: $showPlayer) {
			PlayerView(meditationViewModel: meditationViewModel)
		}
    }
}

struct MeditationView_Previews: PreviewProvider {
	static let meditationViewModel = MeditationViewModel(meditation: Meditation.data)
    static var previews: some View {
		MeditationView(meditationViewModel: meditationViewModel)
    }
}
