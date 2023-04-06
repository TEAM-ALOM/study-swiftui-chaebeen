//
//  ProfileHost.swift
//  Landmarks
//
//  Created by 김채빈 on 2023/04/06.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active { // 조건부 취소버튼
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                            ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile) // 바인딩 해야 하기 떄문에 변수 앞에 $
                    // 유저가 수정하는 중이 아니라 유저가 Done을 누른 뒤에 ModelData 가 업데이트 되게 함
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
                    // SwiftUI 에서는 3개의 Life Cycle이 있다. -> Appear, Update, Disappear
                    // onAppear : View 가 보여지기 전에 호출된다.
                    // onDisappear : View 가 사라진 뒤에 호출된다.
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
