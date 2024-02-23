//
//  ViewModel.swift
//  SeSACMVVM
//
//  Created by ungQ on 2/23/24.
//

import Foundation

class ViewModel {

	var inputText = Observable(text: "")

	var outputText = Observable(text: "")

	init() {
		inputText.bind { value in
			self.validation(text: value)
		}
	}


	func validation(text: String) {
		if text.isEmpty {
			outputText.text = "값을 입력하세요"
		}

		guard let num = Int(text) else {
			outputText.text = "숫자만 입력하세요"
			return
		}

		if num > 0, num <= 1000000 {
			let format = NumberFormatter()
			format.numberStyle = .decimal
			let result = format.string(for: num)
			outputText.text = result!
		} else {
			outputText.text = "1,000,000 이하로 입력하세요"
		}

	}


}
