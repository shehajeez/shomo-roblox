local function a()
    local b = "https://raw.githubusercontent.com/shehajeez/shomo/main/version.json"
    
    local c, d = pcall(function()
        return game:GetService("HttpService"):GetAsync(b, Enum.HttpContentType.ApplicationJson)
    end)
    
    if c then
        return game:GetService("HttpService"):JSONDecode(d)
    else
        return nil
    end
end

local function e()
    local f = a()
    
    if f then
        local g = f.version
        local h = "1.0.1"
        
        if g == h then
            print("Your version matches the current one.")
        else
            print("Shomo no work omg!!")
        end
    else
        print("Failed to fetch version data.")
    end
end

e()
