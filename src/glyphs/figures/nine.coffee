exports.glyphs['nine'] =
	unicode: '9'
	glyphName: 'nine'
	characterName: 'DIGIT NINE'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
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
					x: contours[0].nodes[3].x + 50
					y: - overshoot
					dirOut: 6 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: Math.max(
						contours[0].nodes[3].expandedTo[0].x + 200 * width + 260 - (20),
						contours[0].nodes[3].expandedTo[1].x + 0.25 * ( 81 / 80 ) * thickness
					)
					y: contours[0].nodes[0].expandedTo[1].y + ( (contours[0].nodes[2].y - thickness) - contours[0].nodes[0].expandedTo[1].y ) * ( 360 / 560 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 81 / 80 ) * thickness
						angle: 173 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[3].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[0].x - contours[0].nodes[3].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				3:
					x: spacingLeft + (20/80) * thickness
					y: (contours[0].nodes[4].y + (0.9 * thickness)) + ( (contours[0].nodes[2].y - thickness) - (contours[0].nodes[4].y + (0.9 * thickness)) ) * 0.5
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				4:
					x: contours[0].nodes[2].x + 80 * width + 20 - (20/80) * thickness
					y: contours[0].nodes[0].expandedTo[1].y + ( (contours[0].nodes[2].y - thickness) - contours[0].nodes[0].expandedTo[1].y ) * ( 200 / 560 ) + (10)
					dirIn: 180 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0.1
					})
