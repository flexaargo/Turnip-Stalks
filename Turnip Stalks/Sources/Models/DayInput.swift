//
//  DayInput.swift
//  Turnip Stalks
//
//  Created by Alex Fargo on 4/24/20.
//  Copyright © 2020 Alex Fargo. All rights reserved.
//

import SwiftUI
import Combine

class DayInput: ObservableObject, Identifiable {
  var id = UUID()
  
  var dayString: String
  
  @Published var amInput: String = ""
  @Published var pmInput: String = ""
  
  init(dayString: String, amInput: String, pmInput: String) {
    self.dayString = dayString
    self.amInput = amInput
    self.pmInput = pmInput
  }
  
  init(dayString: String) {
    self.dayString = dayString
  }
}
