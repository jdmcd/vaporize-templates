import Vapor
import FluentProvider

final class VAR_MODEL_NAME: Model {
    var storage = Storage()
    
    VAR_PROPERTIES

    init(VAR_FIRST_INIT_PROPERTIES) {
        VAR_FI_ASSIGN
    }
    
    init(row: Row) throws {
        VAR_INIT
    }

    init(json: JSON) throws {
        VAR_JSON_INIT
    }
    
    func makeRow() throws -> Row {
        var row = Row()

        VAR_MAKE_ROW

        return row
    }
}

//MARK: - Preparation
extension VAR_MODEL_NAME: Preparation {
    static func prepare(_ database: Database) throws {
        try database.create(self, closure: { builder in
            builder.id()
            VAR_BUILDER
        })
    }
    
    static func revert(_ database: Database) throws {   
    }
}

//MARK: - JSONConvertible
extension VAR_MODEL_NAME: JSONConvertible {
    func makeJSON() throws -> JSON {
        var json = JSON()

        try json.set(VAR_MODEL_NAME.Field.id, id)
        VAR_MAKE_JSON
        try json.set(VAR_MODEL_NAME.createdAtKey, createdAt)
        try json.set(VAR_MODEL_NAME.updatedAtKey, updatedAt)

        return json
    }
}

VAR_NODE

VAR_VIEW_DATA

//MARK: - Timestampable
extension VAR_MODEL_NAME: Timestampable { }

//MARK: - Field
extension VAR_MODEL_NAME {
    enum Field: String {
        case id
        VAR_FIELD_ENUM_CASES
    }
}
