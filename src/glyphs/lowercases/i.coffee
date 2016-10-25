exports.glyphs['i'] =
	unicode: 'i'
	glyphName: 'i'
	characterName: 'LATIN SMALL LETTER I'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 60 * spacing
		spacingRight: 60 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 0.5 * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: xHeight + diacriticHeight
					dirOut: 180 + 'deg'
					type: 'smooth'
				1:
					x: contours[1].nodes[0].x - Math.max( 20, 1.25 * thickness / 2 )
					y: contours[1].nodes[0].y + Math.max( 20, 1.25 * thickness / 2 )
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[0].y + Math.max( 40, 1.25 * thickness )
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: contours[1].nodes[1].x + Math.max( 40, 1.25 * thickness )
					y: contours[1].nodes[1].y
					dirOut: 270 + 'deg'
					type: 'smooth'
