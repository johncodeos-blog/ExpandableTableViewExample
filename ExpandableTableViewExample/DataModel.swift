//
//  DataModel.swift
//  ExpandableTableViewExample
//
//  Created by John Codeos on 09/30/20.
//  Copyright © 2020 John Codeos. All rights reserved.
//

import Foundation

class DataModel {
    var question: String?
    var answer: String?

    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
}
