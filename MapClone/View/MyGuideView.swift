//
//  MyGuideView.swift
//  MapClone
//
//  Created by Seungyun Kim on 2022/06/21.
//

import SwiftUI

struct MyGuideView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("나의 가이드")
                .foregroundColor(.gray)
            HStack {
                Image(systemName: "plus")
                    .foregroundColor(.blue)
                    .frame(width: 45, height: 45)
                    .background(RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.gray))
                Text("새로운 가이드")
                Spacer()
            }
            .padding(15)
            .background(RoundedRectangle(cornerRadius: 7)
                .foregroundColor(.white))
        }
    }
}

struct MyGuideView_Previews: PreviewProvider {
    static var previews: some View {
        MyGuideView()
    }
}
