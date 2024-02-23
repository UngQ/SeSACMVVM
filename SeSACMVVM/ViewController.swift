//
//  ViewController.swift
//  SeSACMVVM
//
//  Created by ungQ on 2/23/24.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var inputTextField: UITextField!
	@IBOutlet var outputTextLabel: UILabel!
	
	let viewModel = ViewModel()


	override func viewDidLoad() {
		super.viewDidLoad()

		viewModel.outputText.bind { value in
			self.outputTextLabel.text = value
		}

		inputTextField.addTarget(self, action: #selector(inputTextFieldValueChanged), for: .editingChanged)

	}

	@objc func inputTextFieldValueChanged() {

		viewModel.inputText.text = inputTextField.text!

	}


}

