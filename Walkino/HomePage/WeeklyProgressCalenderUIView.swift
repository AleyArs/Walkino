//
//  WeeklyProgressCalenderUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 26.10.2022.
//

import SwiftUI


struct WeeklyProgressCalenderUIView: View {
    var fitnessMonthStats : [FitnessStats] = FitnessStatsMonthData.FitnessStatsMonthData
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
            Text("4 Eki-3Kas 2022")
                    .bold()
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading,40)
            
            GraphMonthView()
        }
    }

@ViewBuilder
func GraphMonthView()->some View{
    
    GeometryReader{proxy in
        VStack(alignment:.leading){
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
                    .offset(y:5)
                }
            }
            
            HStack(spacing:-10){
                ForEach(fitnessMonthStats){ fitnessstats in
                    VStack(spacing:0){
                        VStack(spacing: 1){
                            Capsule()
                                .fill(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                        }
                        .frame(width: 8)
                        .frame(height: getBarHeight(point: CGFloat(fitnessstats.step), size: proxy.size))
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
    HStack(spacing:325){
    Text("4")
            .padding(.leading,30)
    Text("3")
            .padding(.trailing,-5)
    }
    .font(.caption)
    .foregroundColor(.gray)

}
func getBarHeight(point: CGFloat , size: CGSize) -> CGFloat{
    let max = getMax()
    let height = (point / max) * (size.height - 46)
    return height
}
func getGraphLines() -> [CGFloat]{
    let max = getMax()
    var lines: [CGFloat] = []
    lines.append(max)
    for index in 1...4{
        let progress = max / 4
        lines.append(max - (progress * CGFloat(index)))
    }
    return lines
}

func getMax() -> CGFloat{
    let max = fitnessMonthStats.max {first, scnd in
        return scnd.step > first.step
    }?.step ?? 0
    return CGFloat(max)
}
}
struct WeeklyProgressCalenderUIView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyProgressCalenderUIView()
    }
}
