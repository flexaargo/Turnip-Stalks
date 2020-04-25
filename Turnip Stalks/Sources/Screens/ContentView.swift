//
//  ContentView.swift
//  Turnip Stalks
//
//  Created by Alex Fargo on 4/24/20.
//  Copyright © 2020 Alex Fargo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var buyPrice: String = ""
  @State var days: [DayInput] = [
    .init(dayString: "Mon"),
    .init(dayString: "Tue"),
    .init(dayString: "Wed"),
    .init(dayString: "Thu"),
    .init(dayString: "Fri"),
    .init(dayString: "Sat")]
  
  var body: some View {
    ZStack {
      Color.backgroundPrimary
        .edgesIgnoringSafeArea(.all)
      
      VStack(alignment: .leading) {
        Text("Turnip Stalks")
          .font(.largeTitle)
          .fontWeight(.bold)
          .multilineTextAlignment(.leading)
          .foregroundColor(.textTitle)
          .padding([.leading, .bottom])
        
        VStack(spacing: 16) {
          BellsInputView(inputText: $buyPrice)
            .padding()
            .background(Color.backgroundInput)
            .cornerRadius(16)
          
          ScrollView(.horizontal) {
            HStack(spacing: 16) {
              ForEach(days.indices) { index in
                VStack(alignment: .leading, spacing: 8) {
                  BellsInputView(inputText: self.$days[index].amInput,
                                 headerText: "\(self.days[index].dayString) AM")
                    .frame(minWidth: 100,
                           maxWidth: 100)
                  BellsInputView(inputText: self.$days[index].pmInput,
                                 headerText: "\(self.days[index].dayString) PM")
                    .frame(minWidth: 100,
                           maxWidth: 100)
                }.padding()
                  .background(Color.backgroundInput)
                  .cornerRadius(16)
              }
            }.padding(.bottom)
          }
        }.padding([.leading, .top, .trailing])
          .background(Color.backgroundSecondary)
          .cornerRadius(16)
        
        Spacer()
      }.padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
        .colorScheme(.light)
      ContentView()
        .colorScheme(.dark)
    }
  }
}
