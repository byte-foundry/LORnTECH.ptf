exports.glyphs['h'] =
	unicode: 'h'
	glyphName: 'h'
	characterName: 'LATIN SMALL LETTER H'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 70
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
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 50 / 80 )
					y: xHeight - 120 - (20)
					dirOut: 60 + 'deg'
					tensionOut: 0
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * ( 240 / 360 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.5
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 80 + 'deg'
						distr: 1
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 210 - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 85 / 80 ) * thickness + 10
					)
					y: xHeight - 145 - (8/80) * thickness
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 82 / 80 ) * thickness
						angle: 180 + 190 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[2].expandedTo[0].x
					y: 0
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0
					})
