import UIKit

//removing data using DELETE method

func deleteUser(){
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else{
        print("Cannot create URL")
        return
    }
    
    //create request
    var request = URLRequest(url: url)
    request.httpMethod = "DELETE"
    URLSession.shared.dataTask(with: request){ data, response, error in
        
        guard error == nil else {
            print(error?.localizedDescription)
            print("Error while requesting delete")
            return
        }
        
        guard let data = data else{
            print("Didn't receive any data")
            return
        }
        
        do {
            guard let httpResponse = response as? HTTPURLResponse else {
                return
            }
            print("\(httpResponse.statusCode)")
            
        }
        catch let error{
            print(error.localizedDescription)
        }
        
        
    }.resume()
}
