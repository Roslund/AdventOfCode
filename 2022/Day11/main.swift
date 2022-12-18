var monkeys = input.split(separator: /\n\n/).map { Monkey(String($0)) }

for round in 1...20 {
    print("Round \(round)")

    for (i,monkey) in monkeys.enumerated() {
        print("Monkey \(i)")
        monkey.activity += monkey.items.count
        for item in monkey.items {
            print("Monkey inspects an item with a worry level of \(item)")
            let newitem = monkey.operation(item)/3

            let target = monkey.test(newitem)
            print("Item with worry level \(newitem) is thrown to monkey \(target).")
            monkeys[target].items.append(newitem)
            print("")
        }
        monkey.items = []
        print("")
    }
}

print(monkeys.map({$0.activity}).sorted())
print(225 * 227)


monkeys = input.split(separator: /\n\n/).map { Monkey(String($0)) }

for round in 1...10000 {
    for monkey in monkeys {
        // instead of dividing by 3, devede be the least comon multiple. 9699690
        let items = monkey.items.map({monkey.operation($0) % 9699690})
        monkey.activity += items.count
        for item in items {
            let target = monkey.test(item)
            monkeys[target].items.append(item)
        }
        monkey.items = []
    }
    if round == 20 {
        print("")
        monkeys.forEach({print($0.activity)})
    }
}

print(monkeys.map({$0.activity}).sorted())
print(108357 * 108359)
