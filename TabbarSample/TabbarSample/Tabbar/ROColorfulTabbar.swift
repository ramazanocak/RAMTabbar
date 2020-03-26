//
//  ROColorfulTabbar.swift
//  TabbarSample
//
//  Created by Ramazan Ocak on 23.03.2020.
//  Copyright © 2020 Ramazan Ocak. All rights reserved.
//

import Foundation
import UIKit

class ROColorfulTabbar : UITabBar, UITabBarDelegate {

	var colorfulView = UIView()
	var colorfulMaskingView = UIView()
	var fromIndex: Int? = 0
	var toIndex: Int? = 0
	let self_width = UIScreen.main.bounds.size.width
	let self_height = UIScreen.main.bounds.size.height / 10
	
	override init(frame: CGRect) {
		super.init(frame: frame)
			setupColorView()
			setupMaskLayer()
		
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	// MARK: Functions
	
	func setupMaskLayer () {
		
	}
	
	func setupColorView () {
		let colorView = UIView(frame: self.bounds)
		self.addSubview(colorView)
		self.colorfulView = colorView
		
		let colors = itemColors()
		var itemWidthh = itemCount()
		
		CGFloat itemWidth = self_width / itemWidth
		// 循环将彩色的色块添加到彩色view上
		for (int i = 0; i < [self itemCount]; i ++) {
			
			UIView *view = [[UIView alloc] initWithFrame:CGRectMake(itemWidth * i, 0, itemWidth, SELF_HEIGHT)];
			view.backgroundColor = colors[i];
			[self.colorfulView addSubview:view];
		}
	}
	
	func animation () {
		
	}
	// MARK: Tabbar Delegate
	func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
		
		let index: Int = (self.items?.firstIndex(of: item))!
		self.fromIndex = self.toIndex
		self.toIndex = index
		self.animation()
		
	}
	
	// MARK: Override
	
	override func didMoveToSuperview() {
		
	}
	
	override func layoutSubviews() {
		
	}
}

