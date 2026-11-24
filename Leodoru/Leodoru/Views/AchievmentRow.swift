//
//  AchievmentRow.swift
//  Leodoru
//
//  Created by Adrian Wagner on 13.10.26.
//

import SwiftUI

struct AchievmentRow: View {
    let achievment: Achievment
    
    var body: some View {
            ZStack{
                HStack{
                    Image(achievment.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width / 3)
                    Text(achievment.title)
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                }
            }.frame(width: UIScreen.main.bounds.width - 50)
                .frame(height: 200)
                .background(Color.white.opacity(0.2)
                    .cornerRadius(25)
                    .rotation3DEffect(.init(degrees: 20), axis: (x: 0, y: -1, z: 0))
                .padding(.vertical, 20)
                .padding(.trailing, 25))
                .padding(.horizontal)
        }

    }


#Preview {
    AchievmentRow(achievment: achievments[0])
}
