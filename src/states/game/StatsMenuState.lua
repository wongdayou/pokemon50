
-- State to show stats increase when pokemon levels up
StatsMenuState = Class{__includes = BaseState}

function StatsMenuState:init(OGstats, statsIncrease, newStats, onClose)
    self.OGstats = OGstats
    self.statsIncrease = statsIncrease
    self.newStats = newStats
    self.onClose = onClose or function() end
    self.statsMenu = Menu {
        x = VIRTUAL_WIDTH - 196,
        y = VIRTUAL_HEIGHT - 128,
        width = 196,
        height = 128,
        items = {
            {
                text = 'HP: ' .. tostring(self.OGstats.HP) .. ' + ' .. tostring(self.statsIncrease.HPIncrease) .. 
                        ' = ' .. tostring(self.newStats.HP)
            },

            {
                text = 'Att: ' .. tostring(self.OGstats.attack) .. ' + ' .. tostring(self.statsIncrease.attackIncrease) ..
                        ' = ' .. tostring(self.newStats.attack)
            },

            {
                text = 'Def: ' .. tostring(self.OGstats.defense) .. ' + ' .. tostring(self.statsIncrease.defenseIncrease) ..
                        ' = ' .. tostring(self.newStats.defense)
            },
            {
                text = 'Spd: ' .. tostring(self.OGstats.speed) .. ' + ' .. tostring(self.statsIncrease.speedIncrease) ..
                        ' = ' .. tostring(self.newStats.speed)
            }

        },
        canInput = false
    }
end

function StatsMenuState:update(dt)
    self.statsMenu:update(dt)
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateStack:pop()
        self.onClose()
    end
end

function StatsMenuState:render()
    self.statsMenu:render()
end