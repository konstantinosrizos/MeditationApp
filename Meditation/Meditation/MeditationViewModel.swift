//
//  MeditationViewModel.swift
//  Meditation
//
//  Created by Konstantinos Rizos on 10/9/22.
//

import Foundation

final class MeditationViewModel: ObservableObject {
	private(set) var meditation: Meditation
	
	init(meditation: Meditation) {
		self.meditation = meditation
	}
}

struct Meditation {
	let id = UUID()
	let title: String
	let description: String
	let duration: TimeInterval
	let track: String
	let image: String
	let icon: String
	
	static let data = Meditation(
		title: "10 Minute Relaxing Meditation",
		description: "Clear your mind and slumber into nothingness. Allocate only a few moments for a quick breather.",
		duration: 573,
		track: "meditation1",
		image: "image-stones",
		icon: "meditation-1"
	)
}
