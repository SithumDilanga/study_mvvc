//
//  itemModel.swift
//  study_mvvc
//
//  Created by Mirissa Wellalage　Tashmika Isuri on 2023/12/11.
//

import Foundation

struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    
    static var exampleItem = Item(name: "PS", description: "simple desc")
}
