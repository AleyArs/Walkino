//
//  StepCircularUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 6.10.2022.
//

import SwiftUI
import HealthKit


struct StepCircularUIView: View {
    var body: some View {
        ZStack{
        LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .leading, endPoint: .trailing)
            VStack(alignment: .leading, spacing:9){
                HStack{
                    Text("Haftalık Gelişimini Takip Et! ")
                        .bold()
                        .font(.system(size: 12))
                        .padding(.leading,16)
                        .padding(.trailing,16)
                        .padding(.top,9)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .padding(.trailing,16)
                        .padding(.top,9)
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                }
              ProgressGoalView()
                .padding(.bottom,16)
                .padding(.leading,9)
            }
           }.frame(
            width:UIScreen.main.bounds.width-24, height: 109)
            .cornerRadius(6)
    }
}

struct ProgressGoalView: View{
    
    private var healthStore: HealthStore?
    @State private var steps : [Step] = [Step]()
    
     init(){
     healthStore = HealthStore()
     }
    
     private func updateUIFromStatistics(_ statisticsCollection: HKStatisticsCollection){
         
        let startDate = Calendar.current.date(byAdding: .day, value: -7, to: Date())!
        let endDate = Date()
     
        statisticsCollection.enumerateStatistics(from: startDate, to: endDate){ (statistics, stop) in
         
        let count = statistics.sumQuantity()?.doubleValue(for: .count())
            
        let step = Step(count: Int(count ?? 0), date: statistics.startDate)
           steps.append(step)
     
     }
     }
    
    var body: some View {
        ScrollView(.horizontal){
         HStack(spacing: 8) {
        ForEach(steps, id:\.id){ stepList in
        if 15000 > stepList.count {
           VStack{
               ZStack{
               Circle()
                 .stroke(Color.white.opacity(0.5),lineWidth: 6)
                 .frame(width: 35, height: 35)
               Circle()
                  .trim(from: 0.0, to:
                            CGFloat(convertFloat(goal: 15000, count: stepList.count)))
                           .stroke(Color.white, style: StrokeStyle(lineWidth: 6, lineCap: .round))
                           .frame(width: 35, height: 35)
                       
                       VStack{
                           Text(stepList.date, format: .dateTime.weekday(.abbreviated))
                               .font(.system(size: 8))
                               .foregroundColor(.white)
                       }
                   }
                   Text(String(stepList.count))
                       .bold()
                       .font(.system(size: 8))
                       .foregroundColor(.white)
                       .frame(maxWidth: .infinity)
                       .padding(.trailing,2)
           }
              } else {
                  ProgressDone(count: stepList.count)
              }
                }
    
                }
         .padding(.top,12)
         .frame(
             width:UIScreen.main.bounds.width-40)
            
        }.onAppear {
            if let healthStore = healthStore {
            healthStore.requestAuthorization { success in
            if success {
                healthStore.calculateSteps { statisticsCollection in
                if let statisticsCollection = statisticsCollection{
                    updateUIFromStatistics(statisticsCollection)
            }
            }
            }
            
            }
            }
            }
    }
}



struct ProgressDone: View {
    var color = ColorConstants()
    var count: Int = 15000
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .fill(Color.white)
                    .frame(width: 35, height: 35)
                Image(systemName: "checkmark")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color.init(red: 0.965, green: 0.224, blue: 0.49))
                
            }.frame(width: 35, height: 35)
            Text(String(count))
             .bold()
             .font(.system(size: 8))
             .foregroundColor(.white)
            
        }
        }
    }

struct TodayProgress: View {
    var color = ColorConstants()
    var body: some View {
        VStack{
         ZStack{
         Circle()
             .stroke(Color.white.opacity(0.5),lineWidth: 6)
             .frame(width: 35, height: 35)
         Circle()
             .trim(from: 0.0, to: 0.5)
             .stroke(Color.white, style: StrokeStyle(lineWidth: 6, lineCap: .round))
             .frame(width: 35, height: 35)
         
             VStack(spacing:1){
             Text("paz")
                 .font(.system(size: 8))
                 .foregroundColor(.white)
             Image("Line4")
                 .resizable()
                 .frame(width: 18, height: 1)
         }
         }
            Text("2399")
             .bold()
             .font(.system(size: 8))
             .foregroundColor(.white)
             }
        }
    }



struct ColorConstants {
    static let startColor = Color.init(red: 0.965, green: 0.224, blue: 0.439)
    static let endColor = Color.init(red: 0.992, green: 0.443, blue: 0.439)
    static let backgroundGradient = Gradient(colors: [startColor,endColor])
}

struct StepCircularUIView_Previews: PreviewProvider {
    static var previews: some View {
        StepCircularUIView()
    }
}




