//
//  ContentView.swift
//  TaxCalculator
//
//  Created by 木村優哉 on 2023/10/31.
//

import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil, from: nil, for: nil
        )
    }
}

struct ContentView: View {

    @State var inputNumber: String = ""
    @State var withoutTax: Double = 0.0
    @State var withTax: Double = 0.0
    @State var taxRate: Double = 0.8

    @State private var selectedTaxRate = 0

    func calcPrice (originalPrice: Double, rate: Double) -> Double {
        var price: Double = 0.0
        price = Double(originalPrice * rate)
        return price
    }

    var body: some View {
        VStack {
            TextField("価格を入力", value: $inputNumber, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .padding()
                .keyboardType(.numberPad)

            let taxRateCandidate = [0, 5, 8, 10, 100]
            Picker(selection: $selectedTaxRate, label: Text("税率")) {
                ForEach(taxRateCandidate.indices, id: \.self) { index in
                    Text("\(taxRateCandidate[index])" + "%")
                }
            }

            HStack(spacing: 30) {
                Button("計算", action: {
                    withoutTax = Double(inputNumber)!
                    withTax = calcPrice(originalPrice: withoutTax, rate: taxRate)
                    UIApplication.shared.endEditing()
                })
                .buttonStyle(.borderedProminent)

                Button("クリア", role: .destructive, action: {
                    withoutTax = 0
                    withTax = 0
                })
                .buttonStyle(.bordered)
            }
            .padding(20)

            Text("税込価格: \(Int(withTax))")
            Text("税抜価格: \(Int(withoutTax))")

            if selectedTaxRate == 4 {
                Text("手始めに消費税は100パーセントじゃ！")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
