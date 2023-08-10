//
//  ProfileActivitiesUIView.swift
//  Walkino
//
//  Created by Aleyna Arslankaya on 29.09.2022.
//

import SwiftUI

struct ProfileActivitiesUIView: View {
    var activityList : [ActivityModel] = ActivityModelList.activityList
    var CircleList : [UserProfileResponse] = UserProfileResponseList.one
    var body: some View {
        ForEach(CircleList, id:\.name) { pastduelList in
            List(pastduelList.activities , id:\.sıra){ aaa in
                NavigationLink(destination: ActivityDetailsRow(activityModel: aaa)){
                    activity(activityModel: aaa)
             }
            }
         }.listStyle(PlainListStyle())
       }
    }


struct ProfileActivitiesUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActivitiesUIView()
    }
}
