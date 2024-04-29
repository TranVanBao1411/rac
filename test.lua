
      function UnEquipWeapon(Weapon)
         if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
         end
      end

      local plr = game:GetService("Players").LocalPlayer
      local character = plr.Character
      local hrp = character.HumanoidRootPart
      local old = hrp.CFrame
      local tag = hrp:FindFirstChildOfClass("BillboardGui")
      local newroot = character.LowerTorso.Root:Clone()
      if tag then tag:Destroy() end

      hrp.ChildAdded:Connect(function(item)
      if item:IsA("BillboardGui") then
         task.wait()
         item:Destroy()
      end
      end)

      function AutoHaki()
         local player = game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name)
         if not player:FindFirstChild("Armament") then
            game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("Armament", 0, true)
         end
      end

      function EquipWeapon(ToolSe)
         if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
               Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
               wait(.1)
               game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
         end
      end

      function StopTween(target)
         if not target then
            _G.StopTween = true
            wait()
            TP(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
               game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
            _G.StopTween = false
            _G.Clip = false
         end
      end

      function CheckLv()
         MyLevel = game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].Level.Value
         if MyLevel == 1 or MyLevel <= 14 then
            Mon = "Bandit"
            Mon1 = "Bandits"
            Quest = "Woppa"
            NameQuest = "Quest: Defeat 5 Bandits"
            CFrameMon = CFrame.new(Vector3.new(229,121,-849))

         elseif MyLevel == 15 or MyLevel <= 34 then
            Mon = "Reiner's Subordinate"
            Mon1 = "Reiner"
            Quest = "Boss"
            NameQuest = "Quest: Kill 5 Of Reiner's Subordinates"
            CFrameMon = CFrame.new(Vector3.new(229,121,-849))

         elseif MyLevel == 35 or MyLevel <= 59 then
            Mon = "Orange Pirate"
            Mon1 = "Buggy"
            Quest = "Unrio"
            NameQuest = "Quest: Defeat 6 Orange Pirates"
            CFrameMon = CFrame.new(Vector3.new(-2219,92,-2397))

         elseif MyLevel == 60 or MyLevel <= 99 then
            Mon = "Monkey"
            Mon1 = "Gorillas"
            Quest = "Zet"
            NameQuest = "Quest: Kill 5 Monkeys"
            CFrameMon = CFrame.new(Vector3.new(-1211,84,2045))

         elseif MyLevel == 100 or MyLevel <= 124 then
            Mon = "Angry Chef"
            Mon1 = "Baratie"
            Quest = "Dyna"
            NameQuest = "Quest: Defeat 6 Chefs"
            CFrameMon = CFrame.new(Vector3.new(2025,64,1636))

         elseif MyLevel == 125 or MyLevel <= 149 then
            Mon = "Krieg Pirate"
            Mon1 = "Baratie"
            Quest = "Viz"
            NameQuest = "Quest: Defeat 6 Krieg Pirates"
            CFrameMon = CFrame.new(Vector3.new(2025,64,1636))

         elseif MyLevel == 150 or MyLevel <= 199 then
            Mon = "Sand Pirate"
            Mon1 = "Sandora"
            Quest = "Cellierin"
            NameQuest = "Quest: Defeat 7 Sand Pirates"
            CFrameMon = CFrame.new(Vector3.new(-6735,55,-4686))

         elseif MyLevel == 200 or MyLevel <= 239 then
            Mon = "Desert Brigand"
            Mon1 = "Sandora"
            Quest = "Wise"
            NameQuest = "Quest: Defeat 7 Desert Brigands"
            CFrameMon = CFrame.new(Vector3.new(-6735,55,-4686))

         elseif MyLevel == 240 or MyLevel <= 264 then
            Mon = "Fishman"
            Mon1 = "Fishmen"
            Quest = "Bope"
            NameQuest = "Quest: Defeat 7 Fishmen"
            CFrameMon = CFrame.new(Vector3.new(-1779,115,-6010))

         elseif MyLevel == 265 or MyLevel <= 314 then
            Mon = "Graverobber"
            Mon1 = "Fishmen"
            Quest = "Zeno"
            NameQuest = "Quest: Defeat 8 Graverobbers"
            CFrameMon = CFrame.new(Vector3.new(-1779,115,-6010))

         elseif MyLevel == 315 or MyLevel <= 389 then
            Mon = "Sky Soldier"
            Mon1 = "SkyNpcs"
            Quest = "Ima"
            NameQuest = "Quest: Defeat 10 Sky Soldiers"
            CFrameMon = CFrame.new(Vector3.new(4837,1030,-7983))

         elseif MyLevel == 390 or MyLevel <= 600 then
            Mon = "Divine Guardian"
            Mon1 = "SkyNpcs"
            Quest = "Sofen"
            NameQuest = "Quest: Defeat 10 Divine Guardians"
            CFrameMon = CFrame.new(Vector3.new(5157,1366,-9572))
         end
      end

      function CheckBoss()
         if _G.SelectBoss == "Bandit Leader [LV 10+]" then
            Mon = "Bandit Leader"
            Mon1 = "Bandits"
            Quest = "Abu"
            NameQuest = "Quest: Defeat The Leader of the Bandits"
            CFrameMon = CFrame.new(Vector3.new(229,121,-849))

         elseif _G.SelectBoss == "Devious Reiner [LV 25+]" then
            Mon = "Reiner"
            Mon1 = "Reiner"
            Quest = "Zak"
            NameQuest = "Quest: Defeat The Devious Reiner"
            CFrameMon = CFrame.new(Vector3.new(229,121,-849))

         elseif _G.SelectBoss == "Buggy Nigger [LV 45+]" then
            Mon = "Buggy"
            Mon1 = "Buggy"
            Quest = "King"
            NameQuest = "Quest: Defeat Buggy"
            CFrameMon = CFrame.new(Vector3.new(-2193,69,-2624))

         elseif _G.SelectBoss == "King Gorilla [LV 70+]" then
            Mon = "King Abu"
            Mon1 = "Gorillas"
            Quest = "Monkey Hunter"
            NameQuest = "Quest: Defeat King Abu"
            CFrameMon = CFrame.new(Vector3.new(-1819,53,2344))

         elseif _G.SelectBoss == "Sand Dragon [LV 200+]" then
            Mon = "Sand Dragon"
            Mon1 = "Dragon"
            Quest = "Shady Man"
            NameQuest = "Quest: Defeat The Sand Dragon"
            CFrameMon = CFrame.new(Vector3.new(-7270,21,-4965))

         elseif _G.SelectBoss == "Desert King [LV 220+]" then
            Mon = "Desert King"
            Mon1 = "Croc"
            Quest = "Vivi"
            NameQuest = "Quest: Defeat The Desert King"
            CFrameMon = CFrame.new(Vector3.new(-7627,239,-4041))

         elseif _G.SelectBoss == "Arlong BigDick [LV 290+]" then
            Mon = "Arlong"
            Mon1 = "Fishmen"
            Quest = "Little Boy"
            NameQuest = "Quest: Defeat Arlong"
            CFrameMon = CFrame.new(Vector3.new(-2220,28,-6048))

         elseif _G.SelectBoss == "Thunder God [LV 390+]" then
            Mon = "Thunder God"
            Mon1 = "Enel"
            Quest = "Jovahn"
            NameQuest = "Quest: Defeat Enel"
            CFrameMon = CFrame.new(Vector3.new(3494,2064,-11338))
         end
      end

      spawn(function()
      game:GetService("RunService").Heartbeat:Connect(function()
      if _G.AutoFarm or _G.AutoBoss or _G.AutoQuest and _G.SelectQuest == "Ken Haki [LV 200+]" or _G.FarmSeas or _G.TPNew then
         if not game:GetService("Workspace"):FindFirstChild("LOL") then
            local LOL = Instance.new("Part")
            LOL.Name = "LOL"
            LOL.Parent = game.Workspace
            LOL.Anchored = true
            LOL.Transparency = 1
            LOL.Size = Vector3.new(5, -1, 5)
         elseif game:GetService("Workspace"):FindFirstChild("LOL") then
            game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
         end
      else
         if game:GetService("Workspace"):FindFirstChild("LOL") then
            game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
         end
      end
      end)
      end)
      spawn(function()
      pcall(function()
      while wait() do
         if _G.AutoFarm or _G.AutoBoss or _G.AutoQuest and _G.SelectQuest == "Ken Haki [LV 200+]" or _G.FarmSeas or _G.TPNew then
            local character = game:GetService("Players").LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
               local humanoidRootPart = character.HumanoidRootPart
               if not humanoidRootPart:FindFirstChild("BodyClip") then
                  local Noclip = Instance.new("BodyVelocity")
                  Noclip.Name = "BodyClip"
                  Noclip.Parent = humanoidRootPart
                  Noclip.MaxForce = Vector3.new(1212, 1212, 1212)
                  Noclip.Velocity = Vector3.new(0, 0, 0)
               end
            end
         end
      end
      end)
      end)
      spawn(function()
      pcall(function()
      game:GetService("RunService").Stepped:Connect(function()
      if _G.AutoFarm or _G.AutoBoss or _G.AutoQuest and _G.SelectQuest == "Ken Haki [LV 200+]" or _G.FarmSeas or _G.TPNew then
         for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
               v.CanCollide = false
            end
         end
      end
      end)
      end)
      end)

      --tp
      function TP(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    game:GetService('Players').LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    if Distance < 30 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    elseif Distance < 111 then
        Speed = 44444 
    elseif Distance < 555 then
        Speed = 666666 
    elseif Distance < 1000 then
        Speed = 777777  
    else
        Speed = 88888  
    end

    if Distance < 1000 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    else
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
    end
end

      function FastTP(Pos)
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
      end

      function TPCheck(Pos)
         local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
         if Distance > 1888 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
         end
      end
      
      --fast + tp
      local function FastAtk()
         if _G.SelectMode == "Melee" then
            game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("Combat", 0, "left", 0, _G.SelectWeapon)
         elseif _G.SelectMode == "Sword" then
            game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("SwordCombat", 0.25, "one", 0.25, game:GetService("Players").LocalPlayer.Character[_G.SelectWeapon .. "M"])
         end
      end

      spawn(function()
      while wait() do
         pcall(function()
         if _G.SelectMethod == "Behind" then
            MethodFarm = CFrame.new(0,0,_G.DistanceFarm)
         elseif _G.SelectMethod == "Below" then
            MethodFarm = CFrame.new(0,-_G.DistanceFarm,0)  * CFrame.Angles(math.rad(90),0,0)
         elseif _G.SelectMethod == "Upper" then
            MethodFarm = CFrame.new(0,_G.DistanceFarm,0)  * CFrame.Angles(math.rad(-90),0,0)
         else
            MethodFarm = CFrame.new(0,0,0)
         end
         end)
      end
      end)

      spawn(function()
      while wait() do
         if _G.AutoFarm then
            pcall(function()
            CheckLv()
            TPCheck(CFrameMon)
            local npcFight = game.Workspace.NPC.Fight[Mon1]
            if npcFight then
               for _, v in ipairs(npcFight:GetChildren()) do
                  if v.Name == Mon then
                     local humanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                     if humanoidRootPart and v.Humanoid.Health > 0 then
                        local questText = game.Players.LocalPlayer.PlayerGui.Quests.Holder.Quest.Text
                        if string.find(questText, NameQuest) then
                           humanoidRootPart.Size = Vector3.new(222, 222, 222)
                           EquipWeapon(_G.SelectWeapon)
                           AutoHaki()
                           if _G.SelectMode == "Melee" or _G.SelectMode == "Sword" then
                              TP(humanoidRootPart.CFrame * MethodFarm)
                              FastAtk()
                           elseif _G.SelectMode == "Gun" then
                              game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("GunCombat", 0, 0, game:GetService("Players").LocalPlayer.Character[_G.SelectWeapon .. "M"], v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                              TP(humanoidRootPart.CFrame * CFrame.new(0,44,0))
                           end
                           v.HumanoidRootPart.CanCollide = false
                           v.Humanoid.WalkSpeed = 0
                           v.Head.CanCollide = false
                           if v.Humanoid:FindFirstChild("Animator") then
                              v.Humanoid.Animator:Destroy()
                              v.UpperTorso:Destroy()
                           end
                        else
                           CheckLv()
                           TP(game.Workspace.NPC.Talk[Quest].HumanoidRootPart.CFrame)
                           game:GetService("ReplicatedStorage").Remotes.ToServer.AbandonQuest:FireServer()
                           game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk[Quest].Info)
                        end
                     end
                  end
               end
            end
            end)
         end
      end
      end)

      spawn(function()
      while wait() do
         if _G.AutoBoss then
            pcall(function()
            CheckBoss()
            TPCheck(CFrameMon)
            local npcFight = game.Workspace.NPC.Fight[Mon1]
            if npcFight then
               for _, v in ipairs(npcFight:GetChildren()) do
                  if v.Name == Mon then
                     local humanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                     if humanoidRootPart and v.Humanoid.Health > 0 then
                        local questText = game.Players.LocalPlayer.PlayerGui.Quests.Holder.Quest.Text
                        if string.find(questText, NameQuest) then
                           humanoidRootPart.Size = Vector3.new(222, 222, 222)
                           EquipWeapon(_G.SelectWeapon)
                           AutoHaki()
                           if _G.SelectMode == "Melee" or _G.SelectMode == "Sword" then
                              TP(humanoidRootPart.CFrame * MethodFarm)
                              FastAtk()
                           elseif _G.SelectMode == "Gun" then
                              game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("GunCombat", 0, 0, game:GetService("Players").LocalPlayer.Character[_G.SelectWeapon .. "M"], v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                              TP(humanoidRootPart.CFrame * CFrame.new(0,44,0))
                           end
                           v.HumanoidRootPart.CanCollide = false
                           v.Humanoid.WalkSpeed = 0
                           v.Head.CanCollide = false
                           if v.Humanoid:FindFirstChild("Animator") then
                              v.Humanoid.Animator:Destroy()
                              v.UpperTorso:Destroy()
                           end
                        else
                           CheckBoss()
                           if _G.SelectBoss == "Thunder God [LV 390+]" then
                              FastTP(CFrame.new(Vector3.new(4887,1265,-9676)))
                              wait(.5)
                              game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk:FindFirstChild(Quest).Info)
                           else
                              TP(game.Workspace.NPC.Talk[Quest].HumanoidRootPart.CFrame)
                              game:GetService("ReplicatedStorage").Remotes.ToServer.AbandonQuest:FireServer()
                              game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk:FindFirstChild(Quest).Info)
                           end
                        end
                     end
                  end
               end
            end
            end)
         end
      end
      end)

      spawn(function()
      while wait() do
         if _G.SelectQuest == "Ken Haki [LV 200+]" and _G.AutoQuest then
            pcall(function()
            TPCheck(CFrame.new(Vector3.new(-7627,239,-4041)))
            local npcFight = game.Workspace.NPC.Fight.Croc
            if npcFight then
               for _, v in ipairs(npcFight:GetChildren()) do
                  if v.Name == "Desert King" then
                     local humanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                     if humanoidRootPart and v.Humanoid.Health > 0 then
                        local questText = game.Players.LocalPlayer.PlayerGui.Quests.Holder.Quest.Text
                        if string.find(questText, "Quest: Defeat The Desert King") then
                           humanoidRootPart.Size = Vector3.new(222, 222, 222)
                           EquipWeapon(_G.SelectWeapon)
                           AutoHaki()
                           if _G.SelectMode == "Melee" or _G.SelectMode == "Sword" then
                              TP(humanoidRootPart.CFrame * MethodFarm)
                              FastAtk()
                           elseif _G.SelectMode == "Gun" then
                              game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("GunCombat", 0, 0, game:GetService("Players").LocalPlayer.Character[_G.SelectWeapon .. "M"], v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                              TP(humanoidRootPart.CFrame * CFrame.new(0,44,0))
                           end
                           v.HumanoidRootPart.CanCollide = false
                           v.Humanoid.WalkSpeed = 0
                           v.Head.CanCollide = false
                           if v.Humanoid:FindFirstChild("Animator") then
                              v.Humanoid.Animator:Destroy()
                              v.UpperTorso:Destroy()
                           end
                        else
                           FastTP(CFrame.new(Vector3.new(-7226,180,-5446)))
                           game:GetService("ReplicatedStorage").Remotes.ToServer.AbandonQuest:FireServer()
                           game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Fresh.Info)
                        end
                     end
                  end
               end
            end
            end)
         end
      end
      end)

      spawn(function()
      while wait() do
         if _G.SelectQuest == "Buso Haki [LV 50+]" and _G.AutoQuest then
            pcall(function()
            local questText = game.Players.LocalPlayer.PlayerGui.Quests.Holder.Quest.Text
            if string.find(questText, "Quest: Find the Lost Scroll") then
               local Stuff = "ArmamentScroll" .. game.Players.LocalPlayer.Name
               for i, v in pairs(game:GetService("Workspace").QuestStuff.ArmamentScroll:GetDescendants()) do
                  if v:IsA("Model") and v.Name == Stuff then
                     repeat task.wait()
                        FastTP(v:GetModelCFrame())
                     until v:FindFirstChild("Pages")
                     fireclickdetector(v[Stuff].ClickDetector)
                  end
               end
            else
               FastTP(CFrame.new(Vector3.new(-1975,81,2792)))
               wait(.3)
               UnEquipWeapon(_G.SelectWeapon)
               game:GetService("ReplicatedStorage").Remotes.ToServer.AbandonQuest:FireServer()
               game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Alphirex.Info)
            end
            end)
         end
      end
      end)

      spawn(function()
      while wait() do
         if _G.AutoStats then
            game:GetService("ReplicatedStorage").Remotes.ToServer.StatMinus:InvokeServer(2, _G.SelectStats1)
            game:GetService("ReplicatedStorage").Remotes.ToServer.StatMinus:InvokeServer(2, _G.SelectStats2)
            wait(2)
         end
      end
      end)
      
     spawn(function()
    while wait() do
        if _G.FarmSeas then
            pcall(function()
                local npcFight = game.Workspace.NPC.Fight.SeaDragon
                if npcFight then
                    for _, v in ipairs(npcFight:GetChildren()) do
                        if v.Name == "Sea Dragon" then
                            local humanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                            if humanoidRootPart and v.Humanoid.Health > 0 then
                                humanoidRootPart.Size = Vector3.new(222, 222, 222)
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                if _G.SelectMode == "Melee" or _G.SelectMode == "Sword" then
                                    TP(humanoidRootPart.CFrame * MethodFarm)
                                    FastAtk()
                                elseif _G.SelectMode == "Gun" then
                                    game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("GunCombat", 0, 0, game:GetService("Players").LocalPlayer.Character[_G.SelectWeapon .. "M"], v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                    TP(humanoidRootPart.CFrame * CFrame.new(0,44,0))
                                end
                            else
                                TP(CFrame.new(Vector3.new(9369,69,-4050)))
                            end
                        end
                    end
                end
            end)
        end
    end
end)
      
      spawn(function()
      while wait() do
         if _G.AutoKen then
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"T",false,game)
            wait(5)
         end
      end
      end)


      local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/XYZUi.lua"))()
      local Win = library:sex()

      local GeneralTab = Win:Tab("Main/Settings", 14477284625)

      local GeneralTab1 = GeneralTab:CraftPage(1)
      local GeneralTab2 = GeneralTab:CraftPage(2)

      GeneralTab1:Seperator("Farm Level")

      GeneralTab1:Toggle("Auto Farm Level", false, function(Value)
      _G.AutoFarm = Value
      StopTween(_G.AutoFarm)
      end)

      GeneralTab1:Toggle("Auto Ken (Bugs)", false, function(Value)
      _G.AutoKen = Value
      end)

         GeneralTab1:Seperator("Farm Boss")

         local BossNames = {
            "Bandit Leader [LV 10+]",
            "Devious Reiner [LV 25+]",
            "Buggy Nigger [LV 45+]",
            "King Gorilla [LV 70+]",
            "Sand Dragon [LV 200+]",
            "Desert King [LV 220+]",
            "Arlong BigDick [LV 290+]",
            "Thunder God [LV 390+]"
         }

         GeneralTab1:Dropdown("Select Boss", BossNames, "", function(Value)
         _G.SelectBoss = Value
         end)

         GeneralTab1:Toggle("Auto Farm Boss", false, function(Value)
         _G.AutoBoss = Value
         StopTween(_G.AutoBoss)
         end)
         
         GeneralTab1:Seperator("Sea Dragon")

         GeneralTab1:Toggle("Auto Sea Beast", false, function(Value)
         _G.FarmSeas = Value
         StopTween(_G.FarmSeas)
         end)

         GeneralTab1:Seperator("Auto Haki")

         GeneralTab1:Dropdown("Select Quest", {"Buso Haki [LV 50+]", "Ken Haki [LV 240+]"},"", function(Value)
         _G.SelectQuest = Value
         end)

         GeneralTab1:Toggle("Auto Quest", false, function(Value)
         _G.AutoQuest = Value
         StopTween(_G.AutoQuest)
         end)

         GeneralTab2:Seperator("Settings")

         local Select_Weapon = GeneralTab2:Dropdown("Select Weapon", game.Players.LocalPlayer.Backpack:GetChildren(), " ", function(va)
         _G.SelectWeapon = va
         end)

         GeneralTab2:Button("Refresh Weapon", function()
         Select_Weapon:Clear()
         for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            Select_Weapon:Add(v.Name)
         end
         end)

         GeneralTab2:Dropdown("Select Mode", {"Melee", "Sword", "Gun"},"Melee", function(Value)
         _G.SelectMode = Value
         end)

         GeneralTab2:Dropdown("Select Method", {"Behind", "Below", "Upper"},"Upper", function(Value)
         _G.SelectMethod = Value
         end)
         
         _G.DistanceFarm = 7

         GeneralTab2:Slider("Distance Farm",false,0,20,_G.DistanceFarm,function(Value)
         _G.DistanceFarm = Value
         end)

         local PlayerTab = Win:Tab("Travel/Stats", 14477598542)

         local PlayerTab1 = PlayerTab:CraftPage(1)
         local PlayerTab2 = PlayerTab:CraftPage(2)

         PlayerTab1:Dropdown("Select Island", {"Windmill Village", "Orange Town", "Jungle", "Baratie",  "Sandora", "Arlong Park", "Sky Island"},"", function(Value)
         _G.SelectIsland = Value
         end)

         PlayerTab1:Button("Teleport",function()
         if _G.SelectIsland == "Windmill Village" then
            FastTP(CFrame.new(Vector3.new(114,70,-1233)))
         elseif _G.SelectIsland == "Orange Town" then
            FastTP(CFrame.new(Vector3.new(-2062,60,-2307)))
         elseif _G.SelectIsland == "Jungle" then
            FastTP(CFrame.new(Vector3.new(-1159,70,2017)))
         elseif _G.SelectIsland == "Baratie" then
            FastTP(CFrame.new(Vector3.new(2019,64,1621)))
         elseif _G.SelectIsland == "Sandora" then
            FastTP(CFrame.new(Vector3.new(-6106,70,-4637)))
         elseif _G.SelectIsland == "Arlong Park" then
            FastTP(CFrame.new(Vector3.new(-1533,50,-5869)))
         elseif _G.SelectIsland == "Skypiea Island" then
            FastTP(CFrame.new(Vector3.new(4324,840,-8566)))
         end
         end)

         PlayerTab1:Seperator("Auto Chest")

         PlayerTab1:Dropdown("Select Island", game.Workspace.ChestSpawns:GetChildren(), " ", function(va)
         _G.SelectChestIsland = va
         end)

         local TPChestV = false

         PlayerTab1:Button("TP All Chest", function()
         TPChestV = true
         for i,v in pairs(game:GetService("Workspace").ChestSpawns:GetDescendants()) do
            if TPChestV and v:IsA("Model") and v.Name == "Chest"  then
               repeat task.wait()
                  FastTP(v:GetModelCFrame())
               until v:FindFirstChild("PressPart")
               task.wait(.5)
               fireclickdetector(v.PressPart.ClickDetector)
            end
         end
         end)

         PlayerTab1:Button("TP Chest Select",function()
         TPChestV = true
         for i,v in pairs(game:GetService("Workspace").ChestSpawns[_G.SelectChestIsland]:GetDescendants()) do
            if TPChestV and v:IsA("Model") and v.Name == "Chest"  then
               repeat task.wait()
                  FastTP(v:GetModelCFrame())
               until v:FindFirstChild("PressPart")
               task.wait(.5)
               fireclickdetector(v.PressPart.ClickDetector)
            end
         end
         end)

         PlayerTab1:Button("Stop TP Chest", function()
         TPChestV = false
         end)

         PlayerTab2:Seperator("  Auto Stats ")

         PlayerTab2:Dropdown("Select Stats 1", {"None", "Strength", "Defense", "Sword", "Demon Fruit", "Gun"},"None", function(Value)
         _G.SelectStats1 = Value
         end)

         PlayerTab2:Dropdown("Select Stats 2", {"None", "Strength", "Defense", "Sword", "Demon Fruit", "Gun"},"None", function(Value)
         _G.SelectStats2 = Value
         end)

         PlayerTab2:Toggle("Auto Stats", false, function(Value)
         _G.AutoStats = Value
         end)

         local ShopTab = Win:Tab("Shops/Fruit",14477621526)
         local ShopTab1 = ShopTab:CraftPage(1)
         local ShopTab2 = ShopTab:CraftPage(2)

         ShopTab1:Seperator("  Buy Items")

         local ItemName = {
            "Shop Gun [ 2K+]",
            "Shop Sword  [5K+]",
            "Black Leg [150K+]",
            "Electro Claw [ 200K+]",
            "Observation Haki [ 200K+]",
            "Blast Cannon [ 250K+]",
         }

         ShopTab1:Dropdown("Select Items", ItemName,"", function(Value)
         _G.SelectMelee = Value
         end)

         ShopTab1:Button("Buy Items",function()
         if _G.SelectMelee == "Black Leg [150K+]" then
            game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Sanji.Info)
         elseif _G.SelectMelee == "Electro Claw [ 200K+]" then
            game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Carrot.Info)
         elseif _G.SelectMelee == "Observation Haki [ 200K+]" then
            game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Fresh.Info)
         elseif _G.SelectMelee == "Shop Sword  [5K+]" then
            FastTP(CFrame.new(Vector3.new(2342,70,-3388)))
         elseif _G.SelectMelee == "Shop Gun [ 2K+]" then
            FastTP(CFrame.new(Vector3.new(2336,71,-3311)))
         elseif _G.SelectMelee == "Blast Cannon [ 250K+]" then
            FastTP(CFrame.new(Vector3.new(3208,2264,-11623)))
            wait(1)
            game:GetService("ReplicatedStorage").Remotes.ToServer.Quest:FireServer(workspace.NPC.Talk.Wyper.Info)
         end
         end)

         local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/OrionUi.lua"))()

         ShopTab2:Seperator("  Fruits ")

         ShopTab2:Button("TP Fruit Near", function()
         for _, v in ipairs(game.Workspace:GetChildren()) do
            local FruitNames = {
               "Spring",
               "Kilo",
               "Chop",
               "Spin",
               "Barrier",
               "Sand",
               "Gas",
               "Love",
               "Paw",
               "Lighting",
               "Flame",
               "Dark",
               "Tremor",
               "Light",
               "Smoke",
               "Bomb",
               "Buddha"
            }
            for _, FruitName in ipairs(FruitNames) do
               if v.Name == FruitName then
                  FastTP(game.Workspace[v.Name].Handle.CFrame)
               end
            end
         end
         end)

         ShopTab2:Button("TP Shop Fruit",function()
         FastTP(CFrame.new(Vector3.new(1884,60,-3276)))
         end)

         ShopTab2:Button("Ramdom Fruit",function()
         game:GetService("ReplicatedStorage").Remotes.ToServer.GachaR:FireServer()
         end)

      
