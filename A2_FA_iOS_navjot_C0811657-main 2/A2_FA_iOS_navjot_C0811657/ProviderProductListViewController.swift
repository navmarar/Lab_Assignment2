//
//  ProviderProductListViewController.swift
//  A2_FA_iOS_navjot_C0811657
//
//   Created by Navjot on 24/05/21.
//

import UIKit

class ProviderProductListViewController: UIViewController {

    var provider: Provider?
    var products = [ProdcutModel]()
    @IBOutlet weak var providerProductListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let provider = self.provider{
            self.title = provider.name?.capitalized
            products = provider.products
            self.providerProductListTableView.reloadData()
        }
    }
    
    
    
}

extension ProviderProductListViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProviderProductTableViewCell") as! ProviderProductTableViewCell
        cell.productNameLabel.text = self.products[indexPath.row].productName
        return cell
    }
    
    
}
