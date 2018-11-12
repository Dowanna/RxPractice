import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var speakerListTableView: UITableView!

    let viewModel = SpeakerListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speakerListTableView.dataSource = self
        speakerListTableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SpeakerCell")
            else {
                return UITableViewCell()
        }

        let speaker = viewModel.data[indexPath.row]
        cell.textLabel?.text = speaker.name
        cell.detailTextLabel?.text = speaker.twitterHandle
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected \(viewModel.data[indexPath.row])")
    }
}
