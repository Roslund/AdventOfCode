//
//  input.swift
//  AdventOfCode
//
//  Created by Anton Roslund on 2024-12-20.
//
let sample = """
MMMSXXMASM
MSAMXMSMSA
AMXSXMAAMM
MSAMASMSMX
XMASAMXAMM
XXAMMXXAMA
SMSMSASXSS
SAXAMASAAA
MAMMMXMMMM
MXMXAXMASX
"""

let input = """
SAMXMAXXAMAMSSSSSMXMAXXMSMMMMASAMXSAMXAMMSMXSAMXSSSSMMMAMXMMMMMSMSMSMMSXXASMXSMSMAAXSSXMXMAMASASAAXXSAMXXMASXMXAMXSSMMSAMXXMXXMAMXMSSSMXXSAS
XMASMSSSXSAXXAXAAXXMAMSASAAMSAXASAMXMMSMAXMAMXMMMMMAASMSSXMASMAMMAAMMASXMMXMASAMMAMXAMXMAXSSXSAMXAASAMXXXMASMASMXMXMAAMSXMMSMMMSAMXAAAXXMXMM
AMXMAAAAASAMMMMSMMMMASMASXMXMASXMAMAMSAMASMSSMMAAXSMMMAXMASASMASXMXMMASAMSAMMMAMSASMXSAXAMAAAMAMASMSXSMSSMAXAMAAAMASMMSAMAAAAAAMMSMMXMMAMASA
SXAMMMMMXMAXXXAXMAMAMXMXMMXSAMMXMSSSXSMMXSAAAMSSMMXXXMMMSAMMSMMXAASMMASMMSASXMMMSASAASMSSSMMSMAMMXASMSMASMASXXSSXSASAMXMASXXXMMSASXSAMAXMAMX
ASXSXXXSAXSAMMSSSMSASMSAASMSASAXSAAXAXXMAMMMSAAXMASMXMXAMASAMAXSSMAXMASAMMAMXXMAXAMMMSMAAAXAAMMMXMAMASMAXMASXAXAXMASXMAXMXMSSMXMASASXSMSXSXS
MMMMMMMAXMXAXAAAAAXAXASXSMAXAMMMMMSMXMAMXSXXXMMSMSSXAMMSSMMAMAMXMAMXMMMAMSSSMMMMSMSXMXMMSMMXXMMXXMMMAXMMSMASMSMMMSXMXMAMMAMAAAXMXMMMXAAMAXAM
XAAAAASMXMSMMMSSMMMSMMMMMMSMSMMAAXAAASXMAMXSMMMSMAMXXXAMAMSXMSAMXSXMMSSMMAMAASAXSXSASASAMASAMSSSMASMSSXMAMAMAAAXAMASAMMXSAMXSMXXSAAASMSMAMAM
SSSSSMSXAMAXAAXMASAMAXMASXMMMAXSAXMMMXAMASASAMXXMASXSSXSAMAAMXASAMAMAAMASMSSMMSMXASMMAMASAMMSAAMSAMXAMXAMAXMSMXMASXMMASASAXXAMAXSXMXSAAMASAM
MAMAMXSMXSMSMMXMXMAXAMMXMAXASMMASXMAMSASASASMMMSMMSAMXASXSMSSSXMASAMSSSXMXXAAAXSMMMMMSMAMAMXMMSMMMSSMSXSXMAMAAXSAMMXXMMASAMSASMMMXMXMXMMAMMM
MMMSMASXXXMAMMMSSXSMMMSSSMMMSAMAAXMAXAAMMMMMMAAAAXMMMMXMASXXAMXAXMMMXXXMMXMSMMSAMXMXAXMMSASAMXAMXAAAAXAMXXXSXSXMASASMXMAMAMSAXAAAASASMSMXSMS
MXAXMASXSMSSXSAAAAMAMAAXXXAASMMMSMMSSMXMMAMASMMSMMAXMMMMMMXSASXMASXSMMMASAMXAMXASMMMASMMSXSXMSXSMMSSMMAMASASAMMSAMXASAMXSSMMXSMMMMSASAAMASAA
SMSSMXSXMASAAMMMXMSAMMXSAXMXSXMAMAAAAXSASASMSAMAAXXMMAMSSXASXMAMAAMAAMSASXXSAMXXSAASAMXASAMXXMAXMAMXMAXSASMMAMAMASAMMSMXMXAMXSXXAXMAMMMSAMMM
XAAMMMMAMMMMMMXXMXMAMXMAMMXAMASAMMMXXMXASASASXMMMSAMMXSAXMMMMSXMSSMSMMMMMMMMMMMMSMMMMMMMMMMXAXMMMXMMXSXMAXXMAMMSAMAXAAMAMSAMAXSXSXMXMAXMAMXX
MMMSAMSAMMAXMASMAXSSMMSMSSMASAMASXSSSSMXMAMAMMSAMAAMSMMMMXAAAXXAXMAMASMMMMXAXXMAMAMAAAAXXXXSMMXAXXMMXMASAMSSXSXMAMXMMMSAMSAMXSSXMASAMSMSSMMS
MAAMMXSMMSXXMAMXMXAASAMXAAXAMASAMMXAAMMAMXMAMAMAMMAMAAMXASMSSXMXSXMXAAAAASMMSSMASASXSSSSMMMXSAMSMSAXSMASAAXAMSASMSSSMXSXMXMXMAXXXXMAMMAAXAMX
SXSSXMXAXSMSSSMSMXSAMMSMSSMXSAMASXMMMMSASMSXMMXSMMAMSSMMXSXAMXSAMAXXXMMSMSAXAASXSXMAAAXAAXAMMXXAASMXAMXSMXXMAMAAAMAAMMMMSMMXSMMSAMXXSMMMSXMX
XAXMXSMMMXAAAAAAAMMSSXMMAMXAMAMAMXAXMASXSASMXSAMASXMMAMXAXMXMASASXMMMXXMAXAMXXSXSXSMASMMSMMSASMMMMXSSSMXXMMXSSSMMMSMMAAAAAAAAAAMAXXAAMAAAMXM
MSMMAAAMAMMMSMMMSXAAMASMMSMMSSMXSSMMSAXAMMMAAMXSAMMASAMMSSSSMXSXMXSAMASMSMSXMASAXMAMXXAXAAMMASMXSXMAAAMSAXMAMXAXMAAASXSSSSMASMMSSMMMMSMSMAMA
MXAMXSSXSAAAXXXXXMMMSAMAXSAXAMXMMAMAMSSMMXMMMSAMXMXASAXSAAAXMXMAMMXASASAAMAASMMAMMXXMXMMMSMMMMMXMASMSMMSAAMMSMMMMSSXMAAMAMMMXMXXXMAAXAAMXSAX
XSXMXXXXMMMSSMSXXMXAMXXSMMSMASXSSXMMSXXMAAXAXMXSSSMMSAMAMXMASMMAMMMXMMSMMMSXMAMXMAMMSSMAAAAMSAMXXMXXAAAMXMMMMAXAXXMXMMMMSMAXMXMMMSSMSXSAXASX
XXSMMMMXMASXMMSAASMMSSMAMSXXMMMAMAMXSXMMSMSASMMAAAXAMXMMXAMSMASASMXSAMXXXXAXSMMXXAAAAAMMSSSMMXMMXSXMMMMSMSXAMMMXXXMXSAAAAMXMMAMAAAAMAAMASAMM
XMAXAAAMAMXAMAMMMMAMAAXAMAAMSASASXMASAXAAXXAAXMXSSMSMSAXSXXAMXXAMAASAMAMSMSXSXSXSMSMSSMXMXMXSMSXAMMSAMXAAXSMMSMMMSMAXXMSSXSASXSMSSSMMSMAXXMA
AXAXSXXXMAXMMAXAASAMSSMSSMSMSASASAMXSAMSSSXSMXMMAMAXAXAMAXSXMAMSMMMSXMASAAXASASMSAAAAXXASAMXMAAMXXAAAXSMSMSMAAAAAXMAMMXXMASAAAMAAAXAXXMMXMAS
SMMXMASXSMSASMMSXSXXXXXXAAMAMAMASXXAMXMMAXAAMASAMMMMSMMMAXSMSMAAAAAXXMMMMSMAMAMAMSMMMSMMMXSAMMMSAMSSMMMAMAXSSSSSSSXAMMASMMMSMXMXMSSSMSASXAAM
MAXASXMAAASMMXAXXMMSMSXSMMMAMAMXMXMASMSMMMSMSASXXSAAXASMXMMAAXMSSMSSMSSXMMMXMMMSMMXMAXMXSASMMSXMXXAAMAMXMMMXMXMAAMMMXAASAMAXMSSXAAAAXSAMSSMS
SXMASAMMMMSAMMXMASAAASXSAMMASMSXAASXMASAMXXAMASMXMMXXAMXMAMXMSAAXXAAAAMASMMXSXAAXMAMSMMAMASAASMSMASMMMSAAXMASAXMMMSASMMMAMASMAAMMMSMMMAMAMXX
AXMXXXMXXXSAMMXSAMSXXSASMMSASMMMSMSASXMAMXMAMXMXSSMSSXMAMMSAAMMAMXSMMMSMMAXAMMSSSSMMXAMXSASMXSAXMXMXXASXSASAXXMMXXSAAXASAMASMMSMSAMXXXAMASAM
SSMSMXMXMASAMMMMMMXSAMXMXAMAXAAAAXSAMMSSMMMAMAAMAAAAMMSXSAMMXMMMSAAASAAASAMASXMAXXMASMMAMASMAMXMMAMMMXSSXXMASMSMSAMXMSMSAMASMXAMMASXSXMSAMXS
XAAAMAXAAAMAMMAMXAXMXMASMSSMSMMMMXMAMMAAASXSSSMMSSMMSASXMASMXSAASXSMMXMXMXSAMXAMXSAAXMASMAMMXSSXMAMXAMMMSXMMMAAAMSMXMAXSAMASXMAXXAMMXAAMMSMA
XMMASMSMSMSMMSMSMXSAMXAXAAAXSASAMMXAMMXSXSAAXAXAMXAAMMSAMAMMASMMSAMXMSSMMMMXMXSXAMMSXSAMMSMSMXMASMSMXAAAAXSAMMMMMXMAXAMSXMASMMMSMAMAXSMAXAXM
SXXXXAAMAMAAMAAMXMAMMMMSAMXMMAMAXSMSSSXXMMMMSSMMSMMMSMXAMSAMMMSMMAMASASAASASXAXMASAXXMASXXAXXXMMXAAXXSMMXMMAMXAASMSMSSXMXMAXAMAAMXMSXMASMMSX
AAASMSSSMSXSSMXMAMXSXSAAAXXXMAMSMXAMAMXXXAAAXAASXMAMXMMAMXAXMASXSAMXMASXMMASAXXXXMMSAMAMAMMMSAMAMSAMXAMMMSSSMSSXSAXMAMAMMSMSSMSMSSXMASAMAMAM
MXMAAXAAAAAAXASMXSAAAMMSMMSMMXXXAMSMAMASMMMXSSMMASASAXXSMSMMMASXSXSAMXMMSMSMMMSSXMASXMASXMAAXMXSXMAMASXMXAAAAXMMMXMMASAMXAAXAAXAMXMSXMASXMAS
SMMMSMSMMMXMMXSAAXMMAMAAAXAAAMAMXMXAXMASAAXAMAXMXMMMXSAAMMMSSMSASAMXSXAAXXMAXAXXSMASXSAMXSXSXXAMXMAMAMAMMMSMMMXMMAXSAMASMMAMMAMSMAASAMXMAMAM
SAAXAAAAAXMXMAMMMMMXXMSMSXSMMMSMASXAMMXSXMMASAMMSSMXAMXMMAAAAAMAMXMASAMMSSSXMMSMXMAXAMSMXMAMMMXXAXMMXXAMAMAMXXAMSSXMXSAMAXSAMSAAMXMSAMASXMMS
SXMSSMSXSXAAMXXMXSMAXXAAXMMXSAASASXSAXXMASMXMMSMAAXMXSSMSMSSMMMXMMMXSAMXXMASMSMASXSMXMAXAMXMXAXMMMMXMMMXMXAXSXMXAMAAXMMMSMXAMXSMMSAMXMAMMSAA
SAXAMXMAMXXXSMMSAAMSSMMSMAXAMAXMXXAAXMSAMXMXSAAMSMMSMXMASAAXAAXAXXXMSAMXSMAMXAASAAMMXMAXSSSMMMSAMASASASASXMMSAMMSSMMMSAAMMSAMAMMAXAMMMXSAAMM
SSMASAMAMMMXXMAMSSMAAAXXAMMXMXXMSMSMSMAMAMXAMXMMAAXAMXMXMASXSMSMMAXAMSMXSXMASMMMMXMAXMSSXAASAASAMXSASASASXMAMXMAMXAAAMMSSMMXMASMMSAMXXMAXMXX
SASAMMSAAMSASMXMAXMXSSMMASMXMSAMXAAAAAMSSXMXSASMXSSXSAXXSXXMXMXXAXMSSXMMSAMXMXXSXMMMSAMAMSMMMXSXMXMAMAMAMAMASMMXSSSMSXXAAXMSMMSAASAMAMMASXMM
SAMXSXSMAMMASXAMSSMXAMXSAMXAAXAAMSMSMSXAAAMAMAXXAMXXXMSMMMMMMAAAXSXXAAAASMMASASAMXAXMAMXMMMASXMASAMXMAMXXXMASXAXXXMAMXMSAMSAAXSMMSAMSXMASASX
MAMMSAXAAXMXMXMAXMMAAXAMXSMSMSMSMXAXXXMMSMMAMXMMSSMSXAAMAAAAMMMMXXMAXMMMSASXSXSMMMSSSSMAXXXAAMAAXASXMXXMSSMASMXMXAMXMAMMAMSSSMSXMMAMMAMXXAMM
SXSAMMMMMSAMXAMMSMSSMMSXMXAAAXAAAMXMMXSXXXSXSMAAAAAMMSMSMSSXSAMAXMMMSMXXSXMASAXXXAMAAAXMASMMSMMMSXMMMMSMAXMASAMMSXMASAXMAMMMMMMAASXMXAMAMSMM
SAMXMXAMSXXMSXSAAMXAMXMAMMSMMMSMSMAXAAXXSAMAMXMMXSMSAAMXAMXXSAXSMSAAAXMASAMAMMMMMMSMSMXAAXXXAXAMAXSAMMAMMXAMXAMAAASASXMSAMXXAAXAMAASMSMSMMAS
MAMMMMAMSASMSMMXSSSMMMSXMAXAMAXMAMAAMMSMMXMAMXXSAAAMMSXSASMMMSMAASMSSSSXMXSXMXMXAAMXAXXMSMMMSSXSSMSAXSAMXXSSSXMMSXMMSXMAMXXMMMSSMSXMAXAXMSAM
SMMAMMMMMAMAMXAAMXAAMAMAMAXAMSMMMMMXSXAXMSSSMSASMMMMAMXAXSMSAXMMMMAXAAMMMASXMAXXMSXSMSXMAAAAASAMXAMAMSMMSMMAMMMXMMMMMMSSSSSSXMAXAMXMAMMMXMAS
SMMMSAASMMMXSXMSSXSMMAXXMSSMMMASXAXAMXMSMXAMAMMXMAMMXSMMXXAMASMXSMMMMMMAMASMSSXSAMMSXMMSSSMSSMMMASMMMXAAAAMAMAXAMASAAMAXAAAASMSMAMMMMSSMMSAM
MAAAMMXMAXSMSAAAMXXMSXMAXXAXAMMAXAMXMAMMMMAMXMXASMSMMAAXSMXMSMAAMAMSAAMSMAMAXAAMXMASAMXAMXXXAAXSAXASXSMSSSSSMMXAXASXSSMMMMMMMMXSMAAAMMAAXMAX
SSMSSSXSAMXASMMMSASMAMSMMSAMXSSMASXMXAMAAXAMXXMXXAAAAXMMXMAMAMMMSAMASMMAMXSSMMMMAXAXAMXMAXAMMMXMASAMAMAMMMXMAXSSMASAMXXAAMAXXSAMXSSXMSSMMSSS
MXMXAAAMXMMMMMAMXMMMXMAXMMSMXAAXSAAASXMSSSSSMAMMMSMXMSXSASAXASXAXMSMXSSSSMMMAAAMSXSMAMSASMMSAAXMAMMMXMAMXXMAMMAAMMMMMXXMMXAAMSASAMMMXMASMXAA
MAMMMMMMASMMSSMMSXXAMSMSMAAMXSMXAMMMAAAXAAAAMXSAAXXAXSASASAMAMMAMXAXAAMASAAASMSMMAXSAMXAXAXSAMSXMMSSXSASXMAAXMXMMASASXSASMXMASAMXAAMXSAMXMSM
SASAMXXSAXAMAAAASMMMMAAAMSMMXAXXMXSMSMMMMMSMMASMSMMSSMAMMMMAMXSASAMMMMSASMMMXAMAMSMSXSMAMMMMSMSAXSAAAXXSAXSMXSMAMMMAAAMAMAMSAMXMXSASXMMMAAAX
XAMXMXMMXMAMSMMMMAAMMMXMMMASAMXSXAXMXMXAXXMMMMSMMMAMXMXMSAMXXMMASMXAAXMASMMAMSMAMAAXASMAMSMAAXSAMMMMMMMSAMXMAAAAMXMMMAMXMXAXXXMXMMAMXAASXSMX
SSSSMASAMSMMMMSXSXMSASAMXSAMAXAMMMSMAMMMSAXAAXXXAMXSXSAMMASXMMMMMXSSSSMXXMAMXMMMXMXMXMXMXAMXXXMXMAXAXSAMXAAMXSXMSXXSAMXMASXSMAXMXMXMSSMSXMXM
AAAXSAMXXAMAAMSASAASAXMSXMMSMMMSSMAMAXAAXMSSSSMMMSMXAXAASXMXMAAAMMMAMAMSMAMMMSASASAMMMSMSMSMSMAASXSMMMMSXSXSMMXSXMASMMAMXSAAMMMSAMAMXMASMMAA
MMMMMSSXXMSSSSMAMMMMSMAAMMMAMSAXAMAMASMSMXAAXXAAAAMMXMMMAMMASASMSAMAMAMAAAMAASASASMSMAAXAXAAAASXSASMSMASXMXSAMMSAMXXASXSAMXMMMAMASXXAMASAXAS
SAMXAMXMXMAAXAMAMXXAMMSMSASAXMASMSMSMAAAAMMSMMSMSMSAMMMMAMSASAMAXMSAXXSSSMSXXMMMMMXAMXXSMSMXMXAMXAXAAMXXAXAXSMASXMMMAMXMXSXMAMMXMMXMXMASMMMM
SMSMASASMMMSMMSSSXMXSAAASASXXSAMXAAAAMSMSXAAAAMAXAXXMAAXAXSASAMSMMSAMXAMAAXMXMAMASMXMSAMAAAASXMMMMMSMSMMSMSMXMASAMAXSMSXMAASMSSXSASMAMXSXASM
MAAXXSASAAAAAXAAMMSAMXMXMAMAXMASMMSMSXXXMMSMMMSMSMMMSSSMSXMAMMAMXMSAMXASMMMSASASASXMAAMMSMSMSASXAAAMAMXMAAXAXXAMMMSAMAXSAMAMAAAAMAMMAMXXMXXX
MSMSXMASMMMSSMMAMAMSASXXMXMXMASMAMXMAXXAMAXAAMAAAAXXAAAMMAMXMMXMMMMMMSMMAAMSASAXXXAXXMXMXMAMSAMMMMMMSAMXMSMMSSSMSAMAMAMMMXSMMMMMMAMSSSSSMMSS
MMAMXSAMXAXMAXXXMXXXXMAXMASMXMMMASASMSMSMASASMMSMMMSAMXMSAMMSXSMAMXSAXXMMMMMAMAMSXSMSXAMASAXMMMXSXMAMMMSXMASAAAAMXSXMAXSAMXAXXXXMMMAAMASAAAA
AMAMXMAXSASXASXSMSMSMXMMSASAMXSSXMASXSAMXMXAMXAMAMXASXMXSAMMSAAXAMSMMSXSASXMMMMMSAAAXMMMAMXMXASAMAMXSAAMASXMMXMMMXMXASASASMXMSMSSSMMSAASMMSS
MMAMAMXMSAMXMMAMAAMAMAXAXXXXAMMASMSMAMMMSAMSMXMSMMASMXMAXAXAMXMSMXAAMAAMMMAAMAXAMMMXMXSMSSSMXXMAMMMXSMMSAMXMXXASAMXMXMASXMMMAAAAAXXMAMXXAXAX
XSSSSSSXXXMASMAMXMXASMSSMSMXSASAMMAMXMAAAAXAAAAMXSXMMXMMMSMSMSXAXSSXMMSMAMMMMSMMSXSXMMXAAAAXMMXMASMMXMXMASAASXMAXAXMXMXMASAXSMMMSMXSXMMSSMMM
MMAAMAMAMXSAMSAMXSXMSAXXASAAAMMASXMSASMSXSMSAMXMAMAMXMASAXXMASMMMXMASXMXASMMMXAAMASAMAMMMSMSXMXXSAAXSXSMAMMSAAMAMMAMXSASXMAMMAAAXMAAAAAAMASA
MMMMMASMMXMSXXMAXSAAMXMMXMAXSMSMMAXMAMAXXMAMXMAMASAMAMMMXSAMXSAMXAXXMASMXMAAXSMMMAXAMXSXMAAXMASXXMSMMSAXAXXMXSMAXSAMMMASAMXMSAMSAMXXXMXMMAMS
XASAMASXXXAMXMXSASMMMMSXXXSAMAAXMXMMSMXMASMMSMXXXMMMASXSASXMAXAMMMMSSMMSMMSMMXMAMMSSMMMMSMSMXAXXXAXAXSMMMSAMAMXAXMMMSMMMMXMMXXSMXSSSMMXSMMMX
SASASXMXMMMSSMAMXSXMAAAMXAXMMSMSSXAAMAXXAMAAXASASMSMAMAMASXXMSSMAAAXAAAXSAMXAASMSMAAAXXAAMAMMMXMMMMSMXXXAMXMAMXSSXSAMAXSAASXXXXAMXAASMASASXS
AAXAMAMAAAASAMXSAMXMSSMMMAMAAMXMAXMASAMXSMMMMSMAXAAMAMAMMMAMMXMASMMSSMMAMXSAMMAXAMXSMMMSXSASASAMAASMMMXMXSASMSAAMAMXSMMSSXMAXSSMSMXMMMASAMAX
MXSAMXSSSMXSAMXMASXMAMXAAAXMMMAXMMMAMMSXMASXMAMXMXMSXMMSXMMSAASMXAMMXAAMMASAMXMSXSMMMSMMASASASAXXXMAAAAXASMSAMMMMAMMAMAMXMMSMMAAAAXSMMASMMMM
XMAMXMXAAXASXSXMMMMAMXXMSMXMMSSXXSXMSAMXSAMASMMXAMXAMMMSAAAXAXSXSAMXSXMASMMMMMXMAMMXAAAMAMAMXXXMSMMXXSXMASMMAMASXXSSMMXSAMAAAXMSMSMAAMAMAAXA
MMMSAAMSMMMXXMASAASXSSXMAMAAMAMMAMAMSASAMASMMXSMSXSASXASXMMSMMSMSASASASMMMAMAXAMMMMMSMSMXMXMSMSMSAASMMMXXMAXSMXAXAXAXAXSAMXMXMXXAAMMMMSSSMSS
AAAAXMAXAAXMSMASMXMSAAXSASXSMAMMAMXMSAMMMAMMMMAAXAMAMMMSXMASAAXASAMASAMMAXAMMSMSAAAAAAAASMMAXAAAMMMMAAAMXSMMAMXMMSXSMSMSAMXMSXSMSMSSXXAAXAXA
XMXSSMMSMMMAAMASMAXMMMMMASXXMASXMMMXMMMSMMXAAAMSMMMXMAXMASASMMSXMXMXMASXMSMSAAASMSMSMMMMAAXMMSMSMMSSSMMSAAXSXMAXAAAXAXASXMAMAASAMXAAMAMSMXMX
MSAMXMAAAXSSMMXSAMMSMAMMAMMXSAMAMXXMASASAMSSXXAXAAAASXXSAMMXMASXXMXMXAMXMAMMMMXMAXAMXMAMXAMXMMXMAAAXAAAMMSMMASMSMMXMAMMMMMSSMSMSSMXXMAXAAAMM
AXXSAMMSSMAAXSAMASAAXXMAMSAAMMSMAXMASMASAMXMSAAMSMSMSXXMASXMMAXXAMASMMMXMAXSSMXMAMXMAXMSMSAMXXAMMMSSSXMMAXASAMMMXSMMAMAMAAAAXXMAXAXMSSSXSXSS
MSMMMSMAMMSMMMASASXMMXXMXMMXSAAXXSAMMMAMAMSASMMXAXXASAXSXMASMXSMASASASMSSSMAAMXXSXMSXMAAAASXMMMSMXMAMXMMSSMMASMMASXSAMASMMMSMSMASXMMAMAMXMAX
XMAAAMMAMMAXXSXMXMAXAMMMSXAMMMXSMMMXXSAXXMMAMXSSMSMAMMAMXMAMXAMMAMMXAMAAAAMXMMSMXAAAXSMMSMXXAAAAMMMMMSAAXMXSAMAMASASMSMSAAXXAXMMXMAMXXAAXMAM
ASMMSSSSSSXSMSAXXXSMXMAMXMMSASXMAAASXSAXSAMSMXMAMMMAMXASAMXSMSSXMSAMSMXMMMMASAXASMMMMSAAXXASXMSMSXAXAMMSSMMMSSXMMMMMXAMXMMSMAMXMASXMSSMSXMAS
MMXXXXAMXMAMASMMSXMAMSSMAMSMAXXSMMXSXMSMAAXXAMSSMASASMMSXSXXAXAAAMMSXAASXSSXSAMMMXXXAMAMMMMSAAAASMMMSXMMAMXAMXXAAMASXMSXXAAAAMASMSAAAAAAXMAS
AMMMMMMMAMAMXMMAXAXAMAXXSSMMSMXXSXXMAMMMSMMMAMAMMMSXMXASMSXMMMMXMXXMMSMSAAAAMXMXMXSMSSXSAMMXMMMMMASAXAMSAMMSMSMSASAMAAXMMSXSASXSAXMMMMSMXMAS
MSSXAAASXSSSMMMSSMSSMASMXAXSAXXAXMASAXAMXMASAMASAMMAMMMMASMMMAXAXMAXAAAMMMMMMSMXMAXAASMSMSMXSSSMXXMASAMXASAXXAXXAMMSMMMXAAAXXXXMMMMSAAAXXMAS
XAAXXMXMXMAXAAAXAXAXMAMXMAMSASMMMSMSSSMMAXASASASAXSAMASMMMAAMSSSSXMAMXXMASAAAMAAMMSMMSMMAAMMMAAMSMMMMXMSMMASXXMSAMXAAAXMMMSMMSMXXAMXXXMSXSAS
MMSSSMAMSMMSSMSSSMMSMASAMAMMAMAXMXAMAMMASMMXAMASAMMASASAASMMSMAMAMSXSMMSAMSMSSSMSAAXAXASXMMXMSMMAAAMXMMAMMSMMAAMAMSSSMSXXXAAAAAXSXSXSMXMXAAS
XXAAASMXXAXAASAMXAAAMASMSSSMASMMXMMMMXSAMAXMMMAMXMSXMMSXMSXSAMXMAMSASMAMMXMXMAMAMMSMMSAMASXAMXXSSSMMXXSASXMASMSAMXAAAXXAMSSMMSSMMAMAMMAMXMMM
MMMSMMXXSXMSSSXMSXMMMXXXAAXXMAMAXXXMMAMXSXMXXMSSMXAMSXXAMXMSAXXMASXMSMASXAXAXMMMMAXAMMASAMSAMXAMXMAMAMMMSXMAMXXAMMMSMMMAMXAMXMXAMAMAMMSXMXAS
XAAMAMMMSAAMAXAXMASXMSXMAMSSSMXSAMMSMMSASMAMMMMAMSAMAMSMMMAMXMSXMAXAMXASMMSSMXAAAMMSMMXMAXAMXMXMASMMASAXMXMAXMMMMSAMAXXAMMSXMASMMMSASXMAXMMM
SMMSAXSAMMXMASAMSMMAAAXSMMSXSXAMMXAAAXMXMAAAAASAMXAMMXAXAMSSSMMASAMMMMXMAXAAASXXXXAMXMMSXMSMSXXSXXXXXXXMXAMMMSASAXASXMMMSAMXSMXMAAMAMXSSMAAM
MAMSAMMASXXMASAMXAXXMMMXAXMAMMSSXMSSMMSSXSMSSMSASXXMXSMSXMAAAAAAMXSXXMMSSMSXMAAXSMSMAMAXAXMAMMXMMMSSSXMAMXSAASMMMXMMMSAXMASMSAASMMSAMAAASMMS
MAMMAMSMMMSMASAMSSMMAXSMXMMAMMAXMXXXXSAMXXAXXAMAMXMAXAXXXMSSSMMXSASASXAAAAASXMXMXAASAMXSMMMAMXAAAXMASMSSMAAMMMMSMXAAASXMSSXAMSMMAMXAMMSMMXMX
SSSSMXMAMSMMASAMAMAMSMSXMXMAXMSSXXAMMMMSMMMMMSMMAXAMMXXMAXAAAASMMMSAMMMXMMXXXMASXSMSMSMSAAXXMMXMSMMMMMAAMMMXSAMAXSSMXMAMSMMMMXXXAMXXXMAXAXSM
XMAXXAMAMXXXMMAMXSAMAAXXAMMSSXMAMMAMAMXAXAAAAXAMASXSAMXMSAMXMASAAAMXMXSSSMMSXMAXMMMSAAASMSMSMXSMMASXSMSSMAXXMAMXXXAXAMSMMAAAASMSASAMXMSMXMAS
XMSMMSSSSSSMMSXSMSXSMSMMSMAXMMSASMSMSSSSSMSMSSXMAMAAMAMAAAXASXXXMXMSSXXAAMASMMSSMSAMSMMXAXAXAASAAMAAMAAMXMMMSXMMMSSMSXXAMSMMXXAAAXMAXMAMXAMX
SMASXAAAAAXAXAAMASMSAMAAMMMMAXMASAMXMAMXAAXMAMXMASXMASMXXMMMSMSMSXMAMSMSMMAXAXXAAMAXXXMAMMAMMMSAMSMMMMMXMAAASAMXASAAMASAMMSXSMSMSMMSASASMSAM
XSAMXMMMMMMSSMSMAMAMAMMMSAXSSMMAMXMXMMMSMMMMASASMSMXMXSSXMAMXAAAMMMAMSMMAMASMMMMMMMMSASMMMXSXXMMASXSAMXASMSXXAMMSXMMMAMXXMAMSAMAXAAXMSASMXAA
XMXSXXAXAXAMAAXXAMXMXMAMXMXMMAMASMSMSXMMMMASASXSXXAXSAMXASMSMMMAMXSSXSASXMAXXAAMMAMXSAMXSXMAXXSXXMAXXXMXSMXXSMMXMMMXMASMSMMSMAMAMMMSXMXXMXAM
MAMAMSMSSSMMMMMSMSMMXMXSAMAMMAMAMAXSAMXAAXMMAMAXXMSMMMSMMMMAXMMAMXSMAMXMAMXXMSSSSMSAMSMAMMSAMMSMAMAMSSMMSAMXAXSAMAAXSXSASAXAMXMAMXAMXMSAMXSM
ASMSXAAAXXAAMAXAMMAMXMASAXAMMSSXMSMSMMSSMSMMSMMMSMAMAAAAMSSMMMSASMSMSMASMMSSMAXXAXMXSAMXSAMASAMSMMMMAAMAXMAMXXMASXMMMAMAMASXSSSMSMMMAXSAXMAA
SXAAAMMMSMSMSMSMXSASAMXSSMMSMAAXMXAMXXMMMXMAAAAAASXXMSSSMASAAAMXMASAASMMSAAAMMSSXMMMXXSAMMSMMMMAMAMMSSMASXXSMASXMMSXMAMAMMXMXMAXAASMXMSXMAXM
XMMMXXAAMXMXAAAMASMMAXAMXSAAMSMMXMAMSMMAMAASMXMXXXMAXXMAMASMMMXSMMMSMSMXMMSMMMAMXMSMSXMASASAMXSAMXXXAAMASASAAXMASXMXMASAMXMAMSSMSSMASAMXASMM
SASMXMMXSAMSMSMSXSMSSMXSAMSSMXAAXSXMAMXAMXXAMMSMSMSXMASXMAMMSXXSAMXXXXAAMMXASMASMMAASMMXMASMMXSMSMMSSSMSSMSAXMSAMXAXXAXAMMASMAXAMAMAMAMXSAAA
MASAMXAAMMMAAAXMASMAAAMMXXMXXXMMAMASMSSMSMMAMXAAXAAMMAMXMMSAMMASAMASASXMSASAMSASAMMSMAMAMXMAMAMMAAAXAAXXXAMAMMXAAXASXMXSAMAXMASMSXMMXSMMMMSS
MMMMXMMSMXSMSMSSMSAMXSMMSMSAXXAXXSAMXMASAAXAMMMMMMMSMAMXXAAAXXAMAMASAMSXXAMAMMMSMMXMAXXAXXMSMASXSSMMSMMSMMMSMXSMSMMAAAAXAMASMXSAXXXAAXMSSMAA
MASXAAAAMMSMAMXMXMXXAXAXAAMAMSSMMMMSASXSSSMSSXAXXXAXASMSMMSMMMMSSMMSASXXMASAMAASASMMMSSSSSMAMXMXAXXAASAMAXAXXXMAXAMSMMMSSMAXMAMMMSMMXSAAXMAX
SASMMMXSXMSAMXAMAMMMASXMASMAMMASAAMSASAXAMAAAXMSAMXSMXMXAMXAXMXAAAXSXMXXXASAMMMSMMAAAMAMAASXSMMSMMMSXMXSXMXSXSMMXXMAAAAAXMSMMASAAXAAMMMMSSSM
MXSAAMMXAMXXXSXXAMAMXSAAXXXXMAASXSXSAMXMMMMMSAMSASAXMASXSMSAMSMSMMMXMMMMMMMMMXXSASMMMMAMSMMSMAAXAAMMASMMMSXMXSAMSSSXMMMMXXXASASMXSMMSMMMAAAX
SXSMMSASAMMSMMMSSSMSASMSSMMMMMMMAMXSXSASXAMMMAXSAMAMSASXAXMAMSAXXSAMAAAASASMSXAXASAMXSMMAXXAMMMSMXXMAMXXAMAXAMAMSAAASMMSAAMAMASMASAMAMAMMSMM
SAMXXMXSXMXAAAAAAMMMASMMAMAASASXAAXXAXAMXAMASMMMSMMMMAXXAMXMXMAMAMMXSMSXXASAAMSMMMMMAAXSASMSSSMMMASMAMMMSSMSMSSMMMMMMAAAMMMAMXMXAXAMASXSMAAA
MAMMXSXMAMSSSMMMMSAMXMASMMSMSASXXMSXMMSMMMMAXAAAAMXXMSMSMAAMMMXMXMMXMAMAMSMXMXMXSAXAMMXSAMAXXMAAMASAMXMAXAAMAAXXAAAAMMMMMASXSXMMMSSMXSXAMXSS
SAMXAMASAMAAMAXSAXAXSSMSXXMASXMASXMASAXASAASMSMSSSMSAMASASXXAMSASMSAMAMMXMAXSXMASXMXMXAMAMXMAXMMMAXAAAMXXSAMMMSSSSSSSSMMSMMXSMSSXAMMASXMMMMM
SMSAAXMASXSSMASXMSSMAMAMMAMMMAMXSASAMXSAMXMXAXAMAAAMAMAMAMMSSSMASXMASAMSAMXMSAMASXASXMMSSMSSSMSSMMSASMMSAMXXMXMAMAAAMMAAMAMAXMAMMMMMXSAMXSAX
MAXMAMXXAXMAMXSAMAMMAMAMAXMAMAMXMAMXSAMXSXMMSMMMMMMMMMMMMMXAMAMAMASAMXSMSSXASAMASXMXAXAAAXAAAAXXAAAAAASMAMAXXAXAMMMMMXMMSXMMSMASXSASXSAMXMMM
SAMXXMASMMSXMASXMAMXAXMSSMSAMXSSMSMMMXSMSAMSAMXMXMXMSAXAXXMSSSMASXMAMSAMXMAXSAMAMAMMMMMXXAMSMMMMXMMMMXMSXMMMSMSMMSMMAAXMSAAAMXMSASASASAMXAAA
MASXSXMASAMAMXSXASXSSXMXXAMMSMAMAAXXMAXASAMAAAMXSAMXSXSMSMAMAASAXAMXXASMSXMMSXMASAMASXMAMSMXAXMASMXMMMAMXAAAAMMAASAMMMSAMXMMSMXMAMAMMXASXMAS
XXAXSAMXMMSAMMMMSXAXAASMMMMAAMAMAMMXMASXSAMXSXMAMAMAMXMAAMMMSMMSSMMAXMASMAMXMASMSASXSAMMSAASMMSSMSMASXMXMXMSSSMMMSAMAAMAMMSAAMAMMMXMAMSAAASX
MXMMSSMSAASXSASXAMMMSMMASAMSSSMSXAAXMASXSXMXXMMMSAMXSAMXMSMAAXAAMXMXMXMMSMMAMXXASXMMSMMSSXXMXAMAMXMASAMXSAAAAXXAAMAMMMSXMAMXAMXSAXASXMMSMMMS
AMXAMMMMMMSXSMSXMASAXAMMSAXAMXAMMMSMMXXMMMSXMASASMSXAXSAAAMXMMMSSXMAAXXXAMXMMXMXMXMASXMMXMSMMMSAMXMASAMASMSMXMSMSSSMSXMMMMSSSMASMMXMAXMASAXX
MXMMSAXXSXSAMAXMXMMMSAMASMMSSMXMASAMXMXAAAXMAMXMXAMXMASMSMXAXXAAMASXXSXSXSAMSMMMXAAMMXMAAAAAAAXAMXMXSXMASAMXAAAAXAAASMSXMSAAAMAMXASAMMMAMMSS
SXSXSMXMMAMAMSMSSSSXMAMMMSAMMAMSMXXXAXMSMMXMSMMSMMMAXAXMMXSSMMMASAMXAMMMAMMXAAXAXSSMAAMXSSSMMSSSSSSMMAMXXAAMMMMSMSMMMAAAXMMSMMAXAAMASXXXSXAX
AASMMXSAMXMMMXAXAAXSMASXAMMMMAMAMSSSMSAMAMSAXXAAXASAMMSMAMMAAASAMXSMMMAMMMSSSSMSAXAMSMSAXXAMXAAXAMAASXMSMMMSAMSMMAAAMSMMMXMXAMXXAXSAMMSMMMMS
MSMAAAXXMMSXMMSMMMMXSASMSMXAMAMXXAAAXMMMAMMAMMSSSXAAAAAMASXSMMMMSMAAASMMXMAAAMAMXSAMAAMMMSMMMMSMMSSMMMAXAAAMAMXASMMSAMAAXAXSSMSMSXMASAAMAAMM
MAMMMSMMMXMASXMAXXSAMXSAAASXMMSSMMSMMSSMSMMMMAXMMMSSMSSXMMXAMXXXAAMSMMAMXXMMMMSMMSXMMSMMAAAMXMMMXXXXAMMMMMMSAMSMMMAMASMMXMMMAMAAXMSXMMMXSXSS
SMAXXMAMSASXMAMSSXMASAMXMMMAASAMAMXXAAXMASAAMXMAAAMAAXAASXSXMAMXSSMAXXAXSMXAAMAAMMMSAAAMSSMMAMAAAMMSMSAAXMAXAXXMASXSAMMAASASMSMSMAAXMASAMMAA
AXMMSSSXAMMXMXMAMXMMMXMAXXMSMMASMMMAMMXSAXXXSXSMMSSMMMMMMAMMMXXAMAMASMSXAMSMSSSXMAAMXSAMXMASXSXSXAAAAMXSMMSSMMSMAMMAAMMXXMASMAXAASMXSAMASMAM
SASXAAMAMXMXSAMXSAXAAASMMXMAXSAMMAXAAXXMAXSMMXSXAAXAAMSMMXMAXMMXMAMXMAAMMMAAXAXASMMSAAMMAMXMAMMXMMSXSMXMMAXAAAXMASXMMMXSAMSMMMSXMAXAMMSSMASX
MXAMMSMSXMSASASASXSMSMMSSXSSMMASMXSMMXSMSMSAAAXMMMSSMMAXMAMMAXAMMSMSMAMMXSMSMASMMASAXMSSXMAMXMSAMMXAMXASMSSSMMSSXMAMAXAAAXMASXMMSMMXSMMASXMX
SXMXXMAMAXMASAMASAXAXAAAXMAXSMXMMXMASMXAAAMAMSXXSAAMAXXXSASMSMMSAAAXAAMMXMSXMXMAXSMSXXMAASXSMXSASAMAXMXSAXAMAXMASXSMAMMSMMMAMXSASASAAASAMXSX
XAXXAMAMAMMAMXMAMXMXMMMMSAXXXXSMSMSAMAMSMSMSMXAAMMXSXMSMMASAAAMMXMSXSXSXAMMMMMSASAAXMAMMMMAAXAMAMXSSMSMMXMAMSXSASXAMXSAXAXSSMAMMSAMSSMMMSAXM
SMMSMSXMMSMSSMMASMMMSSSMMXAMSXSAAAMMSSMAAAAAAMMMMAXMMMAAMXMMMMMSXXMMMAMMSSMAAAMSAMXMASMMXMSMMSSSXMXMMSAASMAMMASAMMSMAXXSMMMAMMSAMAMXXXAAMASA
MAAMXAAAMAMXAXSASAXAAMAASAMXAAMXMMMMXMMXXMSMSMMSXSASASMSMSAMXAAAMMMAMXMSMAMMMMSAMXAAXMAMSAMXAAAAXXAMASMMMMMSMAMAMAXMXSMXMASAMSMXSSMMASMMSASX
SMMXMMMMXAMSSMMASXMMSSSMMXMAMMMAAXXSASMSSXXXAAMMAMXMAMAAXXMASMSXSAMMMAMASAMSMXMAXSMSASAMMAMXMMSMXMXMASASAXSXMMSMMASAMXAXSMSASMAMMXAMXMAXMASX
AXMASXSMSSXMMAMXMAMXMAXMMAMASMSMSAASXMXAAXXXSSMMAMMMSMSMMMXMAMAASMSASASMMXXXAASAMAXAXMAXMAMAMMXXSMAMASAMMSMAXMAMMASMMMMXAXSMMMMMASXMAMXMMAMA
MSSMSAXAAXAASXMSMMSAMAMXSXSAMAAAAMAMXMMXMMSAAAMMASMAXAXXAXAMAMMAMAXAXMMXMMMSSMSAMXXSMSSXSASMXSAMAXMSMMAMXAMSMMSXMASASAMSSMMSMXAMMMSMMSMMMSSM
XAAAMXMMXSMMMMASAASAMSSMMMMMSSMSMMMMAMSMXAXMAMSSMSMXSMMMSXMMAMXMMAMSMSSSMAAMAXXXMAMXAXAXSAMXXXASAAXAMSSMSSSMAAXMMMSASAMXAAAAXMXMAAAMXAASAMXX
AMMMMXXSASASXMAMMMXXMXAAMASAMXAAAXAXAMAXMASXMXMAASAAMAAAMASMSSSXMXSXAXAASMMSSMSSMSMMSMMMMXMSXSXMMXSAXAMXXMAMMMMMSAMXSAMSSMSMSAMSMSMSMSXMASXM
SXSXSAAAAXAMXMASXMSSSXSMMMSASMSMSSMSSMMXSASAMASMMMMSSMMMSAMAXMAASMXMXMSMMSMAXAXMXAAMMMAAMMMAAXMAAASMMASMASXMMSAASASXXAMAMXMAMMMAMAMXXMASAMXA
AMAAMASMSMSMMXAMAAAMXAXXSMXAMAAXXAAAAASAMXXASASXSAMXAMSMMMMMMMSMMAASAXXXAAMMMMMSMSSMAXXMMAAMXMSMMXSASAMMAMXMASAXMASASXMMSAMXMSSXSMMXMSMMMSSS
ASMXMXMXAMMAAMXSMMMSMSMAXAMSMSSMMMMMSMMAMASXMASXSSSXSMMAAXAMAMXMASASMSSMSXSXMXASAAAMXSASXSMXMXAAMAXXMXXMAMASXMSMMXMASAASMMXAMAAXSMSAMXMAMAAA
XXMMSMMSMSMMMSMAXMXAAMMSMSMMAAAMSMMXXXSAMAAAMXMMMMSXMASXMSMSMSAMXMASAAMMAAXASMASMMMMMAAAAXMASMMSMXSMMMSSMSAMAAAXXXMXMMSMAMSMSMMMMASXSAMXMMSS
SASAMXAAXXAAAAMMMSAMXMAAAAAMMMSMAAXASXSAMASXMAAAAASMSAMAAAXAMXMXXMMMMMSMMSMAMMAMAAXXXMMMXMASMXXAXXAAAAMAXAASMMMSAMXXAXXMAXAAAASAMXMMSAMXSXAX
SMMSSMSSSSSMSSXSAMXSSMAMSMSMXMAXSSMXSMSXMMAMSMSSMXSAMXSAASXMASMXAXSAMXXXAXMAMMASXMXSASMXMSXXMAXMSMSSMMSAMSXMASXAMMXMASXSMSMSSSMMXMAMSMMAAMMS
"""
