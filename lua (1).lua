local VirtualUser = game:service "VirtualUser"
      game:service "Players".LocalPlayer.Idled:connect(
      function()
         VirtualUser:CaptureController()
         VirtualUser:ClickButton2(Vector2.new())
         end)
         
         
local function load()
   if game.PlaceId == 6897167394 then

      function UnEquipWeapon(Weapon)
         if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
         end
      end

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
            
            elseif _G.SelectBoss == "Guard Captain [LV 340+]" then
            Mon = "Guard Captain"
            Mon1 = "SkyNpcs"
            Quest = "Damu"
            NameQuest = "Quest: Defeat The Guard Captain"
            CFrameMon = CFrame.new(Vector3.new(5937,1714,-8783))

         elseif _G.SelectBoss == "Thunder God [LV 390+]" then
            Mon = "Thunder God"
            Mon1 = "Enel"
            Quest = "Jovahn"
            NameQuest = "Quest: Defeat Enel"
            CFrameMon = CFrame.new(Vector3.new(3494,2064,-11338))
         end
      end
      
      function CheckBossRaid()
         if _G.FarmRaid == "Smoke Admiral" then
            Mon = "Smoke Admiral"
            Mon1 = "WhiteHunter"
            CFrameMon = CFrame.new(Vector3.new(229,121,-849))

         elseif _G.FarmRaid == "Sea Dragon" then
            Mon = "Sea Dragon"
            Mon1 = "SeaDragon"

         elseif _G.FarmRaid == "Kuma" then
            Mon = "Buggy"
            Mon1 = "Buggy"
            Quest = "King"
            NameQuest = "Quest: Defeat Buggy"
            CFrameMon = CFrame.new(Vector3.new(-2193,69,-2624))
         end
      end

      spawn(function()
      game:GetService("RunService").Heartbeat:Connect(function()
      if _G.AutoFarm or _G.AutoBoss or _G.AutoQuest and _G.SelectQuest == "Ken Haki [LV 200+]" or _G.FarmSeas or _G.FarmSmoke then
         if not game:GetService("Workspace"):FindFirstChild("LOL") then
            local LOL = Instance.new("Part")
            LOL.Name = "LOL"
            LOL.Parent = game.Workspace
            LOL.Anchored = true
            LOL.Transparency = 1
            LOL.Size = Vector3.new(35, 5, 35)
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
         if _G.AutoFarm or _G.AutoBoss or _G.AutoQuest and _G.SelectQuest == "Ken Haki [LV 200+]" or _G.FarmSeas or _G.FarmSmoke then
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
      if _G.AutoFarm or _G.AutoBoss or _G.AutoQuest and _G.SelectQuest == "Ken Haki [LV 200+]" or _G.FarmSeas or _G.FarmSmoke then
         for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
               v.CanCollide = false
            end
         end
      end
      end)
      end)
      end)
      
      function AutoSkill()
    if _G.AutoSkill then
        if _G.AutoZ then
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Z, false, game)
        elseif _G.AutoX then
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.X, false, game)
        elseif _G.AutoC then
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.C, false, game)
        elseif _G.AutoV then
            game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.V, false, game)
        end
    end
end

      --tp
      function TP(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 30 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    elseif Distance < 111 then
        Speed = 5000
    elseif Distance < 555 then
        Speed = 10000
    elseif Distance < 1000 then
        Speed = 20000
    else
        Speed = 50000
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
            game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("SwordCombat", 0, "one", 0, game:GetService("Players").LocalPlayer.Character[_G.SelectWeapon .. "M"])
            elseif _G.SelectMode == "Fruit" then
            game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("DemonFruitCombat", 0, "one", 0, game:GetService("Players").LocalPlayer.Character[_G.SelectWeapon .. "M"])
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
                           AutoSkill()
                           if _G.SelectMode == "Melee" or _G.SelectMode == "Sword" or _G.SelectMode == "Fruit" then
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
                           if _G.SelectMode == "Melee" or _G.SelectMode == "Sword" or _G.SelectMode == "Fruit" then
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
                              elseif _G.SelectBoss == "Guard Captain [LV 340+]" then
                              FastTP(CFrame.new(Vector3.new(5437,1265,-9156)))
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
                           if _G.SelectMode == "Melee" or _G.SelectMode == "Sword" or _G.SelectMode == "Fruit" then
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
        if _G.AutoKen then
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"T",false,game)
            wait(2)
            end
    end
end)

spawn(function()
    while wait() do
        if _G.FarmSmoke then
            pcall(function()
                TPCheck(CFrame.new(Vector3.new(2623, 153, -3303)))
                local npcFight = game.Workspace.NPC.Fight.WhiteHunter
                if npcFight then
                    for _, v in ipairs(npcFight:GetChildren()) do
                        if v.Name == "Smoke Admiral" then
                            local humanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                            if humanoidRootPart and v.Humanoid.Health > 0 then
                                humanoidRootPart.Size = Vector3.new(222, 222, 222)
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                if _G.SelectMode == "Melee" or _G.SelectMode == "Sword" or _G.SelectMode == "Fruit" then
                                    TP(humanoidRootPart.CFrame * MethodFarm)
                                    FastAtk()
                                elseif _G.SelectMode == "Gun" then
                                    game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("GunCombat", 0, 0, game:GetService("Players").LocalPlayer.Character[_G.SelectWeapon.. "M"], v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                    TP(humanoidRootPart.CFrame * CFrame.new(0, 44, 0))
                                end
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                    v.UpperTorso:Destroy()
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
        if _G.FarmSmoke then
            pcall(function()
                TPCheck(CFrame.new(Vector3.new(2623, 153, -3303)))
                local npcFight = game.Workspace.NPC.Fight.WhiteHunter
                if npcFight then
                    for _, v in ipairs(npcFight:GetChildren()) do
                        if v.Name == "Smoke Admiral" then
                            local humanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                            if humanoidRootPart and v.Humanoid.Health > 0 then
                                humanoidRootPart.Size = Vector3.new(222, 222, 222)
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                if _G.SelectMode == "Melee" or _G.SelectMode == "Sword" or _G.SelectMode == "Fruit" then
                                    TP(humanoidRootPart.CFrame * MethodFarm)
                                    FastAtk()
                                elseif _G.SelectMode == "Gun" then
                                    game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("GunCombat", 0, 0, game:GetService("Players").LocalPlayer.Character[_G.SelectWeapon.. "M"], v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                    TP(humanoidRootPart.CFrame * CFrame.new(0, 44, 0))
                                end
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                    v.UpperTorso:Destroy()
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
        if _G.FarmSeaDragon then
            pcall(function()
                local npcFight = game.Workspace.NPC.Fight.SeaDeagon
                if npcFight then
                    for _, v in ipairs(npcFight:GetChildren()) do
                        if v.Name == "Sea Dragon" then
                            local humanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                            if humanoidRootPart and v.Humanoid.Health > 0 then
                                humanoidRootPart.Size = Vector3.new(222, 222, 222)
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                if _G.SelectMode == "Melee" or _G.SelectMode == "Sword" or _G.SelectMode == "Fruit" then
                                    TP(humanoidRootPart.CFrame * MethodFarm)
                                    FastAtk()
                                elseif _G.SelectMode == "Gun" then
                                    game:GetService("ReplicatedStorage").Remotes.ServerMove:FireServer("GunCombat", 0, 0, game:GetService("Players").LocalPlayer.Character[_G.SelectWeapon.. "M"], v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
                                    TP(humanoidRootPart.CFrame * CFrame.new(0, 44, 0))
                                end
                                if 
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                    v.UpperTorso:Destroy()
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

      function hop()
         local Player = game.Players.LocalPlayer
         local Http = game:GetService("HttpService")
         local TPS = game:GetService("TeleportService")
         local Api = "https://games.roblox.com/v1/games/"

         local _place,_id = game.PlaceId, game.JobId
         local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=10"
         function ListServers(cursor)
            local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
            return Http:JSONDecode(Raw)
         end

         time_to_wait = 0.1
         while wait(time_to_wait) do
            Player.Character.HumanoidRootPart.Anchored = true
            local Servers = ListServers()
            local Server = Servers.data[math.random(1,#Servers.data)]
            TPS:TeleportToPlaceInstance(_place, Server.id, Player)
         end
      end

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

      

         GeneralTab1:Seperator("Farm Boss")

         local BossNames = {
            "Bandit Leader [LV 10+]",
            "Devious Reiner [LV 25+]",
            "Buggy Nigger [LV 45+]",
            "King Gorilla [LV 70+]",
            "Sand Dragon [LV 200+]",
            "Desert King [LV 220+]",
            "Arlong BigDick [LV 290+]",
            "Guard Captain [LV 340+]",
            "Thunder God [LV 390+]"
         }

         GeneralTab1:Dropdown("Select Boss", BossNames, "", function(Value)
         _G.SelectBoss = Value
         end)

         GeneralTab1:Toggle("Auto Farm Boss", false, function(Value)
         _G.AutoBoss = Value
         StopTween(_G.AutoBoss)
         end)
         
         GeneralTab1:Seperator("Raid Boss")
           
         GeneralTab1:Toggle("Farm Smoke Admiral", false, function(Value)
         _G.FarmSmoke = Value
         StopTween(_G.FarmSmoke)
         end)
         
         GeneralTab1:Toggle("Farm Sea Dragon", false, function(Value)
         _G.FarmSeaDragon = Value
         StopTween(_G.FarmSeaDragon)
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

         GeneralTab2:Dropdown("Select Mode", {"Melee", "Sword", "Gun", "Fruit"},"Melee", function(Value)
         _G.SelectMode = Value
         end)

         GeneralTab2:Dropdown("Select Method", {"Behind", "Below", "Upper"},"Upper", function(Value)
         _G.SelectMethod = Value
         end)
         
         _G.DistanceFarm = 7

         GeneralTab2:Slider("Distance Farm",false,0,20,_G.DistanceFarm,function(Value)
         _G.DistanceFarm = Value
         end)
         
         GeneralTab2:Toggle("Auto Ken (Bugs)", false, function(Value)
      _G.AutoKen = Value
      end)
      
      GeneralTab2:Seperator("Skills")
      
      GeneralTab2:Toggle("Auto Skill", false, function(Value)
         _G.AutoSkill = Value
         end)
         
         GeneralTab2:Toggle("Skill X", false, function(Value)
         _G.AutoX = Value
         end)
         
         GeneralTab2:Toggle("Skill Z", false, function(Value)
         _G.AutoZ = Value
         end)
         
         GeneralTab2:Toggle("Skill C", false, function(Value)
         _G.AutoC = Value
         end)
         
         GeneralTab2:Toggle("Skill V", false, function(Value)
         _G.AutoC = Value
         end)

         local PlayerTab = Win:Tab("Travel/Stats", 14477598542)

         local PlayerTab1 = PlayerTab:CraftPage(1)
         local PlayerTab2 = PlayerTab:CraftPage(2)

         PlayerTab1:Dropdown("Select Island", {"Windmill Village", "Orange Town", "Jungle", "Baratie",  "Sandora", "Arlong Park", "Skypiea Island"},"", function(Value)
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

      else
         loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ScriptLinhTinh/main/Scare.lua"))()
      end
   end

   local applicationName = 'MewingHub'
   local SavedKeyPath = "SavedKey.txt"
   local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/Library/retard/OrionUi.lua"))()
   local KeyLibrary = KeyLibrary or loadstring(game:HttpGet('https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/setup_obf.lua'))()
   local KeySystem = KeyLibrary.new(applicationName)
   AuthType = "clientid"
   local function Notify(text)
      OrionLib:MakeNotification({
         Name = "Mewing Hub",
         Content = text,
         Image = "rbxassetid://17254290146",
         Time = 5
      })
   end

   for _, Interface in ipairs(game.CoreGui:GetChildren()) do
      if Interface.Name == "KeyGui" then
         Interface:Destroy()
      end
   end

   _G.Color = Color3.fromRGB(232, 181, 138)

   local KeyGui = Instance.new("ScreenGui")
   local FrameUI = Instance.new("Frame")
   local UICorner = Instance.new("UICorner")
   local Frame = Instance.new("Frame")
   local TextBox = Instance.new("TextBox")
   local UICorner_2 = Instance.new("UICorner")
   local ImageLabel = Instance.new("ImageLabel")
   local UICorner_3 = Instance.new("UICorner")
   local Frame_2 = Instance.new("Frame")
   local Get = Instance.new("TextButton")
   local UICorner_4 = Instance.new("UICorner")
   local OK = Instance.new("TextButton")
   local UICorner_5 = Instance.new("UICorner")
   local Name = Instance.new("TextLabel")

   KeyGui.Name = "KeyGui"
   KeyGui.Parent = game:GetService("CoreGui")

   FrameUI.Name = "FrameUI"
   FrameUI.Parent = KeyGui
   FrameUI.BackgroundTransparency = 0.1
   FrameUI.AnchorPoint = Vector2.new(0.5, 0.5)
   FrameUI.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
   FrameUI.Position = UDim2.new(0.5, 0, 0.5, 0)
   FrameUI.Size = UDim2.new(0, 487, 0, 231)

   UICorner.Parent = FrameUI

   Frame.Parent = FrameUI
   Frame.BackgroundColor3 = _G.Color
   Frame.BorderColor3 = _G.Color
   Frame.BackgroundTransparency = 0.1
   Frame.Position = UDim2.new(0.32608214, 0, 0.161935255, 0)
   Frame.Size = UDim2.new(0, 0, 0, 193)

   TextBox.Parent = FrameUI
   TextBox.BackgroundTransparency = 0.3
   TextBox.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
   TextBox.Position = UDim2.new(0.391626865, 0, 0.234621912, 0)
   TextBox.Size = UDim2.new(0, 272, 0, 71)
   TextBox.Font = Enum.Font.FredokaOne
   TextBox.Text = ""
   TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
   TextBox.TextSize = 5.000
   TextBox.TextStrokeColor3 = Color3.fromRGB(62, 62, 62)
   TextBox.TextStrokeTransparency = 0.000
   TextBox.TextWrapped = true

   UICorner_2.Parent = TextBox

   ImageLabel.Parent = FrameUI
   ImageLabel.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
   ImageLabel.Position = UDim2.new(0.0271223877, 0, 0.294190109, 0)
   ImageLabel.Size = UDim2.new(0, 135, 0, 135)
   ImageLabel.BackgroundTransparency = 0.5
   ImageLabel.Image = "rbxassetid://17254290146"

   UICorner_3.CornerRadius = UDim.new(0, 50)
   UICorner_3.Parent = ImageLabel

   Frame_2.Parent = FrameUI
   Frame_2.BackgroundColor3 = _G.Color
   Frame_2.BorderColor3 = _G.Color
   Frame_2.BackgroundTransparency = 0.1
   Frame_2.Position = UDim2.new(0, 0, 0.161935255, 0)
   Frame_2.Size = UDim2.new(0, 487, 0, 0)

   Get.Name = "Get"
   Get.Parent = FrameUI
   Get.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
   Get.Position = UDim2.new(0.687019169, 0, 0.662575662, 0)
   Get.Size = UDim2.new(0, 144, 0, 32)
   Get.Font = Enum.Font.FredokaOne
   Get.Text = "GET KEY"
   Get.TextColor3 = Color3.fromRGB(186, 186, 186)
   Get.TextScaled = true
   Get.TextSize = 14.000
   Get.TextStrokeTransparency = 0.000
   Get.TextWrapped = true

   UICorner_4.Parent = Get

   OK.Name = "OK"
   OK.Parent = FrameUI
   OK.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
   OK.Position = UDim2.new(0.339162797, 0, 0.665093124, 0)
   OK.Size = UDim2.new(0, 144, 0, 32)
   OK.Font = Enum.Font.FredokaOne
   OK.Text = "CHECK KEY"
   OK.TextColor3 = Color3.fromRGB(186, 186, 186)
   OK.TextScaled = true
   OK.TextSize = 14.000
   OK.TextStrokeTransparency = 0.000
   OK.TextWrapped = true

   UICorner_5.Parent = OK

   Name.Name = "Name"
   Name.Parent = FrameUI
   Name.BackgroundTransparency = 0.1
   Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   Name.BackgroundTransparency = 1.000
   Name.Position = UDim2.new(0, 0, -0.00332635082, 0)
   Name.Size = UDim2.new(0, 487, 0, 32)
   Name.Font = Enum.Font.FredokaOne
   Name.Text = "MEWING HUB | KEY SYSTEM"
   Name.TextColor3 = _G.Color
   Name.TextScaled = true
   Name.TextSize = 12.000
   Name.TextStrokeTransparency = 0.000
   Name.TextWrapped = true

   local UIStroke = Instance.new("UIStroke")
   UIStroke.Thickness = 3.6
   UIStroke.Name = ""
   UIStroke.Parent = TextBox
   UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
   UIStroke.LineJoinMode = Enum.LineJoinMode.Round
   UIStroke.Color = _G.Color
   UIStroke.Transparency = 0

   local UIStroke2 = Instance.new("UIStroke")
   UIStroke2.Thickness = 3.6
   UIStroke2.Name = ""
   UIStroke2.Parent = FrameUI
   UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
   UIStroke2.LineJoinMode = Enum.LineJoinMode.Round
   UIStroke2.Color = _G.Color
   UIStroke2.Transparency = 0

   local function isKeyValid(keyInput)
      if keyInput then
         local isKeyValid = KeySystem:verifyKey(keyInput)
         if isKeyValid then
            if writefile then
               writefile(SavedKeyPath, keyInput)
            end
            Notify("Valid Key!")
            KeyGui:Destroy()
            wait(1)
            load()
            return true
         else
            Notify("Invalid Key!")
         end
      end
   end

   OK.MouseButton1Click:Connect(function()
   isKeyValid(TextBox.Text)
   end)

   if readfile and writefile then
      local success_file, error_file = pcall(function()
      local is_key_present = isfile(SavedKeyPath);

      if is_key_present == true then
         Notify("Checking Saved Key...")

         local key_file_txt = readfile(SavedKeyPath)
         local onl_key = isKeyValid(key_file_txt)

         if onl_key then
            Notify("Valid Key!")
         else
            Notify("Get New Key Or Buy Premium")
            delfile(SavedKeyPath)
         end
      end
      end)
      if error_file then
         Notify("Failed To Check Saved Key")
         warn(error_file)
      end
   end

   Get.MouseButton1Click:Connect(function()
   Notify("Copy Success")
   TextBox.Text = KeySystem:getKeyURL()
   KeySystem:copyGetKeyURL()
   end)