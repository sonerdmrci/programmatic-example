import UIKit

class DetailsVC: UITableViewCell{

    //MARK: -UI Elements
    lazy var tableView = UITableView()

    var testArray: [Mock] = [Mock(name: "Linkedin"), Mock("Facebook"), Mock("Instagram"), Mock("GitHub")]

    //MARK: -Life Cycle
    override func viewDidLoad(){
        super.viewDidLoad()
        configureTableView()
    }


    //MARK: - Helers
    private func configureTableView(){
        tableView.frame = view.bounds 
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.reuseID) //Kayıt işlemi için
    }

}

//MARK: - TableView Functions
extension DetailsVC: UITableViewDelegate {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("Cell Tıklandı")
        
    }
    
}

extension DetailsVC {

    override func tableView(_ tableView : UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseID, for: indexPath) as! TableViewCell//Aynı cellerin tekrar tekrar kullanılabilmesi için
        cell.textLabel?.text = testArray[indexPath.row].name
        return cell

    }
}