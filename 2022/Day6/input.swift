let input = """
cbhbmmqnmmqvqfqgqcqmmtvvvdsvscvssmfmhfmhhgdgcclhlnnvmnvmnnwngnqggqlqhhbqbfbvffcpfcfpcpmcppsgssvcvmmdwmwsmwswnwvnvvtgvgfgqqnlltgllpplhpllrnrwrtrzrlrzllpnlpnplnlwnnzfztzcchczctcbbpwpbbfhhqllgrllnnghnnlnznzzlqqmggqbgbjjlnlnjllwlnwnjnbjnnhhcddgmdmqmllfjllddmgmpggtvvqqwmmhcmmjpjdpdqqnhhqbhhscstsvttbwtwdtwwjffvccrwrvvnqqtwwhgwhwthwthhvshsfsjstshthqqdfdhdqhqrqggfffvhffhbbwtbtvtwvvwgvvjjjvtjvvlmlmtmztmthmhttjwwmqqjffhvhqvvrddbsbfbgffmcfffqqfzzgmggzvggbjjmccftcftfnttqqjzjdzdrrgvgsgvvlqvlqqlplnnjccjqcjcgjgfjgjlgjjzhhjbbbfdbfddgccncppsbbjjsttcqtqgqpqllqggtsthhtvvtrttbthtnhhddvnnbggmtggcsgcscmmvmllttjbjggbzbttrfttgsstwtftdthdththbttcggdldtdlttbvvpgpjpwpwvwcwjwsjsttznztzftzzjpzzrtzrztrrtsrrdtrdtdbdhhdgdwwnjnnvjvsjjrwjjvrrzvrvllrgghgbbgbsssslqlrllbjbttzfztzpzzvtvccszsddtqttjllqgqgpqphptpwttwtmtltljjfnnzwzmzlzssghssqhhphbhfftwwqmwmzzqtzqzqrrndrrmrqrzrszzrcrbccglgcgwgrgdggtvtpptgtfgflglgrrnvrvhrrhlrhhfchfhdhzzwggvbbgfgrrpdrdccfllqflfmlfmlmbbhnbbsblbzbgbqqjppcddcvvsddjfjjlnnwbbflfzzmlmddjssjffcqffwdfdqqphpnhppbttjfjzzdvdjvvddnfffmjfmfmpfmmmdlmlrrhqqcpcmclmmbmppzczjjmlltqlqzzqgqcggdmdzznnnnsjjvbjjwbwhbhfhvvtmmsfmmcgmcmwcwhwnhhpccmbmdbmbgbjbggqqccfllfqqmqwwzbblffthhdnncqnccqppldlpldpllzmmsqqdffnggqlqtllwlglnlnhlhflfssvzzrllbtbnbgnnfvfllwslszswsnnpwwppvspsmmnfnpffrmrhmmctttrjrbjrjpjtpjpssdwdtwtmmtgtsgttlwttfrfvvpjpcjccmtthhldhllzslshhnrnvvfddnllltclcrrhnnjwwwpfpddmtmsmfflslrlmlmwmllgfgmfgmmjttpcpspslsjspsqstqsqqpsprphrrpqqfzqqwcwcddsjjpvvfnfvnnnrncnwcwczzcwzwnwmwffbdfbdfdjjhrhvhhvwvsvhshnhwwzlwlnnphhtjjmljjqzjjsjgsjshhwjjmttvgvsgstggrcrmmrqrhrqrzrmzmggqvqtqgtqqqqltqqwggmmzggjccgmgwgqqmnqnrnprptrrvfrvffnmnfmmnnnwzzldlvlgvlvqqpnphpgglhlshlhzzpcptpssblqvdbpbbcrngctqgptccwpdcpbcjwdmcrzmhwffgzqmmqwpqvplwzmjlzmvmzmbtqjnhzrpppnpntvmjbzmvhjvbgflmmjnwssvqvbnbddfcwqdtvpvddctmpptcjmvwszhbsttcbjlfjvwlljhlqlvvsnzphdjhfswltdhzprltzcszrgcmnmfznmbccstjvjngwpbsfqssfwvpdhhmlmzttzlszsgpvvbcfvzrlsttlqpnqhwtbqfjnbztnwfnhlhfltgdtsrrwrfhlssvsgzpffnnrhgcvclqnjgfhhzswllvcjffpngcmtjphwnbdfrrgjfrfqbnvbwgccsjvvmjgcvqvtggnvgvgnnchbblqnvvdgjtvdmfrzvhvhzcbqzdslphjjqtcwjqptstvvpqgdbgbcmmchjpvjhvbwtlmlnqpldfcbmwvrmpqcsfdhmmwnbvmpglcfbnsgjmljcwpzpwffcqfrbdrztzhqzhzpcrjfdmrctttdrzlmzcqwjftngwjmgqscftnpbjwqrcvqwbwbdhbhvrdcvgrvctjgwjtmdgzwgvdbmsrjpsbhwcqlqzjnzmgpctlwqhfnbmgsprjcqtfjjvzljqpfqgnvrgnjjlmpqgnzpmpsvzjmtvnfgslldjtjdwlzrvqrbvcpspzpcdnpdjmhcdhsbmthmgjqchqwwsnfjnwgpctlwcdpqpmzqcrptscngqnmhzwjdcqwvdmlzntsfbstbtmmnlsspjbjjdspnslgcnlbfnbhjlzjhrrmdbbwtswqpbpwtzhcnldbsfrvndzvcgzjprcrclhfwbvzgthcglfzqrshgtvbflvnznhmlzdtfnrsltnnppqgrtndbsfqmftdnzmqfwdpcrmssldmrrnzchnqpflgbqzqjjrzlfnptqdwzdhmctfbztmfcmbqcwjmgnwgqzqjctphrrthgvpvppztvpzgzhdszfhlzlcnwmfrlsnvftfrlfvbnlwzctphhpfvszntqcvnfmvmwwhsjlnpfhcpjvrncgmsbprwwllvnsbjfhtbtmcvvpzcvqrrqdvgzvllvcvnvvbftngqcqcvvbsqfshmnhwptcsbsnjzltqzmflftrhblqszrzsbfcpgzncvwhlqlcbmgjdpfcmlgdfphsfcgqccthmlzjbdwpsbddwwrtwmsvqwbzwhzmghhrspvbptznqsqvhgnhlwqjnhgnzprrtjddwtqfsshjrvlglhdlstghftmllvzmmfglnscnrtgcwwwzjphzhvqlctdwjlqvbsvlgzrdpvjhhcthgjhlwsgfzlschhfprfcrzfrzmnlwvqsnqlllczwfhswchrlggqszwrvpldrffnzrffbhtfbslgcdrqpjcrbqsrgfrhttcptncfndcbsdbjsqjvgbmnmhlnbltdcgbmllpgjmgljvglrwmrvgthhhzrsmzvgwcfgvcsbzpjcqnhrzhznzjcjghhwqvllrmsvlpzlssrdsqwvzvqwsvfsjqvbgrfbmfzlchqsjgncbljtvzsfdnvmfzcbrlnnvvmjbmgjmqzjtdzpljdwqtvwsrlbslwfvlgbtnmlpcwmngncnmdhqctshmjmnhpqcqzhvlbvgptctrvggdgnpnrlnngrfhsqdfthvcnpwjfjnslcqlfrfvhnctmsqgnqmgpwtlzhtdqhqqrcllzjccnszsqvrzhcffvnfnstgdmljdrqrndljdnfbbjvmpqdnqhtdlnzcvnfjlvzmfzrndhtglvngmbrdbpbnhvfmrbcwqzttnjplgrhchjtfjwfbjfbmzlrnllhzccpfhfhnjpfvzlpbqnhwmpssvwtzhdbtnbtllhpfdcqjjnzgbdrfjjbcltnzdrmtmsmvpjtmdnqszgbqncsvhjbgwswhmghpvstrqbglgrtgbchttbznvvdhppzwnttpgcbdjdhlsqhhtlphjjrjncrmfdtjhdwmjgmpngnbptzwgwdztmhtpglnftwpnnmrmcwfhwnhlsbwsrjnlmdlmffbzsnhsvnbldwtrrhdhfsjdrsnzlgtfzcwwqrfhtrmjhmphqndwtbpczvmfgczmdlqjqdlwmvjjzwmqnpvwzmtjwtprlnbvjdhpjgndrwzcfthnwhnhqpwtcjlhrhdplzsncfmszmhjmgljhnlsrrfwplclcvjjqmtpnwbtsbwdnjdlqntvdnfgwbpwspssprbffjdlcvbwcqlttnwnhwdspfsjhppbhspnrvrsfmzvbwwtjfzmnzwgqddbmcjzzqhqlgrglsvgsjdwlnsbtmqgsnfwwqrjsbcgdlmbgqwvgpqllqwbcplfjrgnzsdtdtvqnrbcrqjhdtqqplvszvtlflgbpwnpzczbvhzfjrslcwcswsgfvvsswzzwhtfjfpsrvcfnrs
"""
