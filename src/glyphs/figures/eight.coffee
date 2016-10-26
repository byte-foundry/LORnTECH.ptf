exports.glyphs['eight'] =
	unicode: '8'
	glyphName: 'eight'
	characterName: 'DIGIT EIGHT'
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
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].y
					dirOut: - 150 + 'deg'
					expand: Object({
						width: ( 105 / 80 ) * thickness
						angle: - 20 + 'deg'
						distr: 0.5
					})
				1:
					x: spacingLeft + (20/80) * thickness
					y: 182 ####
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: ( contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[3].expandedTo[0].x ) / 2
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
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 265 - (24),
						contours[0].nodes[1].expandedTo[1].x + 0.25 * ( 85 / 80 ) * thickness + 10
					)
					y: contours[0].nodes[1].y
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				4:
					x: ( contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[3].expandedTo[0].x ) / 2
					y: ( 380 / 700 ) * capHeight
					dirOut: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[5].expandedTo[0].point ) + ( 30 / 180 * Math.PI )
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: - 120 + 'deg'
						distr: 0.5
					})
				5:
					x: contours[0].nodes[1].x + 18
					y: 533 ####
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 82 / 80 ) * thickness
						angle: 180 + 2 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[2].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 80 / 80 ) * thickness
						angle: 180 - 90 + 'deg'
						distr: 1
					})
				7:
					x: contours[0].nodes[3].x - 18
					y: 533 ####
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 82 / 80 ) * thickness
						angle: 2 + 'deg'
						distr: 1
					})
				8:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].y
					dirIn: 30 + 'deg'
					expand: Object({
						width: ( 105 / 80 ) * thickness
						angle: - 20 + 'deg'
						distr: 0.5
					})
