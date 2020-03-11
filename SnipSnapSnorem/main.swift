//
//  main.swift
//  SnipSnapSnorem
//
//  Created by Peralta, Joven on 2020-03-05.
//  Copyright © 2020 Peralta, Joven. All rights reserved.
//

import Foundation


class SnipSnapSnorem {
    // Instance variables
    // The deck of cards
    var deck : Deck
    
    // The hands for each player
    var player : Hand
    var computer : Hand
    
    // The pile where each player shows their cards
    var middlePile : Hand
    
    // Offence is the person who plays their card first
    var offence: Hand
    
    // Defence is the person who has to play a matching card
    var defence: Hand
    
    // Initializers
    init () {
        // Initialize the initial deck (deck that gets shuffled and dealt out to the players)
        deck = Deck()
        
        // Initialize the player hands
        player = Hand(description: "Player's hand")
        computer = Hand(description: "Computer's hand")
        
        // Initialize the middle pile
        middlePile = Hand(description: "Middle pile")
        
        
        // Deal to the player
        if let newCards = self.deck.randomlyDealOut(thisManyCards: 26) {
            player.cards = newCards
        }
        
        // Deal to the computer
        if let newCards = self.deck.randomlyDealOut(thisManyCards: 26) {
            computer.cards = newCards
        }
        
        // Middle pile has no cards to start with
        middlePile.cards = []
        
        // Player is on offence at start (plays first)
        offence = player
        defence = computer
    }
    
}
