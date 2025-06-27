import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
                .font(.title2)
                .padding(.vertical, 7)
            Spacer()
        }
    }
}

#Preview {
    let item1 = ItemModel(title: "This is the First Text", isCompleted: true)
    let item2 = ItemModel(title: "This is Second Text", isCompleted: false)
    
    Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
}
