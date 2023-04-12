import UIKit

class ViewController: UIViewController {
    var items = ["céline", "lana", "adele"]
    @IBOutlet weak var var tableView: UITableView
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> {
        return items.count
    }
}
