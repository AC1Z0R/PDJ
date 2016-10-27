inimigoCentral = {}

local name = require "bola"

function inimigoCentral.load()
  posXInimigo = 350
  posYInimigo = 250
  alturaInimigo = 200
  larguraInimigo = 100
  contabiliza = 250
end

function inimigoCentral.desenha()
  love.graphics.rectangle("fill", posXInimigo, posYInimigo, larguraInimigo, alturaInimigo)
end

function inimigoCentral.movimento()
  if contabiliza < 400 then
    posYInimigo = posYInimigo + 1
    contabiliza = contabiliza + 1
  elseif contabiliza > 10 then
    posYInimigo = posYInimigo - 1
    contabiliza = contabiliza - 1
  end
end
