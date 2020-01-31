//
//  ContentView.swift
//  the Bus
//
//  Created by royyaha on 31.01.20.
//  Copyright © 2020 royyaha. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            CustomCell()
            CustomCell()
        }
    }
}

struct CustomCell: View {
    var body: some View {
        ZStack {
            Color.white
            .edgesIgnoringSafeArea(.all)
                
            
            HStack(alignment: VerticalAlignment.center) {
                Rectangle()
                .fill(Color.red)
                .frame(width: 18, height: 84)
                .padding(.trailing, 10)
                
                GeometryReader { geometry in
                
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text("172")
                                .font(.system(size: 18))
                                .fontWeight(.black)
                                .foregroundColor(Color.black)
                        }
                    
                        HStack(spacing: 0) {
                            Text("國鼎圖書館")
                                .font(.system(size: 20))
                                .fontWeight(.black)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: geometry.size.width * (3.0/8.0), alignment: .leading)
                            Image("route")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geometry.size.width * (2.0/8.0))
                                .padding([.leading, .trailing], 5)
                            Text("桃園高鐵站")
                                .font(.system(size: 20))
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                                .frame(width: geometry.size.width * (3.0/8.0), alignment: .leading)
                        }
                    
                        
                        HStack {
                            Spacer()
                            Text("5分鐘")
                                .fontWeight(.heavy)
                                .padding(.trailing, 5)
                                .foregroundColor(Color.red)
                        }
                    
                    }
                }
                Button(action: {
                    //
                }) {
                    CustomButtonView()
                    
                    
                }
                .padding([.leading, .trailing], 15)
                
            }.frame(height: 95)
            
            
        }.frame(height: 95)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 63, height: 63)
                .shadow(color: Color.black.opacity(0.16), radius: 2, x: 1, y: 1)
            
            Image("exchange")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.black)
                .frame(width: 35, height: 35)
        }.frame(width: 63, height: 63)
    }
}
