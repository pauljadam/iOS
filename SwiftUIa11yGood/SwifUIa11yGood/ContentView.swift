//
//  ContentView.swift
//  SwifUIa11yGood
//
//  Created by Paul Adam on 3/4/21.
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
                            .font(.headline)
                            .padding()
                            .accessibility(addTraits: .isHeader) // deprecated
                        Image("applea11ylogo", label: Text("Apple Accessibility Logo"))
                        Text("Image Button")
                            .font(.headline)
                            .padding()
                            .accessibilityAddTraits(.isHeader) // not deprecated
                        Button(action: {
                            print("button presssed")
                        }) {
                            Image(systemName: "play.circle")
                                .resizable()
                                    .frame(width: 32.0, height: 32.0)
                        }
                        .accessibilityLabel(Text("Play VoiceOver Tutorial Video"))
                        VStack {
                            Text("Decorative Images")
                                .font(.headline)
                                .accessibilityAddTraits(.isHeader)
                            Image(systemName: "paperplane")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .accessibilityHidden(true)
                            Image(decorative: "flower-line")
                        }
                                            
                    }
                    VStack (alignment: .leading) {
                        Text(/*@START_MENU_TOKEN@*/"Create Account"/*@END_MENU_TOKEN@*/)
                            .fontWeight(.bold)
                            .padding()
                            .accessibilityAddTraits(.isHeader)
                        Text("Name")
                        TextField("", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .accessibilityLabel(Text("Name"))
                        Text("Email")
                        TextField("", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .accessibilityLabel(Text("Email"))
                        Text("Phone")
                        TextField("", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .accessibilityLabel(Text("Phone"))

                    }.frame(width: UIScreen.main.bounds.width)

                    HStack {
                        Toggle(isOn: $newsLetter) {
                            Text("Get Newsletter")
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
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
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
