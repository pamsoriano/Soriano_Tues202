
/*
 * AnnaEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class AnnaEntity : SEEntity
{
	SESprite anna;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width();
		var h = get_scene_height();
		rsc.prepare_image("anna","anna",w*0.07,h*0.2);
		anna = add_sprite_for_image(SEImage.for_resource("anna"));
		var wp = anna.get_width();
		var hp = anna.get_height();
		anna.move(Math.random(0,w), Math.random(0,h));
	
	}

	public void tick(TimeVal now, double delta)
	{
		var mx = anna.get_x();
		var my = anna.get_y();
		var px = MainScene.px;
		var py = MainScene.py;
		anna.move(mx+(px-mx)/Math.random(100,1000), my+(py-my)/Math.random(100,1000));
	}	


	public void cleanup() {
		base.cleanup();
	}
}
