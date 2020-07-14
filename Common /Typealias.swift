
typealias JSONObject = [String: Any]
var json = JSONObject()

// -----------------------------------

typealias Email = String
typealias Password = String

extension Email {
    func isValid() -> Bool {
        // ...
    }
}

// -----------------------------------

struct User {
    // ...
}

typealias ApiHandler<T> = (Result<T, Error>) -> Void
func signin(email: Email, password: Password, onCompletion: @escaping ApiHandler<User>) {
    // ...
}

// -----------------------------------


typealias TableViewConfiguration = UITableViewDataSource & UITableViewDelegate

class ViewController: UIViewController, TableViewConfiguration {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // ...
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // ...
    }
}
