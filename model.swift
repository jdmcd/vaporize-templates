import Foundation
import Vapor
import Fluent

final class VAR_MODEL_NAME: Model {
    var id: Node?
    VAR_PROPERTIES

    var exists: Bool = false

    init(node: Node, in context: Context) throws {
        id = try node.extract("id")
        VAR_INIT
    }

    func makeNode(context: Context) throws -> Node {
        return try Node(node: [
            "id": id,
            VAR_MAKE_NODE
        ])
    }
}

//MARK: - Preparation
extension VAR_MODEL_NAME: Preparation {
    static func prepare(_ database: Database) throws {
        try database.create("VAR_DB_NAME", closure: { builder in
            builder.id()
            VAR_BUILDER
        })
    }

    static func revert(_ database: Database) throws {
    }
}
