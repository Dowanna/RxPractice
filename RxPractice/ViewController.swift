import UIKit
import RxSwift
import RxCocoa


class ViewController: UIViewController {

    @IBOutlet weak var speakerListTableView: UITableView!

    let viewModel = SpeakerListViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.data.bind(to: speakerListTableView.rx.items(cellIdentifier: "SpeakerCell")) { _, speaker, cell in
            cell.textLabel?.text = speaker.name
            cell.detailTextLabel?.text = speaker.twitterHandle
        }.disposed(by: disposeBag)

        speakerListTableView.rx.modelSelected(Speaker.self)
            .subscribe({ (speaker) in
                print("you selected \(speaker)")
            }).disposed(by: disposeBag)
    }
}
