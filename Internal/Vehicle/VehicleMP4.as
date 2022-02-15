#if MP4
class CSceneVehicleVisInner
{
	CTrackManiaPlayer@ m_player;

	//NOTE: CSceneVehicleVisState is defined in Export/StateWrappers.as!
	CSceneVehicleVisState@ AsyncState;

	CSceneVehicleVisInner(CGamePlayer@ player)
	{
		@m_player = cast<CTrackManiaPlayer>(player);

		@AsyncState = CSceneVehicleVisState(m_player);
	}
}

namespace VehicleState
{
	// Get vehicle vis from a given player.
	CSceneVehicleVisInner@ GetVis(CGameScene@ sceneVis, CGamePlayer@ player)
	{
		if (player is null) {
			return null;
		}
		return CSceneVehicleVisInner(player);
	}

	// Not used for anything in MP4 afaik, but keeping the interface identical.
	CSceneVehicleVisInner@ GetSingularVis(CGameScene@ sceneVis)
	{
		return null;
	}

	// Get RPM for vehicle vis. This is contained within the state, but not exposed by default, which
	// is why this function exists.
	float GetRPM(CSceneVehicleVisState@ vis)
	{
		return vis.RPM;
	}

	// Get relative side speed for vehicle.
	float GetSideSpeed(CSceneVehicleVisState@ vis)
	{
		return vis.SideSpeed;
	}

	// Get entity ID of the given vehicle vis.
	uint GetEntityId(CSceneVehicleVisInner@ vis)
	{
		// Not present
		return 0;
	}
}
#endif
