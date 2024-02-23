//
//  Observable.swift
//  SeSACMVVM
//
//  Created by ungQ on 2/23/24.
//

import Foundation


class Observable {

	private var closure: ((String) -> Void)?

	var text: String {
		didSet {
			closure?(text)
		}
	}

	init(text: String) {
		self.text = text
	}

	func bind(closure: @escaping (String) -> Void) {

		closure(text)
		self.closure = closure

	}

}
