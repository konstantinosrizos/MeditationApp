//
//  PlayerView.swift
//  Meditation
//
//  Created by Konstantinos Rizos on 10/9/22.
//

import SwiftUI

struct PlayerView: View {
	var meditationViewModel: MeditationViewModel
	@State private var value: Double = 0.0
	@Environment(\.dismiss) var dismiss
	
    var body: some View {
		ZStack {
			// MARK: Background Image
			Image(meditationViewModel.meditation.image)
				.resizable()
				.scaledToFill()
				.frame(width: UIScreen.main.bounds.width)
				.ignoresSafeArea()
			
			// MARK: Blur View
			Rectangle()
				.background(.thinMaterial)
				.opacity(0.25)
				.ignoresSafeArea()
			
			// MARK: Dismiss
			VStack(spacing: 32) {
				HStack {
					Button {
						dismiss()
					} label: {
						Image(systemName: "xmark.circle.fill")
							.font(.system(size: 36))
							.foregroundColor(.white)
					}
					
					Spacer()
				}
				
				// MARK: Title
				Text(meditationViewModel.meditation.title)
					.font(.title)
					.foregroundColor(.white)
				
				Spacer()
				
				// MARK: Playback
				VStack(spacing: 5) {
					Slider(value: $value, in: 0...60)
						.tint(.white)
					
					// MARK: Playback time
					HStack {
						Text("0:00")
						
						Spacer()
						
						Text("1:00")
					}
				}
				
				// MARK: Playback Control
				HStack {
					// MARK: Repeat Button
					PlaybackControlButton(systemName: "repeat") {
						
					}
					
					Spacer()
					
					// MARK: Backward Button
					PlaybackControlButton(systemName: "gobackward.10") {
						
					}
					
					Spacer()
					
					// MARK: Play/Pause Button
					PlaybackControlButton(systemName: "play.circle.fill", fontSize: 44) {
						
					}
					
					Spacer()
					
					// MARK: Forward Button
					PlaybackControlButton(systemName: "goforward.10") {
						
					}
					
					Spacer()
					
					// MARK: Stop Button
					PlaybackControlButton(systemName: "stop.fill") {
						
					}
				}
				
			}
			.padding(20)
		}
    }
}

struct PlayerView_Previews: PreviewProvider {
	static let meditationViewModel = MeditationViewModel(meditation: Meditation.data)
    static var previews: some View {
		PlayerView(meditationViewModel: meditationViewModel)
    }
}