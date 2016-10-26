exports.glyphs['three'] =
	unicode: '3'
	glyphName: 'three'
	characterName: 'DIGIT THREE'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 110
		spacingRight: 50 * spacing + 115
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
					x: spacingLeft + 22
					y: capHeight - 17 + (0)
					dirOut: 30 + 'deg'
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * ( 125 / 320 )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].x + 200 * width + 120 - (20),
						contours[0].nodes[0].x + 0.25 * thickness
					)
					y: (( 370 / 700 ) * capHeight - (thickness / 2) ) + ( (capHeight + overshoot) - (( 370 / 700 ) * capHeight - (thickness / 2) ) ) * 0.5
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: ( 370 / 700 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
				4:
					x: contours[0].nodes[3].x - 45 * width
					y: contours[0].nodes[3].y
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 25 + (9)
					dirOut: - 30 + 'deg'
					expand: Object({
						width: ( 90 / 80 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 0.9
					})
				1:
					x: contours[0].nodes[3].x
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[2].expandedTo[0].x + 30
					y: contours[1].nodes[1].expandedTo[1].y + ( contours[1].nodes[3].expandedTo[1].y - contours[1].nodes[1].expandedTo[1].y ) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 1
					})
				3:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
