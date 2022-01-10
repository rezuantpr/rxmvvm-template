//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//


import Foundation 
import RxDataSources

enum ___VARIABLE_productName:identifier___SectionItem {
	
}

struct ___VARIABLE_productName:identifier___Section {
	var items: [___VARIABLE_productName:identifier___SectionItem]
 
  	init(items: [___VARIABLE_productName:identifier___SectionItem]) {
   		self.items = items
  	}
}

extension ___VARIABLE_productName:identifier___Section: SectionModelType {
	typealias Item = ___VARIABLE_productName:identifier___SectionItem 

	init(original: ___VARIABLE_productName:identifier___Section, items: [Item]) {
    	self = original
    	self.items = items
  	}
}
