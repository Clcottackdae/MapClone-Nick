//
//  HomeView.swift
//  MapClone
//
//  Created by Seungyun Kim on 2022/06/21.
//

import SwiftUI
import Vision


struct HomeView: View {
    
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = -120
    
    var body: some View {
        ZStack {
            MapView()
            GeometryReader { proxy -> AnyView in
                let height = proxy.frame(in: .global).height
                
                return AnyView (
                    ZStack{
                        Rectangle()
                            .foregroundColor(.backgroundGrey)
                            .clipShape(CustomCorner(corners: [.topLeft,.topRight], radius: 20))
                            .edgesIgnoringSafeArea(.bottom)
                        
                        BottomSheetView()
                            .padding(.top, 10)
                    }
                    .offset(y: height - 70)
                    .offset(y: -offset > 0 ? (-offset <= (height - 70) ? offset : -(height - 70)) : 0)
                    .gesture(DragGesture().updating($gestureOffset, body: { value, out, _ in
                        out = value.translation.height
                        onChange()
                    })
                                .onEnded({ value in
                                    
                                    let maxHeight = height
                                    withAnimation {
                                        
                                        if -offset > 70 && -offset < maxHeight / 2 {
                                            offset = -(maxHeight * 0.4)
    //                                        naviHide = false
                                        }
                                        else if -offset > maxHeight / 2 {
                                            offset = -maxHeight
    //                                        naviHide = true
                                        }
                                        else {
                                            offset = 0
                                        }
                                        lastOffset = offset
                                    }
                                })
                            )
                )
            }
        }
    }
    
    func onChange(){
        DispatchQueue.main.async {
            offset = gestureOffset + lastOffset
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
