//
//  HomeProgressCard.swift
//  go-ngaji
//
//  Created by Agfi on 03/04/24.
//

import SwiftUI

struct HomeProgressCard: View {
    var isBacaanPagi: Bool
    var isBacaanPetang: Bool
    
    func calculateProgress() -> Float {
        if isBacaanPagi && isBacaanPetang {
            return 100
        } else if isBacaanPagi || isBacaanPetang {
            return 50
        } else {
            return 0
        }
    }
    
    var body: some View {
        Rectangle()
            .frame(width: 168, height: 120)
            .cornerRadius(10)
            .foregroundColor(Color(.greenPrimary))
            .overlay(alignment: .leading, content: {
                VStack(alignment: .leading ,content: {
                    Text("Misi Selesai")
                        .foregroundStyle(.white)
                        .font(.title3)
                    Spacer()
                    HStack {
                        Text("Misi Harian")
                            .font(.footnote)
                            .foregroundStyle(.white)
                        Spacer()
                        Text("\(calculateProgress().clean)%")
                            .font(.caption2)
                            .foregroundStyle(.white)
                    }
                    ProgressView(value: calculateProgress()/100)
                        .progressViewStyle(LinearProgressViewStyle(tint: .yellowsecondary))
                        .background(.gray)
                })
                .padding()
            })
    }
}

#Preview {
    let user = UserModel.generateAgfiUser()
    return HomeProgressCard(isBacaanPagi: user.isBacaanPagi, isBacaanPetang: user.isBacaanPetang)
}
