//
//  QuestionPickView.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//

import SwiftUI

struct QuestionPickViewCQR: View {
    
    var cwrrc = "45245"
    var wrfvwr = 425245
    func vwrgvwrgv() -> String {
        return "vwrgvwrg4246246"
    }
    func wvrgvwvwrgvwrrg() {
        print("rgvvwrgvwrgv")
    }
    
    
    func cwrcfrc() -> Double {
        print(245245 / 2452452)
        return 245245245 * 2452452
    }
    var qecefcqef = [245245245.245245245: "wrfvwrfvrw"]
    var jrncfm = [352: "crfc"]
    var body: some View {
        VStack(spacing: 40) {
            Spacer()
            Spacer()
            
            Text("Choose a quiz mode")
                .withFont(size: 30.57, weight: .medium, color: .hex("584314"))
            
            VStack(spacing: isSE ? 20: 60) {
                NavigationLink {
                    QuestionViewCQR(type: .oneP)
                } label: {
                    Image("1p")
                }
                
                
                NavigationLink {
                    QuestionViewCQR(type: .withC)
                } label: {
                    Image("wc")
                }
                
                NavigationLink {
                    QuestionViewCQR(type: .withF)
                } label: {
                    Image("wf")
                }
            }
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentViewCQR(showLoading: false, selectedTab: .quiz)
}
