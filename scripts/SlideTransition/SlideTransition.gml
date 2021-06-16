/// @desc SlideTransition(mode, targetRoom)
/// @arg mode sets transition mode between next, goto and restart.
/// @arg target sets target room when using goto mode. (not obligatory)
function SlideTransition() {

	with oTransition
	{
		mode = argument[0];
		if argument_count > 1
		{
			target = argument[1];
		}
	}


}
