//
//  ViewController.swift
//  SWEmptyPlaceHolderView
//
//  Created by Sean on 21/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var array: [String] = ["1", "2", "3", "4", "5"]
    var swEmptyPlaceHolderView: SWEmptyPlaceHolderView!

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.swEmptyPlaceHolderView = SWEmptyPlaceHolderView()
        self.view.addFullscreenView(swEmptyPlaceHolderView, bottom: 48)
        self.swEmptyPlaceHolderView.configureView(image: UIImage(named: "binoculars"),
                                                  text: "SWEmptyPlaceHolderView")
        self.setupTableView()
        self.reloadTable()
    }
    
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    @IBAction func toggleEmptyView(_ sender: UISwitch) {
        if sender.isOn{
            self.array = ["1", "2", "3", "4", "5"]
        }else{
            self.array = []
        }
        
        self.reloadTable()
    }
    
    func reloadTable() {
        self.swEmptyPlaceHolderView.isHidden = !self.array.isEmpty
        self.tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
}
