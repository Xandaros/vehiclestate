namespace VehicleState
{
	// Gets the currently viewed player. This can be the local player or the player being spectated.
#if TMNEXT
	import CSmPlayer@ ViewingPlayer() from "VehicleState";
#elif TURBO
	import CGameMobil@ ViewingPlayer() from "VehicleState";
#elif MP4
	import CGamePlayer@ ViewingPlayer() from "VehicleState";
#endif

	// Gets the CSceneVehicleVisState handle for the currently viewed player. Note that this can be a
	// valid state even if ViewingPlayer() returns null!
	import CSceneVehicleVisState@ ViewingPlayerState() from "VehicleState";

	// Get RPM for vehicle vis.
	import float GetRPM(CSceneVehicleVisState@ vis) from "VehicleState";

	// Get relative side speed for vehicle.
	import float GetSideSpeed(CSceneVehicleVisState@ vis) from "VehicleState";

#if TMNEXT
	// Get wheel dirt amount for vehicle vis. For w, use one of the following:
	//  0 = Front Left
	//  1 = Front Right
	//  2 = Rear Left
	//  3 = Rear Right
	import float GetWheelDirt(CSceneVehicleVisState@ vis, int w) from "VehicleState";

	// Get vehicle vis from a given player.
	import CSceneVehicleVis@ GetVis(ISceneVis@ sceneVis, CSmPlayer@ player) from "VehicleState";

	// Get the only existing vehicle vis state, if there is only one. Otherwise, this returns null.
	import CSceneVehicleVis@ GetSingularVis(ISceneVis@ sceneVis) from "VehicleState";

	// Get all vehicle vis states. Mostly used for debugging.
	import array<CSceneVehicleVis@> GetAllVis(ISceneVis@ sceneVis) from "VehicleState";
#endif
}
