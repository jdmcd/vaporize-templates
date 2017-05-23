import Vapor
import Flash

final class VAR_CONTROLLER_NAME: RouteCollection {
    func build(_ builder: RouteBuilder) throws {
        builder.version() { build in
            VAR_ROUTES
        }
    }

    VAR_FUNCTIONS
}

//MARK: - EmptyInitializable
extension VAR_CONTROLLER_NAME: EmptyInitializable { }
