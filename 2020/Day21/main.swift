import Foundation

let testInput = """
mxmxvkd kfcds sqjhc nhms (contains dairy, fish)
trh fvjkl sbzzf mxmxvkd (contains dairy)
sqjhc fvjkl (contains soy)
sqjhc mxmxvkd sbzzf (contains fish)
"""

struct Food {
    let ingredients: [String]
    let alergeens: [String]
    
    init<T: StringProtocol>(raw: T) {
        let whole = raw.components(separatedBy: " (contains ")
        ingredients = whole.first!.split(separator: " ").map({String($0)})
        alergeens = whole.last!.dropLast().components(separatedBy: ", ").map({String($0)})
        
    }
}


let foods = input.split(separator: "\n").map(Food.init(raw:))
let ingredients = Set(foods.flatMap({ $0.ingredients}))
let alergeens = Set(foods.flatMap({ $0.alergeens}))

var knownIngredients: [String] = []
var unknownAlergeens = alergeens
var mapping: [(ingredient: String, alergeen: String)] = []

while !unknownAlergeens.isEmpty {
    for alergeen in unknownAlergeens {
        
        let suspects = foods.filter { food in
            food.alergeens.contains(alergeen)
        }.reduce(Set(ingredients)) { (suspects,food) in
            suspects.intersection(food.ingredients.filter {
                !knownIngredients.contains($0)
            })
        }
        if suspects.count == 1 {
            knownIngredients.append(suspects.first!)
            unknownAlergeens.remove(alergeen)
            mapping.append((suspects.first!, alergeen))
        }
    }
}

print(foods
        .flatMap({$0.ingredients})
        .filter({!knownIngredients.contains($0)})
        .count
)

print(mapping
        .sorted(by: { $0.1 < $1.1 })
        .map({$0.ingredient})
        .reduce("") {
            $0 + "," + $1
        }
)
