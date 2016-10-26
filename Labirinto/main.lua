local name = require "bola"
local name = require "blocoAmarelo"
local name = require "inimigoCentral"

function love.load()
  bola.load()
  blocoAmarelo.load()
  inimigoCentral.load()
end

function love.update()
  bola.movimenta()
  bola.vento()
  bola.colisao()
  inimigoCentral.movimento()
end

function love.draw()
  bola.desenha()
  blocoAmarelo.desenha()
  inimigoCentral.desenha()
end
