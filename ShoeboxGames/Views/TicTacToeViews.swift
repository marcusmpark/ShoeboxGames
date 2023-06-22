import SwiftUI

enum TicTacToeViews {
    fileprivate struct TopView: View {
        var body: some View {
            Rectangle()
                .fill(.purple)
        }
    }
    
    fileprivate struct BottomView: View {
        var body: some View {
            Rectangle()
                .fill(.cyan)
        }
    }
    
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
    
    struct ContentView: View {
        var body: some View {
            VStack {
                TopView()
                BoardView()
                BottomView()
            }
        }
    }
    
    struct ViewPreviews: PreviewProvider {
        static var previews: some View {
            TicTacToeViews.ContentView()
        }
    }
}
