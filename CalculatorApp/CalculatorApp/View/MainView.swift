//
//  MainView.swift
//  CalculatorApp
//
//  Created by Mark Pashukevich on 7.08.24.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel:ViewModel
    var body: some View {
        ZStack{
            //BACKGROUND
            Color.black
                .ignoresSafeArea()
            VStack(spacing:12){
                Spacer()
                // DISPLAY
                HStack {
                    Spacer()
                    Text (viewModel.value)
                        .foregroundColor(.white)
                    .font(.system(size: 90))
                    .fontWeight(.light)
                    .padding(.horizontal, 28)
                }
                // BUTTONS
                ForEach(viewModel.buttonsArray, id: \.self) { row in
                    HStack(spacing:12){
                        ForEach(row, id: \.self) { item in Button{
                            viewModel.didTap(item: item)}
                            label: {
                                Text(item.rawValue)
                                    .frame(width: viewModel.buttonWidth(item: item), 
                                           height: viewModel.buttonHeights())
                                    .foregroundColor(item.buttonFonColor)
                                    .background(item.buttonColor)
                                    .font(.system(size: 35))
                                    .cornerRadius(40)
                        }
                        }
                    }
                }
            }
            .padding(.bottom)
        }
       
    }
   
}

struct MainView_Previews: PreviewProvider{
    static var previews: some View{
        MainView()
            .environmentObject(ViewModel())
    }
}
            
