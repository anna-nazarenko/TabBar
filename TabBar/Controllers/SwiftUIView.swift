//
//  SwiftUIView.swift
//  TabBar
//
//  Created by Anna Nazarenko on 10.03.2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
      VStack {
        Text("My name is Anna")
          .padding()
        Image(systemName: "person.fill")
          .resizable()
          .frame(width: 100, height: 100, alignment: .center)
          .foregroundColor(.orange)
          .padding()
      }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
