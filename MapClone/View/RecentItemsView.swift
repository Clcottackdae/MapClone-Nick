//
//  RecentItemsView.swift
//  MapClone
//
//  Created by Seungyun Kim on 2022/06/21.
//

import SwiftUI

struct RecentItemsView: View {
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("최근 항목")
                        .foregroundColor(.gray)
                    Spacer()
                    Button(action:{}) {
                        Text("자세히")
                    }
                }
                VStack (alignment: .leading) {
                    HStack {
                        Image(systemName: "mappin")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .background(.red)
                            .clipShape(Circle())
                            .padding(.trailing, 5)
                        VStack (alignment: .leading) {
                            Text("지정된 핀")
                                .font(.body)
                                .fontWeight(.semibold)
                            Text("포항시 남구 지곡동 57-1")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "arrow.turn.up.right")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .background(.black)
                            .clipShape(Circle())
                            .padding(.trailing, 5)
                        VStack (alignment: .leading) {
                            Text("학교")
                                .font(.body)
                                .fontWeight(.semibold)
                            Text("나의 위치에서 가는 경로")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    
                    Divider()
                    
                    HStack {
                        Image(systemName: "arrow.turn.up.right")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .background(.black)
                            .clipShape(Circle())
                            .padding(.trailing, 5)
                        VStack (alignment: .leading) {
                            Text("집")
                                .font(.body)
                                .fontWeight(.semibold)
                            Text("나의 위치에서 가는 경로")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 7)
                    .foregroundColor(.white)
                )
            }
            .padding()
        }
    }
}

struct RecentItemsView_Previews: PreviewProvider {
    static var previews: some View {
        RecentItemsView()
    }
}
