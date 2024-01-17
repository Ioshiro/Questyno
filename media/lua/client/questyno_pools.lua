require 'SFQuest_Database'
--[[                *** STARTING POOLS ***
        Quest date alla creazione del pg
]]

-- inserimento prima quest Test1
--table.insert(SFQuest_Database.StartingPool, {
--world = "Questyno_Pynocchio;SFQuest_Questyno_Test1_Dialogo1;Questyno_Test1"
--condition = "profession;Carpenter;trait;Handy", -- condizione per sbloccare la quest
--click = "parametri per evento rightclick?" -- guarda comandi e rightclick
--daily = "codice giornaliero" -- nome del pool di eventi giornalieri da prendere random
--quest = "Questyno_Test1" -- nome della quest
--timer = "SFQuest_Questyno_Test1_Timer1" -- nome del timer dopo il quale attivare la cosa (certe meccaniche non funzionano se date subito alla creazione)
--world = "WorldEventID;Questyno_Dialogo;SFQuest_Questno_Test2" -- WorldEvent passato alla creazione del pg
--})

--[[                *** DAILY POOLS ***
        Quest date ogni giorno.
        Tavole che randomizzano world events
        Entry composte da "WorldEvent;DialogueCode;QuestGuid"
        Quando si usa randomcodeworldfrompool gli ultimi due parametri di
        questo ExamplePool saranno ExamplePool più Pool1 o Pool2
]]
--

Questyno = {
	--[[ 	Money = {
		"Questyno_Pynocchio;SFQuest_Questyno_Money1_Begin;Questyno_Money1",
		"Questyno_Pynocchio;SFQuest_Questyno_Money2_Begin;Questyno_Money2",
		"Questyno_Pynocchio;SFQuest_Questyno_Money3_Begin;Questyno_Money3",
		"Questyno_Pynocchio;SFQuest_Questyno_Money4_Begin;Questyno_Money4",
		"Questyno_Pynocchio;SFQuest_Questyno_Money5_Begin;Questyno_Money5",
		"Questyno_Pynocchio;SFQuest_Questyno_Money6_Begin;Questyno_Money6",
		"Questyno_Pynocchio;SFQuest_Questyno_Money7_Begin;Questyno_Money7",
		"Questyno_Pynocchio;SFQuest_Questyno_Money8_Begin;Questyno_Money8",
		"Questyno_Pynocchio;SFQuest_Questyno_Money9_Begin;Questyno_Money9",
		"Questyno_Pynocchio;SFQuest_Questyno_Money10_random1_Begin;Questyno_Money10_random1",
		"Questyno_Pynocchio;SFQuest_Questyno_Money10_random2_Begin;Questyno_Money10_random2",
		"Questyno_Pynocchio;SFQuest_Questyno_Money10_random3_Begin;Questyno_Money10_random3",
	}, ]]
	Lupo = {
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo1_Begin;Questyno_Lupo1",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo2_Begin;Questyno_Lupo2",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo3_Begin;Questyno_Lupo3",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo4_Begin;Questyno_Lupo4",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo5_Begin;Questyno_Lupo5",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo6_Begin;Questyno_Lupo6",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo7_Begin;Questyno_Lupo7",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo8_Begin;Questyno_Lupo8",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo9_Begin;Questyno_Lupo9",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo10_Begin;Questyno_Lupo10",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo11_Begin;Questyno_Lupo11",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo12_Begin;Questyno_Lupo12",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo13_Begin;Questyno_Lupo13",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo14_Begin;Questyno_Lupo14",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo15_Begin;Questyno_Lupo15",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo16_Begin;Questyno_Lupo16",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo17_Begin;Questyno_Lupo17",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo18_Begin;Questyno_Lupo18",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo19_Begin;Questyno_Lupo19",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo20_Begin;Questyno_Lupo20",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo21_Begin;Questyno_Lupo21",
		"Questyno_TonyLupo;SFQuest_Questyno_Lupo22_Begin;Questyno_Lupo22",
		--		"Questyno_TonyLupo;SFQuest_Questyno_Lupo23_Begin;Questyno_Lupo23",
	},
	Grif = {
		"Questyno_Grif;SFQuest_Questyno_Grif1_Begin;Questyno_Grif1",
		"Questyno_Grif;SFQuest_Questyno_Grif2_Begin;Questyno_Grif2",
		"Questyno_Grif;SFQuest_Questyno_Grif3_Begin;Questyno_Grif3",
		"Questyno_Grif;SFQuest_Questyno_Grif4_Begin;Questyno_Grif4",
		"Questyno_Grif;SFQuest_Questyno_Grif5_Begin;Questyno_Grif5",
		"Questyno_Grif;SFQuest_Questyno_Grif6_Begin;Questyno_Grif6",
		"Questyno_Grif;SFQuest_Questyno_Grif7_Begin;Questyno_Grif7",
		"Questyno_Grif;SFQuest_Questyno_Grif8_Begin;Questyno_Grif8",
		"Questyno_Grif;SFQuest_Questyno_Grif9_Begin;Questyno_Grif9",
		"Questyno_Grif;SFQuest_Questyno_Grif10_Begin;Questyno_Grif10",
		"Questyno_Grif;SFQuest_Questyno_Grif11_Begin;Questyno_Grif11",
		"Questyno_Grif;SFQuest_Questyno_Grif12_Begin;Questyno_Grif12",
		"Questyno_Grif;SFQuest_Questyno_Grif13_Begin;Questyno_Grif13",
		"Questyno_Grif;SFQuest_Questyno_Grif14_Begin;Questyno_Grif14",
		"Questyno_Grif;SFQuest_Questyno_Grif15_Begin;Questyno_Grif15",
		"Questyno_Grif;SFQuest_Questyno_Grif16_Begin;Questyno_Grif16",
		"Questyno_Grif;SFQuest_Questyno_Grif17_Begin;Questyno_Grif17",
		"Questyno_Grif;SFQuest_Questyno_Grif18_Begin;Questyno_Grif18",
		"Questyno_Grif;SFQuest_Questyno_Grif19_Begin;Questyno_Grif19",
		"Questyno_Grif;SFQuest_Questyno_Grif20_Begin;Questyno_Grif20",
		"Questyno_Grif;SFQuest_Questyno_Grif21_Begin;Questyno_Grif21",
		"Questyno_Grif;SFQuest_Questyno_Grif22_Begin;Questyno_Grif22",
		"Questyno_Grif;SFQuest_Questyno_Grif23_Begin;Questyno_Grif23",
		"Questyno_Grif;SFQuest_Questyno_Grif24_Begin;Questyno_Grif24",
		"Questyno_Grif;SFQuest_Questyno_Grif25_Begin;Questyno_Grif25",
		"Questyno_Grif;SFQuest_Questyno_Grif26_Begin;Questyno_Grif26",
		"Questyno_Grif;SFQuest_Questyno_Grif27_Begin;Questyno_Grif27",
		"Questyno_Grif;SFQuest_Questyno_Grif28_Begin;Questyno_Grif28",
	},
	AngelicaStella = {
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella1_Begin;Questyno_AngelicaStella1",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella2_Begin;Questyno_AngelicaStella2",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella3_Begin;Questyno_AngelicaStella3",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella4_Begin;Questyno_AngelicaStella4",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella5_Begin;Questyno_AngelicaStella5",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella6_Begin;Questyno_AngelicaStella6",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella7_Begin;Questyno_AngelicaStella7",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella8_Begin;Questyno_AngelicaStella8",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella9_Begin;Questyno_AngelicaStella9",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella10_Begin;Questyno_AngelicaStella10",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella11_Begin;Questyno_AngelicaStella11",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella12_Begin;Questyno_AngelicaStella12",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella13_Begin;Questyno_AngelicaStella13",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella14_Begin;Questyno_AngelicaStella14",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella15_Begin;Questyno_AngelicaStella15",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella16_Begin;Questyno_AngelicaStella16",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella17_Begin;Questyno_AngelicaStella17",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella18_Begin;Questyno_AngelicaStella18",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella19_Begin;Questyno_AngelicaStella19",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella20_Begin;Questyno_AngelicaStella20",
		"Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella21_Begin;Questyno_AngelicaStella21",
	},
	HeatherThomas = {
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas1_Begin;Questyno_HeatherThomas1",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas2_Begin;Questyno_HeatherThomas2",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas3_Begin;Questyno_HeatherThomas3",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas4_Begin;Questyno_HeatherThomas4",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas5_Begin;Questyno_HeatherThomas5",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas6_Begin;Questyno_HeatherThomas6",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas7_Begin;Questyno_HeatherThomas7",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas8_Begin;Questyno_HeatherThomas8",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas9_Begin;Questyno_HeatherThomas9",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas10_Begin;Questyno_HeatherThomas10",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas11_Begin;Questyno_HeatherThomas11",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas12_Begin;Questyno_HeatherThomas12",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas13_Begin;Questyno_HeatherThomas13",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas14_Begin;Questyno_HeatherThomas14",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas15_Begin;Questyno_HeatherThomas15",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas16_Begin;Questyno_HeatherThomas16",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas17_Begin;Questyno_HeatherThomas17",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas18_Begin;Questyno_HeatherThomas18",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas19_Begin;Questyno_HeatherThomas19",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas20_Begin;Questyno_HeatherThomas20",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas21_Begin;Questyno_HeatherThomas21",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas22_Begin;Questyno_HeatherThomas22",
		"Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas23_Begin;Questyno_HeatherThomas23",
	},
	EliaRima = {
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima1_Begin;Questyno_EliaRima1",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima2_Begin;Questyno_EliaRima2",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima3_Begin;Questyno_EliaRima3",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima4_Begin;Questyno_EliaRima4",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima5_Begin;Questyno_EliaRima5",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima6_Begin;Questyno_EliaRima6",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima7_Begin;Questyno_EliaRima7",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima8_Begin;Questyno_EliaRima8",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima9_Begin;Questyno_EliaRima9",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima10_Begin;Questyno_EliaRima10",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima11_Begin;Questyno_EliaRima11",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima12_Begin;Questyno_EliaRima12",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima13_Begin;Questyno_EliaRima13",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima14_Begin;Questyno_EliaRima14",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima15_Begin;Questyno_EliaRima15",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima16_Begin;Questyno_EliaRima16",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima17_Begin;Questyno_EliaRima17",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima18_Begin;Questyno_EliaRima18",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima19_Begin;Questyno_EliaRima19",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima20_Begin;Questyno_EliaRima20",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima21_Begin;Questyno_EliaRima21",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima22_Begin;Questyno_EliaRima22",
		"Questyno_EliaRima;SFQuest_Questyno_EliaRima23_Begin;Questyno_EliaRima23",
	},
	BobRepair = {
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair1_Begin;Questyno_BobRepair1",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair2_Begin;Questyno_BobRepair2",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair3_Begin;Questyno_BobRepair3",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair4_Begin;Questyno_BobRepair4",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair5_Begin;Questyno_BobRepair5",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair6_Begin;Questyno_BobRepair6",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair7_Begin;Questyno_BobRepair7",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair8_Begin;Questyno_BobRepair8",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair9_Begin;Questyno_BobRepair9",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair10_Begin;Questyno_BobRepair10",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair11_Begin;Questyno_BobRepair11",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair12_Begin;Questyno_BobRepair12",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair13_Begin;Questyno_BobRepair13",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair14_Begin;Questyno_BobRepair14",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair15_Begin;Questyno_BobRepair15",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair16_Begin;Questyno_BobRepair16",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair17_Begin;Questyno_BobRepair17",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair18_Begin;Questyno_BobRepair18",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair19_Begin;Questyno_BobRepair19",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair20_Begin;Questyno_BobRepair20",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair21_Begin;Questyno_BobRepair21",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair22_Begin;Questyno_BobRepair22",
		"Questyno_BobRepair;SFQuest_Questyno_BobRepair23_Begin;Questyno_BobRepair23",
	},
	MikePozzo = {
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo1_Begin;Questyno_MikePozzo1",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo2_Begin;Questyno_MikePozzo2",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo3_Begin;Questyno_MikePozzo3",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo4_Begin;Questyno_MikePozzo4",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo5_Begin;Questyno_MikePozzo5",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo6_Begin;Questyno_MikePozzo6",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo7_Begin;Questyno_MikePozzo7",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo8_Begin;Questyno_MikePozzo8",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo9_Begin;Questyno_MikePozzo9",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo10_Begin;Questyno_MikePozzo10",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo11_Begin;Questyno_MikePozzo11",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo12_Begin;Questyno_MikePozzo12",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo13_Begin;Questyno_MikePozzo13",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo14_Begin;Questyno_MikePozzo14",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo15_Begin;Questyno_MikePozzo15",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo16_Begin;Questyno_MikePozzo16",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo17_Begin;Questyno_MikePozzo17",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo18_Begin;Questyno_MikePozzo18",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo19_Begin;Questyno_MikePozzo19",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo20_Begin;Questyno_MikePozzo20",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo21_Begin;Questyno_MikePozzo21",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo22_Begin;Questyno_MikePozzo22",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo23_Begin;Questyno_MikePozzo23",
		"Questyno_MikePozzo;SFQuest_Questyno_MikePozzo24_Begin;Questyno_MikePozzo24",
	},
	RosaChina = {
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina1_Begin;Questyno_RosaChina1",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina2_Begin;Questyno_RosaChina2",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina3_Begin;Questyno_RosaChina3",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina4_Begin;Questyno_RosaChina4",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina5_Begin;Questyno_RosaChina5",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina6_Begin;Questyno_RosaChina6",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina7_Begin;Questyno_RosaChina7",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina8_Begin;Questyno_RosaChina8",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina9_Begin;Questyno_RosaChina9",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina10_Begin;Questyno_RosaChina10",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina11_Begin;Questyno_RosaChina11",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina12_Begin;Questyno_RosaChina12",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina13_Begin;Questyno_RosaChina13",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina14_Begin;Questyno_RosaChina14",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina15_Begin;Questyno_RosaChina15",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina16_Begin;Questyno_RosaChina16",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina17_Begin;Questyno_RosaChina17",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina18_Begin;Questyno_RosaChina18",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina19_Begin;Questyno_RosaChina19",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina20_Begin;Questyno_RosaChina20",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina21_Begin;Questyno_RosaChina21",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina22_Begin;Questyno_RosaChina22",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina23_Begin;Questyno_RosaChina23",
		"Questyno_RosaChina;SFQuest_Questyno_RosaChina24_Begin;Questyno_RosaChina24",
	},
	EmilyTerry = {
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry1_Begin;Questyno_EmilyTerry1",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry2_Begin;Questyno_EmilyTerry2",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry3_Begin;Questyno_EmilyTerry3",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry4_Begin;Questyno_EmilyTerry4",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry5_Begin;Questyno_EmilyTerry5",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry6_Begin;Questyno_EmilyTerry6",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry7_Begin;Questyno_EmilyTerry7",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry8_Begin;Questyno_EmilyTerry8",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry9_Begin;Questyno_EmilyTerry9",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry10_Begin;Questyno_EmilyTerry10",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry11_Begin;Questyno_EmilyTerry11",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry12_Begin;Questyno_EmilyTerry12",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry13_Begin;Questyno_EmilyTerry13",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry14_Begin;Questyno_EmilyTerry14",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry15_Begin;Questyno_EmilyTerry15",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry16_Begin;Questyno_EmilyTerry16",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry17_Begin;Questyno_EmilyTerry17",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry18_Begin;Questyno_EmilyTerry18",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry19_Begin;Questyno_EmilyTerry19",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry20_Begin;Questyno_EmilyTerry20",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry21_Begin;Questyno_EmilyTerry21",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry22_Begin;Questyno_EmilyTerry22",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry23_Begin;Questyno_EmilyTerry23",
		"Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry24_Begin;Questyno_EmilyTerry24",
	},
	VictoriaSecret = {
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret1_Begin;Questyno_VictoriaSecret1",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret2_Begin;Questyno_VictoriaSecret2",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret3_Begin;Questyno_VictoriaSecret3",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret4_Begin;Questyno_VictoriaSecret4",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret5_Begin;Questyno_VictoriaSecret5",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret6_Begin;Questyno_VictoriaSecret6",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret7_Begin;Questyno_VictoriaSecret7",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret8_Begin;Questyno_VictoriaSecret8",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret9_Begin;Questyno_VictoriaSecret9",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret10_Begin;Questyno_VictoriaSecret10",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret11_Begin;Questyno_VictoriaSecret11",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret12_Begin;Questyno_VictoriaSecret12",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret13_Begin;Questyno_VictoriaSecret13",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret14_Begin;Questyno_VictoriaSecret14",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret15_Begin;Questyno_VictoriaSecret15",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret16_Begin;Questyno_VictoriaSecret16",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret17_Begin;Questyno_VictoriaSecret17",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret18_Begin;Questyno_VictoriaSecret18",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret19_Begin;Questyno_VictoriaSecret19",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret20_Begin;Questyno_VictoriaSecret20",
		"Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret21_Begin;Questyno_VictoriaSecret21",
	},
	SusanLee = {
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee1_Begin;Questyno_SusanLee1",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee2_Begin;Questyno_SusanLee2",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee3_Begin;Questyno_SusanLee3",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee4_Begin;Questyno_SusanLee4",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee5_Begin;Questyno_SusanLee5",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee6_Begin;Questyno_SusanLee6",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee7_Begin;Questyno_SusanLee7",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee8_Begin;Questyno_SusanLee8",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee9_Begin;Questyno_SusanLee9",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee10_Begin;Questyno_SusanLee10",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee11_Begin;Questyno_SusanLee11",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee12_Begin;Questyno_SusanLee12",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee13_Begin;Questyno_SusanLee13",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee14_Begin;Questyno_SusanLee14",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee15_Begin;Questyno_SusanLee15",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee16_Begin;Questyno_SusanLee16",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee17_Begin;Questyno_SusanLee17",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee18_Begin;Questyno_SusanLee18",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee19_Begin;Questyno_SusanLee19",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee20_Begin;Questyno_SusanLee20",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee21_Begin;Questyno_SusanLee21",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee22_Begin;Questyno_SusanLee22",
		"Questyno_SusanLee;SFQuest_Questyno_SusanLee23_Begin;Questyno_SusanLee23",
	},
	GeorgeScott = {
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott1_Begin;Questyno_GeorgeScott1",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott2_Begin;Questyno_GeorgeScott2",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott3_Begin;Questyno_GeorgeScott3",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott4_Begin;Questyno_GeorgeScott4",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott5_Begin;Questyno_GeorgeScott5",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott6_Begin;Questyno_GeorgeScott6",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott7_Begin;Questyno_GeorgeScott7",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott8_Begin;Questyno_GeorgeScott8",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott9_Begin;Questyno_GeorgeScott9",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott10_Begin;Questyno_GeorgeScott10",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott11_Begin;Questyno_GeorgeScott11",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott12_Begin;Questyno_GeorgeScott12",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott13_Begin;Questyno_GeorgeScott13",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott14_Begin;Questyno_GeorgeScott14",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott15_Begin;Questyno_GeorgeScott15",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott16_Begin;Questyno_GeorgeScott16",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott17_Begin;Questyno_GeorgeScott17",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott18_Begin;Questyno_GeorgeScott18",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott19_Begin;Questyno_GeorgeScott19",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott20_Begin;Questyno_GeorgeScott20",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott21_Begin;Questyno_GeorgeScott21",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott22_Begin;Questyno_GeorgeScott22",
		"Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott23_Begin;Questyno_GeorgeScott23",
	},
	SamuelYoung = {
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung1_Begin;Questyno_SamuelYoung1",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung2_Begin;Questyno_SamuelYoung2",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung3_Begin;Questyno_SamuelYoung3",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung4_Begin;Questyno_SamuelYoung4",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung5_Begin;Questyno_SamuelYoung5",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung6_Begin;Questyno_SamuelYoung6",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung7_Begin;Questyno_SamuelYoung7",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung8_Begin;Questyno_SamuelYoung8",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung9_Begin;Questyno_SamuelYoung9",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung10_Begin;Questyno_SamuelYoung10",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung11_Begin;Questyno_SamuelYoung11",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung12_Begin;Questyno_SamuelYoung12",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung13_Begin;Questyno_SamuelYoung13",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung14_Begin;Questyno_SamuelYoung14",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung15_Begin;Questyno_SamuelYoung15",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung16_Begin;Questyno_SamuelYoung16",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung17_Begin;Questyno_SamuelYoung17",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung18_Begin;Questyno_SamuelYoung18",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung19_Begin;Questyno_SamuelYoung19",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung20_Begin;Questyno_SamuelYoung20",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung21_Begin;Questyno_SamuelYoung21",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung22_Begin;Questyno_SamuelYoung22",
		"Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung23_Begin;Questyno_SamuelYoung23",
	},
	XuMishura = {
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura1_Begin;Questyno_XuMishura1",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura2_Begin;Questyno_XuMishura2",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura3_Begin;Questyno_XuMishura3",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura4_Begin;Questyno_XuMishura4",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura5_Begin;Questyno_XuMishura5",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura6_Begin;Questyno_XuMishura6",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura7_Begin;Questyno_XuMishura7",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura8_Begin;Questyno_XuMishura8",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura9_Begin;Questyno_XuMishura9",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura10_Begin;Questyno_XuMishura10",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura11_Begin;Questyno_XuMishura11",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura12_Begin;Questyno_XuMishura12",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura13_Begin;Questyno_XuMishura13",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura14_Begin;Questyno_XuMishura14",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura15_Begin;Questyno_XuMishura15",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura16_Begin;Questyno_XuMishura16",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura17_Begin;Questyno_XuMishura17",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura18_Begin;Questyno_XuMishura18",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura19_Begin;Questyno_XuMishura19",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura20_Begin;Questyno_XuMishura20",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura21_Begin;Questyno_XuMishura21",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura22_Begin;Questyno_XuMishura22",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura23_Begin;Questyno_XuMishura23",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura24_Begin;Questyno_XuMishura24",
		"Questyno_XuMishura;SFQuest_Questyno_XuMishura25_Begin;Questyno_XuMishura25",
	},
	DavidTurner = {
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner1_Begin;Questyno_DavidTurner1",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner2_Begin;Questyno_DavidTurner2",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner3_Begin;Questyno_DavidTurner3",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner4_Begin;Questyno_DavidTurner4",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner5_Begin;Questyno_DavidTurner5",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner6_Begin;Questyno_DavidTurner6",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner7_Begin;Questyno_DavidTurner7",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner8_Begin;Questyno_DavidTurner8",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner9_Begin;Questyno_DavidTurner9",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner10_Begin;Questyno_DavidTurner10",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner11_Begin;Questyno_DavidTurner11",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner12_Begin;Questyno_DavidTurner12",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner13_Begin;Questyno_DavidTurner13",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner14_Begin;Questyno_DavidTurner14",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner15_Begin;Questyno_DavidTurner15",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner16_Begin;Questyno_DavidTurner16",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner17_Begin;Questyno_DavidTurner17",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner18_Begin;Questyno_DavidTurner18",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner19_Begin;Questyno_DavidTurner19",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner20_Begin;Questyno_DavidTurner20",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner21_Begin;Questyno_DavidTurner21",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner22_Begin;Questyno_DavidTurner22",
		"Questyno_DavidTurner;SFQuest_Questyno_DavidTurner23_Begin;Questyno_DavidTurner23",
	},
	RafaelPrezioso = {
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso1_Begin;Questyno_RafaelPrezioso1",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso2_Begin;Questyno_RafaelPrezioso2",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso3_Begin;Questyno_RafaelPrezioso3",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso4_Begin;Questyno_RafaelPrezioso4",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso5_Begin;Questyno_RafaelPrezioso5",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso6_Begin;Questyno_RafaelPrezioso6",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso7_Begin;Questyno_RafaelPrezioso7",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso8_Begin;Questyno_RafaelPrezioso8",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso9_Begin;Questyno_RafaelPrezioso9",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso10_Begin;Questyno_RafaelPrezioso10",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso11_Begin;Questyno_RafaelPrezioso11",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso12_Begin;Questyno_RafaelPrezioso12",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso13_Begin;Questyno_RafaelPrezioso13",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso14_Begin;Questyno_RafaelPrezioso14",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso15_Begin;Questyno_RafaelPrezioso15",
		--"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso16_Begin;Questyno_RafaelPrezioso16",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso17_Begin;Questyno_RafaelPrezioso17",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso18_Begin;Questyno_RafaelPrezioso18",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso19_Begin;Questyno_RafaelPrezioso19",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso20_Begin;Questyno_RafaelPrezioso20",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso21_Begin;Questyno_RafaelPrezioso21",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso22_Begin;Questyno_RafaelPrezioso22",
		"Questyno_RafaelPrezioso;SFQuest_Questyno_RafaelPrezioso23_Begin;Questyno_RafaelPrezioso23",
	},
	JeffreyLewis = {
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis1_Begin;Questyno_JeffreyLewis1",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis2_Begin;Questyno_JeffreyLewis2",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis3_Begin;Questyno_JeffreyLewis3",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis4_Begin;Questyno_JeffreyLewis4",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis5_Begin;Questyno_JeffreyLewis5",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis6_Begin;Questyno_JeffreyLewis6",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis7_Begin;Questyno_JeffreyLewis7",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis8_Begin;Questyno_JeffreyLewis8",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis9_Begin;Questyno_JeffreyLewis9",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis10_Begin;Questyno_JeffreyLewis10",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis11_Begin;Questyno_JeffreyLewis11",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis12_Begin;Questyno_JeffreyLewis12",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis13_Begin;Questyno_JeffreyLewis13",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis14_Begin;Questyno_JeffreyLewis14",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis15_Begin;Questyno_JeffreyLewis15",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis16_Begin;Questyno_JeffreyLewis16",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis17_Begin;Questyno_JeffreyLewis17",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis18_Begin;Questyno_JeffreyLewis18",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis19_Begin;Questyno_JeffreyLewis19",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis20_Begin;Questyno_JeffreyLewis20",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis21_Begin;Questyno_JeffreyLewis21",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis22_Begin;Questyno_JeffreyLewis22",
		"Questyno_JeffreyLewis;SFQuest_Questyno_JeffreyLewis23_Begin;Questyno_JeffreyLewis23",
	},
	ChristopherDavis = {
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis1_Begin;Questyno_ChristopherDavis1",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis2_Begin;Questyno_ChristopherDavis2",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis3_Begin;Questyno_ChristopherDavis3",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis4_Begin;Questyno_ChristopherDavis4",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis5_Begin;Questyno_ChristopherDavis5",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis6_Begin;Questyno_ChristopherDavis6",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis7_Begin;Questyno_ChristopherDavis7",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis8_Begin;Questyno_ChristopherDavis8",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis9_Begin;Questyno_ChristopherDavis9",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis10_Begin;Questyno_ChristopherDavis10",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis11_Begin;Questyno_ChristopherDavis11",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis12_Begin;Questyno_ChristopherDavis12",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis13_Begin;Questyno_ChristopherDavis13",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis14_Begin;Questyno_ChristopherDavis14",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis15_Begin;Questyno_ChristopherDavis15",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis16_Begin;Questyno_ChristopherDavis16",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis17_Begin;Questyno_ChristopherDavis17",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis18_Begin;Questyno_ChristopherDavis18",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis19_Begin;Questyno_ChristopherDavis19",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis20_Begin;Questyno_ChristopherDavis20",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis21_Begin;Questyno_ChristopherDavis21",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis22_Begin;Questyno_ChristopherDavis22",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis23_Begin;Questyno_ChristopherDavis23",
		"Questyno_ChristopherDavis;SFQuest_Questyno_ChristopherDavis24_Begin;Questyno_ChristopherDavis24",
	},
	PamelaPerez = {
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez1_Begin;Questyno_PamelaPerez1",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez2_Begin;Questyno_PamelaPerez2",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez3_Begin;Questyno_PamelaPerez3",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez4_Begin;Questyno_PamelaPerez4",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez5_Begin;Questyno_PamelaPerez5",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez6_Begin;Questyno_PamelaPerez6",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez7_Begin;Questyno_PamelaPerez7",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez8_Begin;Questyno_PamelaPerez8",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez9_Begin;Questyno_PamelaPerez9",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez10_Begin;Questyno_PamelaPerez10",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez11_Begin;Questyno_PamelaPerez11",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez12_Begin;Questyno_PamelaPerez12",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez13_Begin;Questyno_PamelaPerez13",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez14_Begin;Questyno_PamelaPerez14",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez15_Begin;Questyno_PamelaPerez15",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez16_Begin;Questyno_PamelaPerez16",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez17_Begin;Questyno_PamelaPerez17",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez18_Begin;Questyno_PamelaPerez18",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez19_Begin;Questyno_PamelaPerez19",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez20_Begin;Questyno_PamelaPerez20",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez21_Begin;Questyno_PamelaPerez21",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez22_Begin;Questyno_PamelaPerez22",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez23_Begin;Questyno_PamelaPerez23",
		"Questyno_PamelaPerez;SFQuest_Questyno_PamelaPerez24_Begin;Questyno_PamelaPerez24",
	},
	SamFisher = {
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher1_Begin;Questyno_SamFisher1",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher2_Begin;Questyno_SamFisher2",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher3_Begin;Questyno_SamFisher3",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher4_Begin;Questyno_SamFisher4",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher5_Begin;Questyno_SamFisher5",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher6_Begin;Questyno_SamFisher6",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher7_Begin;Questyno_SamFisher7",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher8_Begin;Questyno_SamFisher8",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher9_Begin;Questyno_SamFisher9",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher10_Begin;Questyno_SamFisher10",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher11_Begin;Questyno_SamFisher11",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher12_Begin;Questyno_SamFisher12",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher13_Begin;Questyno_SamFisher13",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher14_Begin;Questyno_SamFisher14",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher15_Begin;Questyno_SamFisher15",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher16_Begin;Questyno_SamFisher16",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher17_Begin;Questyno_SamFisher17",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher18_Begin;Questyno_SamFisher18",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher19_Begin;Questyno_SamFisher19",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher20_Begin;Questyno_SamFisher20",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher21_Begin;Questyno_SamFisher21",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher22_Begin;Questyno_SamFisher22",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher23_Begin;Questyno_SamFisher23",
		"Questyno_SamFisher;SFQuest_Questyno_SamFisher24_Begin;Questyno_SamFisher24",
	},
	TaylorBlaze = {
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze1_Begin;Questyno_TaylorBlaze1",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze2_Begin;Questyno_TaylorBlaze2",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze3_Begin;Questyno_TaylorBlaze3",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze4_Begin;Questyno_TaylorBlaze4",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze5_Begin;Questyno_TaylorBlaze5",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze6_Begin;Questyno_TaylorBlaze6",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze7_Begin;Questyno_TaylorBlaze7",
		"Questyno_TaylorBlaze;SFQuest_Questyno_TaylorBlaze8_Begin;Questyno_TaylorBlaze8",
	},
	MarcusKane = {
		"Questyno_MarcusKane;SFQuest_Questyno_MarcusKane1_Begin;Questyno_MarcusKane1",
		"Questyno_MarcusKane;SFQuest_Questyno_MarcusKane2_Begin;Questyno_MarcusKane2",
		"Questyno_MarcusKane;SFQuest_Questyno_MarcusKane3_Begin;Questyno_MarcusKane3",
		"Questyno_MarcusKane;SFQuest_Questyno_MarcusKane4_Begin;Questyno_MarcusKane4",
	},
	AlexMercer = {
		"Questyno_AlexMercer;SFQuest_Questyno_AlexMercer1_Begin;Questyno_AlexMercer1",
		"Questyno_AlexMercer;SFQuest_Questyno_AlexMercer2_Begin;Questyno_AlexMercer2",
		"Questyno_AlexMercer;SFQuest_Questyno_AlexMercer3_Begin;Questyno_AlexMercer3",
	},
	OliviaChambers = {
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers1_Begin;Questyno_OliviaChambers1",
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers2_Begin;Questyno_OliviaChambers2",
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers3_Begin;Questyno_OliviaChambers3",
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers4_Begin;Questyno_OliviaChambers4",
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers5_Begin;Questyno_OliviaChambers5",
		"Questyno_OliviaChambers;SFQuest_Questyno_OliviaChambers6_Begin;Questyno_OliviaChambers6",
	},
	HarperWells = {
		"Questyno_HarperWells;SFQuest_Questyno_HarperWells1_Begin;Questyno_HarperWells1",
		"Questyno_HarperWells;SFQuest_Questyno_HarperWells2_Begin;Questyno_HarperWells2",
		"Questyno_HarperWells;SFQuest_Questyno_HarperWells3_Begin;Questyno_HarperWells3",
		"Questyno_HarperWells;SFQuest_Questyno_HarperWells4_Begin;Questyno_HarperWells4",
	},
	GraceChambers = {
		"Questyno_GraceChambers;SFQuest_Questyno_GraceChambers1_Begin;Questyno_GraceChambers1",
		"Questyno_GraceChambers;SFQuest_Questyno_GraceChambers2_Begin;Questyno_GraceChambers2",
		"Questyno_GraceChambers;SFQuest_Questyno_GraceChambers3_Begin;Questyno_GraceChambers3",
		"Questyno_GraceChambers;SFQuest_Questyno_GraceChambers4_Begin;Questyno_GraceChambers4",
	},
	LucasMiller = {
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller1_Begin;Questyno_LucasMiller1",
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller2_Begin;Questyno_LucasMiller2",
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller3_Begin;Questyno_LucasMiller3",
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller4_Begin;Questyno_LucasMiller4",
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller5_Begin;Questyno_LucasMiller5",
		"Questyno_LucasMiller;SFQuest_Questyno_LucasMiller6_Begin;Questyno_LucasMiller6",
	},
	MayaBlackwell = {
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell1_Begin;Questyno_MayaBlackwell1",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell2_Begin;Questyno_MayaBlackwell2",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell3_Begin;Questyno_MayaBlackwell3",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell4_Begin;Questyno_MayaBlackwell4",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell5_Begin;Questyno_MayaBlackwell5",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell6_Begin;Questyno_MayaBlackwell6",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell7_Begin;Questyno_MayaBlackwell7",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell8_Begin;Questyno_MayaBlackwell8",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell9_Begin;Questyno_MayaBlackwell9",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell10_Begin;Questyno_MayaBlackwell10",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell11_Begin;Questyno_MayaBlackwell11",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell12_Begin;Questyno_MayaBlackwell12",
		"Questyno_MayaBlackwell;SFQuest_Questyno_MayaBlackwell13_Begin;Questyno_MayaBlackwell13",
	},

	--[[
            *** BENZINAI ***
            - Juan Baker 3837,7028,1 W
            - Benjamin Scott 6688,7467,1 E
            - Sandra Harris 6684,6820,1 S
            - Eric Adams 7659,7316,1 E
            - Ronald Perez 8353,8579,1 E
            - Garrett King 10399,8316,1 E
            - Marvin Perry 8186,11296,1 E
            - Karen Taylor 10144,12787,1 S
]]
	JuanBaker = {
		"Questyno_JuanBaker;SFQuest_Questyno_JuanBaker_Begin;Questyno_JuanBaker",
	},
	BenjaminScott = {
		"Questyno_BenjaminScott;SFQuest_Questyno_BenjaminScott_Begin;Questyno_BenjaminScott",
	},
	SandraHarris = {
		"Questyno_SandraHarris;SFQuest_Questyno_SandraHarris_Begin;Questyno_SandraHarris",
	},
	EricAdams = {
		"Questyno_EricAdams;SFQuest_Questyno_EricAdams_Begin;Questyno_EricAdams",
	},
	RonaldPerez = {
		"Questyno_RonaldPerez;SFQuest_Questyno_RonaldPerez_Begin;Questyno_RonaldPerez",
	},
	GarrettKing = {
		"Questyno_GarrettKing;SFQuest_Questyno_GarrettKing_Begin;Questyno_GarrettKing",
	},
	MarvinPerry = {
		"Questyno_MarvinPerry;SFQuest_Questyno_MarvinPerry_Begin;Questyno_MarvinPerry",
	},
	KarenTaylor = {
		"Questyno_KarenTaylor;SFQuest_Questyno_KarenTaylor_Begin;Questyno_KarenTaylor",
	},
}

SFQuest_Database.RandomEventPool.Questyno = Questyno;
-- def quest daily
--[[ table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_Money",
	condition = "notmaxedwithcode;Questyno_Money;1",
	commands = "randomcodedworldfrompool;Questyno_Money;Questyno;Money",
	days = 0,
	frequency = 1
});]]
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_Lupo",
	condition = "notmaxedwithcode;Questyno_Lupo;1",
	commands = "randomcodedworldfrompool;Questyno_Lupo;Questyno;Lupo",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_Grif",
	condition = "notmaxedwithcode;Questyno_Grif;1",
	commands = "randomcodedworldfrompool;Questyno_Grif;Questyno;Grif",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_AngelicaStella",
	condition = "notmaxedwithcode;Questyno_AngelicaStella;1",
	commands = "randomcodedworldfrompool;Questyno_AngelicaStella;Questyno;AngelicaStella",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_HeatherThomas",
	condition = "notmaxedwithcode;Questyno_HeatherThomas;1",
	commands = "randomcodedworldfrompool;Questyno_HeatherThomas;Questyno;HeatherThomas",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_EliaRima",
	condition = "notmaxedwithcode;Questyno_EliaRima;1",
	commands = "randomcodedworldfrompool;Questyno_EliaRima;Questyno;EliaRima",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_BobRepair",
	condition = "notmaxedwithcode;Questyno_BobRepair;1",
	commands = "randomcodedworldfrompool;Questyno_BobRepair;Questyno;BobRepair",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_MikePozzo",
	condition = "notmaxedwithcode;Questyno_MikePozzo;1",
	commands = "randomcodedworldfrompool;Questyno_MikePozzo;Questyno;MikePozzo",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_RosaChina",
	condition = "notmaxedwithcode;Questyno_RosaChina;1",
	commands = "randomcodedworldfrompool;Questyno_RosaChina;Questyno;RosaChina",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_EmilyTerry",
	condition = "notmaxedwithcode;Questyno_EmilyTerry;1",
	commands = "randomcodedworldfrompool;Questyno_EmilyTerry;Questyno;EmilyTerry",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_VictoriaSecret",
	condition = "notmaxedwithcode;Questyno_VictoriaSecret;1",
	commands = "randomcodedworldfrompool;Questyno_VictoriaSecret;Questyno;VictoriaSecret",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_SusanLee",
	condition = "notmaxedwithcode;Questyno_SusanLee;1",
	commands = "randomcodedworldfrompool;Questyno_SusanLee;Questyno;SusanLee",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_GeorgeScott",
	condition = "notmaxedwithcode;Questyno_GeorgeScott;1",
	commands = "randomcodedworldfrompool;Questyno_GeorgeScott;Questyno;GeorgeScott",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_SamuelYoung",
	condition = "notmaxedwithcode;Questyno_SamuelYoung;1",
	commands = "randomcodedworldfrompool;Questyno_SamuelYoung;Questyno;SamuelYoung",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_XuMishura",
	condition = "notmaxedwithcode;Questyno_XuMishura;1",
	commands = "randomcodedworldfrompool;Questyno_XuMishura;Questyno;XuMishura",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_DavidTurner",
	condition = "notmaxedwithcode;Questyno_DavidTurner;1",
	commands = "randomcodedworldfrompool;Questyno_DavidTurner;Questyno;DavidTurner",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_RafaelPrezioso",
	condition = "notmaxedwithcode;Questyno_RafaelPrezioso;1",
	commands = "randomcodedworldfrompool;Questyno_RafaelPrezioso;Questyno;RafaelPrezioso",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_JeffreyLewis",
	condition = "notmaxedwithcode;Questyno_JeffreyLewis;1",
	commands = "randomcodedworldfrompool;Questyno_JeffreyLewis;Questyno;JeffreyLewis",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_ChristopherDavis",
	condition = "notmaxedwithcode;Questyno_ChristopherDavis;1",
	commands = "randomcodedworldfrompool;Questyno_ChristopherDavis;Questyno;ChristopherDavis",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_PamelaPerez",
	condition = "notmaxedwithcode;Questyno_PamelaPerez;1",
	commands = "randomcodedworldfrompool;Questyno_PamelaPerez;Questyno;PamelaPerez",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_SamFisher",
	condition = "notmaxedwithcode;Questyno_SamFisher;1;hasfactiontier;SamFisher;2",
	commands = "randomcodedworldfrompool;Questyno_SamFisher;Questyno;SamFisher",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_TaylorBlaze",
	condition = "notmaxedwithcode;Questyno_TaylorBlaze;1;hasfactiontier;TaylorBlaze;2",
	commands = "randomcodedworldfrompool;Questyno_TaylorBlaze;Questyno;TaylorBlaze",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_MarcusKane",
	condition = "notmaxedwithcode;Questyno_MarcusKane;1;hasfactiontier;MarcusKane;2",
	commands = "randomcodedworldfrompool;Questyno_MarcusKane;Questyno;MarcusKane",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_AlexMercer",
	condition = "notmaxedwithcode;Questyno_AlexMercer;1;hasfactiontier;AlexMercer;2",
	commands = "randomcodedworldfrompool;Questyno_AlexMercer;Questyno;AlexMercer",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_OliviaChambers",
	condition = "notmaxedwithcode;Questyno_OliviaChambers;1;hasfactiontier;OliviaChambers;2",
	commands = "randomcodedworldfrompool;Questyno_OliviaChambers;Questyno;OliviaChambers",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_HarperWells",
	condition = "notmaxedwithcode;Questyno_HarperWells;1;hasfactiontier;HarperWells;2",
	commands = "randomcodedworldfrompool;Questyno_HarperWells;Questyno;HarperWells",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_GraceChambers",
	condition = "notmaxedwithcode;Questyno_GraceChambers;1;hasfactiontier;GraceChambers;2",
	commands = "randomcodedworldfrompool;Questyno_GraceChambers;Questyno;GraceChambers",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_LucasMiller",
	condition = "notmaxedwithcode;Questyno_LucasMiller;1;hasfactiontier;LucasMiller;2",
	commands = "randomcodedworldfrompool;Questyno_LucasMiller;Questyno;LucasMiller",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_MayaBlackwell",
	condition = "notmaxedwithcode;Questyno_MayaBlackwell;1;hasfactiontier;MayaBlackwell;2",
	commands = "randomcodedworldfrompool;Questyno_MayaBlackwell;Questyno;MayaBlackwell",
	days = 0,
	frequency = 1
});

--[[
            *** BENZINAI ***
            - Juan Baker 3837,7028,1 W
            - Benjamin Scott 6688,7467,1 E
            - Sandra Harris 6684,6820,1 S
            - Eric Adams 7659,7316,1 E
            - Ronald Perez 8353,8579,1 E
            - Garrett King 10399,8316,1 E
            - Marvin Perry 8186,11296,1 E
            - Karen Taylor 10144,12787,1 S
]]
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_JuanBaker",
	condition = "notmaxedwithcode;Questyno_JuanBaker;1",
	commands = "randomcodedworldfrompool;Questyno_JuanBaker;Questyno;JuanBaker",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_BenjaminScott",
	condition = "notmaxedwithcode;Questyno_BenjaminScott;1",
	commands = "randomcodedworldfrompool;Questyno_BenjaminScott;Questyno;BenjaminScott",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_SandraHarris",
	condition = "notmaxedwithcode;Questyno_SandraHarris;1",
	commands = "randomcodedworldfrompool;Questyno_SandraHarris;Questyno;SandraHarris",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_EricAdams",
	condition = "notmaxedwithcode;Questyno_EricAdams;1",
	commands = "randomcodedworldfrompool;Questyno_EricAdams;Questyno;EricAdams",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_RonaldPerez",
	condition = "notmaxedwithcode;Questyno_RonaldPerez;1",
	commands = "randomcodedworldfrompool;Questyno_RonaldPerez;Questyno;RonaldPerez",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_GarrettKing",
	condition = "notmaxedwithcode;Questyno_GarrettKing;1",
	commands = "randomcodedworldfrompool;Questyno_GarrettKing;Questyno;GarrettKing",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_MarvinPerry",
	condition = "notmaxedwithcode;Questyno_MarvinPerry;1",
	commands = "randomcodedworldfrompool;Questyno_MarvinPerry;Questyno;MarvinPerry",
	days = 0,
	frequency = 1
});
table.insert(SFQuest_Database.DailyEventPool, {
	dailycode = "Questyno_KarenTaylor",
	condition = "notmaxedwithcode;Questyno_KarenTaylor;1",
	commands = "randomcodedworldfrompool;Questyno_KarenTaylor;Questyno;KarenTaylor",
	days = 0,
	frequency = 1
});

-- quest introduttive daily
--table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_Money_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_Lupo_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_Grif_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_AngelicaStella_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_HeatherThomas_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_EliaRima_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_BobRepair_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_MikePozzo_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_RosaChina_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_EmilyTerry_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_VictoriaSecret_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_SusanLee_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_GeorgeScott_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_SamuelYoung_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_XuMishura_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_DavidTurner_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_RafaelPrezioso_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_JeffreyLewis_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_ChristopherDavis_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_PamelaPerez_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_SamFisher_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_TaylorBlaze_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_MarcusKane_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_AlexMercer_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_OliviaChambers_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_HarperWells_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_GraceChambers_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_LucasMiller_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_MayaBlackwell_Intro" })

-- quest introduttive catene
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_EzekielFlynn_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_ElowenBeckett_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_BrianWhite_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_JohnBaker_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_EthanSteele_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_RichardBrown_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_RobertWilson_Intro" })
table.insert(SFQuest_Database.StartingPool, { quest = "Questyno_AndrewTurner_Intro" })

-- quest daily (così vengono sbloccate da subito?)
--table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_Money" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_Lupo" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_Grif" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_AngelicaStella" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_HeatherThomas" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_EliaRima" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_BobRepair" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_MikePozzo" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_RosaChina" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_EmilyTerry" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_VictoriaSecret" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_SusanLee" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_GeorgeScott" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_SamuelYoung" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_XuMishura" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_DavidTurner" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_RafaelPrezioso" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_JeffreyLewis" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_ChristopherDavis" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_PamelaPerez" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_SamFisher" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_TaylorBlaze" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_MarcusKane" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_AlexMercer" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_OliviaChambers" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_HarperWells" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_GraceChambers" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_LucasMiller" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_MayaBlackwell" })


--[[
            *** BENZINAI ***
            - Juan Baker 3837,7028,1 W
            - Benjamin Scott 6688,7467,1 E
            - Sandra Harris 6684,6820,1 S
            - Eric Adams 7659,7316,1 E
            - Ronald Perez 8353,8579,1 E
            - Garrett King 10399,8316,1 E
            - Marvin Perry 8186,11296,1 E
            - Karen Taylor 10144,12787,1 S
]]
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_JuanBaker" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_BenjaminScott" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_SandraHarris" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_EricAdams" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_RonaldPerez" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_GarrettKing" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_MarvinPerry" })
table.insert(SFQuest_Database.StartingPool, { daily = "Questyno_KarenTaylor" })


-- completamento quest introduttive (da spostare nel unlock delle quest stesse..)
--table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_Brioshi;SFQuest_Questyno_Money_Intro_Complete;Questyno_Money_Intro" })
--table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_TonyLupo;SFQuest_Questyno_Lupo_Intro_Complete;Questyno_Lupo_Intro" })
--[[ table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_Grif;SFQuest_Questyno_Grif_Intro_Complete;Questyno_Grif_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_AngelicaStella;SFQuest_Questyno_AngelicaStella_Intro_Complete;Questyno_AngelicaStella_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_HeatherThomas;SFQuest_Questyno_HeatherThomas_Intro_Complete;Questyno_HeatherThomas_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_EliaRima;SFQuest_Questyno_EliaRima_Intro_Complete;Questyno_EliaRima_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_BobRepair;SFQuest_Questyno_BobRepair_Intro_Complete;Questyno_BobRepair_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_MikePozzo;SFQuest_Questyno_MikePozzo_Intro_Complete;Questyno_MikePozzo_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_RosaChina;SFQuest_Questyno_RosaChina_Intro_Complete;Questyno_RosaChina_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_EmilyTerry;SFQuest_Questyno_EmilyTerry_Intro_Complete;Questyno_EmilyTerry_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_VictoriaSecret;SFQuest_Questyno_VictoriaSecret_Intro_Complete;Questyno_VictoriaSecret_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_SusanLee;SFQuest_Questyno_SusanLee_Intro_Complete;Questyno_SusanLee_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_GeorgeScott;SFQuest_Questyno_GeorgeScott_Intro_Complete;Questyno_GeorgeScott_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_SamuelYoung;SFQuest_Questyno_SamuelYoung_Intro_Complete;Questyno_SamuelYoung_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_XuMishura;SFQuest_Questyno_XuMishura_Intro_Complete;Questyno_XuMishura_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_DavidTurner;SFQuest_Questyno_DavidTurner_Intro_Complete;Questyno_DavidTurner_Intro" }) ]]
-- completamento quest introduttive catene
--[[ table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_EzekielFlynn;SFQuest_Questyno_EzekielFlynn_Intro_Complete;Questyno_EzekielFlynn_Intro" })
table.insert(SFQuest_Database.StartingPool,{ world = "Questyno_ElowenBeckett;SFQuest_Questyno_ElowenBeckett_Intro_Complete;Questyno_ElowenBeckett_Intro" })
 ]]
