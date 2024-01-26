//
//  HistoryCell.swift
//  WeightMonitor
//
//  Created by Margarita Pitinova on 20.01.2024.
//

import UIKit

final class HistoryCell: UITableViewCell {
    
    private let weightLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.text = "58,5 кг"
        label.textColor = .blackPrimary
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let changesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.text = "-0,5 кг"
        label.textColor = .darkGraySecondary
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.text = "2 мар"
        label.textColor = .darkGrayTeritary
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let arrowForward: UIImageView = {
        let arrowForward = UIImageView()
        arrowForward.image = UIImage(named: "arrowForward")
        arrowForward.translatesAutoresizingMaskIntoConstraints = false
        return arrowForward
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .white
        clipsToBounds = true
        addSubviews()
        
        NSLayoutConstraint.activate([
            weightLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            weightLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            weightLabel.widthAnchor.constraint(equalToConstant: 116),
            changesLabel.leadingAnchor.constraint(equalTo: weightLabel.trailingAnchor, constant: 8),
            changesLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            changesLabel.widthAnchor.constraint(equalToConstant: 116),
            dateLabel.leadingAnchor.constraint(equalTo: changesLabel.trailingAnchor, constant: 8),
            dateLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            dateLabel.widthAnchor.constraint(equalToConstant: 71),
            arrowForward.leadingAnchor.constraint(equalTo: dateLabel.trailingAnchor, constant: 4),
            arrowForward.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(weightLabel)
        addSubview(changesLabel)
        addSubview(dateLabel)
        addSubview(arrowForward)
    }
    
//    @objc private func switchTapped(_ sender: UISwitch) {
////        self.selectedDay = sender.isOn
//    }
    
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
