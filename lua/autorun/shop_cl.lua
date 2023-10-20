player = LocalPlayer()

surface.CreateFont( "Armasfont", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 25,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )


net.Receive('shop', function()


    tela = vgui.Create('DFrame')
        tela:SetSize(ScrW()*0.50, ScrH()*0.45)
        tela:Center()
        tela:SetVisible( true )
        tela:MakePopup()

    tela2 = vgui.Create('DButton', tela)
        tela2:SetSize(ScrW()*0.50, ScrH()*0.10) -- Define o tamanho do quadrado
        tela2:SetPos(0, 25) -- Define a posição do quadrado
        tela2:SetText("Receber Pistola")
        tela2:SetFont("Armasfont")
        tela2:SetTextColor(Color(255, 255, 255))
        tela2.Paint = function(self, w, h) -- Função de pintura personalizada
            draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 140)) -- Pinta o fundo de vermelho
        end
        tela2.DoClick = function()
            net.Start('Armas')
                net.WriteString('pistol')
            net.SendToServer()
        end

    tela3 = vgui.Create('DButton', tela)
        tela3:SetSize(ScrW()*0.50, ScrH()*0.10) -- Define o tamanho do quadrado
        tela3:SetPos(0, 120) -- Define a posição do quadrado
        tela3:SetText("Receber Magnum")
        tela3:SetFont("Armasfont")
        tela3:SetTextColor(Color(255, 255, 255))
        tela3.Paint = function(self, w, h) -- Função de pintura personalizada
            draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 140)) -- Pinta o fundo de vermelho
        end
        tela3.DoClick = function()
            net.Start('Armas')
                net.WriteString('magnum')
            net.SendToServer()
        end

    tela4 = vgui.Create('DButton', tela)
        tela4:SetSize(ScrW()*0.50, ScrH()*0.10) -- Define o tamanho do quadrado
        tela4:SetPos(0, 215) -- Define a posição do quadrado
        tela4:SetText("Receber SMG")
        tela4:SetFont("Armasfont")
        tela4:SetTextColor(Color(255, 255, 255))
        tela4.Paint = function(self, w, h) -- Função de pintura personalizada
            draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 140)) -- Pinta o fundo de vermelho
        end
        tela4.DoClick = function()
            net.Start('Armas')
                net.WriteString('smg')
            net.SendToServer()
        end

    tela5 = vgui.Create('DButton', tela)
        tela5:SetSize(ScrW()*0.50, ScrH()*0.10) -- Define o tamanho do quadrado
        tela5:SetPos(0, 310) -- Define a posição do quadrado
        tela5:SetText("Receber Shotgun")
        tela5:SetFont("Armasfont")
        tela5:SetTextColor(Color(255, 255, 255))
        tela5.Paint = function(self, w, h) -- Função de pintura personalizada
            draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 140)) -- Pinta o fundo de vermelho
        end
        tela5.DoClick = function()
            net.Start('Armas')
                net.WriteString('shotgun')
            net.SendToServer()
        end

end)