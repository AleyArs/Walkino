//
//  GoldAwardUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 7.10.2022.
//

import SwiftUI

struct GoldAwardUIView: View {
    @State var asd: Int = 1
    var body: some View {
        VStack{
            OkUI()
            GetAwardsButton(asd: $asd)
            LockFillingUI()
            LockFillUI()
            LockFill2UI()
            TotalGoldMoneyView(asd: $asd)
        }
    }
}


struct OkUI: View {
    var color = ColorConstants()
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .fill(
                        LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .leading, endPoint: .trailing))
                    .frame(width: 35, height: 35)
                Image(systemName: "checkmark")
                    .resizable()
                    .frame(width: 16, height: 11)
                    .foregroundColor(.white)
            }
            Text("Ödülü Aldın")
                .font(.system(size: 10))
                .frame(height: 15)
        }.frame(width: 60, height: 60)
            .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
            .cornerRadius(4)
            .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 4.15,  y: 2.76)
    }
}

struct GetAwardsButton: View {
    var color = ColorConstants()
    @Binding var asd: Int
    var body: some View {
        Button {
            self.asd = 45
        } label: {
            VStack{
                ZStack{
                    Circle()
                        .fill(
                            LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .leading, endPoint: .trailing))
                        .frame(width: 35, height: 35)
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 13, height: 16)
                        .foregroundColor(.white)
                        .padding(.leading,13)
                        .padding(.trailing,9)
                }
                Text("Ödülü Al")
                    .font(.system(size: 10))
                    .frame(height: 15)
            }.frame(width: 60, height: 60)
                .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
                .cornerRadius(4)
                .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 4.15,  y: 2.76)
        }

    }
}
struct LockFillingUI: View {
    var color = ColorConstants()
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .leading, endPoint: .trailing))
                .frame(width: 35, height: 35)
            Image(systemName: "lock.fill")
                .resizable()
                .frame(width: 15.58, height: 18.33)
                .foregroundColor(.white)
        }
    }
}
struct LockFillUI: View {
    var color = ColorConstants()
    var goal: Int  = 130000
    var body: some View {
        VStack{
            ZStack{
                ZStack{
                    Circle()
                        .fill(
                            LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .leading, endPoint: .trailing))
                        .frame(width: 35, height: 35)
                    Image(systemName: "lock.fill")
                        .resizable()
                        .frame(width: 15.58, height: 18.33)
                        .foregroundColor(.white)
                }
                Circle()
                    .clipped()
                    .colorInvert()
                    .opacity(0.60)
                    .frame(width: 35, height: 35)
            }
            Text(String(goal))
                .font(.system(size: 10))
                .frame(height: 15)
        }.frame(width: 60, height: 60)
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
            .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 4.15,  y: 2.76)
    }
}
struct LockFill2UI: View {
    var color = ColorConstants()
    var percent: CGFloat = 0.5
    var goal: Int  = 130000
    var body: some View {
        VStack{
            ZStack{
                ZStack{
                    ZStack{
                        Circle()
                            .fill(
                                LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .leading, endPoint: .trailing))
                            .frame(width: 35, height: 35)
                        Image(systemName: "lock.fill")
                            .resizable()
                            .frame(width: 15.58, height: 18.33)
                            .foregroundColor(.white)
                    }
                    Circle()
                        .clipped()
                        .colorInvert()
                        .opacity(0.60)
                        .frame(width: 35, height: 35)
                }
                ZStack{
                    Circle()
                        .trim(from: 0.10, to:percent)
                        .fill(
                            LinearGradient(gradient: ColorConstants.backgroundGradient, startPoint: .leading, endPoint: .trailing))
                        .rotationEffect(.init(degrees: -180))
                        .frame(width: 35, height: 35)
                    Image(systemName: "lock.fill")
                        .resizable()
                        .frame(width: 15.58, height: 18.33)
                        .foregroundColor(.white)
                }
            }
            Text(String(goal))
                .font(.system(size: 10))
                .frame(height: 15)
        }
        .frame(width: 60, height: 60)
        .background(Color.init(red: 0.973, green: 0.976, blue: 0.98))
        .cornerRadius(4)
        .shadow(color: .init( red: 0.973, green: 0.976, blue: 0.98, opacity: 1), radius: 4.15,  y: 2.76)
    }
}

struct TotalGoldMoneyView : View {
    @Binding var asd: Int
    var body: some View {
        VStack{
            Text(String(asd))
        }
    }
}

struct GoldAwardUIView_Previews: PreviewProvider {
    static var previews: some View {
        GoldAwardUIView()
    }
}
