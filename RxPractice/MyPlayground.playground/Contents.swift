//: Playground - noun: a place where people can play
import XCPlayground
import RxSwift
import RxCocoa

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

func exampleOf(description: String, action: () -> Void) {
    print("\n ----example of:", description, "----")
    action()
}

exampleOf(description: "subscribeNext") {
    let dispose = DisposeBag()
    Observable.of([1,2,3]).subscribe(onNext: {
        print($0)
    }).disposed(by: dispose)
}

exampleOf(description: "behaviorSubject") {
    let dispose = DisposeBag()
    let string = BehaviorSubject(value: "hello")

    string.subscribe({
        print($0)
    }).disposed(by: dispose)

    string.on(Event.next("world"))
}
