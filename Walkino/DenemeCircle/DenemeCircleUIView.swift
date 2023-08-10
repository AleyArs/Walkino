//
//  DenemeCircleUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 8.10.2022.
//

import SwiftUI

struct DenemeCircleUIView: View {
    var CircleList : [ProressCircleViewModel] = ProgressList.two
    
    var body: some View {
        
        List(CircleList, id:\.id){
            circleList in
            ZStack{
                Circle()
                    .stroke(Color.black.opacity(0.5),lineWidth: 6)
                    .frame(width: 35, height: 35)
                    
                Circle()
                    .trim(from: 0.0, to: circleList.percentageComplete)
                    .stroke(Color.white, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                    .rotationEffect(.init(degrees: -90))
                    .frame(width: 35, height: 35)
                VStack{
                    if circleList.shouldShowTitle {
                    Text(circleList.title)
                    }
                    Text(circleList.message)
        }
       }
      }
     }
    }

struct DenemeCircleUIView_Previews: PreviewProvider {
    static var previews: some View {
        DenemeCircleUIView()
    }
}
