
/*
 * GameOverScene
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOverScene : SEScene
{
	SESprite replayButton;
	int w;
	int h;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w=get_scene_width();
		h=get_scene_height();
		rsc.prepare_image("myGameOver", "gameover", w,h);
		replayButton=add_sprite_for_image(SEImage.for_resource("myGameOver"));
		replayButton.move(0, 0);
		AudioClipManager.prepare("gameover");
		AudioClipManager.play("gameover");
	}

	public void on_pointer_press(SEPointerInfo pi) {
			if(pi.is_inside(0,0,get_scene_width(), get_scene_height())) {	
				switch_scene(new MainScene());
			}
		}
}
