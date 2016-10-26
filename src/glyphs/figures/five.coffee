exports.glyphs['five'] =
	unicode: '5'
	glyphName: 'five'
	characterName: 'DIGIT FIVE'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 90
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
					x: spacingLeft
					y: 55 + (9)
					dirOut: - 45 + 'deg'
					expand: Object({
						width: ( 90 / 80 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 0.9
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 200 / 440 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				2:
					x: Math.max(
						contours[0].nodes[0].x + 200 * width + 240 - (20),
						contours[0].nodes[0].x + 0.25 * thickness
					)
					y: ( - overshoot + thickness ) + ( ( contours[0].nodes[3].y - thickness / 2 ) - ( - overshoot + thickness ) ) * 0.5
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * ( 230 / 440 )
					y: ( 400 / 700 ) * capHeight
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 180 - 100 + 'deg'
						distr: 0.5
					})
				4:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * Math.max( 0.1, 0.6 - 0.1 * width ) - (20)
					y: contours[0].nodes[3].expandedTo[1].y - 50
					dirIn: 25 + 'deg'
					expand: Object({
						width: thickness
						angle: 105 + 'deg'
						distr: 0.9
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					expand: Object({
						width: thickness / Math.sin( (Math.max( 135, ( 200 - ( 25 / 90 ) * thickness )) - 90 ) / 180 * Math.PI )
						angle: Math.max( 135, 200 - ( 25 / 90 ) * thickness ) + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 75 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[2].x - 25
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: ( 75 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
