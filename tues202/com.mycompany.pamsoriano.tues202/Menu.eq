/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class Menu : SEScene
{
        
        SESprite bg;
        SESprite playnow; 
        public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
                var w = get_scene_width(); 
                var h = get_scene_height();
                rsc.prepare_image("bg", "bg", w, h);
                rsc.prepare_image("playnow", "playnow", w*0.3, h*0.4);
                bg = add_sprite_for_image(SEImage.for_resource("bg"));
                playnow = add_sprite_for_image(SEImage.for_resource("playnow"));
                bg.move(0,0);
                playnow.move(w*0.5,h*0.5);
                }
                public void on_pointer_press(SEPointerInfo pi) {
                        base.on_pointer_press(pi);
                        if(pi.is_inside(500,500,get_scene_width()*0.5, get_scene_height()*0.5)) {
                                switch_scene(new MainScene());
                        }
                }
        
        public void cleanup() {
                base.cleanup();
        }
}