$(document).ready(function() {
	$('#pixel_color').minicolors({
	    control: $(this).attr('data-control') || 'hue',
	    defaultValue: $(this).attr('data-defaultValue') || '',
	    inline: $(this).attr('data-inline') === 'true',
	    letterCase: $(this).attr('data-letterCase') || 'lowercase',
	    opacity: $(this).attr('data-opacity'),
	    position: $(this).attr('data-position') || 'bottom left',
	    change: function(hex, opacity) {
	        if( !hex ) return;
	        if( opacity ) hex += ', ' + opacity;
	        if( typeof console === 'object' ) {
	            console.log(hex);
	        }
	    },
	    theme: 'bootstrap'
	});
	console.log("loading color picker plugin")

})