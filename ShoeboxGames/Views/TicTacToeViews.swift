import SwiftUI

struct TicTacToeViews {
    struct ContentView: View {
        var body: some View {
            VStack {
                TicTacToeViews.TopView()
                ZStack {
                    TicTacToeViews.BoardView()
                    TicTacToeViews.PieceView(playerID: .two)
                }
                TicTacToeViews.BottomView()
            }
        }
    }
    
    struct ViewPreviews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

// MARK: - Top Views
extension TicTacToeViews {
    fileprivate struct TopView: View {
        var body: some View {
            Rectangle()
                .fill(.purple)
        }
    }
}

// MARK: - Bottom Views
extension TicTacToeViews {
    fileprivate struct BottomView: View {
        var body: some View {
            Rectangle()
                .fill(.cyan)
        }
    }
}

// MARK: - Board Views
extension TicTacToeViews {
    fileprivate struct BoardView: View {
        static let spaceSize: CGFloat = 115
        static let lineWidth: CGFloat = 6
        static let lineCornerRadius: CGFloat = 25
        
        var body: some View {
            ZStack {
                VStack {
                    Rectangle()
                        .fill(.clear)
                        .frame(height: Self.spaceSize)
                    RoundedRectangle(cornerRadius: Self.lineCornerRadius)
                        .fill(.black)
                        .frame(height: Self.lineWidth)
                    Rectangle()
                        .fill(.clear)
                        .frame(height: Self.spaceSize)
                    RoundedRectangle(cornerRadius: Self.lineCornerRadius)
                        .fill(.black)
                        .frame(height: Self.lineWidth)
                    Rectangle()
                        .fill(.clear)
                        .frame(height: Self.spaceSize)
                }
                HStack {
                    Rectangle()
                        .fill(.clear)
                        .frame(width: Self.spaceSize)
                    RoundedRectangle(cornerRadius: Self.lineCornerRadius)
                        .fill(.black)
                        .frame(width: Self.lineWidth)
                    Rectangle()
                        .fill(.clear)
                        .frame(width: Self.spaceSize)
                    RoundedRectangle(cornerRadius: Self.lineCornerRadius)
                        .fill(.black)
                        .frame(width: Self.lineWidth)
                    Rectangle()
                        .fill(.clear)
                        .frame(width: Self.spaceSize)
                }
            }.padding(.all)
        }
    }
}

// MARK: - Piece Views
extension TicTacToeViews {
    fileprivate struct PieceView: View {
        @State var playerID: PlayerID
        static let playerMoveFont: Font = .system(size: 90, weight: .light)

        var body: some View {
            switch playerID {
            case .one:
                Image(systemName: "l.circle")
                    .font(Self.playerMoveFont)
                    .foregroundColor(.blue)
            case .two:
                Image(systemName: "r.circle")
                    .font(Self.playerMoveFont)
                    .foregroundColor(.red)
            // TODO: [TAS-36] Error handling.
            }
        }
    }
}
