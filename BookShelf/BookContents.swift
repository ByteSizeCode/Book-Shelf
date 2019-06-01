//
//  BookContents.swift
//  BookShelf
//
//  Created by Isaac Raval on 5/31/19.
//  Copyright © 2019 Isaac Raval. All rights reserved.
//

import UIKit

class BookContents {
    func getTextOf(bookNamed nameOfBook: String) -> String {
        if let filepath = Bundle.main.path(forResource: nameOfBook, ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: filepath)
                return String(contents)
            } catch {
                print("Error. Book contents of \(nameOfBook) could not be loaded.")
            }
        } else {
            print("\(nameOfBook).txt not found!")
        }
        return "Sorry, there was an error"
    }
}
