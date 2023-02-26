//
//  CardView.swift
//  RatingCard
//
//  Created by Atakan Kömürcü on 18.02.2023.
//

import SwiftUI

struct CardView: View {
    let screenWidth = UIScreen.main.bounds.width
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                ZStack(alignment: .center) {
                    Circle()
                        .frame(width: 50)
                        .foregroundColor(Color.mediumGray)
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.yellow)
                }
                .padding(.leading, 25)
                .padding(.top, 20)
                Spacer()
            }
            
            Text("How did we do?")
                .foregroundColor(.white)
                .padding(.vertical, 20)
                .padding(.leading, 25)
                .font(.title)
                .bold()
            
            Text("Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering!")
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 25.0)
                .font(.subheadline)
                .padding(.bottom, 20)
            
            HStack(alignment: .center, spacing: 20) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    ZStack {
                        Circle()
                            .frame(width: 50)
                        .foregroundColor(.mediumGray.opacity(0.4))
                        
                        Text(String(item + 1))
                            .foregroundColor(.white)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.bottom, 20)
        }
        .frame(width: 375)
        .background(Color.darkBlue)
        .cornerRadius(25)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
