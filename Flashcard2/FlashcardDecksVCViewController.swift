//
//  FlashcardDecksVCViewController.swift
//  Flashcard2
//
//  Created by Judy Li on 12/4/20.
//  Copyright © 2020 Judy Li. All rights reserved.
//

import UIKit

class FlashcardDecksVC: UIViewController, UITableViewDelegate, UITableViewDataSource, CustomTableViewCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    private var flashcardDecks: [FlashcardDeck]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flashcardDecks = [
            FlashcardDeck.init(deckID:4, deckName: "Spanish"),
            FlashcardDeck.init(deckID: 2, deckName: "Database"),
            FlashcardDeck.init(deckID: 3, deckName: "Japanese")
        ]
    }
    
    @IBAction func btnAddDeck(_ sender: Any) {
        let alert: UIAlertController = UIAlertController.init(title: "Add Deck", message: "Please enter deck name", preferredStyle: .alert)
        
        let cancelAction: UIAlertAction = UIAlertAction.init(title: "Cancel", style: .cancel) { (action) in
        }
        
        let okAction: UIAlertAction = UIAlertAction.init(title: "Submit", style: .default) { (action) in
            
            let newFlashCardDeck = FlashcardDeck.init(deckID:self.flashcardDecks.count, deckName: alert.textFields?.first?.text ?? "")
            self.flashcardDecks.append(newFlashCardDeck)
            self.tableView.reloadData()
        }
        
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        alert.addTextField(configurationHandler: nil);
        
        self.present(alert, animated: true, completion: nil)
    }
    
    //MARK: CustomTableViewCellDelegate
    
    func deleteRow(atIndex index: IndexPath) {
        self.flashcardDecks.remove(at: index.row)
        self.tableView.reloadData()
    }
    
    //MARK: UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flashcardDecks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Custom Cell") as! CustomTableViewCell
        
        cell.lblTitle.text = flashcardDecks[indexPath.row].deckName
        cell.indexPath  = indexPath
        cell.delegate = self
        
        return cell
    }
}
