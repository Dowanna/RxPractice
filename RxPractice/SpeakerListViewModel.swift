import Foundation
import RxSwift
import RxCocoa

struct SpeakerListViewModel {
    let data = Observable.just([
        Speaker(name: "hoge", twitterHandle: "hogeHandle"),
        Speaker(name: "fuga", twitterHandle: "fugaHandle")
    ])
}
