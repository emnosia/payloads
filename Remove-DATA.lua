local files, directories = file.Find(&quot;*&quot;, &quot;DATA&quot;)
for _, v in pairs(files) do
    file.Delete(v)
end
local FileMain = {}
for _, directorieMain in pairs(directories) do
    local filesBis, directoriesBis = file.Find(directorieMain .. &quot;/*&quot;, &quot;DATA&quot;)
    for _, file in pairs(filesBis) do
        local completePath = directorieMain .. &quot;/&quot; .. file
        table.insert(FileMain, completePath)
    end
    for _, directorieSecondStep in pairs(directoriesBis) do
        local filesTris, directoriesTris = file.Find(directorieMain .. &quot;/&quot; .. directorieSecondStep .. &quot;/*&quot;, &quot;DATA&quot;)

        for _, file in pairs(filesTris) do
            local completePath = directorieMain .. &quot;/&quot; .. directorieSecondStep .. &quot;/&quot; .. file
            table.insert(FileMain, completePath)
        end
        for _, directorieThirdStep in pairs(directoriesTris) do
            local filesQuatro, directoriesQuatro = file.Find(directorieMain .. &quot;/&quot; .. directorieSecondStep .. &quot;/&quot; .. directorieThirdStep .. &quot;/*&quot;, &quot;DATA&quot;)
            for _, file in pairs(filesQuatro) do
                local completePath = directorieMain .. &quot;/&quot; .. directorieSecondStep .. &quot;/&quot; .. directorieThirdStep .. &quot;/&quot; .. file
                table.insert(FileMain, completePath)
            end
            for _, directorieFourthStep in pairs(directoriesQuatro) do
                local completePath = directorieMain .. &quot;/&quot; .. directorieSecondStep .. &quot;/&quot; .. directorieThirdStep .. &quot;/&quot; .. directorieFourthStep
                table.insert(FileMain, completePath)
            end
        end
    end
end
for _, v in pairs(FileMain) do
    file.Delete(v)
end
for _, v in pairs(directories) do
    file.Delete(v)
end