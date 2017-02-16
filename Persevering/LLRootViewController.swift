//
//  LLRootViewController.swift
//  Persevering
//
//  Created by galileio on 2017/2/13.
//  Copyright © 2017年 galileioo. All rights reserved.
//

import UIKit

class LLRootViewController: LLBaseViewController,UITableViewDelegate,UITableViewDataSource {

    var targetTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        targetTableView = UITableView(frame: UIScreen.main.bounds)
        targetTableView.delegate = self
        targetTableView.dataSource = self
        self.view.addSubview(targetTableView)
        targetTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        
        let item = UIBarButtonItem.init(title:"添加目标", style: UIBarButtonItemStyle.plain, target: self, action: #selector(addtarget(right:)))
        self.navigationItem.rightBarButtonItem = item
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "haha"
        
        return cell
    }
    func addtarget(right:UIBarButtonItem) {
        NSLog("测试添加呵呵")
        
    }
    

}
