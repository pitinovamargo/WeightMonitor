//
//  CurrentWeightCell.swift
//  WeightMonitor
//
//  Created by Margarita Pitinova on 18.01.2024.
//

import UIKit

final class CurrentWeightCell: UITableViewCell {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        label.text = "Текущий вес"
        label.textColor = .darkGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weightImage: UIImageView = {
        let weightImage = UIImageView()
        weightImage.image = UIImage(named: "weight")
        weightImage.tintColor = .gray
        weightImage.translatesAutoresizingMaskIntoConstraints = false
        return weightImage
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .lightGray
        clipsToBounds = true
        
        addSubview(titleLabel)
//        addSubview(chevronImage)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
//            chevronImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
//            chevronImage.centerYAnchor.constraint(equalTo: centerYAnchor),
//            chevronImage.widthAnchor.constraint(equalToConstant: 24),
//            chevronImage.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func update(with title: String) {
//        let attributedText = NSMutableAttributedString(string: title)
//
//        if let rangeOfNewLine = title.range(of: "\n") {
//            let rangeOfFirstLine = NSRange(title.startIndex..<rangeOfNewLine.lowerBound, in: title)
//            let rangeOfSecondLine = NSRange(rangeOfNewLine.upperBound..<title.endIndex, in: title)
//
//            attributedText.addAttribute(.foregroundColor, value: UIColor.ypBlackDay, range: rangeOfFirstLine)
//            attributedText.addAttribute(.foregroundColor, value: UIColor.ypGray, range: rangeOfSecondLine)
//        } else {
//            attributedText.addAttribute(.foregroundColor, value: UIColor.ypBlackDay, range: NSRange(title.startIndex..<title.endIndex, in: title))
//        }
//
//        titleLabel.attributedText = attributedText
//    }

}

