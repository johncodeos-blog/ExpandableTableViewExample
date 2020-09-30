//
//  TableViewCell.swift
//  ExpandableTableViewExample
//
//  Created by John Codeos on 09/30/20.
//  Copyright © 2020 John Codeos. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var questionLabel: PaddingLabel!
    @IBOutlet var answerLabel: PaddingLabel!
    @IBOutlet var answerLabelHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Question Label Padding
        questionLabel.paddingLeft = 15
        questionLabel.paddingRight = 15
        questionLabel.paddingTop = 10
        questionLabel.paddingBottom = 10
        
        // Answer Label Padding
        answerLabel.paddingLeft = 15
        answerLabel.paddingRight = 15
    }
    
    func set(content: DataModel, state: Bool) {
        self.questionLabel.text = content.question
        guard let stringHeight = content.answer?.height(width: self.answerLabel.frame.width - (self.answerLabel.paddingLeft + self.answerLabel.paddingRight), font: .systemFont(ofSize: 17, weight: .regular)) else { return }
        if state == true {
            self.answerLabel.text = content.answer
            // Answer Label Padding
            answerLabel.paddingTop = 8
            answerLabel.paddingBottom = 8
            answerLabelHeight.constant = stringHeight + answerLabel.paddingTop + answerLabel.paddingBottom
        } else {
            self.answerLabel.text = ""
            // Answer Label Padding
            answerLabel.paddingTop = 0
            answerLabel.paddingBottom = 0
            answerLabelHeight.constant = 0
        }
        layoutIfNeeded()
    }
}
