bola = {}

function bola.load()
  posicaoX  = 50
  posicaoY = 50
  aceleracao = 5
  tamanhoRaio = 20
  qtdePontos = 1000
  colisao = false
  vida = 3
end

function bola.movimenta()
  if love.keyboard.isDown("left") then
    posicaoX = posicaoX - aceleracao

  elseif love.keyboard.isDown("right") then
    posicaoX = posicaoX + aceleracao

  elseif love.keyboard.isDown("up") then
    posicaoY = posicaoY - aceleracao

  elseif love.keyboard.isDown("down") then
    posicaoY = posicaoY + aceleracao
  end
end

function bola.desenha()
  love.graphics.circle("fill", posicaoX, posicaoY, tamanhoRaio, qtdePontos)
end

function bola.vento()
  for i=1,10 do
    posicaoX = posicaoX - (i / 200)
  end
end

function bola.colisao(x, y)
  if posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 100 and posicaoY < 100 + 50
  then
    colisao = true
    posicaoX = 50
    posicaoY = 50
    vida = vida - 1
  else
    colisao = false
  end
end
