//
//  SearchBarView.swift
//  MapClone
//
//  Created by Seungyun Kim on 2022/06/21.
//

import SwiftUI

struct SearchBarView: View {
    
    @State var text: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            TextField("지도 검색", text: $text)
                .foregroundColor(.primary)
            
            if !text.isEmpty {
                Button(action: {
                    
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
            } else {
                EmptyView()
            }
        }
        .padding(.horizontal, 5)
        .padding(.vertical, 10)
        .background(RoundedRectangle(cornerRadius: 7)
            .foregroundColor(.secondary))
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
