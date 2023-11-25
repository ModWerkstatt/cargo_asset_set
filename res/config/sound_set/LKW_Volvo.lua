local soundeffectsutil = require "soundeffectsutil"

function data()
return {
	tracks = {
		{ name = "vehicle/truck_modern/LKW_Volvo/idle.wav", refDist = 22.0 },
		{ name = "vehicle/truck_modern/LKW_Volvo/drive.wav", refDist = 22.0 }
	},
	events = {
		horn = { names = { "vehicle/truck_modern/LKW_Volvo/horn.wav" }, refDist = 25.0 },
		openDoors = { names = { "vehicle/truck_modern/LKW_Volvo/open_doors.wav" }, refDist = 5.0 },
		closeDoors = { names = { "vehicle/truck_modern/LKW_Volvo/close_doors.wav" }, refDist = 5.0 },
	},

	updateFn = function (input)
		return {
			tracks = soundeffectsutil.makeRoadVehicle2({ .05, .1, .3 }, .075, .6, .4, input.speed01),
			events = {
				horn = { gain = 1.0, pitch = 1.0 },
				openDoors = { gain = 1.0, pitch = 1.0 },
				closeDoors = { gain = 1.0, pitch = 1.0 }
			}
		}
	end
}
end
