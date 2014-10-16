/*
 * TigrexEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class TigrexEntity : SEEntity
{
	SESprite tigrex;
	int w;
	int h;
	int mx;
	int my;
	//int px;
	//int py;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w=get_scene_width();
		h=get_scene_height();
		rsc.prepare_image("mytigrex", "Tigrex", 0.1*w, 0.1*h);
		tigrex=add_sprite_for_image(SEImage.for_resource("mytigrex"));
		tigrex.move(Math.random(0, w), Math.random(0, h));
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		mx=tigrex.get_x();
		my=tigrex.get_y();
		
		tigrex.move(mx+(MainScene.x-mx)/Math.random(10,100), my+(MainScene.y-my)/Math.random(10,100));

		if((mx + 0.15*get_scene_width() >= MainScene.x && mx <= MainScene.x) && (my + 0.15*get_scene_height() >= MainScene.y && my <= MainScene.y)) {
			MainScene.collision = true;			
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}
