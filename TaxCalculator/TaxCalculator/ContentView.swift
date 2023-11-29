//
//  ContentView.swift
//  TaxCalculator
//
//  Created by 木村優哉 on 2023/10/31.
//

import SwiftUI

struct ContentView: View {

    @State private var inputNumber: String = ""
    @State private var withoutTax: Double = 0.0
    @State private var withTax: Double = 0.0
    @State private var taxRate: Double = 0.0

    @State private var selectedTaxRate = 0
    private let taxRateCandidate = [0.00, 0.05, 0.08, 0.10, 1.00]

    func calcPrice (originalPrice: Double, rate: Double) -> Double {
        var price: Double = 0.0
        price = Double(originalPrice + originalPrice * rate)
        return price
    }

    var body: some View {
        VStack {
            Spacer()
                .frame(height: 250)

            HStack {
                TextField("価格を入力", text: $inputNumber)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .keyboardType(.numberPad)

                Button(action: {
                    inputNumber = ""
                }) {
                    Image(systemName: "multiply.circle.fill")
                        .foregroundColor(.secondary)
                }
            }

            HStack {
                Text("税率:")
                Picker(selection: $selectedTaxRate, label: Text("税率")) {
                    ForEach(taxRateCandidate.indices, id: \.self) { index in
                        Text("\(Int(taxRateCandidate[index] * 100))" + "%")
                    }
                }
            }

            HStack(spacing: 30) {
                Button("計算", action: {
                    if let number = Double(inputNumber) {
                        taxRate = Double(taxRateCandidate[selectedTaxRate])
                        withoutTax = number
                        withTax = calcPrice(originalPrice: withoutTax, rate: taxRate)
                        print("withoutTax: \(withoutTax), withTax: \(withTax)")
                    } else {
                        return
                    }
                })
                .buttonStyle(.borderedProminent)

                Button("クリア", role: .destructive, action: {
                    inputNumber = ""
                    withoutTax = 0.0
                    withTax = 0.0
                })
                .buttonStyle(.bordered)
            }
            .padding(20)

            VStack(spacing: 10) {
                Text("税抜価格: \(Int(withoutTax))")
                Text("税込価格: \(Int(withTax))")

                if taxRateCandidate[selectedTaxRate] == 1.00 {
                    Text("手始めに消費税は100パーセントじゃ！")
                }

                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
