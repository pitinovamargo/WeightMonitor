//
//  MonitorViewController.swift
//  WeightMonitor
//
//  Created by Margarita Pitinova on 17.01.2024.
//

import UIKit

final class MonitorViewController: UIViewController {
    
    let currentWeightIndentifire = "currentWeightIndentifire"
    let historyIndentifire = "historyIndentifire"
    
    private let header: UILabel = {
        let header = UILabel()
        header.translatesAutoresizingMaskIntoConstraints = false
        header.text = "Монитор веса"
        header.textColor = .blackPrimary
        header.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return header
    }()
    
    private let currentWeightTableView: UITableView = {
        let currentWeightTableView = UITableView()
        currentWeightTableView.translatesAutoresizingMaskIntoConstraints = false
        return currentWeightTableView
    }()
    
    private let historyTableView: UITableView = {
        let historyTableView = UITableView()
        historyTableView.translatesAutoresizingMaskIntoConstraints = false
        return historyTableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        setupCurrentWeightTableView()
        setupHistoryTableView()
        view.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            header.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            header.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            currentWeightTableView.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 24),
            currentWeightTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            currentWeightTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            currentWeightTableView.heightAnchor.constraint(equalToConstant: 129),
            historyTableView.topAnchor.constraint(equalTo: currentWeightTableView.bottomAnchor, constant: 16),
            historyTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            historyTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            historyTableView.heightAnchor.constraint(equalToConstant: 500)
        ])
        
    }
    
    private func addSubviews() {
        view.addSubview(header)
        view.addSubview(currentWeightTableView)
        view.addSubview(historyTableView)
    }
    
    private func setupCurrentWeightTableView() {
        currentWeightTableView.delegate = self
        currentWeightTableView.dataSource = self
        currentWeightTableView.register(CurrentWeightCell.self, forCellReuseIdentifier: currentWeightIndentifire)
        currentWeightTableView.layer.cornerRadius = 12
        currentWeightTableView.separatorStyle = .none
    }
    
    private func setupHistoryTableView() {
        historyTableView.delegate = self
        historyTableView.dataSource = self
        historyTableView.register(HistoryCell.self, forCellReuseIdentifier: historyIndentifire)
        historyTableView.separatorStyle = .none
    }
}


// MARK: - UITableViewDelegate
extension MonitorViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == currentWeightTableView {
            return 129
        } else {
            return 46
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if tableView ==  currentWeightTableView {
//            tableView.deselectRow(at: indexPath, animated: true)
//        } else {
//            return
//        }
        
        
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
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if tableView == historyTableView {
            let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 24))
            
            let titleLabel = UILabel(frame: headerView.bounds)
            titleLabel.text = "История"
            titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
            titleLabel.textColor = .blackPrimary
            headerView.addSubview(titleLabel)
            
            return headerView
        } else {
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if tableView == historyTableView {
            return 24
        } else {
            return 0
        }
    }

}

// MARK: - UITableViewDataSource
extension MonitorViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == currentWeightTableView {
            return 1
        } else {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellReuseIdentifier = ""
        
        if tableView == currentWeightTableView {
            cellReuseIdentifier = currentWeightIndentifire
        } else if tableView == historyTableView {
            cellReuseIdentifier = historyIndentifire
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as? CurrentWeightCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
}

