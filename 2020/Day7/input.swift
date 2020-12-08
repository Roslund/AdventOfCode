let input = """
clear maroon bags contain 1 dull lavender bag.
wavy turquoise bags contain 4 vibrant magenta bags, 4 light violet bags, 5 bright gold bags, 2 faded black bags.
wavy beige bags contain 3 plaid magenta bags, 3 wavy lime bags, 2 clear turquoise bags, 3 muted cyan bags.
mirrored black bags contain 1 plaid red bag, 3 light gold bags, 3 wavy violet bags.
vibrant fuchsia bags contain 2 dark lime bags, 2 mirrored black bags, 2 light magenta bags, 2 drab chartreuse bags.
vibrant plum bags contain 4 dim cyan bags, 3 pale maroon bags.
dark tan bags contain 3 faded white bags, 3 wavy tan bags, 4 pale indigo bags.
faded green bags contain 2 dim cyan bags, 5 dim magenta bags, 2 wavy maroon bags, 2 faded white bags.
clear black bags contain 4 striped green bags, 2 dim violet bags, 1 dull tan bag.
light olive bags contain 5 striped indigo bags, 3 dim coral bags, 1 drab bronze bag, 3 mirrored beige bags.
dim black bags contain 1 faded tan bag, 5 shiny crimson bags.
striped fuchsia bags contain 3 dim cyan bags.
pale plum bags contain 1 light lavender bag, 3 dim aqua bags, 1 shiny blue bag, 5 dark orange bags.
wavy crimson bags contain 2 pale crimson bags, 1 muted teal bag, 2 drab olive bags, 4 faded green bags.
mirrored aqua bags contain 4 shiny red bags, 4 light maroon bags, 4 light violet bags, 5 clear salmon bags.
light orange bags contain 4 dim crimson bags, 3 dim red bags, 3 mirrored orange bags.
shiny bronze bags contain 3 mirrored violet bags, 1 dull blue bag.
vibrant red bags contain 1 drab beige bag.
light violet bags contain 4 dim cyan bags.
dotted aqua bags contain 1 dotted crimson bag, 3 dark red bags, 4 dark fuchsia bags.
drab teal bags contain 2 mirrored violet bags, 2 mirrored beige bags, 2 shiny crimson bags.
clear coral bags contain 5 striped fuchsia bags, 2 shiny indigo bags.
dim gray bags contain 4 plaid salmon bags, 4 faded purple bags, 4 dull violet bags, 3 clear coral bags.
dotted cyan bags contain 1 shiny turquoise bag.
dim red bags contain 2 wavy magenta bags, 2 faded maroon bags, 5 striped fuchsia bags.
dull magenta bags contain 4 clear teal bags.
vibrant coral bags contain 3 pale indigo bags, 5 wavy red bags, 1 clear lime bag, 1 bright red bag.
striped silver bags contain 3 posh chartreuse bags.
posh coral bags contain 1 mirrored orange bag, 2 plaid lavender bags.
dull brown bags contain 1 light salmon bag.
dotted bronze bags contain 2 clear teal bags, 2 muted orange bags, 3 dark cyan bags, 2 muted maroon bags.
posh red bags contain 2 posh gray bags, 1 wavy blue bag.
faded violet bags contain 4 light purple bags.
faded red bags contain 3 drab brown bags.
mirrored tomato bags contain 5 muted maroon bags, 1 wavy lavender bag.
vibrant beige bags contain 4 muted maroon bags, 2 plaid violet bags, 1 dim cyan bag.
shiny turquoise bags contain 2 faded turquoise bags, 1 bright olive bag, 1 striped aqua bag, 2 mirrored blue bags.
plaid black bags contain 1 shiny teal bag.
dull fuchsia bags contain 3 posh tan bags, 4 dotted coral bags.
wavy tomato bags contain 3 light lavender bags.
posh salmon bags contain 5 plaid chartreuse bags.
striped green bags contain 3 dim cyan bags, 1 dark cyan bag, 3 shiny coral bags.
dim brown bags contain 4 dotted tan bags, 2 dark white bags, 1 plaid coral bag.
wavy plum bags contain 5 muted crimson bags.
striped turquoise bags contain 2 bright plum bags, 1 muted salmon bag, 2 vibrant white bags, 3 pale coral bags.
posh white bags contain 5 mirrored plum bags, 1 drab lavender bag, 4 drab brown bags.
wavy purple bags contain 4 striped fuchsia bags, 4 shiny indigo bags, 1 wavy violet bag.
muted coral bags contain 1 vibrant plum bag, 4 plaid salmon bags, 2 bright indigo bags.
light salmon bags contain 5 wavy olive bags, 2 dull violet bags, 3 vibrant orange bags.
light indigo bags contain 3 mirrored fuchsia bags.
drab white bags contain 1 pale green bag, 1 shiny teal bag, 4 bright yellow bags.
vibrant teal bags contain 4 drab turquoise bags, 3 shiny coral bags, 4 posh tan bags.
muted yellow bags contain 2 faded lavender bags.
pale silver bags contain 4 dotted green bags.
faded gold bags contain 1 faded orange bag, 2 drab chartreuse bags.
mirrored teal bags contain 2 dim tan bags, 2 plaid violet bags, 4 pale brown bags.
muted chartreuse bags contain 4 shiny yellow bags, 1 posh beige bag.
clear yellow bags contain 3 faded maroon bags, 5 striped blue bags, 3 dull silver bags, 5 striped gold bags.
vibrant black bags contain 2 dull green bags, 3 vibrant white bags, 1 mirrored gold bag.
striped indigo bags contain 1 vibrant orange bag, 3 striped black bags, 2 pale aqua bags, 3 light crimson bags.
posh lime bags contain 1 clear lime bag, 1 pale aqua bag, 3 plaid white bags.
drab silver bags contain 3 wavy aqua bags, 2 plaid yellow bags, 1 posh black bag, 2 plaid beige bags.
mirrored chartreuse bags contain 1 drab teal bag, 5 posh maroon bags.
faded brown bags contain 5 mirrored blue bags, 2 pale aqua bags, 3 dim black bags.
vibrant orange bags contain 3 bright tan bags, 5 shiny teal bags, 4 dotted crimson bags, 2 posh cyan bags.
drab blue bags contain 4 dark aqua bags.
plaid beige bags contain 2 plaid salmon bags, 4 dull maroon bags.
faded white bags contain 1 dim aqua bag.
bright lime bags contain 3 drab gray bags, 1 striped lime bag.
dim maroon bags contain 1 dotted salmon bag.
clear fuchsia bags contain 2 pale plum bags.
plaid violet bags contain 3 light magenta bags, 1 bright indigo bag, 1 pale tan bag.
drab maroon bags contain 4 light gray bags, 1 striped orange bag, 5 drab salmon bags.
light turquoise bags contain 4 plaid red bags, 5 drab plum bags.
pale magenta bags contain 3 wavy red bags, 2 muted orange bags.
striped plum bags contain 3 dark violet bags, 5 striped aqua bags, 1 posh chartreuse bag.
muted silver bags contain 1 striped lavender bag, 4 dotted salmon bags.
dark olive bags contain 1 mirrored cyan bag, 4 dull tan bags.
dotted brown bags contain 4 bright lavender bags.
bright salmon bags contain 4 drab blue bags.
clear orange bags contain 1 posh cyan bag.
clear tomato bags contain 1 clear red bag, 2 shiny yellow bags.
wavy black bags contain 1 mirrored bronze bag.
vibrant gold bags contain 2 posh olive bags, 4 shiny red bags.
muted tomato bags contain 5 dotted indigo bags, 2 dark magenta bags, 1 faded indigo bag, 1 shiny indigo bag.
dim tan bags contain 2 drab brown bags.
posh purple bags contain 4 light violet bags, 5 drab chartreuse bags, 4 striped fuchsia bags.
drab turquoise bags contain 3 bright indigo bags.
clear gold bags contain 2 wavy magenta bags, 1 bright olive bag.
dim crimson bags contain 2 drab gold bags, 1 dull tomato bag, 1 posh indigo bag.
dark lime bags contain 5 wavy magenta bags, 3 mirrored fuchsia bags, 5 dotted chartreuse bags, 1 dull bronze bag.
posh orange bags contain 2 mirrored aqua bags, 1 shiny green bag, 5 plaid teal bags.
dotted chartreuse bags contain 3 wavy violet bags, 5 pale white bags, 1 posh violet bag, 2 dark aqua bags.
wavy green bags contain 3 dim olive bags, 4 light lavender bags, 3 light olive bags.
dark beige bags contain 4 shiny orange bags.
dark orange bags contain 5 clear orange bags.
vibrant white bags contain 2 dotted purple bags, 4 dark fuchsia bags, 3 dull bronze bags.
shiny fuchsia bags contain 2 shiny gold bags.
plaid teal bags contain 4 light maroon bags.
faded beige bags contain 4 dark aqua bags, 4 mirrored black bags, 1 vibrant orange bag.
wavy lime bags contain 4 dull cyan bags, 1 striped aqua bag, 2 plaid brown bags, 5 vibrant teal bags.
wavy silver bags contain 3 drab lime bags.
posh lavender bags contain 1 dotted purple bag.
dark crimson bags contain 3 posh green bags, 3 dark green bags.
dull teal bags contain 5 plaid salmon bags.
clear brown bags contain 5 mirrored purple bags, 5 vibrant orange bags.
striped white bags contain 3 dull maroon bags.
clear violet bags contain 4 bright red bags, 1 dark orange bag, 3 dull maroon bags, 3 muted maroon bags.
faded magenta bags contain 1 shiny yellow bag.
dim beige bags contain 5 striped salmon bags.
dull white bags contain 1 shiny tan bag.
posh crimson bags contain 1 mirrored green bag, 4 dark orange bags.
light teal bags contain 5 bright tan bags, 5 light indigo bags.
wavy orange bags contain 2 pale maroon bags, 2 clear maroon bags.
light lime bags contain 3 dim silver bags, 1 dim purple bag, 1 striped cyan bag.
muted gray bags contain 2 light green bags, 4 dark aqua bags, 4 plaid coral bags, 2 mirrored lime bags.
bright fuchsia bags contain 1 striped crimson bag, 5 faded purple bags, 2 plaid violet bags, 2 vibrant magenta bags.
light chartreuse bags contain 4 bright bronze bags, 3 wavy teal bags, 5 muted tan bags, 4 light bronze bags.
plaid gold bags contain 5 wavy teal bags, 4 clear magenta bags.
dull silver bags contain 5 dim aqua bags, 3 muted silver bags, 3 mirrored blue bags, 4 clear orange bags.
shiny maroon bags contain 3 dark olive bags, 3 muted turquoise bags.
faded turquoise bags contain 1 light gold bag, 3 pale fuchsia bags, 4 shiny silver bags.
posh indigo bags contain 4 muted salmon bags, 2 pale green bags.
dotted violet bags contain 4 shiny lime bags, 4 muted violet bags, 1 muted yellow bag, 4 shiny red bags.
faded salmon bags contain 5 muted lime bags.
dotted white bags contain 5 dotted indigo bags, 3 wavy brown bags, 5 pale aqua bags.
dark brown bags contain 5 wavy maroon bags, 3 plaid beige bags, 5 drab white bags.
shiny white bags contain 1 dotted bronze bag, 5 dull black bags, 3 muted white bags, 4 wavy maroon bags.
bright chartreuse bags contain 1 striped green bag.
plaid indigo bags contain 4 dull bronze bags.
bright violet bags contain 1 shiny yellow bag.
pale maroon bags contain 3 striped fuchsia bags, 5 plaid silver bags, 4 shiny teal bags.
shiny plum bags contain 4 wavy plum bags, 5 faded tomato bags.
wavy tan bags contain 3 dim black bags, 4 posh black bags.
plaid lavender bags contain 4 dull tan bags, 2 vibrant beige bags.
faded aqua bags contain 1 dull lavender bag, 4 vibrant orange bags, 4 posh black bags.
faded lavender bags contain 1 shiny coral bag, 1 plaid black bag, 1 wavy bronze bag, 5 dark coral bags.
shiny indigo bags contain 4 dotted green bags.
dark bronze bags contain 5 faded crimson bags, 3 dim lavender bags, 2 wavy white bags.
muted olive bags contain 5 light yellow bags, 1 dull chartreuse bag, 4 dim lime bags.
wavy olive bags contain 3 dotted orange bags.
vibrant purple bags contain 3 faded maroon bags, 1 clear bronze bag, 5 striped black bags, 5 muted indigo bags.
striped coral bags contain 1 mirrored black bag.
dull violet bags contain 1 dotted purple bag.
dim blue bags contain 1 shiny indigo bag, 5 striped cyan bags.
drab aqua bags contain 5 clear chartreuse bags.
striped bronze bags contain 5 wavy lavender bags, 5 shiny silver bags, 2 posh crimson bags.
striped orange bags contain 1 muted salmon bag.
clear white bags contain 2 dark coral bags, 1 plaid silver bag, 2 drab gold bags, 4 dark red bags.
dotted tan bags contain 4 mirrored silver bags.
striped crimson bags contain 2 dim olive bags, 3 dotted purple bags.
muted bronze bags contain 5 dotted gray bags.
striped tomato bags contain 4 mirrored aqua bags.
drab tan bags contain 1 dotted white bag, 3 dotted coral bags, 5 muted olive bags.
light maroon bags contain 1 dim olive bag.
dark blue bags contain 1 mirrored maroon bag, 1 shiny salmon bag, 3 dull cyan bags.
vibrant maroon bags contain 5 dull fuchsia bags.
bright gray bags contain 1 wavy red bag.
posh brown bags contain 2 dim beige bags, 2 shiny teal bags.
striped blue bags contain 1 dotted chartreuse bag, 2 clear violet bags, 1 drab teal bag.
dim indigo bags contain 3 clear purple bags.
striped teal bags contain 2 dotted teal bags.
plaid orange bags contain 5 dim black bags, 2 wavy bronze bags, 4 drab bronze bags, 2 shiny salmon bags.
pale salmon bags contain 2 dotted plum bags.
vibrant aqua bags contain 2 wavy orange bags.
faded coral bags contain 5 dark fuchsia bags, 3 vibrant orange bags, 4 posh lavender bags, 5 dotted purple bags.
bright tomato bags contain 3 plaid plum bags, 5 faded maroon bags, 4 bright green bags.
wavy gray bags contain 5 pale silver bags, 2 clear cyan bags, 1 dim yellow bag, 1 clear aqua bag.
dark aqua bags contain 1 pale maroon bag, 1 dotted gray bag, 2 muted plum bags, 4 muted orange bags.
plaid maroon bags contain 4 muted plum bags, 1 plaid beige bag, 4 bright indigo bags, 5 vibrant orange bags.
light gray bags contain 1 faded crimson bag.
shiny silver bags contain 4 striped cyan bags, 4 mirrored fuchsia bags, 2 plaid salmon bags.
plaid blue bags contain 2 dim olive bags, 2 posh purple bags, 1 dotted bronze bag, 2 shiny fuchsia bags.
shiny olive bags contain 1 posh indigo bag.
dotted plum bags contain 4 shiny coral bags, 2 drab beige bags, 3 dim gray bags.
pale beige bags contain 4 drab orange bags.
muted white bags contain 1 faded orange bag, 2 mirrored red bags, 3 wavy fuchsia bags, 2 drab blue bags.
dark gold bags contain 1 mirrored beige bag, 3 plaid violet bags, 2 dotted bronze bags, 1 wavy bronze bag.
clear cyan bags contain 1 striped fuchsia bag, 4 dotted lime bags, 3 drab olive bags, 3 dull blue bags.
bright black bags contain 2 posh lavender bags, 3 wavy brown bags.
bright olive bags contain 4 dark chartreuse bags, 3 plaid salmon bags, 2 muted orange bags, 5 pale aqua bags.
light silver bags contain 3 plaid maroon bags.
drab indigo bags contain 1 muted cyan bag, 1 clear magenta bag, 1 dark brown bag.
dull gold bags contain 2 posh beige bags, 1 vibrant magenta bag.
muted purple bags contain 2 dark salmon bags, 4 faded brown bags, 5 faded black bags.
pale violet bags contain 2 dull bronze bags, 3 dull aqua bags.
dark green bags contain 3 mirrored white bags, 2 striped cyan bags, 4 muted chartreuse bags, 2 faded white bags.
dark indigo bags contain 4 dotted green bags, 4 dotted cyan bags, 5 bright bronze bags, 5 faded bronze bags.
posh plum bags contain 1 light crimson bag.
dark yellow bags contain 1 faded purple bag, 2 muted olive bags.
bright crimson bags contain 2 striped tan bags.
dim plum bags contain 2 bright silver bags, 1 shiny beige bag, 2 posh teal bags.
dull blue bags contain 1 faded purple bag.
drab violet bags contain 1 dim white bag, 4 vibrant lavender bags, 3 dull magenta bags.
mirrored yellow bags contain 3 wavy lavender bags.
clear plum bags contain 3 vibrant cyan bags, 4 plaid chartreuse bags, 5 light violet bags.
dim coral bags contain 3 mirrored red bags, 1 pale maroon bag, 3 dark chartreuse bags.
striped purple bags contain 1 mirrored tomato bag, 4 dotted green bags.
wavy magenta bags contain 4 mirrored bronze bags, 5 bright fuchsia bags, 3 mirrored violet bags, 3 drab aqua bags.
faded crimson bags contain 5 posh black bags.
dotted maroon bags contain 1 muted salmon bag, 5 striped salmon bags.
dark violet bags contain 1 plaid black bag, 3 dim gray bags, 3 bright lavender bags.
bright lavender bags contain 4 mirrored blue bags, 2 mirrored black bags, 3 wavy red bags.
light white bags contain 1 striped salmon bag, 3 plaid white bags, 5 clear lime bags, 5 dim aqua bags.
wavy lavender bags contain 2 dull tan bags.
vibrant violet bags contain 1 drab olive bag, 2 faded indigo bags, 2 posh black bags.
bright silver bags contain 5 posh black bags, 3 posh lavender bags, 4 clear lime bags, 2 dim aqua bags.
muted cyan bags contain 2 clear red bags, 2 plaid black bags.
dull coral bags contain 5 dotted tan bags.
dull purple bags contain 1 dotted lavender bag.
muted gold bags contain 4 dim aqua bags.
wavy maroon bags contain 4 light aqua bags, 5 bright black bags, 3 dull black bags.
posh violet bags contain 2 dark chartreuse bags, 3 striped fuchsia bags.
dull olive bags contain 1 dark chartreuse bag, 1 plaid tomato bag, 5 muted coral bags, 5 light gold bags.
shiny coral bags contain 5 dull violet bags, 3 bright tan bags, 3 muted orange bags, 3 shiny indigo bags.
dotted green bags contain 4 wavy bronze bags, 3 dull violet bags, 2 striped beige bags.
dull tan bags contain 2 light maroon bags, 5 posh tan bags, 4 pale tan bags.
mirrored gold bags contain 4 wavy lime bags.
faded lime bags contain 5 dotted salmon bags, 1 plaid brown bag, 5 posh tan bags.
plaid tan bags contain 5 drab plum bags, 2 dotted salmon bags.
shiny cyan bags contain 2 dark coral bags, 4 posh yellow bags, 5 dotted brown bags, 5 dull maroon bags.
posh aqua bags contain 2 light bronze bags, 4 light green bags.
clear crimson bags contain 1 faded crimson bag, 2 posh tan bags, 2 dotted orange bags.
drab black bags contain 2 dull tomato bags, 4 muted red bags, 4 dotted turquoise bags, 1 mirrored red bag.
vibrant blue bags contain 2 posh coral bags, 3 wavy teal bags.
light gold bags contain 5 posh gray bags, 5 shiny brown bags, 3 dark coral bags.
wavy teal bags contain 5 bright tan bags, 5 clear coral bags.
clear blue bags contain 1 striped green bag, 3 mirrored green bags.
dark tomato bags contain 4 wavy yellow bags, 4 striped magenta bags, 1 wavy bronze bag, 1 dotted salmon bag.
dull black bags contain 2 posh lavender bags, 5 pale aqua bags.
mirrored crimson bags contain 4 dim turquoise bags, 2 mirrored aqua bags, 1 drab tan bag.
dark chartreuse bags contain 1 dotted green bag.
shiny salmon bags contain 5 light yellow bags, 4 pale fuchsia bags, 5 muted olive bags.
light magenta bags contain 1 clear teal bag.
dim orange bags contain 3 dark plum bags.
striped black bags contain 5 shiny coral bags, 2 dull violet bags, 3 drab olive bags, 1 mirrored red bag.
dotted gold bags contain 3 pale indigo bags, 2 wavy salmon bags, 1 light plum bag.
shiny chartreuse bags contain 2 plaid green bags.
light cyan bags contain 3 posh chartreuse bags, 5 striped lime bags, 4 wavy red bags.
posh chartreuse bags contain 2 wavy violet bags.
plaid fuchsia bags contain 4 mirrored blue bags, 5 pale tan bags.
muted black bags contain 2 striped lime bags, 2 light olive bags, 2 plaid tan bags, 2 light lavender bags.
striped aqua bags contain 5 mirrored red bags.
shiny lime bags contain 2 faded white bags, 4 clear silver bags, 1 wavy fuchsia bag, 5 plaid lavender bags.
drab magenta bags contain 5 dim purple bags, 2 dim silver bags, 3 clear brown bags, 4 wavy turquoise bags.
mirrored silver bags contain 5 mirrored cyan bags, 5 dull silver bags, 5 drab violet bags.
striped cyan bags contain 5 bright indigo bags.
wavy violet bags contain 2 dim cyan bags, 2 plaid silver bags.
pale teal bags contain 1 light maroon bag, 1 clear lime bag, 4 dark turquoise bags.
wavy fuchsia bags contain 3 drab plum bags, 1 dotted white bag.
muted green bags contain 5 bright orange bags.
light yellow bags contain 4 shiny bronze bags, 4 wavy white bags, 3 drab turquoise bags.
plaid purple bags contain 5 dotted purple bags, 3 plaid magenta bags, 1 wavy magenta bag.
posh bronze bags contain 1 vibrant coral bag.
vibrant green bags contain 3 plaid orange bags, 1 posh fuchsia bag, 1 faded brown bag.
dim yellow bags contain 4 shiny gold bags, 5 mirrored magenta bags.
drab lavender bags contain 3 muted coral bags, 5 drab aqua bags.
dull chartreuse bags contain 1 vibrant white bag.
plaid bronze bags contain 4 posh indigo bags.
mirrored brown bags contain 2 wavy violet bags, 1 shiny crimson bag.
clear silver bags contain 5 dim green bags, 2 vibrant gray bags, 3 pale white bags.
drab salmon bags contain 5 shiny teal bags, 2 plaid teal bags, 4 striped magenta bags.
dotted tomato bags contain 4 shiny tan bags, 3 dotted bronze bags, 4 clear lime bags.
light tan bags contain 4 dotted silver bags, 1 mirrored violet bag, 3 dim lime bags.
shiny tan bags contain 4 dotted gray bags, 5 striped cyan bags, 2 dull violet bags, 5 pale maroon bags.
pale tomato bags contain 4 bright orange bags, 2 posh chartreuse bags.
faded silver bags contain 4 dark turquoise bags, 4 faded gray bags, 5 wavy bronze bags.
plaid gray bags contain 1 bright red bag.
pale olive bags contain 3 posh beige bags, 4 faded coral bags.
plaid yellow bags contain 5 dim blue bags, 1 drab plum bag, 1 dark coral bag, 2 faded purple bags.
dim green bags contain 1 muted orange bag.
wavy cyan bags contain 4 clear brown bags, 5 vibrant tan bags.
clear teal bags contain 4 dark chartreuse bags.
vibrant bronze bags contain 2 dim cyan bags, 4 shiny lime bags.
muted salmon bags contain 4 clear coral bags, 2 posh lavender bags, 2 pale aqua bags.
shiny gray bags contain 5 drab blue bags, 2 dull chartreuse bags, 5 wavy bronze bags, 2 dull salmon bags.
muted blue bags contain 4 faded black bags, 3 dim lavender bags, 5 light violet bags, 2 mirrored maroon bags.
dotted blue bags contain 4 light bronze bags.
dark teal bags contain 4 dim lavender bags, 4 shiny gray bags, 4 wavy salmon bags, 2 pale white bags.
light purple bags contain 1 clear salmon bag, 1 plaid brown bag.
light tomato bags contain 4 striped lavender bags, 1 muted bronze bag.
muted lime bags contain 4 mirrored olive bags, 1 dark aqua bag.
pale bronze bags contain 1 mirrored brown bag.
dotted black bags contain 4 vibrant magenta bags.
shiny brown bags contain 2 bright tan bags.
faded cyan bags contain 4 dotted lavender bags, 2 vibrant fuchsia bags, 3 light green bags.
drab cyan bags contain 5 shiny lime bags.
faded tan bags contain 5 shiny silver bags.
dim fuchsia bags contain 5 dim orange bags, 3 mirrored fuchsia bags.
drab fuchsia bags contain 4 plaid silver bags.
striped beige bags contain no other bags.
muted fuchsia bags contain 1 plaid silver bag, 5 shiny silver bags, 3 dark orange bags, 5 posh silver bags.
bright beige bags contain 2 light crimson bags, 4 posh violet bags, 5 dotted purple bags.
muted crimson bags contain 2 wavy salmon bags, 1 clear tomato bag, 1 pale bronze bag.
drab olive bags contain 1 dull violet bag, 5 dotted crimson bags, 1 bright gold bag, 4 muted orange bags.
dotted silver bags contain 2 dim indigo bags, 2 clear gray bags.
pale blue bags contain 3 dotted teal bags, 5 muted tomato bags, 1 clear tan bag.
dark fuchsia bags contain 2 dark plum bags, 5 posh tan bags.
dull plum bags contain 3 pale green bags.
faded indigo bags contain 4 plaid white bags.
posh teal bags contain 5 drab maroon bags, 4 striped purple bags, 4 clear tan bags.
light beige bags contain 1 dull orange bag.
pale turquoise bags contain 1 bright olive bag, 5 drab tomato bags, 5 faded turquoise bags, 1 mirrored brown bag.
shiny orange bags contain 4 plaid silver bags, 2 wavy brown bags, 5 clear teal bags.
pale lavender bags contain 4 light plum bags.
clear olive bags contain 2 wavy fuchsia bags, 4 dim black bags.
faded blue bags contain 5 pale white bags, 5 plaid tomato bags, 3 muted orange bags, 5 clear red bags.
dotted salmon bags contain 5 light gold bags, 1 muted green bag, 3 light black bags, 1 mirrored green bag.
vibrant yellow bags contain 1 clear purple bag, 5 dotted coral bags.
light blue bags contain 4 dark tan bags, 1 mirrored aqua bag, 5 clear lime bags, 5 drab coral bags.
bright blue bags contain 4 dim maroon bags.
mirrored orange bags contain 4 dotted plum bags, 2 dotted yellow bags, 4 dull cyan bags, 2 shiny tan bags.
dotted teal bags contain 3 light crimson bags, 1 mirrored black bag, 3 wavy olive bags.
wavy chartreuse bags contain 5 drab bronze bags, 1 muted salmon bag.
striped brown bags contain 1 vibrant violet bag, 3 dull plum bags, 1 faded brown bag.
plaid aqua bags contain 4 striped black bags, 5 muted white bags.
dark purple bags contain 3 mirrored orange bags, 5 wavy lavender bags.
mirrored tan bags contain 4 wavy indigo bags.
posh silver bags contain 3 striped magenta bags, 1 dark chartreuse bag, 5 dotted white bags, 4 wavy tan bags.
faded yellow bags contain 4 plaid magenta bags.
bright brown bags contain 4 drab tomato bags.
mirrored turquoise bags contain 5 plaid purple bags, 1 mirrored red bag, 4 striped green bags.
plaid green bags contain 2 drab chartreuse bags.
dotted olive bags contain 2 dull white bags.
shiny teal bags contain no other bags.
shiny red bags contain 5 striped cyan bags.
dotted orange bags contain 2 clear teal bags, 5 striped cyan bags.
shiny violet bags contain 5 posh violet bags.
bright indigo bags contain no other bags.
plaid white bags contain 2 bright indigo bags.
drab plum bags contain no other bags.
clear gray bags contain 1 mirrored gold bag, 1 dark beige bag, 2 drab silver bags, 4 striped green bags.
dim magenta bags contain 1 posh cyan bag.
dull cyan bags contain 5 pale fuchsia bags, 4 plaid fuchsia bags, 4 clear orange bags, 1 dark gold bag.
light brown bags contain 1 dull violet bag.
dotted fuchsia bags contain 3 striped crimson bags, 3 dim lime bags.
dark magenta bags contain 5 dark plum bags, 3 mirrored fuchsia bags.
dull tomato bags contain 2 shiny orange bags, 2 dark fuchsia bags.
dull crimson bags contain 2 muted turquoise bags.
mirrored salmon bags contain 4 mirrored bronze bags, 1 clear white bag, 3 dark red bags, 3 dim olive bags.
shiny aqua bags contain 3 shiny green bags, 1 light lavender bag, 3 drab salmon bags, 1 dark tan bag.
bright plum bags contain 4 dull lavender bags, 4 muted maroon bags, 2 bright coral bags, 4 dull maroon bags.
dark red bags contain 1 bright olive bag.
pale crimson bags contain 3 dotted green bags, 2 plaid tomato bags.
dim bronze bags contain 4 plaid cyan bags.
vibrant indigo bags contain 1 dark blue bag, 5 dotted orange bags.
mirrored lavender bags contain 4 dark cyan bags, 1 shiny green bag, 1 mirrored gold bag, 1 shiny silver bag.
bright magenta bags contain 2 faded indigo bags, 5 pale aqua bags, 4 dark magenta bags.
drab orange bags contain 3 dull turquoise bags, 1 light magenta bag.
vibrant salmon bags contain 3 striped blue bags, 3 vibrant teal bags.
drab beige bags contain 1 drab plum bag, 2 wavy violet bags, 3 mirrored brown bags.
muted beige bags contain 2 wavy tan bags, 5 wavy red bags.
bright aqua bags contain 1 dark fuchsia bag, 5 dull black bags, 2 plaid red bags, 2 bright blue bags.
shiny tomato bags contain 4 faded brown bags.
dim lavender bags contain 2 dotted purple bags.
posh fuchsia bags contain 5 plaid crimson bags, 3 dark orange bags, 1 vibrant red bag.
muted brown bags contain 5 posh cyan bags, 4 wavy tan bags.
light crimson bags contain 1 shiny red bag.
wavy coral bags contain 5 muted magenta bags, 1 dull silver bag, 4 faded olive bags.
mirrored bronze bags contain 1 bright lavender bag, 5 muted indigo bags, 1 wavy olive bag.
wavy salmon bags contain 4 dotted bronze bags, 3 drab plum bags.
vibrant brown bags contain 1 posh coral bag, 2 posh green bags, 3 faded olive bags.
dim cyan bags contain no other bags.
dull lavender bags contain 5 striped cyan bags, 5 dim cyan bags.
pale orange bags contain 3 vibrant tan bags.
drab chartreuse bags contain 4 wavy teal bags, 3 plaid black bags, 1 dim blue bag.
drab gray bags contain 1 pale chartreuse bag.
dim lime bags contain 3 clear teal bags, 4 posh chartreuse bags, 3 bright black bags, 5 muted red bags.
plaid cyan bags contain 3 wavy purple bags.
dotted lime bags contain 5 bright olive bags, 3 vibrant violet bags, 4 bright tomato bags, 3 dark magenta bags.
dark lavender bags contain 5 light silver bags, 3 striped brown bags.
dotted coral bags contain 2 dotted green bags, 2 wavy brown bags.
bright orange bags contain 2 dull black bags, 5 posh purple bags, 2 muted indigo bags, 5 shiny gold bags.
wavy white bags contain 3 plaid salmon bags, 1 muted plum bag, 3 plaid indigo bags, 3 dull aqua bags.
dark white bags contain 5 mirrored teal bags, 3 dark lime bags.
vibrant magenta bags contain 2 mirrored fuchsia bags, 1 clear lime bag.
light plum bags contain 4 dull aqua bags.
pale indigo bags contain 1 dotted coral bag, 5 drab beige bags, 3 dim green bags.
dull yellow bags contain 3 dotted silver bags.
dim white bags contain 3 clear chartreuse bags, 1 clear tomato bag.
bright maroon bags contain 2 dark bronze bags.
dotted crimson bags contain 2 plaid silver bags, 5 drab plum bags.
dull turquoise bags contain 3 faded coral bags.
mirrored maroon bags contain 5 shiny fuchsia bags.
posh beige bags contain 4 plaid aqua bags, 3 muted red bags.
shiny lavender bags contain 5 striped brown bags, 4 bright red bags.
drab purple bags contain 1 posh plum bag, 3 pale salmon bags, 5 striped coral bags, 1 muted bronze bag.
posh turquoise bags contain 3 drab tan bags.
faded purple bags contain 4 striped fuchsia bags, 3 mirrored fuchsia bags, 2 dotted gray bags, 4 muted coral bags.
faded bronze bags contain 4 striped bronze bags.
mirrored lime bags contain 1 muted lavender bag.
posh gold bags contain 1 mirrored purple bag.
posh maroon bags contain 1 striped beige bag, 1 wavy red bag, 1 wavy tan bag.
clear beige bags contain 5 posh turquoise bags, 4 drab tan bags, 2 striped olive bags, 3 plaid olive bags.
dim purple bags contain 1 striped lime bag.
vibrant olive bags contain 2 muted yellow bags, 2 plaid aqua bags, 3 dark silver bags, 2 pale green bags.
bright tan bags contain 5 faded purple bags, 3 dotted gray bags.
vibrant tomato bags contain 2 pale salmon bags, 2 drab teal bags.
plaid red bags contain 4 vibrant white bags, 1 posh tan bag.
mirrored magenta bags contain 3 wavy blue bags, 1 muted tomato bag, 1 striped salmon bag, 1 shiny red bag.
drab tomato bags contain 2 wavy violet bags, 5 muted aqua bags.
shiny magenta bags contain 4 mirrored brown bags.
dull red bags contain 4 plaid green bags.
dim aqua bags contain 3 mirrored blue bags, 2 bright indigo bags, 4 shiny coral bags.
faded gray bags contain 4 light lavender bags, 5 clear lime bags, 5 vibrant violet bags.
dotted lavender bags contain 4 faded crimson bags.
dull salmon bags contain 2 light plum bags.
posh yellow bags contain 2 light yellow bags, 2 dim cyan bags, 1 clear crimson bag, 4 posh lavender bags.
posh tomato bags contain 4 shiny lime bags, 4 bright turquoise bags, 5 shiny tan bags, 4 bright yellow bags.
plaid lime bags contain 3 shiny salmon bags, 3 plaid crimson bags.
dim silver bags contain 2 plaid black bags, 3 dull bronze bags, 3 shiny red bags.
dotted magenta bags contain 3 dotted coral bags, 3 striped blue bags, 3 vibrant tan bags, 3 plaid brown bags.
muted teal bags contain 3 pale maroon bags.
vibrant silver bags contain 3 drab lime bags, 1 light aqua bag.
clear lime bags contain 5 dark plum bags, 3 dotted gray bags.
dull aqua bags contain 3 posh black bags.
dark plum bags contain no other bags.
drab yellow bags contain 4 muted beige bags, 3 clear brown bags, 5 light crimson bags, 5 wavy lavender bags.
mirrored fuchsia bags contain no other bags.
posh green bags contain 5 shiny brown bags.
striped violet bags contain 1 shiny lime bag, 4 pale magenta bags.
bright turquoise bags contain 1 mirrored lime bag, 1 clear gold bag, 1 muted plum bag.
dotted beige bags contain 5 plaid aqua bags, 5 muted tomato bags, 5 striped orange bags.
pale red bags contain 3 striped white bags, 2 drab olive bags, 2 drab black bags, 4 pale chartreuse bags.
plaid coral bags contain 1 dark beige bag, 2 wavy beige bags, 5 vibrant crimson bags.
muted indigo bags contain 1 plaid brown bag, 5 striped crimson bags, 5 dotted gray bags, 2 clear maroon bags.
drab crimson bags contain 1 dim olive bag, 4 drab maroon bags, 3 shiny indigo bags.
dotted turquoise bags contain 1 light bronze bag.
vibrant lime bags contain 2 dim lime bags, 5 posh green bags.
plaid olive bags contain 4 clear black bags.
pale coral bags contain 3 faded coral bags, 1 posh black bag, 5 faded purple bags, 4 plaid white bags.
pale cyan bags contain 1 light crimson bag, 1 mirrored blue bag, 4 faded aqua bags.
plaid salmon bags contain no other bags.
dim teal bags contain 1 dull white bag.
bright green bags contain 3 posh beige bags.
striped red bags contain 2 dotted purple bags.
plaid silver bags contain no other bags.
pale fuchsia bags contain 4 mirrored black bags, 5 faded purple bags, 4 plaid violet bags, 3 muted maroon bags.
pale lime bags contain 2 mirrored bronze bags, 3 clear magenta bags, 4 clear silver bags, 5 plaid indigo bags.
wavy brown bags contain 3 shiny coral bags, 2 plaid silver bags.
dark turquoise bags contain 5 drab teal bags, 5 drab gray bags.
drab coral bags contain 4 shiny coral bags, 1 dull turquoise bag, 1 dotted green bag, 1 light maroon bag.
posh blue bags contain 4 light blue bags, 2 bright black bags.
dull lime bags contain 3 faded olive bags, 1 plaid teal bag, 1 shiny lime bag.
mirrored olive bags contain 1 mirrored beige bag, 3 faded purple bags.
dim salmon bags contain 5 pale yellow bags, 5 plaid teal bags, 1 posh gray bag.
clear chartreuse bags contain 2 mirrored fuchsia bags, 5 vibrant magenta bags, 1 dark orange bag.
vibrant lavender bags contain 5 bright fuchsia bags.
posh olive bags contain 3 dark olive bags, 2 dotted black bags, 2 clear white bags, 5 dim orange bags.
pale tan bags contain 5 dull violet bags, 5 vibrant white bags, 2 bright indigo bags, 4 vibrant orange bags.
dim turquoise bags contain 3 faded purple bags.
faded fuchsia bags contain 2 clear teal bags.
posh gray bags contain 4 dotted purple bags, 4 dotted green bags, 5 shiny yellow bags, 1 shiny tan bag.
posh black bags contain 4 plaid silver bags, 4 vibrant magenta bags, 2 plaid white bags, 4 striped beige bags.
vibrant gray bags contain 3 light magenta bags.
dotted purple bags contain 1 plaid salmon bag, 2 bright indigo bags.
mirrored red bags contain 3 bright tan bags.
mirrored violet bags contain 5 dark cyan bags.
faded plum bags contain 4 light violet bags, 3 posh brown bags, 5 dull silver bags, 5 wavy blue bags.
striped yellow bags contain 3 clear bronze bags.
striped lime bags contain 2 dark aqua bags, 1 clear lime bag, 2 drab chartreuse bags, 3 clear teal bags.
clear green bags contain 4 drab magenta bags, 3 dim coral bags.
bright coral bags contain 4 plaid tomato bags.
light black bags contain 4 faded coral bags.
plaid plum bags contain 1 posh violet bag.
pale gold bags contain 3 clear salmon bags.
dim tomato bags contain 3 dim indigo bags, 3 dotted turquoise bags.
bright teal bags contain 4 pale cyan bags.
striped gold bags contain 1 faded turquoise bag, 1 posh indigo bag, 1 bright black bag.
pale chartreuse bags contain 1 vibrant magenta bag, 5 dull fuchsia bags, 2 bright gold bags, 4 mirrored blue bags.
posh tan bags contain 5 light violet bags, 4 drab plum bags.
pale white bags contain 3 dim blue bags, 4 pale aqua bags, 2 vibrant plum bags.
dark cyan bags contain 2 shiny teal bags, 3 faded purple bags, 4 shiny indigo bags, 1 striped cyan bag.
muted turquoise bags contain 4 wavy white bags, 2 dim black bags.
dull orange bags contain 5 bright teal bags, 3 striped teal bags.
light aqua bags contain 1 dotted green bag, 4 faded lavender bags, 3 striped green bags.
clear tan bags contain 3 dim white bags.
dull maroon bags contain 3 shiny gold bags, 2 light gold bags, 1 dotted orange bag, 1 clear lime bag.
muted tan bags contain 5 dotted bronze bags, 2 shiny crimson bags.
dotted indigo bags contain 2 drab beige bags, 5 dotted purple bags, 5 muted maroon bags.
striped tan bags contain 4 muted chartreuse bags.
mirrored purple bags contain 3 muted indigo bags.
faded tomato bags contain 4 dull gold bags, 1 pale tan bag.
mirrored beige bags contain 1 dark chartreuse bag, 3 dim olive bags.
pale brown bags contain 4 dull blue bags, 2 plaid tomato bags.
light green bags contain 3 wavy purple bags, 2 faded purple bags, 4 drab plum bags, 3 shiny yellow bags.
dark coral bags contain 2 vibrant plum bags, 4 plaid salmon bags.
dull bronze bags contain 1 dim cyan bag, 2 posh lavender bags, 3 mirrored beige bags.
faded orange bags contain 2 faded crimson bags.
mirrored white bags contain 4 wavy crimson bags, 4 pale coral bags, 3 posh silver bags.
dark maroon bags contain 2 posh teal bags, 4 shiny plum bags.
drab red bags contain 5 clear red bags, 2 posh magenta bags, 2 vibrant olive bags, 5 mirrored white bags.
shiny green bags contain 2 mirrored beige bags, 2 wavy tomato bags, 5 striped lavender bags, 1 dim silver bag.
wavy indigo bags contain 4 dotted white bags.
dim violet bags contain 5 faded white bags, 3 clear salmon bags.
striped chartreuse bags contain 3 dim brown bags, 1 mirrored gray bag, 3 clear coral bags, 2 dull aqua bags.
striped gray bags contain 2 vibrant olive bags, 4 posh beige bags, 3 dull beige bags.
plaid tomato bags contain 3 clear lime bags.
dark black bags contain 4 pale crimson bags.
drab bronze bags contain 5 clear turquoise bags, 4 wavy olive bags, 3 clear purple bags, 4 faded maroon bags.
dull green bags contain 5 pale fuchsia bags, 3 shiny coral bags, 3 wavy magenta bags.
faded chartreuse bags contain 2 plaid beige bags, 3 drab orange bags.
light red bags contain 5 striped lavender bags.
muted lavender bags contain 2 dark salmon bags, 1 faded indigo bag, 4 clear salmon bags.
bright white bags contain 1 drab white bag, 3 vibrant purple bags.
plaid magenta bags contain 5 posh coral bags, 4 plaid indigo bags, 1 plaid violet bag, 1 bright beige bag.
faded olive bags contain 2 wavy aqua bags.
posh cyan bags contain 5 shiny coral bags, 5 bright indigo bags, 2 plaid silver bags.
clear red bags contain 5 dull bronze bags, 4 shiny coral bags, 2 dotted orange bags, 1 vibrant magenta bag.
bright bronze bags contain 4 dull blue bags.
striped olive bags contain 3 dim lime bags, 3 pale tan bags, 2 wavy gold bags, 5 mirrored brown bags.
mirrored green bags contain 3 dull maroon bags, 5 faded tan bags, 5 posh tan bags.
muted aqua bags contain 1 bright coral bag.
dim gold bags contain 2 dotted salmon bags.
pale yellow bags contain 2 wavy coral bags.
bright yellow bags contain 3 striped lavender bags, 4 vibrant white bags, 3 vibrant plum bags, 1 clear purple bag.
striped magenta bags contain 1 plaid brown bag, 1 dull indigo bag.
striped maroon bags contain 2 pale chartreuse bags, 4 dim black bags, 2 muted purple bags.
bright cyan bags contain 4 muted turquoise bags.
posh magenta bags contain 3 light gray bags, 2 mirrored blue bags, 3 mirrored silver bags, 2 dotted purple bags.
striped lavender bags contain 4 bright chartreuse bags, 3 muted plum bags.
drab lime bags contain 4 posh beige bags, 2 dim olive bags, 4 wavy fuchsia bags, 2 shiny aqua bags.
mirrored indigo bags contain 4 dark olive bags, 3 mirrored violet bags, 4 mirrored lime bags.
plaid crimson bags contain 5 striped indigo bags, 2 dark plum bags, 5 dotted green bags, 3 clear salmon bags.
bright red bags contain 1 pale maroon bag.
dotted yellow bags contain 2 bright chartreuse bags, 1 posh black bag, 4 bright indigo bags, 1 drab blue bag.
drab green bags contain 5 light olive bags, 4 vibrant coral bags, 3 light magenta bags.
shiny crimson bags contain 3 bright olive bags, 1 dotted purple bag, 2 posh cyan bags, 3 dim gray bags.
pale black bags contain 3 dull tan bags, 5 plaid beige bags, 2 dull violet bags.
clear purple bags contain 5 muted orange bags, 3 dim gray bags, 5 dotted orange bags.
pale gray bags contain 5 plaid olive bags, 3 drab coral bags, 1 bright cyan bag.
light lavender bags contain 5 vibrant white bags, 1 drab plum bag, 5 faded indigo bags, 4 shiny gold bags.
dull beige bags contain 2 dull black bags.
clear magenta bags contain 5 posh maroon bags.
muted orange bags contain 2 dull violet bags, 4 striped beige bags, 1 plaid salmon bag, 3 mirrored fuchsia bags.
wavy gold bags contain 2 drab turquoise bags.
pale purple bags contain 1 vibrant crimson bag.
dark silver bags contain 1 dotted orange bag, 3 plaid beige bags, 5 faded white bags.
clear lavender bags contain 2 pale violet bags, 5 clear yellow bags, 5 striped salmon bags.
striped salmon bags contain 4 dim crimson bags.
shiny gold bags contain 3 vibrant orange bags, 3 plaid silver bags.
light coral bags contain 4 faded tomato bags, 1 dim lime bag, 1 dotted coral bag, 4 dim chartreuse bags.
mirrored coral bags contain 2 posh purple bags, 1 dull fuchsia bag, 4 faded maroon bags, 2 plaid indigo bags.
clear aqua bags contain 5 dim gray bags, 1 dull cyan bag, 2 dim black bags.
clear salmon bags contain 2 posh gray bags, 5 pale maroon bags.
muted plum bags contain 2 shiny yellow bags, 1 plaid salmon bag, 3 shiny indigo bags, 4 clear lime bags.
bright gold bags contain 1 dull blue bag, 2 bright indigo bags, 4 muted red bags, 4 clear maroon bags.
drab brown bags contain 2 dark chartreuse bags.
plaid turquoise bags contain 4 striped red bags, 2 faded magenta bags, 1 light magenta bag.
vibrant turquoise bags contain 2 striped yellow bags, 3 plaid fuchsia bags, 2 shiny coral bags, 1 clear yellow bag.
dull indigo bags contain 1 drab plum bag, 4 dark fuchsia bags, 3 dotted gray bags.
wavy aqua bags contain 4 dull tan bags, 1 shiny tan bag, 1 striped beige bag.
mirrored plum bags contain 4 dark fuchsia bags, 5 muted white bags.
shiny black bags contain 2 light aqua bags.
mirrored blue bags contain 2 dim green bags, 4 vibrant white bags, 1 faded orange bag.
plaid chartreuse bags contain 1 clear tomato bag, 4 shiny orange bags.
dotted red bags contain 3 plaid beige bags.
wavy red bags contain 1 striped fuchsia bag, 2 plaid brown bags, 1 shiny fuchsia bag, 2 dotted crimson bags.
muted violet bags contain 4 posh black bags, 5 shiny turquoise bags, 5 shiny yellow bags.
dotted gray bags contain 5 dull violet bags, 5 dark plum bags, 2 bright indigo bags, 2 wavy bronze bags.
faded maroon bags contain 4 pale aqua bags, 2 clear tomato bags.
dark gray bags contain 1 light orange bag, 1 posh brown bag.
dull gray bags contain 5 faded violet bags, 1 dotted turquoise bag.
muted maroon bags contain 1 shiny tan bag, 5 light maroon bags, 2 dotted green bags.
clear turquoise bags contain 2 clear salmon bags, 1 dark cyan bag, 1 striped green bag.
wavy bronze bags contain no other bags.
muted magenta bags contain 5 striped coral bags, 4 dim lime bags, 1 posh red bag, 1 plaid blue bag.
mirrored cyan bags contain 2 posh violet bags, 5 bright olive bags, 3 dotted green bags, 5 drab gold bags.
wavy blue bags contain 1 dark coral bag, 1 dim olive bag, 4 dim black bags, 5 drab chartreuse bags.
vibrant cyan bags contain 3 posh maroon bags, 5 dim beige bags, 3 dark blue bags.
dim chartreuse bags contain 4 dull tan bags, 5 drab magenta bags.
dark salmon bags contain 5 bright indigo bags, 4 shiny crimson bags, 3 dotted purple bags, 2 dark coral bags.
plaid brown bags contain 2 dim olive bags.
wavy yellow bags contain 2 drab plum bags, 3 muted orange bags, 5 pale coral bags.
vibrant tan bags contain 5 bright bronze bags, 2 shiny lime bags.
shiny beige bags contain 2 dull green bags.
drab gold bags contain 5 dotted crimson bags.
faded teal bags contain 5 dull tan bags, 3 dotted bronze bags, 4 bright indigo bags, 5 posh red bags.
mirrored gray bags contain 4 muted bronze bags.
light fuchsia bags contain 5 pale beige bags, 1 vibrant lavender bag.
clear indigo bags contain 1 dotted fuchsia bag, 3 dull aqua bags, 1 dark chartreuse bag.
bright purple bags contain 4 wavy orange bags, 4 mirrored violet bags, 4 light turquoise bags.
pale green bags contain 1 light aqua bag, 3 bright yellow bags.
dim olive bags contain 5 dotted green bags, 5 dull violet bags.
light bronze bags contain 1 dark aqua bag.
vibrant chartreuse bags contain 3 dark salmon bags.
pale aqua bags contain 5 dotted purple bags, 4 dark plum bags.
faded black bags contain 5 mirrored fuchsia bags, 5 striped green bags.
shiny blue bags contain 1 faded gray bag, 5 dotted indigo bags, 4 faded magenta bags.
muted red bags contain 1 light violet bag, 4 dim cyan bags.
shiny yellow bags contain 2 light maroon bags, 3 wavy violet bags.
clear bronze bags contain 1 bright indigo bag, 1 posh lavender bag, 2 dull salmon bags, 4 muted bronze bags.
vibrant crimson bags contain 5 drab blue bags.
shiny purple bags contain 1 shiny teal bag.
"""
