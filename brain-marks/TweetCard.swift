//
//  TweetCard.swift
//  brain-marks
//
//  Created by Shloak Aggarwal on 11/04/21.
//

import SwiftUI

struct TweetCard: View {
    //    var tweet: TweetModel
    
    var body: some View {
        VStack(alignment: .leading) {
            TweetHeaderView()
            TweetBodyView()
//            TweetFooterView()
        }
    }
}

struct TweetHeaderView: View {
    var body: some View {
        HStack {
            UserIconView(size: 55)
            UserInfoView()
            Spacer()
        }
        .padding(EdgeInsets(top: 18, leading: 18, bottom: 18, trailing: 18))
    }
}

struct TweetBodyView: View {
    var body: some View {
        Text("Starship just landed on Mars for the first time")
            .font(.system(size: 24, weight: .light, design: .default))
            .lineSpacing(8.0)
            .padding(EdgeInsets(top: 0, leading: 18, bottom: 18, trailing: 18))
    }
}

// struct TweetFooterView: View {
//    var body: some View {
//        VStack(alignment: .leading) {
//            TweetInfoView()
//
//            Divider().padding(EdgeInsets(top: 0, leading: 18, bottom: 6, trailing: 18))
//            InteractionsView()
//            Divider().padding(EdgeInsets(top: 4, leading: 18, bottom: 0, trailing: 18))
//        }
//    }
// }

struct UserIconView: View {
    var size: CGFloat
    
    var body: some View {
        ZStack {
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
            
        }
    }
}

struct UserInfoView: View {
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 4) {
                    Text("Elon Musk")
                        .font(.system(size: 16, weight: .semibold, design: .default))
//                            Image("verified")
//                                .resizable()
//                                .frame(width: 14, height: 14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                Text("@elonmusk")
                    .font(.callout)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

// struct TweetInfoView: View {
//    var body: some View {
//        HStack(spacing: 0) {
//            Text("9:58 PM・9/5/20・")
//                .font(.callout)
//                .foregroundColor(.secondary)
//            Text("Twitter for iPhone")
//                .font(.callout)
//                .foregroundColor(Color(UIColor(named: "twitter")!))
//        }
//        .padding(EdgeInsets(top: 18, leading: 18, bottom: 6, trailing: 18))
//    }
// }

// struct InteractionsView: View {
//    var body: some View {
//        HStack {
//            HStack(spacing: 4) {
//                Text("501K")
//                    .font(.system(size: 16, weight: .semibold, design: .default))
//                Text("Retweets")
//                    .font(.callout)
//                    .foregroundColor(.secondary)
//            }
//            HStack(spacing: 4) {
//                Text("9,847")
//                    .font(.system(size: 16, weight: .semibold, design: .default))
//                Text("Quote Tweets")
//                    .font(.callout)
//                    .foregroundColor(.secondary)
//            }
//            HStack(spacing: 4) {
//                Text("1M")
//                    .font(.system(size: 16, weight: .semibold, design: .default))
//                Text("Likes")
//                    .font(.callout)
//                    .foregroundColor(.secondary)
//            }
//        }.padding(.horizontal)
//    }
// }

struct TweetCard_Previews: PreviewProvider {
    static var previews: some View {
        TweetCard()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
