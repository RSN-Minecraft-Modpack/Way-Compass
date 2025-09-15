scoreboard objectives add rtp trigger
scoreboard objectives add rtp_loading dummy
tellraw @a ["",{"translate":"Be sure to activate the resourcepack (V0.1).","bold":true,"underlined":true,"color":"dark_red"},{"translate":" [Link to download]","bold":true,"color":"red","clickEvent":{"action":"open_url","value":"https://modrinth.com/project/way-compass-rp"}}]