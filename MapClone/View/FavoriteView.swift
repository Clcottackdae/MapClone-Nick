//
//  BottomSheetView.swift
//  MapClone
//
//  Created by Seungyun Kim on 2022/06/21.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("즐겨찾기")
                    Spacer()
                    Text("자세히")
                }
                .padding(.horizontal, 20)
                HStack (alignment: .top) {
                    VStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "house.fill")
                                .font(.title)
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                                .background(.cyan)
                                .clipShape(Circle())
                        }
                        Text("집")
                        Text("3 시간 20 분")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "briefcase.fill")
                                .font(.title)
                                .frame(width: 60, height: 60)
                                .foregroundColor(.blue)
                                .background(.gray)
                                .clipShape(Circle())
                        }
                        Text("직장")
                        Text("추가")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "graduationcap.fill")
                                .font(.title)
                                .frame(width: 60, height: 60)
                                .foregroundColor(.white)
                                .background(.brown)
                                .clipShape(Circle())
                        }
                        Text("학교")
                        Text("3 시간 40 분")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    VStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus")
                                .font(.title)
                                .frame(width: 60, height: 60)
                                .foregroundColor(.blue)
                                .background(.gray)
                                .clipShape(Circle())
                        }
                        Text("추가")

                    }
                }
                .frame(width: 320)
                .padding()
                .background(RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.white)
                    )
            }
        }
        
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
