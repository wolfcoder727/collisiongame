
/*
 * StartScene
 * Created by Eqela Studio 2.0b7.4
 */

public class StartScene : SEScene
{
	SESprite startButton;
	int w;
	int h;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w=get_scene_width();
		h=get_scene_height();
		rsc.prepare_image("mystart", "Start", 0.20*w,0.20*h);
		startButton=add_sprite_for_image(SEImage.for_resource("mystart"));
		startButton.move(0.5*get_scene_width()-150, 0.5*get_scene_height()-150);
	}

	public void on_pointer_press(SEPointerInfo pi) {
			if(pi.is_inside(0.5*get_scene_width()-150, 0.5*get_scene_height()-150,0.5*get_scene_width()+150, 0.5*get_scene_height()+150)){	
				switch_scene(new MainScene());
			}
		}
		

}
