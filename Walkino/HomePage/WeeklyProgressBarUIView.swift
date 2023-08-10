//
//  WeeklyProgressBarUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 19.10.2022.
//

import SwiftUI

struct WeeklyProgressBarUIView: View {
    var fitnessStats : [FitnessStats] = FitnessStatsData.FitnessStatsSampleData
    @State var currentTab: String = "Adım"
    @State var fitnessBar: String = "Hafta"
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(red: 0.965, green: 0.224, blue: 0.49, alpha: 1)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().backgroundColor = .white
    }
    var body: some View {
        VStack{
            HStack(spacing:99){
                VStack(spacing:3){
                    Text("Toplam Atılan Adım")
                        .font(.system(size: 12))
                    HStack{
                        Image("Group10420")
                            .resizable()
                            .frame(width: 18.92, height: 13.65)
                        Text("236.191")
                            .font(.system(size: 16))
                            .bold()
                    }
                }
                VStack(spacing:3){
                    Text("Günlük Ortalama Adım")
                        .font(.system(size: 12))
                    HStack{
                        Image("Group10420")
                            .resizable()
                            .frame(width: 18.92, height: 13.65)
                        Text("8.425")
                            .font(.system(size: 16))
                            .bold()
                    }
                }
            }
            if currentTab == "Adım"{
                GraphView()
            } else if currentTab == "Mesafe(Km)"{
                GraphKmView()
            } else if  currentTab == "Kalori(Kcal)"{
                GraphView()
            }
            HStack{
                Picker("", selection: $currentTab) {
                    Text("Adım")
                        .tag("Adım")
                    Text("Mesafe(Km)")
                        .tag("Mesafe(Km)")
                    Text("Kalori(Kcal)")
                        .tag("Kalori(Kcal)")
                }
                .frame(width: 327, height: 25)
                .pickerStyle(.segmented)
                .font(.system(size: 12))
                .foregroundColor(.white)
                .background(Color.init( red: 0.965, green: 0.224, blue: 0.49))
                .foregroundColor(.init(red: 0.965, green: 0.224, blue: 0.49))
                .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.init(red: 0.965, green: 0.224, blue: 0.49),lineWidth: 2))
            }
            VStack(spacing:2){
            Text("Bir Önceki Haftaya Göre Gelişim")
                .font(.system(size: 12))
                .padding()
            Text("+%17.1")
                .bold()
                .foregroundColor(Color.init( red: 0.278, green: 0.898, blue: 0.415))
            }
            
            ShareProgressUIView()
        }
    }
    @ViewBuilder
    func GraphView()->some View{
        GeometryReader{proxy in
            ZStack{
                VStack(spacing:0){
                    ForEach(getGraphLines(), id:\.self){line in
                        HStack(spacing:8){
                            Rectangle()
                                .fill(Color.gray.opacity(0.2))
                                .frame(height:1)
                        }
                        .frame(maxHeight: .infinity, alignment:.bottom)
                        .offset(y:-15)
                    }
                }
                
                HStack{
                
                    ForEach(fitnessStats){ fitnessstats in
                        VStack(spacing:0){
                            VStack(spacing: 2){
                                Text(String(fitnessstats.step))
                                    .bold()
                                    .frame(width: 100, height: 18)
                                    .font(.system(size: 12))
                                    .foregroundColor(.init(red: 0.965, green: 0.224, blue: 0.49))
                                Capsule()
                                    .fill(Color.init(red: 0.965, green: 0.224, blue: 0.49, opacity: 0.2))
                            }
                            .frame(width: 10)
                            .frame(height: getBarHeight(point: CGFloat(fitnessstats.step), size: proxy.size))
                            Text(fitnessstats.weekDay)
                                .font(.system(size: 12))
                                .frame(height:18, alignment:.bottom)
                        }
                        .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    }
                    
                 }
                .padding(.leading,30)
            }
            .frame(maxWidth:.infinity , maxHeight: .infinity, alignment: .center)
        }
        .frame(height: 240)
        .padding(.bottom,20)

      
        
    }
    func getBarHeight(point: CGFloat , size: CGSize) -> CGFloat{
        let max = getMax()
        let height = (point / max) * (size.height - 30)
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
        let max = fitnessStats.max {first, scnd in
            return scnd.step > first.step
        }?.step ?? 0
        return CGFloat(max)
    }
    
    //Mark: Mesafe
    @ViewBuilder
    func GraphKmView()->some View{
        GeometryReader{proxy in
            ZStack{
                VStack(spacing:0){
                    ForEach(getKMGraphLines(), id:\.self){line in
                        HStack(spacing:8){
                            Rectangle()
                                .fill(Color.gray.opacity(0.2))
                                .frame(height:1)
                        }
                        .frame(maxHeight: .infinity, alignment:.bottom)
                        .offset(y:-15)
                    }
                }
                HStack{
                    ForEach(fitnessStats){ fitnessstats in
                        VStack(spacing:0){
                            VStack(spacing: 2){
                                Text(String(fitnessstats.distance))
                                    .bold()
                                    .frame(width: 100, height: 18)
                                    .font(.system(size: 12))
                                    .foregroundColor(.init(red: 0.965, green: 0.224, blue: 0.49))
                                Capsule()
                                    .fill(Color.init(red: 0.965, green: 0.224, blue: 0.49, opacity: 0.2))
                            }
                            .frame(width: 10)
                            .frame(height: getKmBarHeight(point: CGFloat(fitnessstats.distance), size: proxy.size))
                            Text(fitnessstats.weekDay)
                                .font(.system(size: 12))
                                .frame(height:18, alignment:.bottom)
                        }
                        .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    }
                 }
                .padding(.leading,30)
            }
            .frame(maxWidth:.infinity , maxHeight: .infinity, alignment: .center)
        }
        .frame(height: 240)
        .padding(.bottom,20)
    }
    func getKmBarHeight(point: CGFloat , size: CGSize) -> CGFloat{
        let max = getKmMax()
        let height = (point / max) * (size.height - 30)
        return height
    }
    func getKMGraphLines() -> [CGFloat]{
        let max = getKmMax()
        var lines: [CGFloat] = []
        lines.append(max)
        for index in 1...4{
            let progress = max / 4
            lines.append(max - (progress * CGFloat(index)))
        }
        return lines
    }
    func getKmMax() -> CGFloat{
        let max = fitnessStats.max {first, scnd in
            return scnd.distance > first.distance
        }?.distance ?? 0
        return CGFloat(max)
    }
}


struct WeeklyProgressBarUIView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyProgressBarUIView()
    }
}
