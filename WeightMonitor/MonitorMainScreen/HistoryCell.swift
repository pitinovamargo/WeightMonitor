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
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        label.text = "Вес"
        label.textColor = .darkGrayTeritary
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let changesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.text = "Изменения"
        label.textColor = .darkGrayTeritary
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        label.text = "Дата"
        label.textColor = .darkGrayTeritary
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .lightGray
        clipsToBounds = true
        addSubviews()
        
        NSLayoutConstraint.activate([
            weightLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            weightLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            changesLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            changesLabel.topAnchor.constraint(equalTo: topAnchor),
            changesLabel.widthAnchor.constraint(equalToConstant: 131),
            changesLabel.heightAnchor.constraint(equalToConstant: 82),
            dateLabel.leadingAnchor.constraint(equalTo: changesLabel.leadingAnchor),
            dateLabel.topAnchor.constraint(equalTo: changesLabel.bottomAnchor, constant: 6),
            dateLabel.bottomAnchor.constraint(equalTo: changesLabel.bottomAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: changesLabel.trailingAnchor, constant: 8)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(weightLabel)
        addSubview(changesLabel)
        addSubview(dateLabel)
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
