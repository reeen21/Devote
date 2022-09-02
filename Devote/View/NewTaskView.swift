//
//  NewTaskView.swift
//  Devote
//
//  Created by 高橋蓮 on 2022/08/31.
//

import SwiftUI

struct NewTaskView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var task: String = ""
    @Binding var isShowing: Bool
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    private var isButtonDisabled: Bool {
        task.isEmpty
    }
    
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.task = task
            newItem.completion = false
            newItem.id = UUID()
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
            task = ""
            hideKeyboard()
            isShowing = false
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing:16) {
                TextField("New task", text: $task)
                    .padding()
                    .foregroundColor(.pink)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .background(
                        isDarkMode ? Color(uiColor: .tertiarySystemBackground) : Color(uiColor: .secondarySystemBackground)
                    )
                    .cornerRadius(10)
                
                Button {
                    addItem()
                    playSound(sound: "sound-ding", type: "mp3")
                    feedback.notificationOccurred(.success)
                } label: {
                    Spacer()
                    Text("SAVE")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    Spacer()
                }
                .disabled(isButtonDisabled)
                .onTapGesture {
                    if isButtonDisabled {
                        playSound(sound: "sound-tap", type: "mp3")
                    }
                }
                .padding()
                .foregroundColor(.white)
                .background(isButtonDisabled ? Color.blue : Color.pink)
                .cornerRadius(10)
            }
            .padding(.horizontal)
            .padding(.vertical, 20)
            .background(
                isDarkMode ? Color(uiColor: .secondarySystemBackground) : Color(uiColor: .white)
            )
            .cornerRadius(16)
            .shadow(color: Color(red: 0, green:0, blue: 0, opacity: 0.65), radius: 24)
            .frame(maxWidth: 640)
        }
        .padding()
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(isShowing: .constant(true))
            .background(Color.gray.ignoresSafeArea(.all))
    }
}
