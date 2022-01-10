function gl_sprite_get_size(argument0) {
	/**
	    Returns the sprite of a sprite as a vector.
    
	    @param sprite The sprite whose size to return.
    
	    @return The sprite size as a vector.
    
	    @since 1.1
	*/

	var sprite = argument0;

	var width = sprite_get_width(sprite);
	var height = sprite_get_height(sprite);

	return gl_vector_create(width, height);


}
