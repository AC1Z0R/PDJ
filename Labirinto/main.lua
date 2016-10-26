local name = require "bola"
local name = require "blocoAmarelo"

function love.load()
  bola.load()
  blocoAmarelo.load()
end

function love.update()
    bola.movimenta()
    bola.vento()
    bola.colisao()
end

function love.draw()
  bola.desenha()
  blocoAmarelo.desenha()
end
