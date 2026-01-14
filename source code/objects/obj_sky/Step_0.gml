/// @description thunder logic

if !(skybox_thunder.enable) exit;

if !(skybox_thunder.effect.enable)
	{
		if (skybox_thunder.time_current <= 0) // First we make the thunder counter
			{
				skybox_thunder.effect.times_current = irandom_range(1, skybox_thunder.effect.times) * 2;
				skybox_thunder.effect.enable = true; // Then enable the thunder effect and deactivate the counter for a couple of frames
			}
		else
			{
				skybox_thunder.time_current -= 1;
			}
	}
else
	{
		if (skybox_thunder.effect.times_current <= 0)
			{
				skybox_color = skybox_thunder.effect.default_color;
				skybox_thunder.effect.enable = false;
				skybox_thunder.time_current = random_range(skybox_thunder.max_time / 2, skybox_thunder.max_time);
			}
		else
			{
				if (skybox_thunder.effect.times_current % 3) // Once time is paused, we make the effect based on mod
					{
						var _random_thunder = irandom_range(0, array_length(skybox_thunder.color) - 1);
						skybox_color = skybox_thunder.color[_random_thunder];
					}
				else
					{
						skybox_color = skybox_thunder.effect.default_color;
					}
				
				skybox_thunder.effect.times_current -= irandom_range(1, 2);
			}
	}