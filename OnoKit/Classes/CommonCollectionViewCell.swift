//
//  Created by Onur Erdemol
//  Copyright © 2020 Onur Erdemol
//  All rights reserved
//

import UIKit

open class CommonCollectionViewCell: UICollectionViewCell {

    open var itemSize: CGSize {
        return .zero
    }

    // MARK: Objects

    open var indexPath: IndexPath!
    open var viewMain: CommonView!

    // MARK: Initializers

    open override func layoutSubviews() {
        contentView.isHidden = contentView.frame.size == .zero
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)

        viewMain = CommonView(contentView)
        viewMain.snp.makeConstraints { (view) in
            view.center.equalToSuperview()
            view.size.equalTo(itemSize)
        }

    }

    public required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

}
