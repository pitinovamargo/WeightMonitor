//
//  CurrentWeightCell.swift
//  WeightMonitor
//
//  Created by Margarita Pitinova on 18.01.2024.
//

import UIKit

final class CurrentWeightCell: UITableViewCell {
    
    var selectedMetricSystem: Bool = false
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .medium)
        label.text = "Текущий вес"
        label.textColor = .darkGrayTeritary
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let currentWeightLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        label.text = "58,5 кг"
        label.textColor = .blackPrimary
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let changeWeightLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.text = "-0,5 кг"
        label.textColor = .darkGraySecondary
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var switchMetricSistem: UISwitch = {
        let switchMetricSistem = UISwitch()
        switchMetricSistem.onTintColor = UIColor.accentBlue
        switchMetricSistem.translatesAutoresizingMaskIntoConstraints = false
        switchMetricSistem.addTarget(self, action: #selector(switchTapped), for: .touchUpInside)
        return switchMetricSistem
    }()
    
    private let metricSistemLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.text = "Метрическая система"
        label.textColor = .blackPrimary
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weightImage: UIImageView = {
        let weightImage = UIImageView()
        weightImage.image = UIImage(named: "weight")
        weightImage.translatesAutoresizingMaskIntoConstraints = false
        return weightImage
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .lightGray
        clipsToBounds = true
        addSubviews()
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            weightImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            weightImage.topAnchor.constraint(equalTo: topAnchor),
            weightImage.widthAnchor.constraint(equalToConstant: 131),
            weightImage.heightAnchor.constraint(equalToConstant: 82),
            currentWeightLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            currentWeightLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 6),
            changeWeightLabel.bottomAnchor.constraint(equalTo: currentWeightLabel.bottomAnchor),
            changeWeightLabel.leadingAnchor.constraint(equalTo: currentWeightLabel.trailingAnchor, constant: 8),
            switchMetricSistem.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            switchMetricSistem.topAnchor.constraint(equalTo: currentWeightLabel.bottomAnchor, constant: 16),
            metricSistemLabel.centerYAnchor.constraint(equalTo: switchMetricSistem.centerYAnchor),
            metricSistemLabel.leadingAnchor.constraint(equalTo: switchMetricSistem.trailingAnchor, constant: 16)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(weightImage)
        contentView.addSubview(currentWeightLabel)
        contentView.addSubview(changeWeightLabel)
        contentView.addSubview(metricSistemLabel)
        contentView.addSubview(switchMetricSistem)
    }
    
    @objc private func switchTapped(_ sender: UISwitch) {
        self.selectedMetricSystem = sender.isOn
        print("Switch is ON")

//        if sender.isOn {
//                // Выполните действия, когда переключатель включен
//                print("Switch is ON")
//            } else {
//                // Выполните действия, когда переключатель выключен
//                print("Switch is OFF")
//            }
//
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

