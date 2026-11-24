//
//  PomodoroViewModel.swift
//  Leodoru
//
//  Created by Wagner Adrian on 24.11.26.
//

import Foundation
import SwiftUI

@Observable
class PomodoroViewModel {
    var pomodoroManager: PomodoroManager
    var progress: Double
    var progressColor: Color
    var isProgressVisible: Bool
    
    init(pomodoroManager: PomodoroManager){
        progress = 0
        progressColor = .pomodoroRed
        isProgressVisible = true
        
        self.pomodoroManager = pomodoroManager
    }
    
}
