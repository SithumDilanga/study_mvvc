//
//  Content-ViewModel.swift
//  study_mvvc
//
//  Created by Mirissa Wellalage　Tashmika Isuri on 2023/12/11.
//

import Foundation
import SwiftUI

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var isTurnedOn: Bool = false
        @Published var counter = 0
        @Published var itemList = [Item]()
        
        func increment() {
            counter += 1
        }
        
        func addItem() {
            let randomItems = ["PS", "Xbox", "Nintendo", "Gameboy"]
            let item = randomItems.randomElement()!
            
            let newItem = Item(name: item, description: "Item : \(itemList.count + 1)")
            
            withAnimation  {
                itemList.insert(newItem, at: 0)
            }
        }
        
        
        
        
    }
}
