let adapters = input.split(separator: "\n").map({Int($0)!}).sorted().reversed()

let chain = [adapters.max()!+3] + adapters + [0]
let sequence = zip([adapters.max()!+3] + adapters, adapters + [0])
let joltdiff = sequence.map { (a,b) in
    a-b
}

print(joltdiff.filter({$0 == 3}).count * joltdiff.filter({$0 == 1}).count)


var dict = [0:1]

for adapter in chain.dropLast().reversed() {
    dict[adapter] = dict[adapter-1, default: 0] +
                    dict[adapter-2, default: 0] +
                    dict[adapter-3, default: 0]
}
print(dict[chain.first!]!)
