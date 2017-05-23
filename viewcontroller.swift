import Vapor
import Flash

final class VAR_CONTROLLER_NAME: RouteCollection {
    private let view: ViewRenderer

    init(_ view: ViewRenderer) {
        self.view = view
    }

    func build(_ builder: RouteBuilder) throws {
        builder.group(FlashMiddleware()) { build in
            VAR_ROUTES
        }
    }

    VAR_FUNCTIONS
}
