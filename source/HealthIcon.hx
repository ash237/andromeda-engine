package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [24, 25], 0, false, isPlayer);
		animation.add('bf-christmas', [26, 29], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		//animation.add('fake-ink', [30, 31], 0, false, isPlayer);
		//animation.add('brightside', [35,36], 0, false, isPlayer);
		//animation.add('flexy', [37, 38], 0, false, isPlayer);
		//animation.add('beta-ink', [14, 15], 0, false, isPlayer);
		//animation.add('noke', [39, 41], 0, false, isPlayer);
		//animation.add('angry-noke', [40, 41], 0, false, isPlayer);
		//animation.add('hollow-noke', [42, 43], 0, false, isPlayer);
		//animation.add('fake-agressive', [30, 31], 0, false, isPlayer);
		//animation.add('axel', [10, 11], 0, false, isPlayer);
		if(animation.getByName(char)!=null)
			animation.play(char);
		else
			animation.play("face");

		scrollFactor.set();
	}

	public function changeCharacter(char:String){
		if(animation.getByName(char)!=null)
			animation.play(char);
		else
			animation.play("face");
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
