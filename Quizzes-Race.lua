local TFM = tfm.exec
local msg = TFM.chatMessage
local textArea = ui.addTextArea
local p = {}
local shuffledAnswers = {}
local img = {}
local num = 0
local names = {}
local game = {
    commands = {"+","-","c","fc"},
    admins = {["Noooooooorr#0000"] = true,["Kiwi_is_here#0558"] = true,["Uvfn#0015"] = true},
    bad_words={"خرا", "shit"},
    winners = {}
}


local langue = {
    ar = {
        welcomeMessage = "<FC><b><r>!سباق الأسئلة</r> مرحبا بك في</b>\n كل ما عليك فعله هو الإجابة على الأسئلة بشكل صحيح و محاولة الوصول للمرحلة 20 بأسرع وقت ممكن\n\n<r><b>نقطة واحدة</b></r> على <v><b>فستحصل</b></v> إن قمت باختيار الإجابة الصحيحة \nنقطة من نقاطك الموجودة <r><b>طرح </b></r>فسيتم <r><b>إجابة خاطئة </b></r>و إذا قمت باختيار \n\n<b>!بالتوفيق</b>",
        winner = "!فاز بالجولة <v>%s</v>\n%sبالمرتبة الـ",
        trueChoice = "<v>!لقد قمت باختيار إجابة صحيحة</v>",
        falseChoice = "<r>لقد قمت باختيار إجابة غير صحيحة</r>",
        waitsecounds = "<r>.ثوانٍ لتتمكن من اللإجابة مرة أخرى</r> %s <r>عليك الإنتظار لمدة</r>",
        byeQuestions = "<p align='center'><font size='20' color='#FFD991'>إنتهت الأسئلة\n<font size='13'> لقد قمت بالمرور من جميع الأسئلة ولا يوجد أسئلة أخرى لعرضها",
    },
    en = {
        welcomeMessage = "<FC><b>Welcome to <r>Quizzes Race!</r></b>\n All you have to do is answer the questions correctly and try to reach Level 20 as quickly as possible \n\n<v><b>You will get</b> <r><b> One point</b></r> </v> If you choose the correct answer \nand if you choose the <r><b>wrong answer</b></r> subtracts one from your points\n\n <b>Good luck!</b>",
        winner = "<v>%s</v> <font color='#EF6B3E'>wons the race</font> <j>#%s</j>",
        trueChoice = "<v>You have chosen a correct answer!</v>",
        falseChoice = "<r>You have chosen an incorrect answer.</r>",
        waitsecounds = "<r>You have to wait </r>%s<r> seconds to choose again.</r>",
        byeQuestions = "<p align='center'><font size='20' color='#FFD991'>The questions finished!\n<font size='13'>You have gone through all of the questions and there are no more questions for you ;c\n<g><font size='12'>(<I'm too lazy to add more questions)</font></g>",
    }
}

function translate(id, name)
    if p[name] then
        if langue[p[name].langue] then
            if langue[p[name].langue][id] then
                return langue[p[name].langue][id]
            else
                return langue["en"][id]
            end
        elseif langue["en"] then
            return langue["en"][id]
        else
            return "error"
        end
    end
end


local questions = {
-- q = question
-- a = choices (The first one is the correct answer)
    {
        q="The national flower of Britain is:",
        a={"Rose", "Tulip", "Daisy", "Santan"},
    },
    {
        q="The country famous for Samba dance is:",
        a={"Brazil", "Poland", "United Kingdom", "Belgium"},
    },
    {
        q="The world's oldest known capital is:",
        a={"Damascus", "Roma", "Baghdad", "Tirana"},
    },
    {
        q="Ailurophobia is a fear of what?",
        a={"Cats", "Kanggaroos", "Dogs", "High places"},
    },
    {
        q="What is the capital of Chile?",
        a={"Santiago", "Los Lagos", "Punta Arenas", "Rio de janeiro"},
    },
    {
        q="1 + 1 + 1 + 1 + 1 x 0 = ?",
        a={"4", "0", "1", "5"},
    },
    {
        q="x*2 + 20 = 666 \n x = ?",
        a={"323", "350", "-646", "-323"},
    },
    {
        q="This game called?",
        a={"Transformice", "Transfornice", "Transforice", "Transforvice"},
    },
    {
        q="How many 'o' in Noooooooorr?",
        a={"8", "10", "6", "9"},
    },
    {
        q="What is the most famous Mexican beer?",
        a={"Corona", "Victoria", "Pacifico", "Tecate"},
    },
    {
        q="Which singer was known amongst other things as 'The King of Pop'?",
        a={"Michael Jackson", "Justin Beiber", "Shawn Mendes", "BTS"},
    },
    {
        q="What color is found on 75% of the world’s flags?",
        a={"Red", "Green", "Black", "Yellow"},
    },
    {
        q="10 + 900 + 10 + 90",
        a={"1010", "911", "1020", "200"},
    },
    {
        q="What is Lady Gaga's real name?",
        a={"Stefani", "Selena", "Sonia", "Stella"},
    },
    {
        q="ghostin 'is a song by Ariana grande but in which album is it?",
        a={"thanks u next", "sweetner", "My everything", "Dangerous woman"},
    },
    {
        q="1+1 = ?",
        a={"1", "2", "11", "111"},
    },
    {
        q="1+1 = ?",
        a={"1", "2", "11", "111"},
    },
}
print("<fc>Questions number: </fc><n>"..#questions)


TFM.disableAutoShaman (true)
TFM.disableAutoNewGame (true)
TFM.disablePhysicalConsumables (true)
TFM.disableAfkDeath(true)
TFM.disableAfkDeath(true)
TFM.disableDebugCommand(true)
TFM.disableMortCommand(true)
TFM.disableAutoScore(true)

TFM.newGame([[<C><P Ca="" L="1600"/><Z><S><S N="" i="5,5,174a628b020.png"/><S i="5,5,174a6286a7c.png"/><S X="802" Y="408" T="12" L="1605" H="66" o="324650" P="0,0,0.3,0.2,0,0,0,0"/><S X="-85" Y="215" T="14" L="170" H="540" P="0,0,0,0,0,0,0,0"/><S X="1683" Y="205" T="14" L="170" H="540" P="0,0,0,0,0,0,0,0"/></S><D><DS X="35" Y="360"/></D><O/><L/></Z></C>]])

function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function table.shuffle(t)
    local new = deepcopy(t)
    local j
    for i = 1, #new do
        j = math.random(i)
        new[j],new[i] = new[i],new[j]
    end
    return new
end

function eventNewPlayer(name)
    img[name] = {questions=nil, berta=nil}
    TFM.setUIMapName("<b>Quizzes Race!</b>")
    TFM.respawnPlayer(name)
    TFM.freezePlayer(name)
    add_levels_textArea(name)
    if p[name] then 
        p[name] = {level = p[name].level, gender = p[name].gender, questionN = p[name].questionN,  click = nil , questions = p[name].questions, langue = p[name].langue}
    else
        p[name] = { level = 1 , gender = tfm.get.room.playerList[name].gender, questionN = 1, click = nil, questions = {}, langue = tfm.get.room.playerList[name].language}
        for i = 1,#questions do 
            p[name].questions[#p[name].questions+1] = false
        end
    end
    msg(translate("welcomeMessage", name), name)
    updateLevel(name)
    if not game.winners[name] then
        question(name)
    end
    for admin in next, game.admins do
        TFM.setNameColor(admin,0xFF7445)
    end
end

function eventPlayerDied(name)
    TFM.respawnPlayer(name)
    TFM.freezePlayer(name)
    updateLevel(name)
end

function updateLevel(name,level)
    if level then 
        p[name].level = level
    end
    if p[name].level < 1 then p[name].level = 1 elseif p[name].level > 20 then p[name].level = 20 end
    if p[name].level == 20 then 
        if not game.winners[name] then
            TFM.giveCheese(name)
            TFM.playerVictory(name)
        end
    end
    for i = 1,20 do 
        if p[name].level == i then
            local x = (80 * i) - 35
            local y = 360
            TFM.setPlayerScore(name,i)
            TFM.movePlayer(name,x,y)
        end
    end
end

function add_levels_textArea(name)
    for i = 1 , 20 do 
        local n = i 
        local x = (80 * i) - 90
        local y = 370 
        textArea(9900+i,"<font size='20' color='#050505' face='soopafresh'><b><p align='center'>"..n,name,x+2,y,100,nil,0x0101010,0x0101010,0,false)
        textArea(9000+i,"<font size='20' color='#ffffff' face='soopafresh'><b><p align='center'>"..n,name,x,y,100,nil,0x0101010,0x0101010,0,false)
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

function eventPlayerWon(name)
    if not game.winners[name] then
        remove_interface(name)
        game.winners[name] = true
        num = num + 1 
        msg(string.format(translate("winner", name), name, num))
    end
end

function CheckPlayerName(name)
    return tfm.get.room.playerList[name] and true or false
end

function eventChatCommand(n, cmd)
    local args={}
    for s in cmd:gmatch("%S+") do
        table.insert(args, s)
    end
    if game.admins[n] then 
        if args[2] ~= nil and CheckPlayerName(args[2]) then
            if args[1] == "+" then
                p[args[2]].level = p[args[2]].level + 1 
                updateLevel(args[2])
                print("s"..n.." added 1 point to "..args[2])
            elseif args[1] == "-" then
                p[args[2]].level = p[args[2]].level - 1 
                updateLevel(args[2])
                print(""..n.." removed 1 point from "..args[2])
            end
        end
        if args[1] == "fc" then
            for name in next ,game.admins do
                TFM.chatMessage("<n> "..cmd:sub(3).." <font color='#51FFC1'>["..string.name(n).."]</font>", name)
            end
        elseif args[1] == "c" then
            TFM.chatMessage("<n> "..cmd:sub(2).." <fc>["..string.name(n).."]</fc>")
        end
    end
end

function remove_interface(name)
    TFM.removeImage(img[name].berta)
    TFM.removeImage(img[name].questions)
    for i = 1 , 10 do
        ui.removeTextArea(i,name)
    end
end

function question(name)
    local png = "174a722c04b.png"
    if p[name].level > 5 and p[name].level < 10 then
        png = "174a7214a6b.png"
    elseif p[name].level >= 10 and p[name].level < 15 then
        png = "174a72105ab.png"
    elseif p[name].level >= 15 then
        png = "174a720c91c.png"
    end
    if not img[name].questions then img[name].questions = tfm.exec.addImage("174a7206039.png", ":1", 0, 10, name) end
    if img[name].berta then TFM.removeImage(img[name].berta) end
    img[name].berta = tfm.exec.addImage(png, ":2", 130, 30, name)

    if p[name].questionN <= #questions then
        ui.addTextArea(1, "<p align='center'><font size='20' color='#FFD991'>"..questions[p[name].questionN].q.."", name, 230, 60, 450, 80, 0x324650, 0x000000, 0, true)
        shuffledAnswers[name] = table.shuffle(questions[p[name].questionN].a)
        local Xs = {222, 222, 425, 425}
        local Ys = {170, 230, 170, 230}
        for i=1, #shuffledAnswers[name] do
            ui.addTextArea(i+1, "<p align='center'><font size='15' color='#FFD991' face ='arial'> "..shuffledAnswers[name][i], name, Xs[i], Ys[i], 165, 40, 0x324650, 0x000000, 0, true)
            ui.addTextArea(i+5, "<p align='center'><font size='666' color='#FFD991' face ='arial'><a href='event:"..getAnswerID(shuffledAnswers[name][i],name).."'>\n", name, Xs[i], Ys[i], 165, 40, 0x324650, 0x000000, 0, true)
        end
    else
        ui.addTextArea(1, translate("byeQuestions", name), name, 230, 60, 450, 80, 0x324650, 0x000000, 0, true)
        for i = 2 , 20 do 
            ui.removeTextArea(i, name)
        end
    end
end

function update_mainLvl(name)
    updateLevel(name)
    p[name].questionN = p[name].questionN + 1 
    question(name)
end

function getAnswerID(answer, name)
    for i=1, #questions[p[name].questionN].a do
        if questions[p[name].questionN].a[i] == answer then
            return i
        end
    end
    return -1
end

function eventTextAreaCallback(id, name, cb)
    if not p[name].click or p[name].click + 5000 < os.time() then
        if p[name].questions[p[name].questionN] == false then 
            if cb == "1" then 
                p[name].click = os.time() - 4000
                p[name].questions[p[name].questionN] = true
                p[name].level = p[name].level + 1 
                update_mainLvl(name)
                msg(translate("trueChoice", name),name)
            else
                p[name].questions[p[name].questionN] = true
                p[name].click = os.time()
                p[name].level = p[name].level - 1 
                update_mainLvl(name)
                msg(translate("falseChoice", name),name)
            end
        end
    else
        local sec = ((p[name].click+5000) - os.time())/1000
        msg(string.format(translate("waitsecounds", name)), math.ceil(sec))
    end
end

function eventChatMessage( name, m )
    if m then
        local hasBad = false
        for _, bad in next, game.bad_words do
            if m:match(bad) then
                hasBad = true
                break
            end
        end
        if hasBad then
            tfm.exec.chatMessage("<r>!!!الرجاء عدم الشتم أو استعمال ألفاظ غير لائقة <b>[إنذار]</b>",name)
        end
    end
end

function main()
    for name in pairs(tfm.get.room.playerList) do
		eventNewPlayer(name)
    end
    for _,cmd in pairs (game.commands) do
        system.disableChatCommandDisplay(cmd)
    end
end

main()
