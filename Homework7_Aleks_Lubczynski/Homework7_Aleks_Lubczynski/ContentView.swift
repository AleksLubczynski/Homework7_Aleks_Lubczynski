/*
 Assignment 7
 
 Aleksander Lubczynski
 
 9/30/25
 
*/

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}


struct ContentView: View {
    var body: some View {
        HStack(alignment: .midAccountAndName, spacing: 16) {
            
            VStack(alignment: .leading, spacing: 8) {
            Image("Profile")
                .resizable().scaledToFit()
                .frame(width: 200, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            Text("Aleks Lubczynski")
                    .font(.title2).bold()
                    .alignmentGuide(.midAccountAndName) { d in
                        d[.firstTextBaseline]
                        
                        
                    }
            }
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Bio:")
                        .font(.title3).bold()
                        .alignmentGuide(.midAccountAndName) { d in
                            d[.firstTextBaseline]
                        }
                    Text("iOS /SwiftUI Middle College student. Loves playing sports and learning about different coding languages.")
                                .fixedSize(horizontal: false, vertical: true)
                        }
                    Spacer()
                }
                .padding()
            }
        }
        #Preview { ContentView()}
