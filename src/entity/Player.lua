--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

Player = Class{__includes = Entity}

function Player:init(def)
    Entity.init(self, def)

    self.party = Party {
        pokemon = {
            Pokemon(Pokemon.getRandomDef(), 5)
        }
    }
    self.party.pokemon[1].baseAttack = 1000
    self.party.pokemon[1].attack = self.party.pokemon[1].baseAttack
end