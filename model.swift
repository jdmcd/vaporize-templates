import Vapor
import FluentProvider

final class Token: Model {
    var storage = Storage()
    
    VAR_PROPERTIES

    init(VAR_FIRST_INIT_PROPERTIES) {
        VAR_FI_ASSIGN
    }
    
    init(row: Row) throws {
        VAR_INIT
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
