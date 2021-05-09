//
//  GameView.swift
//  Tic-Tac-Toe
//
//  Created by wizz on 5/9/21.
//

import SwiftUI

struct GameView: View {
    
    @StateObject private var viewModel = GameViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                LazyVGrid(columns: viewModel.columns, spacing: 5){
                    ForEach(0..<9){ i in
                        ZStack{
                            GameSquareView(proxy: geometry)
                            PlayerIndicator(systemImageName: viewModel.moves[i]?.indicator ?? "questionmark")
                        }
                        .onTapGesture {
                            viewModel.processPlayerMove(for: i)
                        }
                    }
                }
                Spacer()
            }
            .disabled(viewModel.isGameboardDisabled)
            .padding()
            .alert(item: $viewModel.alertItem){ alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame()}))
            }
        }
    }
}

enum Player{
    case human,computer
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
