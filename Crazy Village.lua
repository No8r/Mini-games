local scripter do
    local _,n = pcall(nil)
    scripter = string.match(n, "(.-)%.")
end

local admins = {
    [scripter] = true,
	["Lalajb#0000"] = true,
	["Uvfn#0000"] = true,
	["Kiwi_is_here#0558"] = true,
	["Massi#0010"] = true,
	["Omaraldin#1619"] = true,
	["Ragekitteee#0015"] = true,

}

local funcorps={}

local game = {
	able_img_list = true,
    add_flower = 50, -- secound
	flower_number = 0 ,
	systemTimer = false,
	gift = 10 ,
	skyMode = "morning",
    data_version = 0 , -- Don't change this
    commands = {"msg","next","c","img","k","gift","admin","f","data"},
	keys = {0,1,2,3,4,69,32,72},
	settings_menu={},
	fastIcon = {},
	players = {},
	time = {	
		hour = 8 ,
		min = 0 ,
	},
}

local flowers = {}
local flower = {add = 0, put = 0}

local price={
	changeSize=1,
	changenick=15,
	changecolor=10,
	coffee=5,
	open_portal=50,
	transforming=15
}

character = {
	mouny={
		number = 1,
		name = "Mouny",
		color = "d7b27e",
		x = 6228 ,
		y = 1630 ,
		callback = {
			[1] = "mouny1",
			[2] = "mouny1",
		},
		img = {
			big = {"172f7272c07.png",110,170},
		}
	},
	justin={
		number = 2,
		name = "Justin",
		color = "51cae7",
		flower = price.transforming,
		callback = {
			[1] = "justin1"
		},
		x = 17816 ,
		y = 470 ,
		img = {
			big = {"172a564607a.png",110,150},
			small = {"172a56433a6.png",17816,494,"fg"},
		}
	},
	zalekha={
		number = 3,
		name = "Zalekha",
		color = "d7b27e",
		callback = {
			[1] = "zalekha1",
			[2] = "zalekha2",
		},
		x = 7777 ,
		y = 1670 ,
		img = {
			big = {"171b741a1c0.png",110,180},
			small = {"16f6d89a920.png",7780,1695,"fg"}
		}
	},
	veinem={
		number = 4,
		name = "Veinem",
		color = "FFF2F5",
		x = 4995 ,
		y = 1630 ,
		img = {
		    big = {"1718eae311f.png",80,170},
		    small = {"1718e86a41f.png",5005,1650,"fg"}
		},
    },
    uvfn={
		number = 5,
		name = "Uvfn",
		color = "ED9C00",
		x = 11436 ,
		y = 220 ,
		flower = price.coffee ,
		callback = {
			[1] = "coffee",
		},
		img = {
			big = {"171a7e2cd2e.png",100,170}
		},
    },
    aron={
		number = 6,
		name = "Aron",
		color = "EFF2F7",
		x = 8937 ,
		y = 1590 ,
		flower = price.changeSize ,
		img = {
			big = {"1718013d8e6.png",65,180}
		},
    },
    heba={
		number = 7,
		name = "Heba",
		color = "FFE8D7",
		x = 8933 ,
		y = 1370 ,
		flower = price.changecolor ,
		callback = {
			[1] = "changecolor",
			[2] = "accessories"
		},
		img = {
		    big = {"1704ac6eca2.png",110,180}
		},
    },
    sadeah={
		number = 8,
		name = "Sadeah",
		color = "B16127",
		flower = price.changenick ,
		x = 9364 ,
		y = 1347 ,
		callback = {
			[1] = "changenick",
			[2] = "colornick"
		},
		img = {
		    big = {"17183e6416e.png",110,180}
		},
    },
    poul={
		number = 9,
		name = "Poul",
		color = "ce6f80",
		callback = {
			[1] = "poul1",
		},
		x = 16121 ,
		y = 440 ,
		img = {
		    big = {"1744ad7430f.png",110,170},
		    small = {"1744ad71059.png",16121,450,"fg"},
		},
	},
	vigo = {
		number = 10,
		name = "Vigo",
		color = "FFFF9A",
		x = 113 ,
		y = 1600 ,
		img = {
			big = {"1742ba01541.png",95,150},
			small = {"17192fb945c.png",100,1610,"fg"}
		},
	},
	soul2 = {
		number = 11,
		name = "Soul",
		color = "ce6f80",
		callback = {
			[1] = "soul1",
			[2] = "soul2",
		},
		x = 6752 ,
		y = 1640 ,
		img = {
			big = {"1724d7e03ff.png",80,150},
			small = {"1724d7db80c.png",6750 ,1655,"fg"}
		},
	},
	mamamia = {
		number = 12,
		name = "Mamamia",
		color = "FFFCB4",
		x = 9460 ,
		y = 1650 ,
		img = {
			big = {"174180dbc93.png",100,165},
		},
	},
	zoro = {
		number = 13,
		name = "Zoro",
		color = "4EB29C",
		x = 9209 ,
		y = 1610 ,
		img = {
			big = {"174221dc1d3.png",110,180},
		},
	},
	fleur = {
		number = 14,
		name = "Fleur",
		color = "FFBDB6",
		x = 2350 ,
		y = 1645 ,
		img = {
			small = {"174350c06fc.png",2350,1665,"fg"},
			big = {"174350ae9df.png",110,180},
		},
	},
	jassem = {
		number = 15,
		name = "Jassem",
		color = "8EE0E2",
		x = 24325 ,
		y = 836  ,
		img = {
			big = {"174350ae9df.png",110,180},
		},
	},
}
quests={
	item={
		name={},
		img={},
		x={},
		taked={},
	},
}

doors = {
	--{id,enter,xTA,yTA,xTele,yTele,out}--
	{1, "cafe", 751, 1660, 11810,359,"village"},
	{2, "village", 11806, 298,752 ,1711,"cafe"},
	{3, "shop", 511, 1649, 9360 ,1689,"village"},
	{5, "village", 9429, 1617,511 ,1721,"shop"},
	{6, "zalekha_house", 1516 ,1660,8506 ,1722,"village"},
	{7, "village", 8550, 1685,1482 ,1724,"zalekha_house"},
	{8, "school", 4465, 1677,19250 ,1705,"village"},
	{9, "village", 16033, 473,6726 ,1648,"magicplace"},
	{10, "mushroom_place", 13478 , 459,18166 ,480,"magicplace",0,-100},
	{11, "magicplace", 18120 , 440,13480 ,460,"mushroom_place",0,-100},
	{12, nil, 1897 , 1633, 1897 ,1465},
	{13, "village", 19127 , 1586,4465,1700,"school"},
	{14, nil, 20819 , 1529, 20814 ,1228},
	{15, nil, 20816 , 1274, 20815 ,1475},

	{16, "classes", 19738 ,1540, 22935 , 885, "school"},
	{17, "classes", 20135 ,1540, 23094 , 885, "school"},
	{18, "classes", 20643 ,1540, 24075 , 885, "school"},

	{19, "school", 24075 , 833, 20643 , 1626, "classes"},
	{20, "school", 23089 , 837, 20135 , 1626, "classes"},
	{21, "school", 22923 , 833, 19738 , 1626, "classes"},

	{22, "classes", 19868 , 1149 , 22538 , 410, "school"},
	{23, "classes", 20998 , 1149 , 25101 , 410, "school"},
	{24, "classes", 21082 , 1149 , 25301 , 410, "school"},

	{25, "school",22526 , 350 , 19868 , 1230, "classes"},
	{26, "school",25118 , 350 , 20998 , 1230, "classes"},
	{27, "school",25308 , 350 , 21082 , 1230, "classes"},

	--Library Stairs
	{28, nil,21925 ,230 ,21925 ,364},
	{29, nil,21925 ,364 ,21925 ,230},

	--Bathrooms-in
	{31, "classes", 20181 , 1149, 23442, 440,"school"},
	{32, "classes", 20425 , 1149, 23660, 440,"school"},

	--Bathrooms-out
	{33, "school",23424 ,368, 20182 , 1230,"classes"},
	{34, "school",23704 ,368, 20425 , 1230,"classes"},
}

places ={
	village = {
		{"p1", "172e8b225f4.png", "!20", 6345, 1195},
		{"p2", "172e878abc2.png", "?19", 4595, 1170},
		{"p3", "172e8b09dbb.png", "?20", 6345, 1175},
		{"p4", "1746549bf4f.png", "!21", -5, 1400},
		{"p5", "172e8b225f4.png", "!20", 6345, 1195},
		{"p6", "174654539df.png", "?22", -5, 980},
		{"p7", "17468b6940e.png", "?20", 4988, 1657},
		{"p9", "1746546a662.png", "?23", 2895, 980},
		{"p8", "17468cbbfc4.png", "?20", 4815, 657},
		{"p10", "172e87ef557.png", "?25", 4595, 1175},
		{"p11", "172e8b2cf7b.png", "?20", 6345, 1475},
		{"p12", "17468f701d0.png", "?20", 1862 , 1511},
	},
	school = {
		{"place1", "1747a2bf338.png", "?27", 18845, 950},
		{"place2", "1747a417c58.png", "!27", 18845, 950},
		{"lib", "17672de7c0f.png", "!4", 19856 , 1070},
		{"lab", "17672de4007.png", "!4", 20986 , 1069},
	},
	magicplace = {
		{"p1","17250b23fff.png", "?16", 12465, 0},
		{"p2","172ec820f35.png", "?17", 13883, 0},
		{"p3","172ec854115.png", "?18", 15382, 0},
		{"fgplace", "172ec9369e7.png", "!19", 12465, 478},
	},
	mushroom_place = {
		{"p1", "1702b46da7c.png", "?20", 16995,0},
	},
    cafe = {
        {"place1", "172f6aa1f8d.png", "?9", 10813, 0},
        {"placefg", "172f6ac6bdd.png", "!9", 10813, 0},
		---{"light","172f6ad1797.png", "!10",10813,0},
	},
	zalekha_house = {
        {"p1", "173de825e36.png", "?2", 7241, 1301},
		{"p2", "173ed4aedc5.png", "!3", 7241, 1301},
	},
	shop = {
        {"p1", "174171ab923.png", "?2", 8555, 1140},
		{"p2", "174171b099b.png", "!3", 8555, 1140},
	},
	classes = {
		{"p1", "17667878289.png", "?2", 21485 , 5},
		{"p2", "176678b07b2.png", "!3", 21485 , 5},
		{"p3", "1766ce0284d.png", "!3", 21485 , 1050},
	},
}

imgPlaces = {
	village = {p1={},p2={},p3={},p4={},p5={},p6={},p7={},p8={},p9={},p10={},p11={},p12={}},
	magicplace = {p1={},p2={},p3={},fgplace={}},
	mushroom_place = {p1={}},
	school = {place1={},place2={},stdn={},stdn2={},lib={},lab={}},
	cafe = {place1={},placefg={}},
	zalekha_house = {p1={},p2={},zalekha={}},
	shop = {p1={},p2={}},
	classes = {p1={},p2={},p3={}},
}

p =  {}
colors={"<VP>","<PT>","<V>","<FC>","<CH2>","<R>"}
badnames={"أير","كس","قحب","شرموط","منتاك","خول","عرص","أمك","#","#0010","#0020","#0001","penis","Suka","suka","suczka","Allah","allah","Fuck","fuck","bitch","Bitch","dick","Dick","pussy","Pussy","Shit","shit","Cock","خرى","خرا","زق","كسمك","زب","زبي","Melibellule","Noooooooorr","Tigrounette","Funcorp","  "}


lang = {
  ar = {
	word_language = "اللغة",
	word_french = "الفرنسية",
	word_error = "خطأ",
	roomname="!القرية المجنونة",
	word_and="و",
	word_okay="حسنا",
	word_goodbye="إلى اللقاء",
	females = "<CH2>الإناث</CH2>",
	males = "<CH>ذكور</CH>",
	help = "المساعدة",
	credits = "الإئتمانات",
	bag="حقيبة",
	hummer="مطرقة",
	axe="فأس",
	pencil="قلم رصاص",
	gloves="قفازات",
	memesMenu="قائمة الصور",
	bucket="دلو",
	no="لا",
	yes="نعم",
	maybe_later="ربما لاحقًا",
	nice="رائع",
	thanks="شكرا",

	more_25_name="<r>.اسم يحتوي على أكثر من 25 حرف <b>[%s]</b></r>",
	cant_enter = "<r><b>[%s]</b> .%sهذا المكان مخصص لل</r>",
	bad_name = "<r>.اسم غير لائق <b>[%s]</b></r>",
	empty_name = "<r>.اسم فارغ <b>[%s]</b></r>",

	barbiePhone="<rose>هاتف باربي</rose>",
	you_need_to_find="<N>.أولًا <b><fc>%s</fc></b> عليك أن تجد</N>",
	youtook="<N>!<b><fc>%s</fc></b> لقد اخذت</N>",
	flowerNumber="<V>%s</V><g>:من الورد <rose>%s</rose> لديه</g>",
	addFlowers="<font color='#FF89C1' face='soopafresh' size='15'>+1</font> :ثانية <rose><b>"..game.add_flower.."</b></rose> كل",
	help_menu1="<p align='right'>\n<b> !مرحبًا بك في القرية المجنونة </b> \n المكان الذي يمكنك من خلاله إستكشاف عوالم مختلفة عن ترانسفورمايس ،حيث يمكنك التسكع مع الأصدقاء و شراء أشياء غريبة عجيبة",
	help_menu2="<b>:كيفية الحصول على الورد</b>\n :يوجد طرق عديدة يمكنك من خلالها الحصول على ورد منها \n<font size='10'>القيام بالمهمات للأشخاص الموجودة بالقرية•\nعند الإقتراب منها E البحث عن ورد متساقطة بالأرض وضغط•\n.ثانية لتحصل وردة واحدة <rose>"..game.add_flower.."</rose> إنتظار•",
	help_menu3="<b>:الأوامر المتوفرة</b>\n<J>!f</J> <V>[اسم لاعب]</V><BL>إظهار ورد اسم اللاعب</BL>\n\n<b>ما الذي يجب عليك فعله؟</b>\n :في هذه القرية يمكنك القيام بالعديد من الأشياء منها \n تغيير اسمك و لونه من خلال المتجر الجنوني•\n !تغيير حجم فأرك كعملاق أو كالنملة•\nالذهاب للعالم السحري و استكشافه•\n!التحول لأشياء مضحكة و لطيفة عن طريق قائمة الصور•\n !!و العديد من الأشياء التي تنتظرك كي تستكشفها",
	credits1="\n<p align='center'>لقد تم برمجة هذه القرية بواسطة \n <fc>%s</fc>\n\n المساعدة في تصميم بعض مناطق القرية\n <v>%s</v> \n\n \n و شكرا خاص للأشخاص الذين \n!ساهموا و لو بشيء بسيط في تطوير النمط ",

	locked_door = "<r>.هذا الباب مغلق ، عد في الصباح <b>[%s]</b></r>",
	badName="للأسف اسم غير لائق أو فارغ أو أكبر من 20 حرف، لا يمكن إختياره ",
	soon="!قريباً",
	mod="النمط",
	dontHaveFlower="<N>!للدفع <font color='#FFE8D7'>وردة %s <N>تحتاج أن تملك",
	welcome="<b>!!!مرحبًا بك في القرية المجنونة </b>\n<font color='#D8825A'> المكان المناسب للإستمتاع و قضاء أوقات ممتعة برفقة العديد من اللاعبين\n !قم بتفقد جميع الأماكن الموجودة بالقرية و استكشاف عوالمها الرائعة</font>  ",
	youCantEnter="لا يُسمح لك بالدخول إلى هناك",
	dontLetMeKickYou="!لا تجعلني أقوم بطردك",
	goAwayFromHere="! إخرج من هُنا @#$@",
	aron_1=":مرحباً، يمكنك هنا إختيار حجم الفأر المناسب لك! لكن سوف يُكلفك ",
	sadeah_1="<b> :لكل خيار </b>مرحبًا أيها الفأر و أهلا بك ، يمكنك شراء اسم جديد لك و تغيير لونه ",
	sadeah_s1a1="تغيير الاسم",
	sadeah_s1a2="تغيير لون الاسم",
	sadeah_changeNicktext="<font color='#24A5DD'><B>:قُم بوضع أي اسم تريده لكن عليك أن تعلم أنني لن أقوم بتغييره إذا</font></B>\n <r> %s </r> \n <n>لكن سوف آخذ الورود على أي حال",
	youCantEnterThere="!أنت بعيد جدًا ، اقترب",
	heba_1=":قم بأختيار ما تحتاجه إنه يُكلف <font color='#FFE8D7'> متجر هبة</font> مرحباً،بك في ",
	heba_s1a1="تغيير لون الفأر",
    heba_s1a2="زينة للفأر",
	waitAMoment=".سيتم تلبية طلبك في غضون لحظات",
	done=".تمَّ تلبية طلبك",
	zalekha_goAwayFromMyHouse="!إخرج من منزلي",
	zalekha_idont="لا أريد تقبيلك",
	zalekha_whyAreYouAngry="لماذا أنت غاضب؟",
	zalekha_dontCryPls="أرجوك لا تبكي ;/",
	zalekha_goodDancer="!رقصك رائع",
	veinem_1="أهلا و مرحبًا ، يبدو أنك سائح. هل يمكنني مساعدتك بشيء؟",
	veinem_s1a1="أنت قبيح",
	veinem_s1a2="هذا لطف منك",
	veinem_secound="!هذا فظاظة من فأر جميل. حسنًا ، إذا كنت لا تريد مني أن أساعدك ، فأنت حر ، واستمتع",
	veinem_firstChoice1="حسنًا",
	veinem_secoundChoice1="أنا آسف",
	veinem_third="!هل تعلم؟ هذة المنطقة تسمى غابة القمر لإسباب لا يعلمها سوى السكان المحليين",
	veinem_welcome="!على الرحب والسعة ، تفضل هذه الهدية مني و هي بعض الورد",
    add="!من الورد <font color='#FFE8D7'>%s</font> لقد تلقيت",
    flowers="ورد",
	uvfn_youhave="!لقد شربت القهوة بالفعل",
	uvfn_1=":هل تريد بعض القهوة؟ إنها تجعلك سريع لمدة دقيقة لكنها تكلف",
	uvfn_s1a1="نعم,رجاءا",
	uvfn_s1a2="لا،شكرا",
	uvfn_done="!<N>يمكنك الجري لمدة 60 ثانية",
	uvfn_youcantnow=".لقد إنتهى مفعول القهوة",
	zalekha_1="مرحباً،أنا زليخة سَعدت بمعرفتك",
	zalekha_s1a1="!مرحباً",
	zalekha_s1a2="تحتاجين مساعدة؟",
	zalekha_sp1="أريد مساعدتك أرجوك  كنت في الأرجاء اتجول و فجأة سقط مني \n الخاص بي ،هل يمكنك مساعدتي؟<font color='#FF5AB3'><B> هاتف الباربي",
	zalekha_sp2=" ...الخاص بي<font color='#FF5AB3'> هاتف باربي</font> صراحة ، نعم أنا أحتاج إلى مساعدتك للعثور عن\n،فهل يمكنك مساعدتي؟",
	zalekha_a2="طبعًا",
	zalekha_sp3=" <font color='#FFE8D7'>!20وردة</font> ياي! شكرا لك عندما تجدها وتعطيها لي سأعطيك",
	zalekha_a3="!حسنًا",
	zalekha_sp4="شكرا جداً لإنك أعدت إلي هاتفي<font color='#FF5AB3'> باربي الحلوة</font> يااي",
	zalekha_a4="العفو",
	vigo_1=":في هذا المتجر يمكنك شراء اشياء مجنونة! لهذا سمي \n <fc>!الجنوني</fc> <bv>بالمتجر</bv>",
	vigo_s1a1 ="<fc>!الجنوني</fc> <bv>المتجر</bv>",

	---Soul translation
	soul_1="  الملقبة باسم روح، <font color='#ce6f80'><B> سول </B></font>مرحبًا أنا  \n !لقد تم تسميتي بهذا الاسم لإنني ولدت في عالم سحري",
	soul_s1a1="تشرفنا" ,
	soul_s1a2="أخبريني المزيد",
	soul_s2=" <V>%s</V> شكرًا تشرفت أيضاً بك يا \n إذا هل تريد معرفة المزيد عن العالم السحري؟",
	soul_a1s2="نعم رجاءًا",
	soul_s3="<font color='#ce6f80'><B> الكون السحري </B></font> حسنًا المكان السحري هذا يدعى  \n عندما تذهب إليه ستنسى أنك في لعبة فئران أساسًا",
	more="!المزيد",
	cut_short="...اختصري",
	soul_s4="!!من خلال السحر الذي اقوم به <font color='#ce6f80'><B> الكون السحري </B></font> يمكنك الدخول إلى \n يمكنك إعتباره بُعدًا آخر لعالمنا الفئراني هذا",
	go_there="!أريد الذهاب",
	soul_s5=":يمكنني إصطحابك إلى هناك عن طريق سحري ، لكنني أريد مقابل ذلك",
	ok_sure="حسنًا موافق",
	soul_s6="!حسنًا ، يمكنك التحدث معي بأي وقتٍ تريد",
	soul_s7="؟<font color='#ce6f80'><B> الكون السحري </B></font>هااه! لقد عدت ، إذا هل تريد أن أعرفك أكثر عن",
    for_sure="!بالطبع",
    soul_s8="إذا، هل تريد العودة؟",
	soul_s9="هل تريد الرجوع إلى الكون السحري؟",
	---Justin translation
	justin_1=" هل تريد القدرة على التحول؟، <font color='#51cae7'><B> جاستن </B></font> مرحبا أنا أدعى   \n :لكنني أريد ",
	justin_s1a1="شراء التحول",
	justin_s1a2="ليس الآن",
	---Mouny translation
	mouny_1="...صاحب هذه الحديقة، يبدو أنك جديد على هذا المكان <font color='#d7b27e'>موني</font> مرحبًا أنا",
	mouny_s1a1="!أهلا",
	mouny_s1a2="!تشرفت",
	mouny_s2="سوف أروي لك قصتي المأساوية حسنًا؟\n بالأمس ذهبت إلى المقهى و أكثرت بشرب عصير التفاح اللذيذ و لسوء الحظ\nعند عودتي سقطت حقيبتي مني من دون أن أنتبه فهل يمكنك مساعدتي في إيجادها؟",
	mouny_s3="!قول والله! رائع!! ستساعدني حقًا؟ \n!حسنا بالمقابل يمكنني إعطاؤك 20 وردة كشكر لإعادة الحقيبة",
	mouny_s4="والآن، هل يمكنك مساعدتي رجاءًا؟",
	mouny_s5="!رائع! حقيبتي هنا ،لكن مهلًا",
	what="ماذا!؟",
	mouny_s6="!الحقيبة فارغة! الفأس والمطرقة و الدلو و قلم الرصاص\nهل يمكنك العودة و البحث عنهم؟",
	mouny_s7=" :يبدو أنك نسيت بعض الأغراض دعني أقوم بتذكيرك بالحقيبة كان يوجد \n.قلم رصاص و دلو و فأس و مطرقة و قفازات بنية",
	mouny_s8="يا الهي! شكرًا لك لمساعدتي ، خذ مكافأتك اللطيفة <3",
	---
	zoro_1 = "!سوف أقول لك سر صغير للغاية : يوجد مكان سري في القرية",
	zoro_s1a1 = "!!!",
	---
	fleur_1=".لا يمكنني تحمل الرجال الذين لا يهتمون بحقوق النساء\n.حسنَا ليس لدي الكثير من الوقت علي الذهاب وداعًا",
	fleur_s1a1="وداعًا",
	fleur_2=".قوة الفتاة تَكمن في أنوثتها ، الإمرأة مثال للجمال و القوة \n .<rose>من الورد5</rose> و بمناسبة بأنك فتاة سأقدم لك\n.نَعم إعلمي أنكِ رائعة عزيزتي و تستحقين كل الخير",
	fleur_s2a1="!نعم للمرأة",
	---
	be_admin="!أصبح مدير للغرفة <V>%s</V>",
	nolonger_admin = ".لم يعد مديرً للغرفة <V>%s</V>",
	fulfilled="<V>%s</V> : لبى طلب اللاعب <FC>%s</FC>",
	---Admin's Commands Translation
	commands_img="<BL> <J>!img</J><BL>: لتشغيل/لإيقاف تشغيل قائمة الصور",
	commands_c="<J>!c</J> <V>[رسالة]</V> <BL>:إرسال رسالة باسمك لكن بلون مميز<BL>",
	commands_msg=" <J>!msg</J> <V>[رسالة]</V><BL>: <FC>Funcorp</FC> إرسال رسالة باسم</BL>",
	commands_gift=" <J>!gift</J> <V>[اسم لاعب]</V> <BL>: من الورد <Rose>%s</Rose> إعطاء لاعب<BL>",
	commands_k="<J>!k</J> <V>[اسم لاعب]</V><BL> :(تجعل اللاعب يموت و يحيى في نفس المكان (تستعمل لتلبية الطلبات<BL>",
	commands_admin="<J>!admin</J> <V>[اسم لاعب]</V><BL> : (تجعل اللاعب مدير غرفة (للفانكورب فقط<BL>",

	mamamia_1 ="(هبيبي وينك هبيبيي (وينك هبيبيي",
	mamamia_s1a1 ="؟؟؟",


    },
  en={
	roomname="Crazy Village!",
	word_error = "Error",
	word_goodbye="Goodbye!",
	word_okay="Okay",
	females = "<CH2>females</CH2>",
	males = "<CH>males</CH>",
	men = "men",
	help = "Help",
	credits = "Credits",
	bag="bag",
	hummer="hummer",
	axe="axe",
	pencil="pencil",
	gloves="gloves",
	bucket="bucket",
	no="No",
	yes="Yes",
	maybe_later="Maybe later",
	nice="Nice",
	thanks="Thanks!",
	memesMenu="Memes Menu",
	barbiePhone="<rose>Barbie Phone</rose>",
	credits1="\n<p align='center'>This village has been programmed by\n <fc>%s</fc>\n\n Thanks for <v>%s</v> for designing some areas in the village.  \n\n ِAnd Thanks for everyone who contributed the development of the module, even if only a small amount <3",
	maxSize="<r>The max size is:</r> <fc>%s</fc>",

	more_25_name="<r><b>[%s]</b> The name contains more than 30 characters.</r>",
	cant_enter = "<r><b>[%s]</b><r> This place is for %s only.",
	locked_door = "<r><b>[%s]</b> This door is locked ,come back in the morning.</r>",
	bad_name = "<r><b>[%s]</b> Bad Username.</r>",
	empty_name = "<r><b>[%s]</b> Empty Username.</r>",

	you_need_to_find="<N>You must first find a <b><fc>%s</fc></b>.</N>",
	youtook="<N>You took <b><fc>%s</fc></b>!</N>",
	flowerNumber="<V>%s</V><g> Has <rose>%s</rose> Flowers.</g>",
	addFlowers="<font color='#FF89C1' face='soopafresh' size='15'>+1</font> : every <rose><b>"..game.add_flower.."</b></rose>sec",
	help_menu1="<b>Welcome to the Crazy village!</b>\nThe place where you can explore different worlds and places, where you can hang out with friends and buy amazing things",
	help_menu2="<b>How To Get Flowers:</b>\nThere are many ways you can get flowers from:\n<font size='10'>•Doing tasks for the bots in the village\n•Look for falling flowers on the ground and click E near them or wait every <ROSE>"..game.add_flower.."</ROSE> sec to get one Flower</font>",
	help_menu3="<b>Available Commands:</b>\n<J>!f</J> <V>[playername]</V><BL>Show playername's flowers<BL>",
	badName="Unfortunately an inappropriate name cannot be chosen.",
	soon="Soon!",
	mod="Module",
	dontHaveFlower="<N>You need to have <font color='#FFE8D7'> %s FLOWERS <N> to pay! ",
	welcome="<b>Welcome to Crazy Village!!!</b> \n You can have fun with your friends by hanging out with them and buying crazy items at the Crazy Shop!",
	youCantEnter="You can't enter there!",
	dontLetMeKickYou="Don't let me kick you out!",
	goAwayFromHere="@#$@ go away from here!",
	aron_1 = "Hello, here you can choose the right mouse size for you! But it will cost you",
	---Sadeah English Translation
	sadeah_1="Hello cutie and welcome!, you can change you nick and its color \n <b>FOR EVERY OPTION:",
	sadeah_s1a1="Nickname",
	sadeah_s1a2="ColorNickname",
	sadeah_changeNicktext="<font color='#24A5DD'><B>Put any name you want, but you need to know that I will not change it if:<font></B></B>\n %s \n<font color='#C43838'><B>But I will take flowers anyway",
	heba_1="Welcome to <font color='#FFE8D7'> Heba Shop</font> choose what you need,<b> it cost:</b>",
	heba_s1a1="Mouse Color",
	heba_s1a2="Accessories",
	youCantEnterThere="You're too far , get closer!",
	waitAMoment="Your request will be fulfilled in a matter of moments.",
	done="Your request has been fulfilled",
	---Veinem English Translation
	veinem_welcome="You are welcome! This gift from me to you and it is some flowers!!",
	veinem_1="Hey hello, it looks like you're a tourist. Can I help you with something?",
	veinem_s1a1="You are ugly",
	veinem_s1a2="Thanks,its kind from you",
	veinem_secound="This is rudeness from a beautiful mouse. Well if you don't want me to help you , you are free, have fun!.",
	veinem_firstChoice1="Okay",
	veinem_secoundChoice1="I'm sorry",
	veinem_third="Do you know? This area is called the <b>Moon Forest</b>, for reasons that only the locals know about!",
	---
    add="You get <font color='#FFE8D7'>%s</font> Flowers!",
	flowers="Flowers",
	---Uvfn English Translation
	uvfn_done="You can run for 60 secound!!",
	uvfn_youhave="You already drank coffee!",
	uvfn_1="Do you need some <fc>Coffee</fc>? it makes you faster for <b> 1min </b> but it cost:",
	uvfn_s1a1="Yes,please",
	uvfn_s1a2="No,thanks",
	uvfn_youcantnow="Effect of the coffe has expired",
	----
	zalekha_1="Hello ,I'm Zalekha nice to meet you ",
	zalekha_s1a1="Hello!",
	zalekha_s1a2="Need help?",
	zalekha_sp1="I want your help , please, I was just wandering around and suddenly my<font color='#FF5AB3'><B> Barbie phone</B></font> fell from me, can you help me to find it?",
	zalekha_sp2="For real , yes i need your help to find my <font color='#FF5AB3'><B>Barbie Phone</B></font> \n, so can you help me?",
	zalekha_a2="Sure",
	zalekha_sp3="Yay! , thanks you when you find it and give it to me \n i'll give you <font color='#FFE8D7'> 20 Flowers!",
	zalekha_a3="Okay!",
	zalekha_sp4="OMG!<font color='#FF5AB3'>The Beauty Barbie</font> Thank you so much \n You gave me my phone back take your reward",
	zalekha_a4="Goodbye!",
	zalekha_goAwayFromMyHouse="Get out from my house!",
	zalekha_idont="I don't want to kiss you",
	zalekha_whyAreYouAngry="Why are you angry?",
	zalekha_dontCryPls="Don't cry please ;/",
	zalekha_goodDancer="Your dance is great",
	---
	vigo_1 ="In this store you can buy crazy things! This is why it is called the <fc>Crazy</fc> <bv>Shop</bv>.",
	vigo_s1a1 ="<fc>Crazy</fc> <bv>Shop!!</bv>",

	poul_1 = "Seems like my stupid sister brought you here \n So , do you need to back to the village? \n You can go there by click on this <bv><b>blue flower<b></bv>.",
	poul_s1a1="Okay" ,

	soul_1=" Hello! I'm  <font color='#ce6f80'><B> Seol </B></font> nicknamed soul \n I was called by this name because I was born into a magical world!",
	soul_s1a1="NTMY" ,
	soul_s1a2="Tell me more",
	soul_s2="Thank you, nice to meet you too , <V>%s</V>  \n  So do you want to know more about the magical world? ",
	soul_s3="Well this magical place is called <font color='#ce6f80'><B> Magic Universe </B></font>  \n When you go there, you will forget that you are basically in a mice game.",
	more="More!",
	cut_short="cut short..",
	soul_s4="You can enter into the <font color='#ce6f80'><B> Magic Universe </B></font> by my magic \n You can consider it another dimension of this mice world.",
	go_there="Go there!",
	soul_s5="I can take you there with my magic, but I want :",
	ok_sure="Okay sure",
	soul_s6="Well, you can talk to me anytime you want.",
	soul_s7="Hah! You're back, so would you like to know you more about the <font color='#ce6f80'><B> Magic Universe </B></font>.",
	for_sure="For sure!",
    soul_s8="So, do you want to return?",
	soul_s9="Do you want to return to the Magic Univers?",
	--- Justin Translation
	justin_1="Hello I'm<font color='#51cae7'><B> Justin </B></font> , do you want to be able to transforming *-*? \n but i need: ",
	justin_s1a1="buy transform",
	justin_s1a2="nope",

	mouny_1="Hello i'm <font color='#d7b27e'>Mouny</font> the owner of this garden...\n you seem a new mouse in this place...",
	mouny_s1a1="Helloo!",
	mouny_s1a2="Hii!",
	mouny_s2="<font size='11'>Well, yesterday i went to the café and drank a lot of delicious apple juice\nunfortunately,when i return, my bag fell from me without noticing!\n can you help me to find it?",
	mouny_s3="Swear to God! really you'll helping me? noiice!!\n okay in return i can give you <rose><b>20</b></rose> flowers as a thank you for returning the bag.",
	mouny_s4="So now, can you help me please?",
	mouny_s5="Great! , my bag is here but wait...!",
	what="what?",
	mouny_s6="The bag is empty! the axe,hammer,bucket,gloves and pencil aren't here ;'( \nCan you go back and search for them?",
	mouny_s7="Looks like you forgot some items, let me remind you of what there were in the bag:\nPencil, bucket, axe, hammer and brown gloves",
	mouny_s8="Omg! thanks you for helping me , take your cute reward <3",
	---
	zoro_1 = "I will tell you a very small secret: there is a secret place in the village!",
	zoro_s1a1 = "!!!",
	----
	fleur_1="I can't stand men who don't care about women's rights.\n i have to leave, goodbye!",
	fleur_s1a1="goodbye!",
	fleur_2="A girl's strength lies in her femininity, a woman is an example of beauty and strength and an occasion that you are a girl i'll give you <rose>5 flowers</rose>.\nYes, know that you are wonderful and deserve all the best.",
	fleur_s2a1="Yes for woman!",
	----
	be_admin="<V>%s</V> is an admin now!",
	nolonger_admin = "<V>%s</V> is no longer a room admin.",
	fulfilled="<V>%s</V>'s request has been fulfilled by <V>%s</V>",
	---Admin's Comand Translations
	commands_img="<J>!img</J><BL>: to turn on/off the Memes menu.<BL>",
	commands_c="<J>!c</J> <V>[message]</V><BL>: Send a message as your name with orange color.<BL> ",
	commands_msg="<J>!msg</J> <V>[message]</V><BL>: Send a <FC>Funcorp</FC> message.<BL> ",
	commands_gift="<J>!gift</J> <V>[PlayerName]</V><BL>: Give player <Rose>%s</Rose> flowers.<BL> ",
	commands_k="<J>!k</J> <V>[PlayerName]</V><BL>: Makes the player die and respawn in the same place(used to fulfill requests).<BL>",
	commands_admin="<J>!admin</J> <V>[PlayerName]</V><BL> : Makes the player an Admin (For FC Only!)<BL>",

	mamamia_1 ="Habibi wenak habibi,(wenak habibi)",
	mamamia_s1a1 ="???",
    },
}

imgList = {
	{"Return To Mouse", "153d331c6b9", 50, 48},
	{"Massi<g><font size='7'>0010</g>", "1760c15f601", 55, 80, "1760c13ef4b", 55, 80},

	{"Mousey", "1768c360094", 33, 45, "1768c3564cc",33, 45},
	{"Dora Mouse", "1740e70c6cc", 27, 45, "1740e704f7c",27, 45},
	{"Stripper Horse", "165df07c053", 36, 70, "165df038d30", 36, 70},
	{"Mouse with broom", "155c9fa9ef2", 40, 60, "155c9fab3f1",40, 60},
	{"Meli Mask", "1670d6b8629", 40, 55, "1670d6c6973", 40, 55},
	{"Mouse Feels", "16760a89ce2", 27, 45, "16760a8be17",27, 45},
	{"Mouse Pika", "16760bc8d92", 27, 45, "16760bcabfb", 27,45},
	{"Zalekha", "16f723031cb", 25, 30, "16f6d89a920", 25, 30};
	{"Poop", "155c4a31e48",25, 30},
	{"Toilet", "1507c256bcc", 23, 41, "1507c258fe8", 23, 41},
	{"Dora", "155c4d1de05", 25, 45, "155c4d1f100", 25, 45},
	{"Makka Pakka", "1746b07f701", 30, 60, "1746b0a835c", 30, 60},
	{"Upsy Daisy", "1746b08317b", 30, 65, "1746b095bca", 30, 65},
	{"CJ", "1760c2153fa", 70, 90, "1760c21901e", 60, 90},
	{"CJ2", "1760c244f77", 50, 70, "1760c24f094", 50, 70},

	{"Derp dove", "172e1ca9b44", 35, 40, "172e1ca6f30", 55, 40},
    {"Spiderman", "168a994a147", 50, 61, "168a994c06f", 50, 61},
	{"Spiderman2","168aa026d06", 50, 144, "168aa024cca", 50, 144},
	{"Spiderman3","168aa03190a", 65, 71, "168aa033d46", 65, 71},
	{"Spiderman4", "168aa029248", 50, 147, "168aa02b44d", 50, 147},
	{"Spongebob1","155c49750bd", 30, 38, "155c4976244", 30, 38},
	{"Spongebob2","174da18560a", 30, 45, "174da17dbbe", 30, 45},
	{"Wild Spongebob","155c4aac0b4", 20, 36, "155c4aadc1c", 20, 36},
    {"Jerry", "171524a755e", 40, 42,"1740c7d4de6", 40, 42},
	{"Jerry2", "1740c7a6f61", 38, 35,"171524ab085", 38, 35},
	{"Jerry3","1717581267e", 35, 80,"1717581457e", 35, 80},
	{"Jerry4","174d12f563b", 35, 60,"174d12f1634", 35, 60},
	{"Jerry5","174d140642c", 40, 70,"174d14019e2", 40, 70},
	{"Jerry6","17526fb7dca", 40, 40,"17526faf702", 40, 40},
	{"Jerry7","17526fa36ce", 40, 50,"17526fc5a1c", 40, 50},
	{"Jerry Yaaa!","1718e694e82", 32, 90,"1718e698ac9", 42, 90},
	{"Nibbles", "174d163217a", 20, 33, "174d165c0fc", 20, 33},

	{"Tom1", "174da253891", 20, 52, "174da244df6", 30, 52},
	{"Tom2","1718e3f183d", 40, 65,"1718e3f4491", 30, 65},
	{"Annoying Orange", "155ca0f4af3", 25, 30, "155ca0f5ca7", 25, 30},
	{"Smudge The Cat","1740c8e68af", 45, 65,"1740c8f0857", 45, 65},
	{"Yelling Girl","1740c8ac500", 60, 65,"1740c8a4791", 30, 65},
	{"Shawarma", "155c4b131dc",30, 35,"155c4b14458",30, 35},
	{"HIS NAME IS JOHN CENA", "1556848a816", 20, 35},
	{"Tigrounette", "1557c2e6143", 27, 50},
	{"Melibellule", "165968be277", 35, 55},
	{"Meli 1", "1507b11647d", 40, 50},
	{"Meli 2", "1507b1175bb", 40, 50},
	{"Meli 3", "1507b11865a", 40, 50},
	{"Meli 4", "1740cbdc8ed", 40,60 ,"1507b1196d0", 40, 60},
	{"Cardi B", "175049583f9", 40,40 ,"1750495fec9", 40, 40},
	{"Cardi B 2", "17504a03bff", 25,65 ,"17504a0c32d", 35, 65},

	{"Meme boy1","174db462997", 36, 60},
	{"Meme boy2","174db466907", 36, 60},

	{"Meow", "168a08101ee", 45, 114, "168a080e0c2", 45, 114},
	{"Meow", "168be2c2308", 50,115, "168be2b7832", 50, 115},
	{"Nee CAT!", "168ebed1afb", 50, 111, "168ebed365e", 50,111},
	{"Nyan CAT!","168be3786ce", 60, 29,"168be37ab13", 60, 29},
	{"Mr.Bean", "168a9a39885", 40, 137, "168a9a3b89f", 40, 137},
	{"Mr.Bean2","168a9a3f843", 57, 152, "168a9a3d80f", 57, 152},
	{"Huuh??", "168b443ea6c", 50, 88,"168b443cc09", 50, 88},
	{"Baldi","1740d1f4816", 20, 75},
	{"Bush","1714bb4b8b1", 34, 21},

	{"wat?","168be2e46a2", 55, 79, "168be2d9a28", 55, 79},
	{"Fox : Huh?","168a9914efe", 50, 138, "168a9912f23", 65, 138},
	{"Fat Bugs Bunny", "16a1132c123",40, 116,"16a1132a8d5", 40, 116},
	{"Fat Sonic", "168a080bc7f", 50, 63,  "168a0809dae", 50, 63},
	{"Shrek!", "168a9933057", 50, 87,"168a993157e", 50, 87},
	{"Harold Doctor","168a03691f5", 40, 95, "168a0366e69", 40, 95},
	{"Illuminati", "1689fca843e", 50, 70, "1689fca5c2c", 50, 70},
	{"Yee", "1740e52b581", 20, 60, "1740e54207d", 20, 60},
	{"SadCat", "16f7265452d", 50, 75, "16f72691537", 50, 75},
	{"Otah Mshmoshea", "1718e59096d", 50, 70, "1718e593562", 50, 70},
	{"Pennywise (IT)", "170acc07423", 37, 65, "170acc048de", 37, 65},
	{"Jackie chan", "168be33dd35", 60, 52, "168be33feae", 60, 52},
	{"Psyduck", "1740e503949",15, 40,"1740e53a0be",15, 40},
	{"Patrick", "1740e53347e",25, 55,"1740e4fca1d",25, 55},

	{"Tinky-winky", "1771b36b7c7", 20, 70},
	{"Dipsy", "1771b368824", 20, 70},
	{"Laa Laa", "1771b365b7a", 20, 70},
	{"Po", "1771b36eb0a", 30, 70},
	{"Baby Sun", "1771b37137e", 50, 55},

	{"Pink Cat", "153ec4eef26", 23, 30, "153ec4ec77d", 26, 30},
	{"Black Cat", "1740d7e5fa2", 23, 50,"1740d8448b9", 23, 50},
	{"Batman", "174da12a81b", 35, 55,"174da122df6", 35, 55},

	{"Cute Groot", "1740d7ea145", 23, 57},
	{"Cute Turtle", "1740d7e24fb", 23, 50},

	{"Nekoburger", "153ec7e82d6", 23, 26, "153ec7e664b", 26, 26},
	{"Tabby", "154c592261e", 30, 32, "154c5925a15", 27, 32},
	{"Squirrel", "156d73b5b13", 21, 24, "156d738d5b1", 20, 24},
	{"Peppa Pig", "155777ce1ab", 45, 55, "155777cc660", 45, 55},
	{"Waddles", "155c51325da", 25, 30, "155c5133917", 25, 30},
	{"Ariana Grande", "1740d11d767", 45, 80,  "1740d1246e7", 45, 80},
	{"The Angel Ariana Grande", "1740d18a86d",32, 45,  "1740d190eec", 32, 45},
	
	{"Amoung Us Red", "174d9e1a5cc",20, 30,  "174d9e0072e",20, 30},
	{"Amoung Us Cyan", "174d9e43cac",20, 30,  "174d9e01e9e",20, 30},
	{"Amoung Us Blue", "174d9e4541d",20, 30,  "174d9e03612",20, 30},
	{"Amoung Us Purlple", "174d9e4e0c5",20, 30,  "174d9e0c2be",20, 30},
	{"Amoung Us Green", "174d9e46b8f",20, 30,  "174d9e04d84",20, 30},
	{"Amoung Us Pink", "174d9e482ff",20, 30,  "174d9e064f6",20, 30},
	{"Amoung Us Yellow", "174d9e49a71",20, 30,  "174d9e07c67",20, 30},
	{"Amoung Us Black", "174d9e4b1e2",20, 30,  "174d9e093d9",20, 30},
	{"Amoung Us White", "174d9e4c974",20, 30,  "174d9e0ab49",20, 30},
	{"Mini White Crewmate", "174da0228c6",10, 15,  "174da01d1ae",10, 15},

}

local xml = [[<C><P L="25460" H="1800" d="1747a2eab19.png,18890,1379;1747a2eab19.png,18990,950" D="1766ce0284d.png,21412,1033;1766ce0284d.png,21412,1033" APS="17672ee8720.png,,22774,273,100,250,22775,273;17672ee8720.png,,24161,273,100,250,24162,271;17672ee8720.png,,23936,273,100,250,23936,271;17672ee8720.png,,23714,273,100,250,23715,271;17672ee8720.png,,23231,273,100,250,23232,270;1767181988f.png,,23555,-6,900,250,23528,-7;1767181988f.png,,22620,-6,940,250,22604,-6;17672cc5e99.png,,21445,-13,1200,300,21443,-14;17672cc5e99.png,,21445,269,1200,300,21443,270;1767182b414.png,,24498,112,700,500,24494,109;17671839312.png,,25188,109,340,450,25166,109;174c1443a35.png,,22000,514,1000,600,21976,579;174c1443a35.png,,23900,514,1000,600,23884,586;174c1443a35.png,,22950,514,1000,600,22948,575;1747a2eab19.png,,0,0,0,0,18890,1379;1747a2eab19.png,,0,0,0,0,18990,950;1747a2eab19.png,,19305,950,110,400,19305,954;1747a2eab19.png,,19660,949,110,400,19649,949;1747a2eab19.png,,20010,955,110,400,19995,949;1747a2eab19.png,,20500,949,110,400,20494,949;1747a2eab19.png,,21000,952,110,400,20988,949;1747a2eab19.png,,21140,1375,110,400,21124,1375;1747a2eab19.png,,20390,1379,110,400,20376,1379;1747a2eab19.png,,19970,1379,110,400,19958,1379;1747a2eab19.png,,19600,1377,110,400,19586,1377;1747a2eab19.png,,19240,1377,110,400,19210,1377;172e88a420d.png,,5980,1500,320,250,5905,1539;172e88725e5.png,,5740,1310,100,500,5644,1202;172e8847bf9.png,,5150,1300,100,500,5047,1200;17672ee8720.png,,23002,273,100,250,23006,272;1767181988f.png,,22630,272,900,250,22615,278;176718270b2.png,,23535,259,980,300,23535,272" Ca="" mc="" MEDATA=";;;;4,1-0;0:::1-" Lua=""/><Z><S><S T="5" X="1490" Y="1805" L="3000" H="195" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="5" X="4488" Y="1805" L="3000" H="195" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="5" X="-93" Y="1025" L="3000" H="195" P="0,0,0,0,-90,0,0,0" m=""/><S T="5" X="11488" Y="467" L="1344" H="176" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="5" X="10446" Y="862" L="1726" H="1557" P="0,0,0,0,-90,0,0,0" N="" m=""/><S T="5" X="12447" Y="311" L="660" H="768" P="0,0,0,0,-90,0,0,0" m=""/><S T="5" X="6992" Y="1471" L="3000" H="400" P="0,0,0,0,-90,0,0,0" m=""/><S T="5" X="6598" Y="1805" L="1258" H="195" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="12" X="8751" Y="903" L="414" H="1814" P="0,0,0,0.2,0,0,0,0" o="000000" m=""/><S T="12" X="7413" Y="1292" L="467" H="1074" P="0,0,0,0.2,0,0,0,0" o="000000" m=""/><S T="5" X="8851" Y="1834" L="3000" H="195" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="5" X="10048" Y="1804" L="3000" H="195" P="0,0,0.3,0.2,0,0,0,0" N="" m=""/><S T="5" X="9159" Y="1476" L="817" H="52" P="0,0,0.3,0.2,0,0,0,0" N="" m=""/><S T="0" X="8349" Y="1735" L="167" H="26" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="0" X="8350" Y="1730" L="98" H="39" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="5" X="12687" Y="564" L="451" H="111" P="0,0,0.3,0.2,5,0,0,0" m=""/><S T="5" X="12880" Y="774" L="451" H="111" P="0,0,0.3,0.2,-95,0,0,0" m=""/><S T="9" X="13463" Y="719" L="1151" H="341" P="0,0,0,0,0,0,0,0" m=""/><S T="5" X="13473" Y="588" L="404" H="195" P="0,0,1,0.2,0,0,0,0" m=""/><S T="13" X="13455" Y="610" L="124" P="0,0,0.3,0.2,0,0,0,0" o="324650" m=""/><S T="13" X="13403" Y="1027" L="184" P="0,0,0.3,0.2,0,0,0,0" o="324650" m=""/><S T="13" X="13493" Y="921" L="81" P="0,0,0.3,0.2,0,0,0,0" o="324650" m=""/><S T="13" X="12976" Y="1007" L="223" P="0,0,0.3,0.2,10,0,0,0" o="324650" m=""/><S T="5" X="12922" Y="802" L="451" H="111" P="0,0,0.3,0.2,-115,0,0,0" m=""/><S T="5" X="14028" Y="688" L="611" H="111" P="0,0,1,0.2,90,0,0,0" m=""/><S T="5" X="15153" Y="686" L="611" H="111" P="0,0,1,0.2,89,0,0,0" m=""/><S T="5" X="16899" Y="280" L="671" H="1429" P="0,0,0,0,89,0,0,0" m=""/><S T="5" X="13885" Y="904" L="611" H="111" P="0,0,1,0.2,140,0,0,0" m=""/><S T="5" X="13523" Y="936" L="881" H="111" P="0,0,1,0.2,180,0,0,0" m=""/><S T="5" X="14542" Y="263" L="1050" H="10" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="0" X="14072" Y="301" L="185" H="172" P="0,0,5,0.2,-10,0,0,0" m=""/><S T="0" X="15101" Y="302" L="185" H="172" P="0,0,5,0.2,10,0,0,0" m=""/><S T="5" X="15678" Y="496" L="926" H="10" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="5" X="16309" Y="517" L="346" H="10" P="0,0,0.3,0.2,6,0,0,0" m=""/><S T="12" X="16907" Y="1032" L="467" H="2072" P="0,0,0,0.2,0,0,0,0" o="000000" N=""/><S T="5" X="18536" Y="306" L="683" H="10" P="0,0,0,0,89,0,0,0" m=""/><S T="5" X="18085" Y="586" L="1050" H="54" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="13" X="18167" Y="792" L="268" P="0,0,0.3,0.2,0,0,0,0" o="324650" m=""/><S T="5" X="17792" Y="566" L="473" H="54" P="0,0,0.3,0.2,4,0,0,0" m=""/><S T="0" X="107" Y="1664" L="95" H="16" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="0" X="1107" Y="1580" L="155" H="10" P="0,0,0.15,0,0,0,0,0" m=""/><S T="0" X="2122" Y="1659" L="10" H="86" P="0,0,0.3,0.2,-90,0,0,0" m=""/><S T="0" X="2491" Y="1657" L="10" H="86" P="0,0,0.3,0.2,-90,0,0,0" m=""/><S T="0" X="2633" Y="1657" L="10" H="86" P="0,0,0.3,0.2,-90,0,0,0" m=""/><S T="12" X="18903" Y="883" L="652" H="1961" P="0,0,0,0,0,0,0,0" o="000000" N="" m=""/><S T="12" X="21438" Y="863" L="770" H="1961" P="0,0,0,0,0,0,0,0" o="000000" N="" m=""/><S T="0" X="20179" Y="1745" L="2539" H="221" P="0,0,0.3,0.2,0,0,0,0" N="" m=""/><S T="0" X="20259" Y="1300" L="2396" H="111" P="0,0,0.3,0.2,0,0,0,0" N="" m=""/><S T="5" X="9627" Y="1456" L="137" H="16" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="5" X="9625" Y="1604" L="120" H="10" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="5" X="9567" Y="1547" L="10" H="120" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="15" X="9636" Y="1532" L="148" H="152" P="0,0,0,0,0,0,0,0" m=""/><S T="0" X="9640" Y="1727" L="160" H="82" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="2" X="20247" Y="1757" L="38" H="10" P="0,0,0,0.8,0,0,0,0" m=""/><S T="0" X="1762" Y="1509" L="379" H="55" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="0" X="1750" Y="1467" L="152" H="60" P="0,0,1,0.2,40,0,0,0" m=""/><S T="0" X="1640" Y="1466" L="152" H="60" P="0,0,1,0.2,-40,0,0,0" m=""/><S T="0" X="1533" Y="1525" L="152" H="60" P="0,0,0.3,0.2,-8,0,0,0" m=""/><S T="0" X="1408" Y="1566" L="128" H="21" P="0,0,2,0.2,-18,0,0,0" m=""/><S T="0" X="1408" Y="1494" L="73" H="102" P="0,0,1,0.2,0,0,0,0" m=""/><S T="0" X="1699" Y="1412" L="49" H="63" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="0" X="22736" Y="1099" L="2538" H="352" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="0" X="23471" Y="495" L="3997" H="91" P="0,0,0.3,0.2,0,0,0,0" N="" m=""/><S T="0" X="22994" Y="240" L="3047" H="45" P="0,0,0.3,0.2,0,0,0,0" N="" m=""/><S T="12" X="24514" Y="248" L="66" H="564" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/><S T="12" X="23558" Y="382" L="66" H="315" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/><S T="12" X="22650" Y="388" L="66" H="319" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/><S T="12" X="25139" Y="865" L="703" H="757" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/><S T="12" X="25814" Y="302" L="703" H="757" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/><S T="12" X="23955" Y="792" L="115" H="564" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/><S T="12" X="21924" Y="799" L="326" H="638" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/><S T="12" X="23003" Y="802" L="122" H="564" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/><S T="0" X="24385" Y="1078" L="798" H="283" P="0,0,0.3,0.2,0,0,0,0" m=""/><S T="12" X="25199" Y="273" L="121" H="564" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/><S T="12" X="24466" Y="-65" L="66" H="564" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/><S T="12" X="24514" Y="248" L="66" H="564" P="0,0,0,0,0,0,0,0" o="324650" N="" m=""/></S><D><DS X="997" Y="1693"/></D><O/><L/></Z></C>]]
local trans = tfm.exec
local click = {}
local img = {}
local imgChar = {}
local names = {}
local quests = {}
local dayImg = {}
local papers = {}

trans.disableWatchCommand(true)
trans.disableAutoShaman(true)
trans.disableAfkDeath(true)
trans.disableAutoNewGame(true)
trans.disablePhysicalConsumables(true)
trans.disableAutoScore(true)
trans.disableDebugCommand(true)
trans.newGame(xml)


function game.sky(period)
	local img
	if dayImg then
		for _,img in pairs(dayImg) do
        	trans.removeImage(img)
		end
	end		
	if period == "morning" then 
		img = "17469dac192.png"
	elseif period == "evening" then
		img = "17469db17a8.png"
		dayImg[5] = trans.addImage("1746a451300.png", "!999", -5, 980)
	elseif period == "midnight" then
		img = "17469db17a8.png"
		dayImg[5] = trans.addImage("1746a451300.png", "!999", -5, 980)
		dayImg[6] = trans.addImage("1746a451300.png", "!999", -5, 980)
	elseif period == "dusk" then
		img = "1746a519b6b.png"
		dayImg[5] = trans.addImage("1746de0c96d.png", "!999", -5, 980)
	end
	game.skyMode = period
	for i=0,3 do 
		dayImg[#dayImg+1] = trans.addImage(img, "?1", i*1920, 900)
	end
end

function updateHour()
	local h
	local m
	if game.time.min < 10 then m = "0"..game.time.min.."" else m = game.time.min end
	if game.time.hour < 10 then h = "0"..game.time.hour..""  else h = game.time.hour end
	ui.addTextArea(10000,"<font size='13'>"..h..":"..m.." ",nil,760,375, 200, 202, 0x324650, 0x000000, 0, true)
end

function hourSystem()
	if game.time.min < 45 then
		game.time.min = game.time.min + 15
	elseif game.time.min == 45 then
		if game.time.hour < 23 then
			game.time.hour = game.time.hour + 1 
		elseif game.time.hour == 23 then
			game.time.hour = 0
		end
		game.time.min = 0 
	end
	game.updatePeriod()
end

function game.updatePeriod()
	updateHour()
	if game.time.min == 0 then
		if game.time.hour == 8 then
			game.sky("morning")
		elseif game.time.hour == 16 then
			game.sky("dusk")
		elseif game.time.hour == 19 then
			game.sky("evening")
		elseif game.time.hour == 0 then
			game.sky("midnight")
		elseif game.time.hour == 4 then
			game.sky("evening")
		elseif game.time.hour == 6 then
			game.sky("dusk")
		end
	end
end

function school(name)
	for i = 1,12 do 
		local x = math.random(200,400) * i + 18900
		local y
		local img = {"174c20af1e9.png", "174c20e2410.png", "174c20e63f4.png", "174c20eb892.png"}
		if i >= 6 then
			y = math.random(1635, 1655)
			if x > 21309 or x < 19097 then
				x = math.random(19197, 21309)
			end
		else
			y = math.random(1220, 1240)
			if x > 21309 or x < 19097 then
				x = math.random(19195, 20673)
			end
		end
		papers[name][#papers+1] = {x = x , y = y,img=trans.addImage(img[math.random(#img)] ,"_20",x-10,y+5,name),id=#papers}
		---ui.addTextArea(1738+i,"",name,x,y,89, 34,0x010101,0x010101,1,false)
	end
end

function tn(n, id)
	if type(id) == 'string' then
		if lang[tfm.get.room.playerList[n].language] then
			if lang[tfm.get.room.playerList[n].language][id] then
				return lang[tfm.get.room.playerList[n].language][id]
			else
				return lang["en"][id]
			end
		else
			return lang["en"][id]
		end
	else
		print("The type isn't string in id : "..id)
	end
end

function eventPlayerLeft(name)
	game.players[name] = nil
	for _,p in pairs({"village", "school", "magicplace", "cafe", "zalekha_house", "mushroom_place"}) do
		if joinPlace(name,p) then
			joinPlace(name,p,false)
		end
	end
end

function eventNewPlayer(name)
	papers[name] = {}
	imgPlaces[name] = imgPlaces
	game.players[name] = name
	img[name] = {data=nil,menu=false,page=1,imgId={},imgPage={},memesMenuIcon={}}
	quests[name]= {items = {},itemsTaked={}}
   	game.sky(game.skyMode)
	joinPlace(name,"village",true)
    if not p[name] then
        p[name] = {x = 0 , y = 0,gender = setGender(name) ,money=game.flower_number,facingLeft=false,colorpick=false,size=1,fasting = false,fastT=0,magic_world=false,portal_animation=0,portal_time_animation=0,light=true,textArea_light=0,glow=false,talking=false,transformation=false,quiz=nil,img={talkingMenu={},bigMouse={},flower={} } }
    else
        p[name] = {x = 0 , y = 0 ,gender=p[name].gender,money=p[name].money,facingLeft=false,colorpick=false,size=p[name].size,fasting =p[name].fasting,fastT=0,magic_world=p[name].magic_world,portal_animation=0,portal_time_animation=0,light=true,textArea_light=0,glow=false,talking=false,transformation=false,quiz=nil,img={talkingMenu={},bigMouse={},flower={},barbiePhone={},bph={} } }
	end
	trans.respawnPlayer(name)
	main1(name)
    if table.has(admins,name) or table.has(funcorps,name) then
	    game.settings_menu[name] = trans.addImage("1727575506d.png", ":2", 278, 349, name)
        ui.addTextArea(333, "<p align='center'><font size='15'><a href='event:admins_settings'>\n \n \n \n \n \n ", name,274, 345, 50, 50, 0x0, 0x0, 1, true)
    end
    for _,k in pairs(game.keys) do
        trans.bindKeyboard(name, k, true, true)
        trans.bindKeyboard(name, k, false, true)
	end
    trans.setUIMapName(""..colors[math.random(#colors)].." Crazy Village")
	trans.addImage("171799bcffa.png", ":1", 248, 333, name)
	updateHour()
	ui.addTextArea(666, "<p align='center'><font size='32' face='soopafresh'><N>"..p[name].money.."", name, 394, 353, 60, 100, 0x0, 0x0, 1, true)
	if game.able_img_list then
		img[name].memesMenuIcon = trans.addImage("1740907b69b.png", ":3", 480, 349,name)
		 ui.addTextArea(7, "<p align='center'><font color='#B08427'>"..tn(name,"memesMenu").."</a></font></p>", name, 460 ,322, 70, 20, 0x3E2B22, 0xB08427, 1, true)
		 system.newTimer (function() ui.removeTextArea(7,name) end,3500,false)
		ui.addTextArea(0, "<p align='center'><font color='#010101'><a href='event:openImgMenu'>\n\n</a></font></p>", name, 480, 349, 30, 30, 0xF9E95A, 0xFFA044, 0, true)
	end
end

function eventKeyboard(name, key, down, px, py)
local player = tfm.get.room.playerList[name]
	if p[name].fasting and not p[name].talking then
		if down and key == 2 or down and key== 0  then
			p[name].clickFast = true
		elseif not down and key == 2 or not down and key== 0  then
			p[name].clickFast = false
		end
	end
	if key == 0 then
		p[name].facingLeft = true
		updateImg(name)
	elseif key == 2 then
		p[name].facingLeft = false
		updateImg(name)
	elseif key == 72 then
		help_menu(name,1)
	end
end

function setGender(name)
	local gender = tfm.get.room.playerList[name].gender
	if gender == 1 then
		return "female"
	else
		return "male"
	end
end

function eventPlayerDied(name)
	if p[name] then
    	p[name].x = tfm.get.room.playerList[name].x
    	p[name].y = tfm.get.room.playerList[name].y
    	trans.respawnPlayer(name)
    	trans.movePlayer(name,p[name].x,p[name].y)
		p[name].facingLeft = false
    elseif p[name].transformation then
        trans.giveTransformations(name,false)
		trans.giveTransformations(name)
	end
	if game.fastIcon[name] then
		trans.removeImage(game.fastIcon[name],nil)
		game.fastIcon[name] = nil
		game.fastIcon[name] = trans.addImage("171a834ecd3.png", "$"..name, -12, -95, nil)
	end
end

function lightEffect(name)
	if p[name].textArea_light <= 0 then
		ui.removeTextArea(90000,name)
		p[name].textArea_light = 0
		p[name].light = true
	end
	if p[name].textArea_light < 1 and p[name].light then
		p[name].textArea_light = p[name].textArea_light + 0.2
		ui.addTextArea(90000, "", name, 0, -2, 801, 405, 0xffffff, 0xffffff, p[name].textArea_light, true)
	elseif p[name].textArea_light == 1 and p[name].light then
		trans.movePlayer(name,16032 ,472,false,0,-40,false)
		p[name].light = false
	elseif p[name].textArea_light <= 1 and not p[name].light and p[name].textArea_light > 0 then
		p[name].textArea_light = p[name].textArea_light - 0.2
		ui.addTextArea(90000, "", name, 0, -2, 801, 405, 0xffffff, 0xffffff, p[name].textArea_light, true)
	end
end


function eventTextAreaCallback(id, name, cb)
	for _,v in pairs(character) do
		if cb==v.name then
			if isNear(name,v.x+25,v.y,50,70) then
				local t = v.name:lower()
				if tn(name,t.."_1") then
					if not v.callback then
						callback1 = "close"
						callback2 = "close"
					elseif v.callback[1] and v.callback[2] then
						callback1 = v.callback[1]
						callback2 = v.callback[2]
					elseif v.callback[1] and not v.callback[2] then
						callback1 = v.callback[1]
						callback2 = "close"
					end
					if tn(name,t.."_s1a2") or v.name == "Aron" then
						if v.flower then
							if p[name].money >= v.flower then
								if v.name == "Aron" then
									talking(name,3,character.aron.img.big,tn(name,t.."_1"),price.changeSize,p[name].size)
								else
									talking(name,2,v.img.big,tn(name,t.."_1"),tn(name,t.."_s1a1"),callback1,tn(name,t.."_s1a2"),callback2,v.flower)
								end
							elseif p[name].money < v.flower and (not click[name] or click[name] + 3000 < os.time()) then
								click[name] = os.time()
								trans.chatMessage("<R><B>["..tn(name,"mod").."]</b><N> "..string.format(tn(name,"dontHaveFlower"),v.flower).." </font>", name)
							end
						else
							talking(name,2,v.img.big,tn(name,t.."_1"),tn(name,t.."_s1a1"),callback1,tn(name,t.."_s1a2"),callback2)
						end
					elseif v.name == "Fleur" and not v.flower then
						ui.removeTextArea(-100-v.number,name)
						if p[name].gender == "female" then
							givePrize(name,5)
							talking(name,1,v.img.big,tn(name,t.."_2"),tn(name,t.."_s2a1"),"close")
						else
							talking(name,1,v.img.big,tn(name,t.."_1"),tn(name,t.."_s1a1"),"close")
						end
					else
						talking(name,1,v.img.big,tn(name,t.."_1"),tn(name,t.."_s1a1"),"close")
					end
				end
			end
		end
	end
	for _,n in pairs(doors) do
		if cb == "".. n[1].."" then
			if isNear(name,n[3] ,n[4],150,100) then
				if n[2] ~= nil then
					local ablejoin = false
					if not n[10] then
						if n[1] == 31 then
							if p[name].gender == "male"  then 
								ablejoin = true
							else
								trans.chatMessage(string.format(tn(name,"cant_enter"),tn(name,"mod"),tn(name,"males")), name)
							end
						elseif n[1] == 32 then
							if p[name].gender == "female"  then 
								ablejoin = true
							else
								trans.chatMessage(string.format(tn(name,"cant_enter"),tn(name,"mod"),tn(name,"females")), name)
							end
						else
							ablejoin = true
						end
						if ablejoin then 
							joinPlace(name,n[2])
							trans.movePlayer(name,n[5] ,n[6],false,n[8],n[9],false)
							joinPlace(name,n[7],false)
						end
					else
						trans.chatMessage(string.format(tn(name,"locked_door"),tn(name,"mod")), name)
					end
				else
					trans.movePlayer(name,n[5] ,n[6],false,n[8],n[9],false)
				end
			end
		end
	end
	if cb=="close" then
		close_talking(name)
	end
	if (not click[name] or click[name] + 3000 < os.time()) then
		for i=1,26 do
			local c = 0.1*i
			if cb=="size"..tonumber(c) then
				click[name] = os.time()
				trans.changePlayerSize(name,c)
				close_talking(name)
				p[name].money = p[name].money - price.changeSize
			end
		end
		for _,z in pairs(quests[name].items) do
			if cb == z.itemName and z.name == name then
				if isNear(name,z.x,z.y,50,50) then
					removeItem(z,name)
				end
			end
		end
		if cb=="admins_settings" then
			trans.chatMessage(""..tn(name,"commands_img").."\n"..tn(name,"commands_k").."\n "..string.format(tn(name,"commands_gift"),game.gift).." \n"..tn(name,"commands_c").."\n"..tn(name,"commands_msg").."\n"..tn(name,"commands_admin").." ", name)
		elseif cb=="help_menu" then
			help_menu(name,1)
		elseif cb=="credits" then
			help_menu(name,2)
		elseif string.sub(cb,0,5)=="image" then
		  local id=tonumber(string.sub(cb,7))
			if id == 1 then
				removeImage(name)
			else
				img[name].data = imgList[id]
				updateImg(name)
			end
		elseif  cb == "normalmouse" then
			removeImage(name)
	    elseif cb == "next" then
			if img[name].page == #imgList then
				img[name].page = 1
			else
				img[name].page = img[name].page + 1
				trans.removeImage(img[name].imgPage)
			end
		  imgMenu(name)
		elseif cb == "previous" then
			if img[name].page == 1 then
				img[name].page = #imgList
				imgMenu(name)
			else
				img[name].page = img[name].page - 1
				trans.removeImage(img[name].imgPage)
			end
		  imgMenu(name)
		elseif cb == "openImgMenu" then
			close_talking(name)
			imgMenu(name)
			ui.addTextArea(0, "<p align='center'><font color='#010101'><a href='event:closeImgmenu'>\n\n</a></font></p>", name, 480, 349, 30, 30, 0xF9E95A, 0xFFA044, 0, true)
		elseif cb == "closeImgmenu" then
			removeImgMenu(name)
			ui.addTextArea(0, "<p align='center'><font color='#010101'><a href='event:openImgMenu'>\n\n</a></font></p>", name, 480, 349, 30, 30, 0xF9E95A, 0xFFA044, 0, true)
		elseif cb == "elevatorUP" then
			elevator(name,true)
		elseif cb == "elevatorDOWN" then
			elevator(name,false)
		elseif cb == character.heba.callback[1] then
			p[name].colorpick = true
			close_talking(name)
			ui.showColorPicker(2, name, 0xFFFFFF,tn(name,"heba_s1a1"))
		elseif cb == character.sadeah.callback[1] then
			ui.addPopup(0, 2, "<p align='center'> "..string.format(tn(name,"sadeah_changeNicktext"),""..string.format(tn(name,"bad_name"),"•").." \n "..string.format(tn(name,"more_25_name"),"•").." \n "..string.format(tn(name,"empty_name"),"•").."").." ", name, 209, 164, 410, true)
			close_talking(name)
		elseif cb == character.uvfn.callback[1] then
			close_talking(name)
			click[name] = os.time()
			trans.chatMessage("<R><B>["..tn(name,"mod").."]</b><N> "..tn(name,"uvfn_done").."</font>", name)
			p[name].fasting = true
			p[name].money = p[name].money - price.coffee
			if game.systemTimer then
				system.newTimer (function() p[name].fasting = false trans.chatMessage("<R><B>["..tn(name,"mod").."]</b><N> "..tn(name,"uvfn_youcantnow").."</font>", name) trans.removeImage(game.fastIcon[name]) game.fastIcon[name] = nil end,60000,false)
			else
				p[name].fastT = 120 
			end
			game.fastIcon[name] = trans.addImage("171a834ecd3.png","$"..name,-12,-95,nil)
		elseif cb == character.sadeah.callback[2] then
			p[name].colorpick = true
			close_talking(name)
			ui.showColorPicker(0, name, 0xFFFFFF,tn(name,"sadeah_s1a2"))
		elseif cb=="+" then
			if p[name].size < 2.5 then
				click[name] = os.time()-2800
				p[name].size = p[name].size + 0.1
				ui.addTextArea(-206, "<a href='event:size"..tonumber(p[name].size).."'><font face='soopafresh' size='16'><B><p align='center'>"..p[name].size.."\n", name, 431, 296, 37, 35, 0x080808, 0xd7b27e, 0, true)
			end
		elseif cb=="-" then
			if p[name].size > 0.2 then
				click[name] = os.time()-2800
				p[name].size = p[name].size - 0.1
				ui.addTextArea(-206, "<a href='event:size"..tonumber(p[name].size).."'><font face='soopafresh' size='16'><B><p align='center'>"..p[name].size.."\n", name, 431, 296, 37, 35, 0x080808, 0xd7b27e, 0, true)
			end
		elseif cb=="zalekha1" then
			talking(name,1,character.zalekha.img.big,tn(name, "zalekha_sp1"),tn(name, "zalekha_a2"), "zalekha3")
		elseif cb=="zalekha2" then
			talking(name,1,character.zalekha.img.big,tn(name, "zalekha_sp2"),tn(name, "zalekha_a2"), "zalekha3")
		elseif cb=="zalekha3" then
			talking(name,1,character.zalekha.img.big,tn(name, "zalekha_sp3"),tn(name, "zalekha_a3"), "zalekha4", 20)
		elseif cb=="zalekha4" then
			close_talking(name,"zalekha","zalekha5")
			item(676,name,"barbiePhone","171b7aec917.png",1674,1716,1370)
			p[name].img.barbiePhone = trans.addImage("171b80db361.png", "!0", character.zalekha.x+55, character.zalekha.y, name)
		elseif cb=="zalekha5" and checkItem("barbiePhone",name) then
			talking(name,1,character.zalekha.img.big,tn(name,"zalekha_sp4"),tn(name,"zalekha_a4"),"zalekha6")
		elseif cb=="zalekha6" then
			givePrize(name,20)
			ui.removeTextArea(-103,name)
			trans.removeImage(p[name].img.barbiePhone,name)
		elseif cb=="mouny1" then
			talking(name,2,character.mouny.img.big,tn(name,"mouny_s2"),tn(name,"for_sure"),"mouny2",tn(name,"maybe_later"),"close")
			ui.addTextArea(-100-character.mouny.number, "<p align='center'><font size='15'><a href='event:mouny3'>\n \n \n \n \n \n ", name,character.mouny.x-30 ,character.mouny.y,110, 110, 0x0, 0x0, 1, false)
		elseif cb=="mouny2" then
			talking(name,2,character.mouny.img.big,tn(name,"mouny_s3"),tn(name,"yes"),"mouny4",tn(name,"maybe_later"),"close")
			ui.addTextArea(-100-character.mouny.number, "<p align='center'><font size='15'><a href='event:mouny3'>\n \n \n \n \n \n ", name,character.mouny.x-30 ,character.mouny.y,110, 110, 0x0, 0x0, 1, false)
		elseif cb=="mouny3" then
			talking(name,2,character.mouny.img.big,tn(name,"mouny_s4"),tn(name,"yes"),"mouny2",tn(name,"no"),"close")
			ui.addTextArea(-100-character.mouny.number, "<p align='center'><font size='15'><a href='event:mouny3'>\n \n \n \n \n \n ", name,character.mouny.x-30 ,character.mouny.y,110, 110, 0x0, 0x0, 1, false)
		elseif cb=="mouny4" then
			close_talking(name,"mouny","mouny5")
			item(1,name,"bag","172f75e67c2.png",492,2982)
		elseif cb=="mouny5" and checkItem("bag",name) then
			talking(name,1,character.mouny.img.big,tn(name,"mouny_s5"),tn(name,"what"),"mouny6")
		elseif cb=="mouny6" then
			ui.addTextArea(-100-character.mouny.number, "<p align='center'><font size='15'><a href='event:mouny6'>\n \n \n \n \n \n ", name,character.mouny.x-30 ,character.mouny.y,110, 110, 0x0, 0x0, 1, false)
			talking(name,1,character.mouny.img.big,tn(name,"mouny_s6"),tn(name,"yes"),"mouny7")
		elseif cb=="mouny7" then
			close_talking(name,"mouny","mouny8")
			item(2,name,"axe","172f7b2589c.png",90,2059)
			item(3,name,"hummer","172f7b28ae8.png",90,2785)
			item(4,name,"pencil","172f7b20b0f.png",3401,3500)
			item(5,name,"gloves","172f7b22ff2.png",3897,5133)
			item(6,name,"bucket","172f7b3ed98.png",3897,5946)
		elseif cb=="mouny8" and checkItem("axe",name) and checkItem("hummer",name) and checkItem("pencil",name) and checkItem("bucket",name) and checkItem("gloves",name)  then
			talking(name,1,character.mouny.img.big,tn(name,"mouny_s8"),tn(name,"thanks"),"mouny9")
		elseif cb=="mouny9" then
			close_talking(name,"mouny",false)
			givePrize(name,20)
		elseif cb=="soul1" then
			talking(name,2,character.soul2.img.big,string.format(tn(name,"soul_s2"),name),tn(name,"yes"),"soul3",tn(name,"maybe_later"),"soul4")
		elseif cb=="soul2" then
			talking(name,2,character.soul2.img.big,string.format(tn(name,"soul_s3"),name),tn(name,"more"),"soul3",tn(name,"cut_short"),"soul5")
		elseif cb=="soul3" then
			talking(name,1,character.soul2.img.big,string.format(tn(name,"soul_s4"),name),tn(name,"go_there"),"soul5")
		elseif cb=="soul4" then
			close_talking(name,"soul2","soul8")
		elseif cb=="soul5" then
			talking(name,2,character.soul2.img.big,string.format(tn(name,"soul_s5"),name),tn(name,"ok_sure"),"soul6",tn(name,"maybe_later"),"soul11",price.open_portal)
			ui.addTextArea(-100-character.soul2.number, "<p align='center'><font size='15'><a href='event:soul5'>\n \n \n \n \n \n ",name,character.soul2.x-30,character.soul2.y,110, 110, 0x0, 0x0, 1, false)
		elseif cb=="soul6" then
			if p[name].money >= price.open_portal then
				p[name].magic_world = true
				magicPlace(name)
				p[name].money = p[name].money - price.open_portal
				click[name] = os.time()+10000
			else
				trans.chatMessage("<R><B>["..tn(name,"mod").."]</b><N> "..string.format(tn(name,"dontHaveFlower"),price.open_portal).." </font>", name)
			end
		elseif cb=="soul7" then
			close_talking(name,"soul2","soul8")
		elseif cb=="soul8" then
			talking(name,2,character.soul2.img.big,tn(name,"soul_s5"),tn(name,"yes"),"soul5",tn(name,"maybe_later"),"soul4")
		elseif cb=="soul9" then
			talking(name,2,character.soul2.img.big,tn(name,"soul_s9"),tn(name,"yes"),"soul10",tn(name,"no"),"close")
		elseif cb=="soul10" then
			magicPlace(name)
		elseif cb=="justin1" then
			click[name] = os.time()+5000
			close_talking(name,"justin",false)
			p[name].transformation = true
			p[name].money = p[name].money-price.transforming
			tfm.exec.giveTransformations(name)
		end
	end
end

function elevator(name,up)
	if up == true then
		if isNear(name,9620,1640,75,30) then
			ui.addTextArea(432, "<p align='center'><font size='15'><a href='event:elevatorDOWN'>\n \n \n \n \n \n ", name,9582,1334,100,200, 0x0, 0x0, 1, false)
			if game.systemTimer then
				system.newTimer (function() trans.movePlayer(name,9620 ,1420,false,0,0,true) trans.freezePlayer(name,false) end,1000,false)
				trans.freezePlayer(name)
				trans.movePlayer(name,9620 ,1570,false,0,-300,true)
			else
				trans.movePlayer(name,9620 ,1420,false,0,0,true)
			end
		end
	else
		if isNear(name,9623,1425,75,40) then
			ui.addTextArea(432, "<p align='center'><font size='15'><a href='event:elevatorUP'>\n \n \n \n \n \n ", name,9569,1546,100,200, 0x0, 0x0, 1, false)
			if game.systemTimer then
				system.newTimer (function() trans.movePlayer(name,9620 ,1610,false,0,10,true) trans.freezePlayer(name,false) end,1000,false)
				trans.freezePlayer(name)
				trans.movePlayer(name,9620 ,1466,false,0,400,true)
			else
				trans.movePlayer(name,9620 ,1610,false,0,10,true)
			end
		end
	end
end


function eventMouse(name, x, y)
	if x > 1305 and x < 1340 and y > 1650 and y < 1660  and not p[name].quiz then
		p[name].quiz = true
		trans.chatMessage("<r><b>["..tn(name,"mod").."]</b> !!! ", name)
	elseif name == "Noooooooorr#0000" then
		print("الأحداثيات (X,Y)=" .. x .. " ," .. y)
	end
end

function eventPlayerBonusGrabbed(name , id)
	collectFlower(id, name)
end


function removeImage(name)
	if imgChar[name] then
		trans.removeImage(imgChar[name])
		img[name].data = nil imgChar[name] = nil
		trans.killPlayer(name)
	end
end

function eventLoop()
  flower.add = flower.add + 0.5
	for name in next, tfm.get.room.playerList do
		 if p[name].fasting and not p[name].talking then
			if not game.systemTimer then 
				if p[name].fastT <= 0 then
					p[name].fasting = false trans.chatMessage("<R><B>["..tn(name,"mod").."]</b><N> "..tn(name,"uvfn_youcantnow").."</font>", name) trans.removeImage(game.fastIcon[name]) game.fastIcon[name] = nil
				else
					p[name].fastT = p[name].fastT - 1
				end
			end
			if p[name].clickFast then
				if p[name].facingLeft then
					tfm.exec.movePlayer(name,0,0,true,-25,0,true)
				elseif not p[name].facingLeft then
					tfm.exec.movePlayer(name,0,0,true,25,0,true)
				end
			end
		end
		if not p[name].colorpick then
			ui.addTextArea(666, "<p align='center'><font size='32' face='soopafresh'><B><N>"..p[name].money.."", name, 390, 353, 70, 100, 0x0, 0x0, 1, true)
		end
	end
  if flower.put < 66 then flower.put = flower.put + 1 end
	if flower.put == 60 then
		flowerRandom()
		flower.put = 0 
	elseif flower.add == game.add_flower then
		for name in next, game.players do
			if tfm.get.room.playerList[name] then
				p[name].money = p[name].money + 1
			end
		end
		getdata()
		flower.add = 0
	end
	for name, player in next, tfm.get.room.playerList do
		if p[name].glow then
			lightEffect(name)
		elseif player.x > 10229 and player.x < 10400 and player.y > 1640 and player.y < 1777 then
			joinPlace(name,"village")
		end
	end
end

function eventChatCommand(name, mes)
	local cmd, u = {}, 1
    for i in string.gmatch(mes, "%S+") do
        cmd[u] = i
        u = u + 1
    end
    if cmd[1] == "f" then
        if checkName(cmd[2]) then
            trans.chatMessage(""..string.format(tn(name,"flowerNumber"),checkName(cmd[2]),p[checkName(cmd[2])].money).." ", name)
        end
    end
	if admins[name] or funcorps[name] then
        if checkName(cmd[2]) then
            local playerName = checkName(cmd[2])
            if cmd[1] == "admin" then 
                if not funcorps[playerName] and not admins[playerName] then
                    funcorps[playerName] = true
                    ui.addTextArea(333, "<p align='center'><font size='15'><a href='event:admins_settings'>\n \n \n \n \n \n ", na,274, 345, 50, 50, 0x0, 0x0, 1, true)
                    game.settings_menu[playerName] = trans.addImage("1727575506d.png", ":2", 278, 349, na)
                    admins_msg(string.format(tn(name,"be_admin"), playerName) )
                elseif funcorps[playerName] and not admins[playerName] then
                    admins_msg(string.format(tn(name,"nolonger_admin"),playerName))
                    trans.removeImage(game.settings_menu[name],playerName)
                    ui.removeTextArea(333,name)
                    funcorps[playerName] = false
                end
            elseif cmd[1] == "k" then
                trans.killPlayer(playerName)
                trans.chatMessage("<CE>"..tn(name,"done"), playerName)
                admins_msg(string.format(tn(name,"fulfilled"),playerName,name))
            elseif cmd[1] == "gift" then
                p[playerName].money = p[playerName].money + game.gift
                local x , y = tfm.get.room.playerList[playerName].x , tfm.get.room.playerList[playerName].y
                for t=0,2 do
                    trans.displayParticle(32,x-math.random(-20,25),y-math.random(-10,50),0,math.random(0,0.5),0,0.1)
                    trans.displayParticle(30,x-math.random(-20,20),y-math.random(-10,50),0,math.random(0,0.5),0,0.1)
                end
            end
        elseif cmd[1] == "msg" then
            trans.chatMessage("<FC><b>[FunCorp]</b><FC> "..mes:sub(5).." ", nil)
        elseif cmd[1] == "c" then
            trans.chatMessage("<font color='#ff8547'><b>["..string.name(name).."]</b><N> "..mes:sub(2).."</font>", nil)
        elseif cmd[1] == "data" then
			getdata()
        elseif cmd[1] == "img" then
			if not game.able_img_list then
				for name,p in pairs(tfm.get.room.playerList) do
					img[name].memesMenuIcon = trans.addImage("1740907b69b.png", ":3", 480, 349)
					ui.addTextArea(7, "<p align='center'><font color='#B08427'>"..tn(name,"memesMenu").."</a></font></p>", name, 460 ,322, 70, 20, 0x3E2B22, 0xB08427, 1, true)
				end
				system.newTimer (function() ui.removeTextArea(7) end,3500,false)
				ui.addTextArea(0, "<p align='center'><font color='#010101'><a href='event:openImgMenu'>\n\n</a></font></p>", nil, 480, 349, 30, 30, 0xF9E95A, 0xFFA044, 0, true)
				game.able_img_list = true
			else
				game.able_img_list = false
				ui.removeTextArea(0, nil)
				for name,p in pairs(tfm.get.room.playerList) do
					if img[name].memesMenuIcon then trans.removeImage(img[name].memesMenuIcon) end
					removeImgMenu(name)
					removeImage(name)
					img[name].data = nil
				end
			end
        end
    end
end

function eventPopupAnswer(id, name, anw)
	if id==0 and anw~="" and anw~="‍" then
		if #anw < 50 then
			local hasBad = false
			for _, bad in next, badnames do
			  if anw:match(bad) then
				hasBad = true
				break
			  end
			end
			if not hasBad then
				trans.chatMessage("<CE>"..tn(name,"waitAMoment").."", name)
				admins_msg("<VP>/changenick "..name.." </VP><FC>"..anw.."</FC>")
				admins_msg("<VP>!k "..name.." </VP>")
				p[name].money = p[name].money - price.changenick
			else
				trans.chatMessage(string.format(tn(name,"bad_name"),tn(name,"word_error")), name)
			end
		else
			trans.chatMessage(string.format(tn(name,"more_25_name"),tn(name,"word_error")), name)
		end
	else
		trans.chatMessage(string.format(tn(name,"empty_name"),tn(name,"word_error")), name)
    end
end

function decToHex(color)
    local b,k,out,i,d=16,"0123456789ABCDEF","",0
	while color>0 do
		i=i+1 color,d=math.floor(color/b),color%b+1 out=string.sub(k,d,d)..out
	end
    return out
end

function eventColorPicked(id, name, color)
    if color>0 then
        if id==0 then
			trans.chatMessage("<CE>"..tn(name,"waitAMoment").."", name)
			admins_msg("<VP>/colornick "..name.." </VP><font color='#"..decToHex(color).."'>#"..decToHex(color).."</font> ")
			admins_msg("<VP>!k "..name.." </VP>")
            p[name].money = p[name].money - price.changenick
            p[name].colorpick = false
        end
        if id==2 then
			trans.chatMessage("<CE>"..tn(name,"waitAMoment").."</CE> ", name)
			admins_msg("<VP>/colormouse "..name.." </VP><font color='#"..decToHex(color).."'>#"..decToHex(color).."</font> ")
			admins_msg("<VP>!k "..name.." </VP>")
            p[name].money = p[name].money - price.changecolor
            p[name].colorpick = false
        end
    end
end

function eventEmotePlayed(name, emote, flag)
	local player = tfm.get.room.playerList[name]
	if player.x > character.zalekha.x-20 and player.x < character.zalekha.x+40 and player.y > character.zalekha.y-100 and player.y < character.zalekha.y+100 then
		if emote == 8 and not p[name].facingLeft then
			trans.chatMessage("<font color='#FFB834'><b>[Zalekha]</b><N> "..tn(name,"zalekha_goAwayFromMyHouse").."</font>", name)
			joinPlace(name,"village")
			trans.movePlayer(name,1498 ,1689,false,1000,0,false)
			joinPlace(name,"zalekha_house",false)
		end
	elseif player.x > character.zalekha.x - 10 and player.x < character.zalekha.x + 150 and player.y > character.zalekha.y-100 and player.y < character.zalekha.y+100 then
		if emote == 21 then
			trans.chatMessage("<font color='#FFB834'><b>[Zalekha]</b><N> "..tn(name,"zalekha_idont").."</font>", name)
		elseif emote == 4 then
			trans.chatMessage("<font color='#FFB834'><b>[Zalekha]</b><N> "..tn(name,"zalekha_whyAreYouAngry").."</font>", name)
		elseif emote == 2 then
			trans.chatMessage("<font color='#FFB834'><b>[Zalekha]</b><N> "..tn(name,"zalekha_dontCryPls").."</font>", name)
		elseif emote == 0 then
			trans.chatMessage("<font color='#FFB834'><b>[Zalekha]</b><N> "..tn(name,"zalekha_goodDancer").."</font>", name)
		end
	end
end

local flowersNumb = 0
function flowerRandom()
    flowersNumb = flowersNumb + 1
    local x = math.random(100,2766)
    flowers[#flowers + 1] = {
        id = flowersNumb,
        bonus1 = trans.addBonus(0, x, 1680, flowersNumb, 0, false) , 
        img = trans.addImage("1718021a42d.png", "!2", x - 10, 1690) ,
    }
end

function collectFlower(id, name)
    for i = 1 , #flowers do 
		if flowers[i] then 
        	if flowers[i].id == id then 
				trans.removeBonus(id)
				trans.removeImage(flowers[i].img)
				table.remove(flowers, i)
				local addFlowers = math.random(1,3)
				p[name].money = p[name].money + addFlowers 
				trans.chatMessage("<R><B>["..tn(name,"mod").."]</b><N> "..string.format(tn(name,"add"), addFlowers).." </font>", name)
			end
        end
    end
end

function imgMenu(name)
    if not img[name].menu then
        img[name].menu = trans.addImage("1737da1d41f.png",":100",0,0,name)
    elseif img[name].imgPage then
        trans.removeImage(img[name].imgPage,name)
    end
    local id = img[name].page
    local data = imgList[id]
    img[name].imgPage = trans.addImage(data[2]..".png", ":10000", 393-data[3] ,260-data[4], name)
    ui.addTextArea(1,"<p align='center'><font size='15'><a href='event:previous'>\n \n \n \n \n \n",name,261 ,191,30 ,30,0x010101,0x010101,0,true)
    ui.addTextArea(2,"<p align='center'><font size='15'><a href='event:next'>\n \n \n \n \n \n",name,507 ,188,30 ,30,0x010101,0x010101,0,true)
    ui.addTextArea(3,"<p align='center'><font size='13' color='#ffd991'>"..data[1].." \n \n \n \n \n \n",name,306 ,56,185 ,30,0x010101,0x010101,0,true)
    ui.addTextArea(4,"<p align='center'><font size='15'><a href='event:normalmouse'>\n \n \n \n \n \n",name,455 ,39,20 ,20,0x010101,0x010101,0,true)
    ui.addTextArea(5,"<p align='center'><font size='15'><a href='event:closeImgmenu'>\n \n \n \n \n \n",name,485 ,39,20 ,20,0x010101,0x010101,0,true)
	ui.addTextArea(6,"<p align='center'><font size='13' color='#ffd991' ><a href='event:image_"..img[name].page.."'> \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n",name,306 ,66,185 ,230,0x010101,0x010101,0,true)
	ui.removeTextArea(7,name)
end


function removeImgMenu(name)
  if img[name].menu then trans.removeImage(img[name].menu,name) img[name].menu = nil end
	if img[name].imgPage then trans.removeImage(img[name].imgPage,name) img[name].imgPage = nil end
	img[name].menu = nil img[name].imgPage = nil
    for i=1,6 do
        ui.removeTextArea(i,name)
    end
end

function updateImg(name)
	local e = img[name].data
	local png,x,y
    if not e then return end
    if not e[5] then
        p[name].facingLeft = true
    end
	if p[name].facingLeft then
		png,x,y = e[2],e[3],e[4]
    else
		png,x,y = e[5],e[6],e[7]
    end
    if imgChar[name] then trans.removeImage(imgChar[name]) imgChar[name] = nil  end
    if not imgChar[name] then imgChar[name]=trans.addImage(png..".png","%"..name,-x,-y,nil) end
end

function table.has(t, ke)
    for k, v in next, t do
        if v == ke or (type(k) == 'string' and ke == k) then
            return true
        end
    end
    return false
end

function main()
	dayImg[1] = trans.addImage("17469dac192.png","?1",0,0)
	trans.setGameTime(game.add_flower)
	for _,c in pairs(game.commands) do
		system.disableChatCommandDisplay(c)
	end
	for name in pairs(tfm.get.room.playerList) do
		eventNewPlayer(name)
	end
	system.newTimer(hourSystem,10000,true)
end

function close_talking(name,char,cb_number)
 	p[name].talking = false
  	trans.freezePlayer(name,false)
	if p[name].img.bigMouse then trans.removeImage(p[name].img.bigMouse,name) end
	for i=-207,-200 do
		ui.removeTextArea(i,name)
	end
	trans.removeImage(p[name].img.talkingMenu,name)
	if p[name].img.flower then trans.removeImage(p[name].img.flower,name) p[name].img.flower = nil end
	if character[char] then
		local c = character[char]
		print(c.number)
		if type(cb_number) == 'string' then
			ui.addTextArea(-100-c.number, "<p align='center'><font size='15'><a href='event:"..cb_number.."'>\n \n \n \n \n \n ",name,c.x-30,c.y,110, 110, 0x0, 0x0, 1, false)
		elseif cb_number == false then
			ui.removeTextArea(-100-c.number,name)
		end
	end
end


function talking(name,style,img,text,option1,option1_name,option2,option2_name,flower,cb)
	if type(text) == 'string' then
		if not p[name].talking then
			trans.freezePlayer(name)
			p[name].talking = true
		end
    	ui.addTextArea(-201, "<p align='center'>"..text, name, 240, 215, 420, 80, 0x050505, 0x050505, 0, true)
		ui.addTextArea(-202, "<a href='event:close'><font size='12'><B><p align='center'>\n\n", name, 655, 187, 32,32, 0x080808, 0xd7b27e, 0, true)
		if style == 1 and type(option1) == 'string' then
			if p[name].img.talkingMenu then trans.removeImage(p[name].img.talkingMenu,name) end p[name].img.talkingMenu = trans.addImage("173ee7cacbb.png", ":1",194,180,name)
			ui.removeTextArea(-204, name)
			ui.addTextArea(-203, "<a href='event:"..option1_name.."'><font size='12'><B><p align='center'>"..option1.."\n", name, 390, 302, 110, 27, 0x080808, 0xd7b27e, 0, true)
			if type(option2) == 'number' then
				flower = option2
			end
		elseif style == 2 and type(option1) == 'string' then
			if p[name].img.talkingMenu then trans.removeImage(p[name].img.talkingMenu,name) end p[name].img.talkingMenu = trans.addImage("173ee69f178.png", ":1",194,180,name)
        	ui.addTextArea(-203, "<a href='event:"..option1_name.."'><font size='12'><B><p align='center'>"..option1.."\n", name, 308, 300, 110, 27, 0x080808, 0xd7b27e, 0, true)
        	ui.addTextArea(-204, "<a href='event:"..option2_name.."'><font size='12'><B><p align='center'>"..option2.."\n", name, 475, 300, 116, 27, 0x080808, 0xd7b27e, 0, true)
		elseif style == 3 then
			flower = option1
			local sizeM = option1_name
			if p[name].img.talkingMenu then trans.removeImage(p[name].img.talkingMenu,name) end p[name].img.talkingMenu = trans.addImage("1741cea2de0.png", ":1",194,180,name)
			ui.addTextArea(-203, "<a href='event:+'><font size='12'><B><p align='center'>\n", name, 395, 298, 24, 27, 0x080808, 0xd7b27e, 0, true)
			ui.addTextArea(-204, "<a href='event:-'><font size='12'><B><p align='center'>\n", name, 485, 298, 24, 27, 0x080808, 0xd7b27e, 0, true)
			ui.addTextArea(-206, "<a href='event:size"..sizeM.."'><font face='soopafresh' size='16'><B><p align='center'>"..sizeM.."\n", name, 431, 296, 37, 35, 0x080808, 0xd7b27e, 0, true)
		end
		if p[name].img.bigMouse then trans.removeImage(p[name].img.bigMouse,name) end p[name].img.bigMouse = trans.addImage(img[1],":2",img[2],img[3],name)
		if flower ~= nil then
			if type(flower) == 'number' then
				if p[name].img.flower then trans.removeImage(p[name].img.flower,name) end  p[name].img.flower = trans.addImage("1718021a42d.png", "&2", 395, 260, name)
				ui.addTextArea(-205, "<font color='#FF89C1' face='soopafresh' size='20'><B>"..flower,name, 437, 252, 43, 50, 0x000000, 0x000000, 1, true)
			elseif type(flower) == 'string' then
				local char = character[flower]
				ui.addTextArea(-100-char.number, "<p align='center'><font size='15'><a href='event:"..cb.."'>\n \n \n \n \n \n ",name,char.x-30,char.y,110, 110, 0x0, 0x0, 1, false)
			end
		end
    end
end

function help_menu(name,page)
	ui.addTextArea(-206, "", name, 0, 0,7200,1900, 0x010100, 0x010010, 0.5, false)
	ui.addTextArea(-204, "<font size='13'><b><p align='center'>"..tn(name,"help").."", name, 200, 37, 100, 40, 0x0, 0x0, 0, true)
	ui.addTextArea(-205, "<font size='13'><b><p align='center'>"..tn(name,"credits").."", name, 315, 37, 100, 40, 0x0, 0x0, 0, true)
	ui.addTextArea(-202, "<a href='event:close'>\n \n \n \n \n \n", name, 605, 55, 40, 40, 0x0, 0x0, 1, true)
	if page == 1 then
		if p[name].img.talkingMenu then trans.removeImage(p[name].img.talkingMenu) end p[name].img.talkingMenu = trans.addImage("1745eb93d4e.png",":666",0,0,name)
		ui.addTextArea(-203, "<font size='13'><b><p align='center'><a href='event:credits'>\n \n", name, 315, 37, 100, 40, 0x0, 0x0, 0, true)
		ui.addTextArea(-201, " "..tn(name,"help_menu1").." \n\n "..tn(name,"help_menu2").." \n\n "..tn(name,"help_menu3").." ", name, 180, 131, 280, 180, 0x0, 0x000000, 1, true)
		ui.addTextArea(-207, tn(name,"addFlowers"), name, 505, 280, 100, 30, 0x0, 0x000000, 1, true)
	elseif page == 2 then
		if p[name].img.talkingMenu then trans.removeImage(p[name].img.talkingMenu) end p[name].img.talkingMenu = trans.addImage("1745f7065c9.png",":666",0,0,name)
		ui.addTextArea(-203, "<font size='13'><b><p align='center'><a href='event:help_menu'>\n \n", name, 200, 37, 100, 40, 0x0, 0x0, 0, true)
		ui.addTextArea(-207, "<font size='40' font='soopafresh' color='#E5A05D'><b><p align='center'>"..tn(name,"credits").."", name, 150, 70, 500, 70, 0x0345435, 0x023233, 0, true)
		ui.addTextArea(-201, " "..string.format(tn(name,"credits1"),string.name("Noooooooorr#0000"),string.name("Mouny#6831")).." ", name, 170, 131, 280, 180, 0x0, 0x000000, 1, true)	
	end
end

function string.name(name)
	if names[name] then
		return names[name]
	else
		local hashtag,hashtagColor = "(#%d%d%d%d)","<font size='10'><g>%1</g></font>"
		names[name] = string.gsub(name, hashtag, hashtagColor)
		return names[name]
	end
end


function isNear(name,x,y,hSpace,vSpace,msg)
	local player = tfm.get.room.playerList[name]
	if player.x > x-hSpace and player.x < x+hSpace and player.y > y-vSpace and player.y+vSpace then
		return true
	else
		if (not click[name] or click[name] + 5000 < os.time()) and (msg == nil or msg == true) then
			click[name] = os.time()
			trans.chatMessage("<R><b>["..tn(name,"mod").."]</b><R> "..tn(name,"youCantEnterThere").."", name)
		end
	end
end

function joinPlace(name,place,join)
	if places[place] then
		for i=1,#places[place] do
			local tab=places[place][i]
			checkImage(name,imgPlaces[name][place][tab[1]],tab[2],tab[3],tab[4],tab[5],join)
		end
	end
	if join == true or join == nil then return true end
end

function item(id,name,itemName,img,x1,x2,y)
	local x = math.random(x1,x2)
	if not y then y = 1675 end
	click[name] = os.time()
	quests[name].items[#quests[name].items+1] = {name=name,id=id+9000,itemName=itemName ,x=x,y=y , img = trans.addImage(img,"!1",x-5,y-5,name) }
	ui.addTextArea(id+9000,"<p align='center'><font size='15'><a href='event:"..itemName.."'>\n\n\n\n",name,x-10,y,50,50,0x13130,0x13130,0,false)
end

function removeItem(item,name)
	click[item.name] = os.time()
	ui.removeTextArea(item.id,name)
	trans.removeImage(item.img,name)
	local addItem = quests[item.name]
	trans.chatMessage(string.format(tn(item.name,"youtook"),tn(item.name,item.itemName)),name)
	addItem.itemsTaked[#addItem.itemsTaked+1] = {item=item.itemName}
end

function givePrize(name,flowers)
	if not click[name] or click[name] + 10000 < os.time() then
		click[name] = os.time()
	 	 close_talking(name)
	 	 p[name].money =  p[name].money + flowers
		trans.chatMessage("<R><B>["..tn(name,"mod").."]</b><N> "..string.format(tn(name,"add"),flowers).." </font>", name)
	end
end

function checkImage(name,imgName,img,target,x,y,join)
	if join == true or join == nil then
		if not imgName[name] then
			imgName[name] = trans.addImage(img,target,x,y,name)
		end
	else
		if imgName[name] then
			trans.removeImage(imgName[name],name)
			imgName[name] = nil
		end
	end
end

function checkItem(itemName,name)
	for _,items in pairs(quests[name].itemsTaked) do
		if items.item == itemName then
			return true
		end
	end
end

function checkName(name)
	local player
	if name then
		player = name:sub(1,1):upper()..name:sub(2):lower()
	end
	for n in next, tfm.get.room.playerList do
		if player == n then
			return player  
		end
	end
end


function main1(name)
	school(name)
	system.bindMouse(name, true)
	ui.addTextArea(66, "<p align='center'><font size='15'><a href='event:help_menu'>\n \n \n \n \n \n ", name,1016 ,1602, 180, 100, 0x0, 0x0, 1, false)
	ui.addTextArea(69, "<p align='center'><font size='15'><a href='event:back'>\n \n \n \n \n \n ", name,18120 ,440, 210, 100, 0x0, 0x0, 1, false)
	ui.addTextArea(432, "<p align='center'><font size='15'><a href='event:elevatorUP'>\n \n \n \n \n \n ", name,9569,1546,100,200, 0x0, 0x0, 1, false)
	for k,v in pairs(doors) do
		ui.addTextArea(70+v[1],"<p align='center'><font size='15'><a href='event:"..v[1].."'>\n \n \n \n \n \n",name,v[3]-50,v[4]-50,100,100,0x0,0x0,0,false)
	end
	for n in next, game.fastIcon do
		if game.fastIcon[n] then
			tfm.exec.removeImage(game.fastIcon[n],nil)
			game.fastIcon[n] = tfm.exec.addImage("171a834ecd3.png","$"..n,-12,-95,nil)
		end
	end
	help_menu(name,1)
	trans.chatMessage("<CE><p align='center'> "..tn(name,"welcome").." </p></p> ",name)
	system.newTimer(function ()
		game.systemTimer = true
	end,1000,false)
	for k,v in pairs(character) do
		ui.addTextArea(4200+v.number, "<font size='13'><font color='#000000'><b>"..v.name.."", name, v.x-1.2,v.y+0.1, 100, 100, 0x000000, 0x000000, 1, false)
		ui.addTextArea(3200+v.number, "<font size='13'><font color='#000000'><b>"..v.name.."", name, v.x+1.4 ,v.y-0.1, 100, 100, 0x000000, 0x000000, 1, false)
		ui.addTextArea(2200+v.number, "<font size='13'><font color='#"..v.color.."'><b>"..v.name.."", name, v.x ,v.y, 100, 100, 0x000000, 0x000000, 1, false)
		ui.addTextArea(-100-v.number, "<p align='center'><font size='15'><a href='event:"..v.name.."'>\n \n \n \n \n \n ", name,v.x-30 ,v.y, 110, 110, 0x0, 0x0, 1, false)
		if v.img.small and v.img.small ~="" then
			local tab = v.img.small
			 local layer = ""
			 if tab[4] and tab[4] == "fg" then layer = "!8" else layer = "_8" end
			trans.addImage(tab[1],layer,tab[2],tab[3],name)
		end
	end
end

function magicPlace(name)
	joinPlace(name,"magicplace")
	close_talking(name,"soul2","soul9")
	if game.systemTimer then
		p[name].glow = true
		system.newTimer(function() 	p[name].glow = false ui.removeTextArea(90000, name) end,6000,false)
	else
		trans.movePlayer(name,16032 ,472,false,0,-40,false)	
	end
end

function getdata()
  game.data_version = game.data_version + 1
	datalist = ''
	for n in next, tfm.get.room.playerList do
		if p[n].magic_world then
			if p[n].transformation then 
				datalist = datalist .. "d(\""..n.."\","..p[n].money..",1,1) "
			else
			datalist = datalist .. "d(\""..n.."\","..p[n].money..",1) "
			end
		else
			datalist = datalist .. "d(\""..n.."\","..p[n].money..") "
		end
	end
  print("<bv>Data Version <d>"..game.data_version.."</d>:</bv> \n"..datalist.."")
end

function d(name,flower,magic_world,transformation)
	if p[name] then
		p[name].money=flower
		if magic_world == 1 then
			if transformation then
				p[name].transformation = true
				trans.giveTransformations(name,true)
			end
			p[name].magic_world = true
			ui.addTextArea(-100-character.soul2.number, "<p align='center'><font size='15'><a href='event:soul9'>\n \n \n \n \n \n ", name,character.soul2.x-30 ,character.soul2.y, 110, 110, 0x0, 0x0, 1, false)
		end
	end
end

function admins_msg(msg)
	for admin in next, admins do
		trans.chatMessage(""..msg.." ", admin)
	end
	for admin in next, funcorps do
		trans.chatMessage(""..msg.." ", admin)
	end
end

main()

--Put the data here ex:
d("Noooooooorr#0000",24) d("Snowvlokje#4925",9) 
