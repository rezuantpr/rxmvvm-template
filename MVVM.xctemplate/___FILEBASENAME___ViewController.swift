//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//


import UIKit
import RxSwift
import RxCocoa
import RxDataSources

final class ___VARIABLE_productName:identifier___ViewController: ViewController {
	private lazy var tableView: UITableView = {
		let tableView = UITableView()
		return tableView
	}()

	private lazy var dataSource = makeDataSource()

	override func makeUI() {
    	super.makeUI()
    	view.addSubview(tableView)
    	tableView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalTo(view.safeAreaLayoutGuide)
      		make.top.equalToSuperview()
    	}

    	tableView.rx.setDelegate(self).disposed(by: rx.disposeBag)

  	}

  	override func bindViewModel() {
    	super.bindViewModel()
    	guard let viewModel = viewModel as? ___VARIABLE_productName:identifier___ViewModel else { return}
    
    	let modelSelected = tableView.rx.modelSelected(___VARIABLE_productName:identifier___SectionItem.self).asDriver()
    
    	let input = ___VARIABLE_productName:identifier___ViewModel.Input(modelSelected: modelSelected)
    
    	let output = viewModel.transform(from: input)
    
    	let sections = output.sections
    
    	sections.drive(tableView.rx.items(dataSource: dataSource))
      		.disposed(by: rx.disposeBag)
  }
}


extension ___VARIABLE_productName:identifier___ViewController: UITableViewDelegate {
	fileprivate typealias ___VARIABLE_productName:identifier___DataSource = RxTableViewSectionedReloadDataSource<___VARIABLE_productName:identifier___Section>

  	fileprivate func makeDataSource() -> ___VARIABLE_productName:identifier___DataSource {
    	return ___VARIABLE_productName:identifier___DataSource(configureCell: { _, tableView, indexPath, item in
      	switch item {
    
      	}
    })
  }
}
