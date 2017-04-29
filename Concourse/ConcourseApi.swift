import Foundation

class ConcourseApi {
    let jsonClient: PJsonClient
    
    init(jsonClient: PJsonClient) {
        self.jsonClient = jsonClient
    }
    
    func getTeams(host: String, completionHandler: @escaping (Error?, Any?) -> Void) {
        self.jsonClient.requestJson(host: host, path: "/teams", completionHandler: completionHandler)
    }
}
