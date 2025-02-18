if _G.AxionInjected then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "RSC RIVALS",
        Text = "Script is already injected!",
        Duration = 5
    })
    return
end

_G.AxionInjected = true -- Prevents multiple injections

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RSC RIVALS",
   LoadingTitle = "RSC RIVALS",
   LoadingSubtitle = "BY FLX.",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Example Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "discord.gg/rscommunity",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
      Title = "RSC",
      Subtitle = "Key System",
      Note = "Updated every week.",
      FileName = "YoutubeHubKey1",
      SaveKey = false,
      GrabKeyFromSite = true,
      Key = {"RSC"}
   }
})

-- Home Tab (Aimbot & ESP only)
local MainTab = Window:CreateTab("🏠 Home", nil)
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "You executed the script",
   Content = "Very cool GUI",
   Duration = 5,
   Image = 13047715178,
   Actions = {
      Ignore = {
         Name = "Okay!",
         Callback = function()
            print("The user tapped Okay!")
         end
      },
   },
})

MainTab:CreateButton({
   Name = "AIMBOT (Q)",
   Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Features/Aimlock.lua", true))()
   end,
})

MainTab:CreateButton({
    Name = "ESP (E)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Features/ESP.lua", true))()
    end,
})

-- Misc Tab (All other features)
local MiscTab = Window:CreateTab("⚙️ Misc", nil)
local MiscSection = MiscTab:CreateSection("Misc Features")

MiscTab:CreateButton({
    Name = "SPEED HACKS",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Features/Speed.lua", true))()
    end,
})

MiscTab:CreateButton({
    Name = "NOCLIP (BAD FPS)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Features/Noclip.lua", true))()
    end,
})

MiscTab:CreateButton({
    Name = "TP",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Features/Teleport.lua", true))()
    end,
})

MiscTab:CreateButton({
    Name = "TP FOLLOW",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Features/TpFollow.lua", true))()
    end,
})

MiscTab:CreateButton({
    Name = "FLY",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Features/Flight.lua", true))()
    end,
})

MiscTab:CreateButton({
    Name = "HITBOX EXPANDER",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzWinsV4/FlameForRobloxRivals/refs/heads/main/Features/HitboxExpander.lua", true))()
    end,
})

-- Credits Tab
local CreditsTab = Window:CreateTab("⭐ Credits", nil)
local CreditsSection = CreditsTab:CreateSection("Credits")

CreditsTab:CreateParagraph({Title = "Made by Flx and Siyrix.", Content = "Thanks for using RSC Rivals!"})