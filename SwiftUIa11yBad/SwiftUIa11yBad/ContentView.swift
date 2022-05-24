//
//  ContentView.swift
//  SwiftUIa11yBad
//
//  Created by Paul Adam on 3/1/21.
//

import SwiftUI

struct ContentView: View {
    @State private var newsLetter = true
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    VStack {
                        Text("Image")
                            .padding()
                        Image("applea11ylogo")
                        Text("Image Button")
                            .padding()
                        Button(action: {
                            print("button presssed")
                        }) {
                            Image(systemName: "play.circle")
                                .resizable()
                                    .frame(width: 32.0, height: 32.0)
                        }
                        VStack {
                            Text("Decorative Images")
                            Image(systemName: "paperplane")
                                .resizable()
                                .frame(width: 150, height: 150)
                            Image("flower-line")
                        }
                        VStack (alignment: .leading) {
                            Text(/*@START_MENU_TOKEN@*/"Create Account"/*@END_MENU_TOKEN@*/)
                                .fontWeight(.bold)
                                .padding()
                            TextField("Name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                TextField("Email", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                TextField("Phone", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        }.frame(width: UIScreen.main.bounds.width)
                    }
                    HStack {
                        Text("Get Newsletter")
                        Toggle(isOn: $newsLetter) {
                        }
                    }.frame(width: UIScreen.main.bounds.width)
                }
                .padding()
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Register")
                    }
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Reset")
                    }
                }.padding().frame(width: UIScreen.main.bounds.width)
                Text("Terms & Conditions")
                    .fontWeight(.bold)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .foregroundColor(Color.gray)
                    .padding().frame(width: UIScreen.main.bounds.width)
        }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
