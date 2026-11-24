//
//  PomodoroView.swift
//  Leodoru
//
//  Created by Wagner Adrian on 24.11.26.
//

import SwiftUI

struct PomodoroView: View {
    @State var viewModel = PomodoroViewModel(pomodoroManager: <#T##PomodoroManager#>)
    
    
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .padding([.leading, .trailing], 20)
                .padding(.top, 30)
            Spacer()
            
            ZStack{
                CirculaProgressView(progress: viewModel.progress, color: viewModel.progressColor)
                    .opacity(viewModel.isProgressVisible ? 1 : 0)
                Image("Pomooro")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            .padding(50)
            
            Spacer()
            
            Text("Hello World")
                .font(.largeTitle)
                .bold()
        }.background(viewModel.progressColor)
            .opacity(0.5)
            .task{
                // todo start timer
            }
            .onDisappear{
                print("pomodoro timer dismissed")
                // Todo stop timer
            }
    }
}

#Preview {
    PomodoroView()
}
