exports.glyphs['period'] =
	unicode: '.'
	glyphName: 'period'
	characterName: 'FULL STOP'
	ot:
		advanceWidth: contours[0].nodes[3].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 80
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: spacingLeft + Math.max( 20, ( ( 104 / 80 ) * thickness ) / 2 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
				1:
					x: contours[0].nodes[0].x - Math.max( 20, ( ( 104 / 80 ) * thickness ) / 2 )
					y: contours[0].nodes[0].y + Math.max( 20, ( ( 104 / 80 ) * thickness ) / 2 )
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y + Math.max( 40, ( ( 104 / 80 ) * thickness ) )
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: contours[0].nodes[1].x + Math.max( 40, ( ( 104 / 80 ) * thickness ) )
					y: contours[0].nodes[1].y
					dirOut: 270 + 'deg'
					type: 'smooth'
