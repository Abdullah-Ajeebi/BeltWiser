extends Sprite2D

@export var time : float = 0.5
@export var invert_direction : bool = false

var time_since_last_step : float = 0

func _process(delta):
	time_since_last_step += delta
	if time_since_last_step >= time:
		if frame + 1 >= hframes * vframes:
			if invert_direction:
				frame = (hframes * vframes) - 1
			else:
				frame = 0
		else:
			if invert_direction:
				if !frame + 1 > 0:
					frame = frame - 1
				else:
					frame = (hframes * vframes) - 1
			else:
				frame += 1
