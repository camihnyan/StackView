//
//  ViewController.swift
//  StackView
//
//  Created by Camila Ribeiro Rodrigues on 22/11/21.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		createStackView()
	}
	
	func createStackView() {
		let imageView = UIImageView()
		imageView.backgroundColor = .systemMint
		imageView.image = UIImage(systemName: "heart")
		imageView.contentMode = .scaleAspectFit
		imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width/2).isActive = true
		imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
		
		let label = UILabel()
		label.backgroundColor = .systemBlue
		label.text = "Camila Rodrigues"
		label.textAlignment = .center
		label.font = .systemFont(ofSize: 21, weight: .bold)
		label.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
		label.heightAnchor.constraint(equalToConstant: 100).isActive = true
		
		let label2 = UILabel()
		label2.backgroundColor = .systemOrange
		label2.text = "iOS Developer"
		label2.textAlignment = .center
		label2.font = .systemFont(ofSize: 21, weight: .bold)
		label2.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
		label2.heightAnchor.constraint(equalToConstant: 100).isActive = true
		
		let stackView = UIStackView(arrangedSubviews: [imageView, label, label2])
		stackView.frame = view.bounds
		stackView.backgroundColor = .systemPurple
		stackView.axis = .vertical
		stackView.distribution = .equalSpacing
		stackView.spacing = 20
		view.addSubview(stackView)
	}

}

