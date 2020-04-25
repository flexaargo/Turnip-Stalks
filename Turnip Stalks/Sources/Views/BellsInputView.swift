//
//  BellsInputView.swift
//  Turnip Stalks
//
//  Created by Alex Fargo on 4/24/20.
//  Copyright © 2020 Alex Fargo. All rights reserved.
//

import SwiftUI

struct BellsInputView: View {
  @Binding var inputText: String
  var headerText: String = "Buy Price"
  
  var body: some View {
    VStack(alignment: .leading, spacing: 5) {
      Text(headerText)
        .font(.caption)
      HStack {
        Image("iconBells")
          .resizable()
          .renderingMode(.template)
          .scaledToFit()
          .frame(width: 16, height: 16)
          .foregroundColor(Color.secondary)
        
        TextField("i.e. 100", text: $inputText)
          .font(.system(size: 18, weight: .medium))
          .foregroundColor(.textTitle)
      }
      Color.secondary
        .frame(height: 1)
    }
  }
}


struct BellsInputView_Previews: PreviewProvider {
  @State static var inputText: String = ""
  static var previews: some View {
    Group {
      BellsInputView(inputText: $inputText)
        .colorScheme(.light)
        .previewLayout(.sizeThatFits)
        .padding()
      
      BellsInputView(inputText: $inputText)
        .colorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
    }
  }
}
