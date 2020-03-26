//
//  ROColorfulTabbar+Configuration.swift
//  TabbarSample
//
//  Created by Ramazan Ocak on 23.03.2020.
//  Copyright © 2020 Ramazan Ocak. All rights reserved.
//

import Foundation
import UIKit
extension ROColorfulTabbar {
	
	func itemColors() -> Array<Any> {
		let colorArray = [UIColor.red, UIColor.green, UIColor.blue,UIColor.purple,UIColor.gray]
		return colorArray
	}
	
	func itemCount() -> Int {
		return 5
	}
}
