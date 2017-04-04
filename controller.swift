import Vapor
import HTTP

final class VAR_CONTROLLER_NAME {
    let drop: Droplet

    init(drop: Droplet) {
        self.drop = drop
    }

    func addRoutes() {
        VAR_ROUTES
    }
    
    VAR_FUNCTIONS
}
