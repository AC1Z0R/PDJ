blocoAmarelo = {}

function blocoAmarelo.load()
    altura = 50
    largura = 100
end

function blocoAmarelo.desenha()
    love.graphics.rectangle("fill", 10, 100, largura, altura)
    love.graphics.rectangle("fill", 120, 80, largura, altura)
    love.graphics.rectangle("fill", 230, 100, largura, altura)
    love.graphics.rectangle("fill", 340, 80, largura, altura)
    love.graphics.rectangle("fill", 450, 100, largura, altura)
    love.graphics.rectangle("fill", 560, 80, largura, altura)

    love.graphics.rectangle("fill", 120, 250, largura, altura)
    love.graphics.rectangle("fill", 230, 270, largura, altura)
    love.graphics.rectangle("fill", 340, 250, largura, altura)
    love.graphics.rectangle("fill", 450, 270, largura, altura)
    love.graphics.rectangle("fill", 560, 250, largura, altura)
    love.graphics.rectangle("fill", 670, 270, largura, altura)

    love.graphics.rectangle("fill", 10, 440, largura, altura)
    love.graphics.rectangle("fill", 120, 420, largura, altura)
    love.graphics.rectangle("fill", 230, 440, largura, altura)
    love.graphics.rectangle("fill", 340, 420, largura, altura)
    love.graphics.rectangle("fill", 450, 440, largura, altura)
    love.graphics.rectangle("fill", 560, 420, largura, altura)
end
