//
//  ReverseTableView.swift
//  ReverseTableViewExample
//
//  Created by Murawaki on 2017/11/08.
//  Copyright © 2017年 Murawaki. All rights reserved.
//

import Foundation
import UIKit

class ReverseTableView: UITableView {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for cell in visibleCells {
            cell.contentView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        }
        
        let blankHeight = frame.height - contentSize.height
        contentInset.top = max(blankHeight, 0)
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        self.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        showsVerticalScrollIndicator = false
    }
}
