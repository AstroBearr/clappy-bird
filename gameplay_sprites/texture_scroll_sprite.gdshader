shader_type canvas_item;

const float speed = 300.0/(168.0 * 4.0);

uniform float time = 0;


void fragment() {
	vec2 new_uv = vec2(UV.x + time * speed, UV.y);
	COLOR = texture(TEXTURE, new_uv);
}

