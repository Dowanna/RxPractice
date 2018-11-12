//: Playground - noun: a place where people can play

import RxSwift
import RxCocoa

func myJust<E>(_ element: E) -> Observable<E> {
    return Observable.create { observer in
        observer.on(.next(element))
        observer.on(.completed)
        return Disposables.create()
    }
}

myJust(0)
    .subscribe(onNext: { n in
        print(n)
    })
