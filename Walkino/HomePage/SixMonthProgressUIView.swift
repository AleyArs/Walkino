//
//  SixMonthProgressUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 3.11.2022.
//

import SwiftUI


struct SixMonthProgressUIView: View {
    var fitnessSixMonthStats : [FitnessData] = FitnessSixMonthData.FitnessSixMonthSampleData
    var body: some View {
        VStack(alignment:.leading){
            VStack(alignment:.leading){
            Text("ORTALAMA")
                .font(.caption)
                .foregroundColor(.gray)
                HStack{
            Text("6.659")
                        .font(.system(size: 25))
            Text("adım")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            Text("9 May- 6 Kas 2022")
                    .bold()
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading,40)
            GraphSixMonthView()
        }
    }
    @ViewBuilder
    func GraphSixMonthView()->some View{
        GeometryReader{proxy in
            VStack{
            ZStack{
            VStack(spacing:0){
                ForEach(getGraphLines(), id:\.self){line in
                    HStack(spacing:8){
                        Text("\(Int(line))")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Rectangle()
                            .fill(Color.gray.opacity(0.2))
                            .frame(height:1)
                    }
                    .frame(maxHeight: .infinity, alignment:.bottom)
                    .offset(y:-15)
                }
            }
                HStack(spacing:-10){
                    ForEach(fitnessSixMonthStats){ fitnessstats in
                        VStack(spacing:0){
                            VStack(spacing: 1){
                                Capsule()
                                    .fill(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                                
                            }
                            .frame(width: 10)
                            .frame(height: getBarHeight(point: CGFloat(fitnessstats.averageStep), size: proxy.size))
                            Text(fitnessstats.month)
                                .font(.system(size: 12))
                                .frame(height:18, alignment:.bottom)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                        
                        
                    }
                 }
                .padding(.leading,45)
            
        }
            .frame(maxWidth:.infinity , maxHeight: .infinity, alignment: .center)
        }
           
        }
        .frame(height: 240)
    }
    func getBarHeight(point: CGFloat , size: CGSize) -> CGFloat{
        let max = getMax()
        let height = (point / max) * (size.height - 55)
        return height
    }
    func getGraphLines() -> [CGFloat]{
        let max = getMax()
        var lines: [CGFloat] = []
        lines.append(max)
        for index in 1...3{
            let progress = max / 3
            lines.append(max - (progress * CGFloat(index)))
        }
        return lines
    }

    func getMax() -> CGFloat{
        let max = fitnessSixMonthStats.max {first, scnd in
            return scnd.averageStep > first.averageStep
        }?.averageStep ?? 0
        return CGFloat(max)
    }
    
}

struct SixMonthProgressUIView_Previews: PreviewProvider {
    static var previews: some View {
        SixMonthProgressUIView()
    }
}
