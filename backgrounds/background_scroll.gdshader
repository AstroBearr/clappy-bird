shader_type canvas_item;

uniform float speed = 0.05;
uniform float picture;

uniform float time = 0;

void fragment() {
	vec2 new_uv = vec2(mod(UV.x + time * speed, 0.25) + picture, UV.y);

	COLOR = texture(TEXTURE, new_uv);
}
