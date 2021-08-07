--local Piece = require 'tetris.components.piece'
local Ruleset = require 'tetris.rulesets.arika'

local ARS = Ruleset:extend()

ARS.name = "Ti-ARS16"
ARS.hash = "ArikaTI"

ARS.spawn_positions = {
	[1] = { x=5, y=4 },
	[2] = { x=4, y=5 },
	[3] = { x=4, y=5 },
	[4] = { x=5, y=5 },
	[5] = { x=4, y=5 },
	[6] = { x=4, y=5 },
	[7] = { x=4, y=5 },
	[8] = { x=5, y=4 },
	[9] = { x=4, y=5 },
	[10] = { x=4, y=5 },
	[11] = { x=5, y=5 },
	[12] = { x=4, y=5 },
	[13] = { x=4, y=5 },
	[14] = { x=4, y=5 },
	[15] = { x=4, y=5 },
	[16] = { x=4, y=5 },
	[17] = { x=5, y=4 },
	[18] = { x=4, y=5 },
	[19] = { x=4, y=5 },
	[20] = { x=5, y=5 },
	[21] = { x=4, y=5 },
	[22] = { x=4, y=5 },
	[23] = { x=4, y=5 },
	[24] = { x=5, y=4 },
	[25] = { x=4, y=5 },
}

ARS.big_spawn_positions = {
	[1] = { x=3, y=2 },
	[2] = { x=2, y=3 },
	[3] = { x=2, y=3 },
	[4] = { x=3, y=3 },
	[5] = { x=2, y=3 },
	[6] = { x=2, y=3 },
	[7] = { x=2, y=3 },
}

ARS.next_sounds = {
    [1] = "I",
    [2] = "O",
    [3] = "S",
    [4] = "Z",
    [5] = "L",
    [6] = "J",
    [7] = "Z",
    [8] = "S",
    [9] = "J",
    [10] = "L",
    [11] = "O",
    [12] = "O",
    [13] = "T",
    [14] = "L",
    [15] = "J",
    [16] = "O",
    [17] = "I",
    [18] = "O",
    [19] = "S",
    [20] = "Z",
    [21] = "L",
    [22] = "J",
    [23] = "Z",
    [24] = "S",
    [25] = "J"
}

ARS.colourscheme = {
    [1] = "R",
    [2] = "B",
    [3] = "O",
    [4] = "Y",
    [5] = "M",
    [6] = "C",
    [7] = "G",
    [8] = "R",
    [9] = "B",
    [10] = "O",
    [11] = "Y",
    [12] = "M",
    [13] = "C",
    [14] = "G",
    [15] = "B",
    [16] = "M",
    [17] = "R",
    [18] = "B",
    [19] = "O",
    [20] = "Y",
    [21] = "M",
    [22] = "C",
    [23] = "G",
    [24] = "R",
    [25] = "B"	
}

ARS.block_offsets = {
	[1]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=-2, y=0}, {x=1, y=0} },
		{ {x=0, y=0}, {x=0, y=-1}, {x=0, y=1}, {x=0, y=2} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=-2, y=0}, {x=1, y=0} },
		{ {x=0, y=0}, {x=0, y=-1}, {x=0, y=1}, {x=0, y=2} },
	},
	[2]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=1, y=0}, {x=-1, y=-1} },
		{ {x=0, y=-1}, {x=1, y=-2}, {x=0, y=-2}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=1, y=0} },
		{ {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=-1, y=0} },
	},
	[3]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=1, y=0}, {x=1, y=-1} },
		{ {x=0, y=-2}, {x=0, y=-1}, {x=1, y=0}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=-1, y=0} },
		{ {x=0, y=-1}, {x=-1, y=-2}, {x=0, y=-2}, {x=0, y=0} },
	},
	[4]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=-1, y=-1}, {x=0, y=-1} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=-1, y=-1}, {x=0, y=-1} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=-1, y=-1}, {x=0, y=-1} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=-1, y=-1}, {x=0, y=-1} },
	},
	[5]={
		{ {x=1, y=-1}, {x=0, y=-1}, {x=0, y=0}, {x=-1, y=0} },
		{ {x=-1, y=-2}, {x=-1, y=-1}, {x=0, y=-1}, {x=0, y=0} },
		{ {x=1, y=-1}, {x=0, y=-1}, {x=0, y=0}, {x=-1, y=0} },
		{ {x=-1, y=-2}, {x=-1, y=-1}, {x=0, y=-1}, {x=0, y=0} },
	},
	[6]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=1, y=0}, {x=0, y=-1} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=1, y=-1}, {x=0, y=-2} },
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=-1, y=-1}, {x=0, y=-2} },
	},
	[7]={
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=0}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=1, y=-2}, {x=1, y=-1} },
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=0}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=1, y=-2}, {x=1, y=-1} },
	},
	[8]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=1, y=0} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=0, y=1} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=1, y=0} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=0, y=1} },
	},
	[9]={
		{ {x=0, y=0}, {x=1, y=-0}, {x=0, y=1} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=0, y=1}, },
		{ {x=0, y=0}, {x=0, y=-1}, {x=-1, y=0}, },
		{ {x=0, y=0}, {x=1, y=0}, {x=0, y=-1}, },
	},
	[10]={
		{ {x=0, y=1}, {x=1, y=0}, {x=2, y=0} },
		{ {x=-1, y=0}, {x=0, y=1}, {x=0, y=2} },
		{ {x=0, y=-1}, {x=-1, y=0}, {x=-2, y=0} },
		{ {x=1, y=0}, {x=0, y=-1}, {x=0, y=-2} },		
	},
	[11]={
		{ {x=0, y=0}, },
		{ {x=0, y=0}, },
		{ {x=0, y=0}, },
		{ {x=0, y=0}, },
	},
	[12]={
		{ {x=1, y=1}, {x=0, y=0}, {x=-1, y=-1}, },
		{ {x=-1, y=1}, {x=0, y=0}, {x=1, y=-1}, },
		{ {x=1, y=1}, {x=0, y=0}, {x=-1, y=-1}, },
		{ {x=-1, y=1}, {x=0, y=0}, {x=1, y=-1}, },
	},
	[13]={
		{ {x=-1, y=-1}, {x=1, y=-1}, {x=0, y=-2} },
		{ {x=0, y=0}, {x=0, y=-2}, {x=1, y=-1} },
		{ {x=1, y=-1}, {x=-1, y=-1}, {x=0, y=0} },
		{ {x=0, y=0}, {x=0, y=-2}, {x=-1, y=-1} },
	},
	[14]={
		{ {x=0, y=0}, {x=1, y=0}, },
		{ {x=0, y=0}, {x=0, y=1}, },
		{ {x=0, y=0}, {x=1, y=0}, },
		{ {x=0, y=0}, {x=0, y=1}, },
	},
	[15]={
		{ {x=0, y=1}, {x=1, y=1}, {x=2, y=0} },
		{ {x=-1, y=0}, {x=-1, y=1}, {x=0, y=2} },
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=-2, y=0} },
		{ {x=1, y=0}, {x=1, y=-1}, {x=0, y=-2} },
	},
	[16]={
		{ {x=1, y=1}, {x=0, y=0},  },
		{ {x=-1, y=1}, {x=0, y=0}, },
		{ {x=1, y=1}, {x=0, y=0},  },
		{ {x=-1, y=1}, {x=0, y=0}, },
	},
	[17]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=-2, y=0}, {x=1, y=0} },
		{ {x=0, y=0}, {x=0, y=-1}, {x=0, y=1}, {x=0, y=2} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=-2, y=0}, {x=1, y=0} },
		{ {x=0, y=0}, {x=0, y=-1}, {x=0, y=1}, {x=0, y=2} },
	},
	[18]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=1, y=0}, {x=-1, y=-1} },
		{ {x=0, y=-1}, {x=1, y=-2}, {x=0, y=-2}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=1, y=0} },
		{ {x=0, y=-1}, {x=0, y=-2}, {x=0, y=0}, {x=-1, y=0} },
	},
	[19]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=1, y=0}, {x=1, y=-1} },
		{ {x=0, y=-2}, {x=0, y=-1}, {x=1, y=0}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=-1, y=0} },
		{ {x=0, y=-1}, {x=-1, y=-2}, {x=0, y=-2}, {x=0, y=0} },
	},
	[20]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=-1, y=-1}, {x=0, y=-1} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=-1, y=-1}, {x=0, y=-1} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=-1, y=-1}, {x=0, y=-1} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=-1, y=-1}, {x=0, y=-1} },
	},
	[21]={
		{ {x=1, y=-1}, {x=0, y=-1}, {x=0, y=0}, {x=-1, y=0} },
		{ {x=-1, y=-2}, {x=-1, y=-1}, {x=0, y=-1}, {x=0, y=0} },
		{ {x=1, y=-1}, {x=0, y=-1}, {x=0, y=0}, {x=-1, y=0} },
		{ {x=-1, y=-2}, {x=-1, y=-1}, {x=0, y=-1}, {x=0, y=0} },
	},
	[22]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=1, y=0}, {x=0, y=-1} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=1, y=-1}, {x=0, y=-2} },
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=-1}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=-1, y=-1}, {x=0, y=-2} },
	},
	[23]={
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=0}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=1, y=-2}, {x=1, y=-1} },
		{ {x=0, y=-1}, {x=-1, y=-1}, {x=1, y=0}, {x=0, y=0} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=1, y=-2}, {x=1, y=-1} },
	},
	[24]={
		{ {x=0, y=0}, {x=-1, y=0}, {x=1, y=0} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=0, y=1} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=1, y=0} },
		{ {x=0, y=-1}, {x=0, y=0}, {x=0, y=1} },
	},
	[25]={
		{ {x=0, y=0}, {x=1, y=-0}, {x=0, y=1} },
		{ {x=0, y=0}, {x=-1, y=0}, {x=0, y=1}, },
		{ {x=0, y=0}, {x=0, y=-1}, {x=-1, y=0}, },
		{ {x=0, y=0}, {x=1, y=0}, {x=0, y=-1}, },
	},

}

ARS.pieces = 25

function ARS:get180RotationValue() 
	return 3
end

function ARS:getDefaultOrientation() return 3 end  -- downward facing pieces by default


-- Component functions.

function ARS:attemptWallkicks(piece, new_piece, rot_dir, grid)

	-- O doesn't kick
	if (piece.shape == "4") then return end

	-- center column rule
	if (
		piece.shape == "2" or piece.shape == "6" or piece.shape == "3"
	) and (
		piece.rotation == 0 or piece.rotation == 2
	) then
		local offsets = new_piece:getBlockOffsets()
		table.sort(offsets, function(A, B) return A.y < B.y or A.y == B.y and A.x < B.y end)
		for index, offset in pairs(offsets) do
			if grid:isOccupied(piece.position.x + offset.x, piece.position.y + offset.y) then
				if offset.x == 0 then
					return 
				else
					break
				end
			end
		end
	end

	if piece.shape == "1" then
		-- special kick rules for I
		if (new_piece.rotation == 0 or new_piece.rotation == 2) and 
		(piece:isMoveBlocked(grid, {x=-1, y=0}) or piece:isMoveBlocked(grid, {x=1, y=0})) then
			-- kick right, right2, left
			if grid:canPlacePiece(new_piece:withOffset({x=1, y=0})) then
				piece:setRelativeRotation(rot_dir):setOffset({x=1, y=0})
				self:onPieceRotate(piece, grid)
			elseif grid:canPlacePiece(new_piece:withOffset({x=2, y=0})) then
				piece:setRelativeRotation(rot_dir):setOffset({x=2, y=0})
				self:onPieceRotate(piece, grid)
			elseif grid:canPlacePiece(new_piece:withOffset({x=-1, y=0})) then
				piece:setRelativeRotation(rot_dir):setOffset({x=-1, y=0})
				self:onPieceRotate(piece, grid)
			end
		elseif piece:isDropBlocked(grid) and (new_piece.rotation == 1 or new_piece.rotation == 3) and piece.floorkick == 0 then
			-- kick up, up2
			if grid:canPlacePiece(new_piece:withOffset({x=0, y=-1})) then
				piece:setRelativeRotation(rot_dir):setOffset({x=0, y=-1})
				piece.floorkick = 1
				self:onPieceRotate(piece, grid, true)
			elseif grid:canPlacePiece(new_piece:withOffset({x=0, y=-2})) then
				piece:setRelativeRotation(rot_dir):setOffset({x=0, y=-2})
				piece.floorkick = 1
				self:onPieceRotate(piece, grid, true)
			end
		end
	else
		-- kick right, kick left
		if grid:canPlacePiece(new_piece:withOffset({x=1, y=0})) then
			piece:setRelativeRotation(rot_dir):setOffset({x=1, y=0})
			self:onPieceRotate(piece, grid)
		elseif grid:canPlacePiece(new_piece:withOffset({x=-1, y=0})) then
			piece:setRelativeRotation(rot_dir):setOffset({x=-1, y=0})
			self:onPieceRotate(piece, grid)
		elseif piece.shape == "6"
		   and new_piece.rotation == 0
		   and piece.floorkick == 0
		   and piece:isDropBlocked(grid)
		   and grid:canPlacePiece(new_piece:withOffset({x=0, y=-1}))
		then
			-- T floorkick
			piece.floorkick = piece.floorkick + 1
			piece:setRelativeRotation(rot_dir):setOffset({x=0, y=-1})
			self:onPieceRotate(piece, grid, true)
		end
	end

end

function ARS:onPieceCreate(piece, grid)
	piece.floorkick = 0
end

function ARS:onPieceDrop(piece, grid)
	piece.lock_delay = 0 -- step reset
	if piece.floorkick >= 2 and piece:isDropBlocked(grid) then
		piece.locked = true
	end
end

function ARS:onPieceRotate(piece, grid, floorkick)
	if piece.floorkick >= 2 and piece:isDropBlocked(grid) then
		piece.locked = true
	elseif piece.floorkick >= 1 and not floorkick then
		piece.floorkick = piece.floorkick + 1
	end
end

function ARS:get180RotationValue() return 3 end

function ARS:getDefaultOrientation() return 3 end  -- downward facing pieces by default

return ARS
