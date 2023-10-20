util.AddNetworkString('shop')
util.AddNetworkString('Armas')


hook.Add("PlayerButtonDown", "shop", function( ply, button )
    if ( button == KEY_J ) then -- verifica se a tecla pressionada é "j"
        net.Start('shop') -- imprime "oi" no console
        net.Send(ply)
    end
end )

net.Receive('Armas', function(len, ply)
    local msg = net.ReadString()

    if msg == 'pistol' then
        ply:Give("weapon_pistol")
    else 
        if msg == 'magnum' then
            ply:Give('weapon_357')
        end
        if msg == 'smg' then
            ply:Give("weapon_smg1")
        end
        if msg == 'shotgun' then
            ply:Give("weapon_shotgun")
        end
    end


    print(ply:Nick(), msg)
end)

