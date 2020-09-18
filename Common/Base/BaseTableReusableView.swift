//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

class BaseTableReusableView: UIView {

    // MARK: - Objects

    static var defaultHeaderHeight: CGFloat = 60
    static var defaultFooterHeight: CGFloat = 20

    var viewMain: UIView!
    var indexPath: IndexPath!
    var controller: UIViewController!
    var tableView: UITableView!

    // MARK: - Build

    func buildMainView() {

        viewMain = CommonView(superview: self)
        viewMain.snp.makeConstraints { (view) in
            view.edges.equalToSuperview()
        }

    }

}