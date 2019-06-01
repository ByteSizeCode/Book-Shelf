//
//  ViewController.swift
//  BookShelf
//
//  Created by Isaac Raval on 5/31/19.
//  Copyright © 2019 Isaac Raval. All rights reserved.
//

import UIKit
import CardSlider

struct Movie: CardSliderItem {
	let image: UIImage
	let rating: Int?
	let title: String
	let subtitle: String?
	let description: String?
}

let bookContent = BookContents()

class ViewController: UIViewController {
//    let movies = [Movie(image: UIImage(named: "AliceInWonderland_Cover")!, rating: 4, title: "aa1", subtitle: "aa2", description: "aa3")]
    let movies = [
            Movie(image: #imageLiteral(resourceName: "AliceInWonderland_Cover"), rating: 5, title: "Alice in Wonderland", subtitle: "By Lewis Carroll", description: bookContent.getTextOf(bookNamed: "AliceInWonderland")),
            Movie(image: #imageLiteral(resourceName: "ATaleOfTwoCities_Cover"), rating: 4, title: "A Tale Of Two Cities", subtitle: "By Charles Dickens", description: bookContent.getTextOf(bookNamed: "ATaleOfTwoCities")),
            Movie(image: #imageLiteral(resourceName: "PrideAndPrejudice_Cover"), rating: 3, title: "Pride And Prejudice", subtitle: "By Jane Austen", description: bookContent.getTextOf(bookNamed: "PrideAndPrejudice")),
            Movie(image: #imageLiteral(resourceName: "MobyDick_Cover"), rating: 4, title: "Moby Dick", subtitle: "By Herman Melville", description: bookContent.getTextOf(bookNamed: "MobyDick")),
            Movie(image: #imageLiteral(resourceName: "TreasureIsland_Cover"), rating: 5, title: "Treasure Island", subtitle: "By Robert Louis Stevenson", description: bookContent.getTextOf(bookNamed: "TreasureIsland")),
            Movie(image: #imageLiteral(resourceName: "TheSecretGarden_Cover"), rating: 5, title: "The Secret Garden", subtitle: "By Frances Hodgson Burnett", description: bookContent.getTextOf(bookNamed: "TheSecretGarden")),
            Movie(image: #imageLiteral(resourceName: "TheAdventuresOfSherlochHolmes"), rating: 4, title: "The Adventures Of Sherlock Holmes", subtitle: "By Arthur Conan Doyle", description: bookContent.getTextOf(bookNamed: "TheAdventuresOfSherlockHolmes")),
    ]
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		let cardSlider = CardSliderViewController.with(dataSource: self)
		cardSlider.title = "Books"
		present(cardSlider, animated: true, completion: nil)
	}
}

extension ViewController: CardSliderDataSource {
	func item(for index: Int) -> CardSliderItem {
		return movies[index]
	}
	
	func numberOfItems() -> Int {
		return movies.count
	}
}
