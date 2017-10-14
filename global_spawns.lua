locations = {
	Vector(-7873.134766, 3847.636475, 73.031250),
	Vector(-8110.420410, 3848.664307, 73.031250),
	Vector(-8246.081055, 3841.501221, 73.031250),
	Vector(-7695.465332, 3849.271484, 73.031250),
	Vector(-7528.159180, 3849.576416, 73.031250),
	Vector(-7864.112305, 3724.606445, 73.031250),
	Vector(-7870.111816, 4012.627930, 73.031250),
}

locAmount = 7

hook.Add("PlayerSpawn", "TeleportToSpawn", function(ply)
	GAMEMODE:PlayerLoadout(ply)
	GAMEMODE:PlayerSetModel(ply)
	pos = locations[math.random(1, locAmount)]
	ply:SetPos(pos)
	return true
end)