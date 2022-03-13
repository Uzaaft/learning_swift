//
//  ViewController.swift
//  Tutorial
//
//  Created by Uzair Aftab on 13/03/2022.
//
//

import UIKit
import Alamofire
import Yams


let confURL = "https://raw.githubusercontent.com/Lascorbe/CocoaConferences/master/_data/conferences.yml"

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    private var conferences: Array<Conference> = Array()

    private let tableView = UITableView(frame: .zero, style: .plain)
    override func viewDidLoad() {
    super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(MyConferenceCall.self, forCellReuseIdentifier: "id")
    // Do any additional setup after loading the view.
        loadConferences()

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.tableView.frame = view.bounds
    }

    private func loadConferences() {
        AF.request(confURL).response { response in
            if let dt:Data = response.data, let data = String(data: dt, encoding: .utf8) {
                let decoder = YAMLDecoder()
                self.conferences = try! decoder.decode([Conference].self, from: data)
                self.view.addSubview(self.tableView)
                self.tableView.reloadData()
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    self.conferences.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "id", for: indexPath)
        let conference: Conference = conferences[indexPath.row]
        cell.textLabel?.text = conference.name
        cell.detailTextLabel?.text = conference.location
        return cell
    }
}
