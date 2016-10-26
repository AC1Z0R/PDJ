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
     posicaoX > 120 and posicaoX < 120 + 100 and posicaoY > 80 and posicaoY < 80 + 50 or
     posicaoX > 230 and posicaoX < 230 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 340 and posicaoX < 340 + 100 and posicaoY > 80 and posicaoY < 80 + 50 or
     posicaoX > 450 and posicaoX < 450 + 100 and posicaoY > 100 and posicaoY < 100 + 50 or
     posicaoX > 560 and posicaoX < 560 + 100 and posicaoY > 80 and posicaoY < 80 + 50 or
     posicaoX > 120 and posicaoX < 120 + 100 and posicaoY > 250 and posicaoY < 250 + 50 or
     posicaoX > 230 and posicaoX < 230 + 100 and posicaoY > 270 and posicaoY < 270 + 50 or
     posicaoX > 340 and posicaoX < 340 + 100 and posicaoY > 250 and posicaoY < 250 + 50 or
     posicaoX > 450 and posicaoX < 450 + 100 and posicaoY > 270 and posicaoY < 270 + 50 or
     posicaoX > 560 and posicaoX < 560 + 100 and posicaoY > 250 and posicaoY < 250 + 50 or
     posicaoX > 670 and posicaoX < 670 + 100 and posicaoY > 270 and posicaoY < 270 + 50 or
     posicaoX > 10 and posicaoX < 10 + 100 and posicaoY > 440 and posicaoY < 440 + 50 or
     posicaoX > 120 and posicaoX < 120 + 100 and posicaoY > 420 and posicaoY < 420 + 50 or
     posicaoX > 230 and posicaoX < 230 + 100 and posicaoY > 430 and posicaoY < 430 + 50 or
     posicaoX > 340 and posicaoX < 340 + 100 and posicaoY > 420 and posicaoY < 420 + 50 or
     posicaoX > 450 and posicaoX < 450 + 100 and posicaoY > 440 and posicaoY < 440 + 50 or
     posicaoX > 560 and posicaoX < 560 + 100 and posicaoY > 420 and posicaoY < 420 + 50
  then
    colisao = true
    posicaoX = 50
    posicaoY = 50
    vida = vida - 1
  else
    colisao = false
  end
end
