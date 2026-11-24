//
//  AchievmentList.swift
//  Leodoru
//
//  Created by Adrian Wagner on 13.10.26.
//

import SwiftUI

struct AchievmentList: View {
    var body: some View {
        NavigationView{
            ZStack {
                List(achievments) { achievment in
                    NavigationLink {
                        AchievmentDataView(achievment: achievment)
                    } label: {
                        AchievmentRow(achievment: achievment)
                    }.listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                }
            }.scrollContentBackground(.hidden)
                .background(
                    LinearGradient(colors: [.pomodoroGreen, .white],
                                   startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                )
        }
    }
}

#Preview {
    AchievmentList()
}
