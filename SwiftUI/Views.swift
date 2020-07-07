import SwiftUI

struct SigninView: View {
    
    @State var userEmail = ""
    @State var userPassword = ""
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                signinForm
                signinFooter
            }
        }
    }
}

// MARK: - Setup Views

extension SigninView {
    
    var signinForm: some View {
        VStack {
            TextField("email", text: $userEmail)
            SecureField("password", text: $userPassword)
        }
    }
    
    var signinFooter: some View {
        Button(action: {
            print("Sign in tapped")
        }, label: {
            Text("Sign in!")
        })
    }
}
