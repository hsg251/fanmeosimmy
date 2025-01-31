local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Tạo nút Start trong Workspace (nếu chưa có nút sẵn)
local startButton = Instance.new("Part")
startButton.Size = Vector3.new(4, 1, 4)  -- Kích thước của nút
startButton.Position = Vector3.new(0, 5, 0)  -- Vị trí của nút trong không gian
startButton.Anchored = true  -- Đảm bảo nút không di chuyển
startButton.Name = "StartButton"  -- Đặt tên cho nút
startButton.Color = Color3.fromRGB(0, 255, 0)  -- Màu sắc của nút
startButton.Parent = game.Workspace  -- Thêm nút vào Workspace

-- Đặt tọa độ đích
local targetPosition1 = Vector3.new(33, 219, 142)
local targetPosition2 = Vector3.new(31, 219, 80)

-- Hàm khi nút bị chạm vào
startButton.Touched:Connect(function(hit)
    if hit.Parent == character then
        -- Dịch chuyển đến tọa độ đầu tiên
        character:SetPrimaryPartCFrame(CFrame.new(targetPosition1))

        -- Chờ 1 giây
        wait(1)

        -- Dịch chuyển đến tọa độ thứ hai
        character:SetPrimaryPartCFrame(CFrame.new(targetPosition2))
    end
end)
