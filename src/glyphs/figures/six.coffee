exports.glyphs['six'] =
	unicode: '6'
	glyphName: 'six'
	characterName: 'DIGIT SIX'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 70
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: (spacingLeft + (20/80) * thickness) - ( 0.25 * thickness ) + 200 * width + 200
					y: capHeight + overshoot
					dirOut: - 170 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + (20/80) * thickness
					y: ( contours[0].nodes[2].y + thickness ) + ( contours[0].nodes[0].expandedTo[1].y - ( contours[0].nodes[2].y + thickness )) * ( 200 / 560 )
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: - 7 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.55
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 255 - (20),
						contours[0].nodes[1].expandedTo[1].x + 0.25 * thickness + 10
					)
					y: ( contours[0].nodes[2].y + thickness ) + ( contours[0].nodes[4].expandedTo[1].y - ( contours[0].nodes[2].y + thickness )) * ( 210 / 440 )
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[0].x - contours[0].nodes[1].expandedTo[0].x ) * ( 180 / 400 )
					y: ( 440 / 700 ) * capHeight - (8)
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
