//
//  MemoTableViewCell.swift
//  MemoApp
//
//  Created by shinyoungkim on 2/27/25.
//

import UIKit

final class MemoTableViewCell: UITableViewCell {
    let memoContentLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(memoContentLabel)
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        setMemoContentLabelConstraints()
    }
    
    func setMemoContentLabelConstraints() {
        memoContentLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            memoContentLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            memoContentLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
            memoContentLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            memoContentLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8)
            
        ])
    }
}
