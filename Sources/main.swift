// The Swift Programming Language
// https://docs.swift.org/swift-book
import OpenAPIRuntime
import OpenAPIURLSession


public struct ClientWrapper{
    public static let client = Client(
        serverURL: try! Servers.server1(),
        transport: URLSessionTransport()
    )
}


//
//let response = try await client.getGreeting(
//    .init(
//        query: .init(name: "CLI")
//    )
//)
//
//print(response)
//switch response {
//case .ok(let okResponse):
//    switch okResponse.body {
//        case .json(let greeting):
//            print(greeting.message)
//        }
//case .undocumented(statusCode: let statusCode, _):
//    print("🥺 undocumented response: \(statusCode)")
//}
