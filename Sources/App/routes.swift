import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello",":name") { req async -> String in
        return "Hello, world!" + (req.parameters.get("name") ?? "")
    }
}

