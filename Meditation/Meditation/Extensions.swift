//
//  Extensions.swift
//  Meditation
//
//  Created by Konstantinos Rizos on 10/9/22.
//

import Foundation

extension DateComponentsFormatter {
	static let abbreviated: DateComponentsFormatter = {
		let formatter = DateComponentsFormatter()
		
		formatter.allowedUnits = [.hour, .minute, .second]
		formatter.unitsStyle = .abbreviated
		
		return formatter
	}()
	
	static let positional: DateComponentsFormatter = {
		let formatter = DateComponentsFormatter()
		
		formatter.allowedUnits = [.minute, .second]
		formatter.unitsStyle = .positional
		formatter.zeroFormattingBehavior = .pad
		
		return formatter
	}()
}
