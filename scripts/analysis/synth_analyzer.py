from analysis.basic_analyzer import GroupAnalyzer, ExpAnalyzer
from execute.exp_part import ExpPart
from analysis.categorizer import Categorizer, Stability
from configure.project import PM, ProjectType
from configure.solver import SolverInfo

original_failed = { 10204465944388820460,
          10348695141442659265,
          1085505864101304014, 
          12701927373605284132,
          12714729563032811592,
          12760110255477418560,
          13597416436139611618,
          13621019901720625584,
          13927017446441876657, 
          14001965942491786517,
          14991744502867513299,
          15654302494988248301,
          1574043633604314753, 
          16061101883533103994,
          1616787912349134171,
          16406985299524513762,
          17347703109494934576, 
          2747479176111278198, 
          2818944399956709518,
          2890914115091517311,
          2902215859186306484, 
          3022841509365294092, 
          3417108941994840534,
          3918314785490033966,
          4350224400295262088, 
          4438573595234441201, 
          5464806266875958074,
          6509002135115363253,
          7455206457819196548 }

step_6 = { 11763274574354108152, 
        16986553460063775306, 
        17031248235225517275, 
        17420568126143038597, 
        17543141536983219972, 
        17564161567656738801, 
        17770206951130818096, 
        17880933491397050159, 
        18084258574820078666, 
        18168033434807325876, 
        18358992286770131404, 
        2946774963153378453, 
        3705526163519771247, 
        4342101737032715203, 
        4394770757777834051, 
        4885230198047943445, 
        5064689831912003559, 
        5361353246465579065, 
        5469810957444255771, 
        5735182439495464284, 
        5859016699225282108, 
        6016281295233931404, 
        616582296269411225, 
        6177998301280665113, 
        6464245856040048286, 
        7026665295411337406, 
        7921096285139466500, 
        7979261760868816348, 
        8018915402747649188, 
        8099994625102366293, 
        8793337240211196155, 
        8855761188861035561, 
        9024156166478412252, 
        9436611433703036289 }

available = {
 10039050172752956497,
10138268285593698299,
10204465944388820460,
10277632123461253856,
10310771465412923117,
10341820924366895425,
10348695141442659265,
10575850319829435039,
10701519641660675420,
10773674063941925315,
1085505864101304014,
10897712598607272022,
10950014827808916131,
11113478180923454746,
11236686781341114412,
11451750649442760376,
11589036378955207294,
11705579813100406832,
11717138681963207056,
11763274574354108152,
11842324074847860384,
11919816372552329379,
12009964388368876333,
12446760210054222519,
125156815285818513,
12674001597599525445,
12701927373605284132,
12714729563032811592,
12747720770740040207,
12760110255477418560,
12926302432979874879,
12977946648451891492,
13091160074977735895,
13222409155834491314,
13360697175731502415,
13533468192943017227,
13535606783997507814,
13597416436139611618,
13621019901720625584,
13927017446441876657,
13943722496117901608,
14001965942491786517,
14093723729963449993,
14278728475931093849,
14569931299192131691,
14772869193010499560,
14824042700120807701,
1488535147955003685,
14948243698535322488,
14991744502867513299,
15021100365263232008,
15158321600456841551,
15167975689647697693,
15301578142632814295,
15358163319403587553,
15654302494988248301,
15664183534854777800,
15685498494321287336,
1571068856706693156,
1574043633604314753,
16061101883533103994,
16084621932000428896,
1616787912349134171,
16406985299524513762,
16553746427507147093,
16646005180536038664,
16699859702613460248,
16722714031163977158,
16810806112738393747,
16898795634903054741,
16910917439791354243,
16913920398920128498,
16915497189000353100,
16947358380715049579,
16986553460063775306,
17031248235225517275,
17064844892021899953,
17240713826087265239,
17347703109494934576,
17420568126143038597,
17486477360407479611,
17543141536983219972,
17564161567656738801,
17770206951130818096,
17821851314737061927,
17880933491397050159,
17929700153421188318,
17959171433899393434,
1799324072178546074,
18061912606703249325,
18084258574820078666,
18090061279488526001,
18168033434807325876,
18358992286770131404,
18425764639971254359,
1913902545847172476,
2228252222166851158,
236007440853171182,
2522644944913230816,
2523482695495901976,
2551691815579040023,
2747479176111278198,
2818944399956709518,
2829967645997756309,
2890914115091517311,
2902215859186306484,
2946774963153378453,
3003328490971696788,
3022841509365294092,
3075063979775449368,
3200963750234244253,
3237031663676785693,
3306180604075339242,
3321569325532955074,
3417108941994840534,
34279984813045682,
3525928213266367631,
3649380853890026228,
3705526163519771247,
3718548560890062295,
3901492184494676344,
3918314785490033966,
4187210198403575490,
4253098293786822454,
4342101737032715203,
4348342768363055972,
4350224400295262088,
4394770757777834051,
4438573595234441201,
4443922990665002599,
4851120641566995083,
4885230198047943445,
4999315918640339659,
5030692039770373599,
5064689831912003559,
5068701464826966356,
5151347673391045034,
5306376619640549961,
5320522158073520270,
5361189304363332395,
5361353246465579065,
5381058492238565541,
5464806266875958074,
5469810957444255771,
5586334414592114936,
5681840624370880093,
5735182439495464284,
5859016699225282108,
5935564138360947226,
5938104413440292428,
5965630029537132834,
5975842660619014552,
6016281295233931404,
6033539793555326100,
6042076358693439576,
6066673770717959302,
6104612831359383870,
6117424228796272621,
616582296269411225,
6177998301280665113,
6240373484411627973,
6298502279875071277,
6337704935361624995,
643347597933204147,
6464245856040048286,
6509002135115363253,
6546244524730332343,
6654906977346840580,
6751654071767485075,
6767683287884060084,
687115051198467876,
6982962665832540773,
7026665295411337406,
7243691940338215284,
7406928525826627167,
7423875262308491534,
7455206457819196548,
7523176402034188326,
7527578629728038303,
756731540902202902,
7676229416794353428,
7746001120246472170,
7828683074907160794,
7861527768692801810,
791781860205602141,
7921096285139466500,
7979261760868816348,
799456195662577530,
8018915402747649188,
8032978187085737583,
8099994625102366293,
8228520392417247200,
8238199863579510514,
8375440971751116976,
8433838863700444746,
8748906386848601453,
8793337240211196155,
8795715710282645833,
8831758969636916559,
8855761188861035561,
8879238647249529797,
8940424532405160017,
8979168182955801019,
9024156166478412252,
9209807454247083532,
9308186958259199038,
9436611433703036289,
9508757297819343831,
9755754038474804521,
9772271436454424834,
9888077625435379945,
9890070528458518474,
9933066666367374699,
9945793802759130353
}

def analyze_synth():
    import random, os
# n.py analysis -s z3_4_12_2 -p v_uf --ptype original -e verus_uf
    # assert tbr & original_failed == original_failed
    # assert tbr & step_6 == step_6
    
    solver = SolverInfo("z3_4_12_2")
    project = PM.load_project("v_uf", ProjectType("original"))
    analyzer = Categorizer("60sec")

    exp = ExpPart("verus_uf", project, solver)
    exp = ExpAnalyzer(exp, analyzer)


    project = PM.load_project("v_uf", ProjectType.INSR)

    exp2 = ExpPart("synthetic", project, solver)
    exp2 = ExpAnalyzer(exp2, analyzer)
    
    # print(len(available))
    ostables = set()    
    ounstables = set()
    exps = set()
    # print(len(exps & step_6))

    for basename in exp.base_names():
        bhash = int(basename.split("_")[0])
        # exps.add(bhash)
        if bhash in original_failed:
            continue
        if exp.get_stability(basename) == Stability.STABLE:
            ostables.add(bhash)
        elif exp.get_stability(basename) == Stability.UNSTABLE:
            ounstables.add(bhash)
    
    # print(len(ostables))
    # print(len(ounstables))
                
    ostables = set(random.sample(ostables, 50))
    ounstables = set(random.sample(ounstables, 50))

    print(len(ostables & step_6))
    print(len(ounstables & step_6))

    for q in exp2.base_names():
        print(exp2[q].get_original_status)

    # print(len(filtered))
    # print(len(filtered))
    # #     if exp.get_stability(basename) == "unstable":
    #         print(basename, exp.get_stability(basename))
