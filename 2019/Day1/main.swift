print("Part 1:", input.map({ $0/3-2}).reduce(0, +))

func fuelNeeded(for mass: Int) -> Int {
    let fuel = mass / 3 - 2
    if fuel <= 0 { return 0 }
    return fuel + fuelNeeded(for: fuel)
}

print("Part 2:", input.map(fuelNeeded).reduce(0, +))
