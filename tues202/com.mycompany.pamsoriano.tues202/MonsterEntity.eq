/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;
	SESprite bg;
	SESprite gm;
	int px1;
	int py1;
	int speed;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width();
		var h = get_scene_height();
		rsc.prepare_image("monster","monster",w*0.1,h*0.2);
		rsc.prepare_image("gm","gm",w,h);
		monster = add_sprite_for_image(SEImage.for_resource("monster"));
		var wp = monster.get_width();
		var hp = monster.get_height();
		px1 = Math.random(0,w);
        py1 = Math.random(0,h);
		monster.move(Math.random(0,w), Math.random(0,h));
		speed = Math.random(4,15);
	
	}

//	public void tick(TimeVal now, double delta)
//	{
//		var mx = monster.get_x();
//		var my = monster.get_y();
//		var px = MainScene.px;
//		var py = MainScene.py;
//		monster.move(mx+(px-mx)/Math.random(100,500), my+(py-my)/Math.random(100,500));
//	}	


public void tick (TimeVal time, double delta) {
                if(px1 < MainScene.px){
                        px1 = px1 + Math.random(speed/-4,speed);
                }
                else if(px1 > MainScene.px){
                        px1 = px1 - Math.random(speed/-4,speed);
                }
                
                if(py1 < MainScene.py){
                        py1 = py1 + Math.random(speed/-4,speed);
                        }
                else if(py1 > MainScene.py){
                        py1 = py1 - Math.random(speed/-4,speed);
                }

                if(px1==MainScene.px&&py1==MainScene.py) {
                        MainScene.bg = add_sprite_for_image(SEImage.for_resource("gm"));

                        MainScene.bg.move(0,0);
                }
               monster.move(px1,py1);

        }

	public void cleanup() {
		base.cleanup();
	}
}
