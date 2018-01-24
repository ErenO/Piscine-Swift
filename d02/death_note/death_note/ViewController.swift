//
//  ViewController.swift
//  death_note
//
//  Created by Eren Ozdek on 13/06/2017.
//  Copyright © 2017 Eren Ozdek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var deathCell: [Data] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func awakeFromNib() {
        self.deathCell.append(Data(name: "Jean-Baptiste Lully", date: "2017-06-14 13:32", death: "Mort de la gangrène qu'il avait contracté en s'écrasant les doigts de pieds avec la canne qui lui servait à battre la mesure"))
        self.deathCell.append(Data(name: "Claude François", date: "2017-06-14 13:32", death: "Mort électrocuté dans son bain"))
        self.deathCell.append(Data(name: "Kenny", date: "2017-06-14 13:32", death: "Expulsé par un projectile du vaisseau spatial alien"))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.tableView.delegate = self
//        self.tableView.dataSource = self

    }
    @IBAction func unWindSeguet(segue: UIStoryboardSegue)
    {
        //        print(self.table)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.deathCell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let content = tableView.dequeueReusableCell(withIdentifier: "deathMan", for: indexPath) as! DeathTableViewCell
//        let content = tableView.dequeueReusableCell(withIdentifier: "deathMan") as! DeathTableViewCell
        content.death = self.deathCell[indexPath.row]
        return content
    }
}

