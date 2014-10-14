
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
	SESprite elsa;

	
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width();
		var h = get_scene_height();
		rsc.prepare_image("elsa","elsa",w*0.2,h*0.2);
		elsa = add_sprite_for_image(SEImage.for_resource("elsa"));
		var wp = elsa.get_width();
		var hp = elsa.get_height();
		elsa.move(w*0.5-wp*0.5,h*0.5-hp*0.5);
	}

	public void tick(TimeVal now, double delta)
	{
		elsa.move(MainScene.px, MainScene.py);
	}	

	public void cleanup() {
		base.cleanup();
	}
}
