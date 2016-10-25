exports.glyphs['b'] =
	unicode: 'b'
	glyphName: 'b'
	characterName: 'LATIN SMALL LETTER B'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 80
		spacingRight: 50 * spacing + 40
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
					x: spacingLeft + (20/80) * thickness
					y: ascenderHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.75
					y: xHeight - 145 - (20)
					dirOut: 60 + 'deg'
					expand: Object({
						width: ( 120 / 80 ) * thickness
						angle: 90 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * ( 200 / 370 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 80 + 'deg'
						distr: 1
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 250 - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.25 * ( 85 / 80 ) * thickness + 10
					)
					y: xHeight - 180 - (8/80) * thickness
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 180 + 190 + 'deg'
						distr: 0.75
					})
				3:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[1].x - contours[0].nodes[0].expandedTo[1].x ) * ( 65 / 200 ),
						contours[0].nodes[0].expandedTo[1].x + 20
					)
					y: 0
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 270 + 'deg'
						distr: 1
					})
