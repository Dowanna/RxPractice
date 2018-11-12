import Foundation

struct Speaker {
    let name: String
    let twitterHandle: String

    init(name: String, twitterHandle: String) {
        self.name = name
        self.twitterHandle = twitterHandle
    }
}

extension Speaker: CustomStringConvertible {
    var description: String {
        return "\(name) \(twitterHandle)"
    }
}
