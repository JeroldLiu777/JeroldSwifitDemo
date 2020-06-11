//
//  OneViewController.swift
//  SwiftUIDemo
//
//  Created by liudj on 2020/6/1.
//  Copyright © 2020 liudj. All rights reserved.
//

import UIKit
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
let SCREEN_WIDTH = UIScreen.main.bounds.size.width


class OneViewController: UIViewController,UITableViewDelegate
,UITableViewDataSource{
    var tableview:UITableView!
    let array:Array = ["nihao", "woyehao", "成功了!"]
//    let array:[String] = ["nihao", "woyehao", "成功了!"] //上面那种方式和下面这种方式,都可以定义Array
    let cellIdentifierOne = "TestOneCell.Type.self"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGHT))
        self.tableview?.dataSource = self
        self.tableview?.delegate   = self
        self.tableview.tableFooterView = UIView()
        registerCell()
        self.view.addSubview(self.tableview)
        
    }
    
    //注册cell
    func registerCell() -> Void {
        tableview.register(TestOneCell.classForCoder(), forCellReuseIdentifier: cellIdentifierOne)
    }
    
    ///TableView Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //之所以要用变量而且是加问号的,
        var cell:TestOneCell? = tableView.dequeueReusableCell(withIdentifier: cellIdentifierOne) as? TestOneCell
        if cell == nil {
            cell = TestOneCell.init()
        }
        cell?.titleLabel.text = array[indexPath.row]
        return cell!
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
