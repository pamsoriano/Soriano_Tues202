
/*
 * OlafEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class OlafEntity : SEEntity
{
	SESprite olaf;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width();
		var h = get_scene_height();
		rsc.prepare_image("olaf","olaf",w*0.07,h*0.2);
		olaf = add_sprite_for_image(SEImage.for_resource("olaf"));
		var wp = olaf.get_width();
		var hp = olaf.get_height();
		olaf.move(Math.random(0,w), Math.random(0,h));
	
	}

	public void tick(TimeVal now, double delta)
	{
		var mx = olaf.get_x();
		var my = olaf.get_y();
		var px = MainScene.px;
		var py = MainScene.py;
		olaf.move(mx+(px-mx)/Math.random(100,1000), my+(py-my)/Math.random(100,1000));
	}	


	public void cleanup() {
		base.cleanup();
	}
}
