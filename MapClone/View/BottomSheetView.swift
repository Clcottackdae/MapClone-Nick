//
//  BottomSheetView.swift
//  MapClone
//
//  Created by Seungyun Kim on 2022/06/21.
//

import SwiftUI

struct BottomSheetView: View {
    var body: some View {
        VStack {
            Capsule()
                .fill(.gray)
                .frame(width: 40, height: 5)
            HStack {
                SearchBarView()
                Image("profile")
                    .resizable()
                    .frame(width: 45, height: 45)
                    .background(.gray)
                    .clipShape(Circle())
                    .padding(.leading, 5)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 15)
            ScrollView {
                LazyVStack {
                    
                    FavoriteView()
                        .padding(.bottom)
                    RecentItemsView()
                        .padding(.bottom)
                    MyGuideView()
                        .padding(.bottom)
                    Button(action: {
                        
                    }) {
                        HStack {
                            Spacer()
                            Text("나의 위치 표시")
                            Spacer()
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 7)
                            .foregroundColor(.lightGrey))
                    }
                    Button(action: {
                        
                    }) {
                        HStack {
                            Spacer()
                            Text("문제 리포트")
                            Spacer()
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 7)
                            .foregroundColor(.lightGrey))
                    }
                    .padding(.bottom, 10)
                    
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("이용 약관 >")
                                .font(.caption2)
                            .foregroundColor(.gray)
                        }
                        Spacer()
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView()
    }
}
