//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//


import Foundation
import RxSwift
import RxCocoa

final class ___VARIABLE_productName:identifier___ViewModel: ViewModel, ViewModelType {
	struct Input {
		let modelSelected: Driver<___VARIABLE_productName:identifier___SectionItem>
	}

	struct Output {
		let sections: Driver<[___VARIABLE_productName:identifier___Section]>
	}	

	private let sections = BehaviorRelay<[___VARIABLE_productName:identifier___Section]>(value: [])

	func transform(from input: Input) -> Output {

		return Output(sections: sections.asDriver())
	}
}
