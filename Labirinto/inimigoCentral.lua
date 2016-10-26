inimigoCentral = {}

function inimigoCentral.load()
  posXInimigo = 350
  posYInimigo = 250
  alturaInimigo = 200
  larguraInimigo = 100
  movimento = true
end

function inimigoCentral.desenha()
  love.graphics.rectangle("fill", posXInimigo, posYInimigo, larguraInimigo, alturaInimigo)
end

function inimigoCentral.movimento()
  if movimento then
    for i=1,10 do
      posYInimigo = posYInimigo - (i / 50)
    end
  movimento = false

  elseif not movimento then
    for i=1,10 do
      posYInimigo = posYInimigo + (i / 50)
    end
  movimento = true
  end
end
