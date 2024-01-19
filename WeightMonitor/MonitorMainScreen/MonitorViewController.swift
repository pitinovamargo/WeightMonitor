//
//  MonitorViewController.swift
//  WeightMonitor
//
//  Created by Margarita Pitinova on 17.01.2024.
//

import UIKit

final class MonitorViewController: UIViewController {

    let cellReuseIdentifier = "MonitorViewController"
    
    private let header: UILabel = {
        let header = UILabel()
        header.translatesAutoresizingMaskIntoConstraints = false
        header.text = "Монитор веса"
        header.textColor = .black
        header.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return header
    }()
    
    private let currentWeightTableView: UITableView = {
        let currentWeightTableView = UITableView()
        currentWeightTableView.translatesAutoresizingMaskIntoConstraints = false
        return currentWeightTableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupCurrentWeightTableView()
        view.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            header.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            currentWeightTableView.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 24),
            currentWeightTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            currentWeightTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            currentWeightTableView.heightAnchor.constraint(equalToConstant: 150),
            ])

    }

    private func addSubviews() {
        view.addSubview(header)
        view.addSubview(currentWeightTableView)
//        view.addSubview(searchTrackers)
//        view.addSubview(datePicker)
//        view.addSubview(emptyTrackersLogo)
//        view.addSubview(emptyTrackersText)
//        view.addSubview(emptySearch)
//        view.addSubview(emptySearchText)
//        view.addSubview(collectionView)
//        view.addSubview(filtersButton)
    }
    
    private func setupCurrentWeightTableView() {
        currentWeightTableView.delegate = self
        currentWeightTableView.dataSource = self
        currentWeightTableView.register(CurrentWeightCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        currentWeightTableView.layer.cornerRadius = 16
//        currentWeightTableView.separatorStyle = .none
    }
}


// MARK: - UITableViewDelegate
extension MonitorViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if indexPath.row == 0 {
//            let addCategoryViewController = CategoryViewController()
//            addCategoryViewController.viewModel.$selectedCategory.bind { [weak self] category in
//                self?.selectedCategory = category
//                self?.trackersTableView.reloadData()
//            }
//            present(addCategoryViewController, animated: true, completion: nil)
//        } else if indexPath.row == 1 {
//            let scheduleViewController = ScheduleViewController()
//            scheduleViewController.createTrackerViewController = self
//            present(scheduleViewController, animated: true, completion: nil)
//            selectedDays = []
//        }
//        trackersTableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        let separatorInset: CGFloat = 16
//        let separatorWidth = tableView.bounds.width - separatorInset * 2
//        let separatorHeight: CGFloat = 1.0
//        let separatorX = separatorInset
//        let separatorY = cell.frame.height - separatorHeight
//
//        let isLastCell = indexPath.row == tableView.numberOfRows(inSection: indexPath.section) - 1
//
//        if !isLastCell {
//            let separatorView = UIView(frame: CGRect(x: separatorX, y: separatorY, width: separatorWidth, height: separatorHeight))
//            separatorView.backgroundColor = .ypGray
//            cell.addSubview(separatorView)
//        }
    }
}

// MARK: - UITableViewDataSource
extension MonitorViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as? CurrentWeightCell else { return UITableViewCell() }

//        if indexPath.row == 0 {
//            var title = "Категория"
//            if let selectedCategory = selectedCategory?.header {
//                title += "\n" + selectedCategory
//            }
//            cell.update(with: title)
//        } else if indexPath.row == 1 {
//            var subtitle = ""
//
//            if !selectedDays.isEmpty {
//                if selectedDays.count == 7 {
//                    subtitle = "Каждый день"
//                } else {
//                    subtitle = selectedDays.map { $0.shortName }.joined(separator: ", ")
//                }
//            }
//
//            if !subtitle.isEmpty {
//                cell.update(with: "Расписание\n" + subtitle)
//            } else {
//                cell.update(with: "Расписание")
//            }
//        }
        
        return cell
    }
}

