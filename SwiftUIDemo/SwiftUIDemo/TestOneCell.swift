//
//  TestOneCell.swift
//  SwiftUIDemo
//
//  Created by liudj on 2020/6/2.
//  Copyright © 2020 liudj. All rights reserved.
//

import UIKit



class TestOneCell: UITableViewCell {
    func commonInit() -> Void {
        self.contentView.addSubview(self.imageViewOne)
        self.contentView.addSubview(self.titleLabel)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    lazy var imageViewOne:UIImageView = {
        var imageView:UIImageView = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        imageView.backgroundColor = UIColor.gray
        return imageView;
    }()
    
    lazy var titleLabel: UILabel = {
        var titleLab:UILabel = UILabel.init(frame: CGRect(x: 60, y: 0, width: SCREEN_WIDTH - 60 - 32, height: self.contentView.frame.size.height))
        titleLab.textColor = UIColor.black
        titleLab.textAlignment = NSTextAlignment.left
        titleLab.numberOfLines = 1
        titleLab.font = UIFont.systemFont(ofSize: 16)
        return titleLab
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
}
