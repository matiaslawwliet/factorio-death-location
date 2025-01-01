local death_tags = {}

script.on_event(defines.events.on_player_died, function(event)
    local player = game.get_player(event.player_index)
    
    -- Elegir un mensaje aleatorio usando el sistema de localización
    local msg_number = math.random(20)
    local death_message = {"death-messages.msg-" .. msg_number}
    
    -- Enviar mensaje al chat en color verde usando el sistema de localización
    game.print({"", "[color=green]¡", player.name, " ", death_message, "![/color]"})

    -- Almacenar el tag asociado al jugador
    if death_tags[player.index] then
        death_tags[player.index].destroy()
    end
    
    death_tags[player.index] = tag
end)
