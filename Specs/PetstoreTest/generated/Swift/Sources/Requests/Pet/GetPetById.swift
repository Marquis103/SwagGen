//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension PetstoreTest.Pet {

    /**
    Find pet by ID

    Returns a single pet
    */
    public enum GetPetById {

        public static let service = APIService<Response>(id: "getPetById", tag: "pet", method: "GET", path: "/pet/{petId}", hasBody: false, securityRequirements: [SecurityRequirement(type: "api_key", scopes: [])])

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** ID of pet to return */
                public var petId: Int

                public init(petId: Int) {
                    self.petId = petId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetPetById.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(petId: Int) {
                let options = Options(petId: petId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "petId" + "}", with: "\(self.options.petId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Returns a single pet */
            public class Status200: APIModel {

                /** pet status in the store */
                public enum Status: String, Codable, Equatable, CaseIterable {
                    case available = "available"
                    case pending = "pending"
                    case sold = "sold"
                }

                public var name: String

                public var photoUrls: [String]

                public var category: Category?

                public var id: Int?

                /** pet status in the store */
                public var status: Status?

                public var tags: [Tag]?

                public init(name: String, photoUrls: [String], category: Category? = nil, id: Int? = nil, status: Status? = nil, tags: [Tag]? = nil) {
                    self.name = name
                    self.photoUrls = photoUrls
                    self.category = category
                    self.id = id
                    self.status = status
                    self.tags = tags
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: StringCodingKey.self)

                    name = try container.decode("name")
                    photoUrls = try container.decodeArray("photoUrls")
                    category = try container.decodeIfPresent("category")
                    id = try container.decodeIfPresent("id")
                    status = try container.decodeIfPresent("status")
                    tags = try container.decodeArrayIfPresent("tags")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: StringCodingKey.self)

                    try container.encode(name, forKey: "name")
                    try container.encode(photoUrls, forKey: "photoUrls")
                    try container.encodeIfPresent(category, forKey: "category")
                    try container.encodeIfPresent(id, forKey: "id")
                    try container.encodeIfPresent(status, forKey: "status")
                    try container.encodeIfPresent(tags, forKey: "tags")
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.name == object.name else { return false }
                  guard self.photoUrls == object.photoUrls else { return false }
                  guard self.category == object.category else { return false }
                  guard self.id == object.id else { return false }
                  guard self.status == object.status else { return false }
                  guard self.tags == object.tags else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** successful operation */
            case status200(Status200)

            /** Invalid ID supplied */
            case status400

            /** Pet not found */
            case status404

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 400: self = .status400
                case 404: self = .status404
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
