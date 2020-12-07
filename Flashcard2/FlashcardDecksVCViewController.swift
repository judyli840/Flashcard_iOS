//
//  FlashcardDecksVCViewController.swift
//  Flashcard2
//
//  Created by Judy Li on 12/4/20.
//  Copyright © 2020 Judy Li. All rights reserved.
//

import UIKit

class FlashcardDecksVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    private var flashcardDecks: [FlashcardDeck]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flashcardDecks = [
            FlashcardDeck.init(deckID:4, deckName: "Spanish"),
            FlashcardDeck.init(deckID: 2, deckName: "Database"),
            FlashcardDeck.init(deckID: 3, deckName: "Japanese")
        ]
    }
    
    //MARK: UITableViewDataSource
    
    // func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flashcardDecks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Custom Cell") as! CustomTableViewCell
        
        cell.lblTitle.text = flashcardDecks[indexPath.row].deckName
        
        return cell
    }

  

}
