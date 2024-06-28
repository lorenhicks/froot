import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    HeaderView()
                    ArticleView(title: "Froot Season 2 Announced", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit...")
                    ArticleView(title: "A Look into the Costumes", content: "Praesent tincidunt sed tellus ut rutrum...")
                    ArticleView(title: "Character Insights", content: "Integer ac nunc bibendum, luctus ligula ac, scelerisque magna...")
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .navigationTitle("The Froot Times")
        }
    }
}

struct HeaderView: View {
    var body: some View {
        VStack {
            Text("The Froot Times")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("June 28, 2024")
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding()
    }
}

struct ArticleView: View {
    var title: String
    var content: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
            Text(content)
                .font(.body)
                .padding(.top, 5)
        }
        .padding()
        .background(Color("red"))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
