//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/04/06.
//
// Picker, pickerStyle, tag, DatePicker, date()

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile // 변경이 저장되어야 하는 값
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)! // byAdding : by adding an amount of a specific component to a given date.
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username) // 바인딩을 위해 $
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Seasonal Photo").bold()
                
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) { // Picker & tag
                    ForEach(Profile.Season.allCases){ season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented) // pickerStyle
            }
            
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
