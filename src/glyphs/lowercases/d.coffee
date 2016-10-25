exports.glyphs['d'] =
	unicode: 'd'
	glyphName: 'd'
	characterName: 'LATIN SMALL LETTER D'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing
		spacingRight: 50 * spacing
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
					x: 210 + 210 * width
					y: xHeight - 100
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - 20 / 180 * Math.PI 
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[1].x ) * (150/310)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + 0.25 * thickness
					y: xHeight - 230
					type: 'smooth'
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[1].x ) * (150/310)
					y: 0 - overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].x + 10
					y: 70
					dirIn: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[4].point ) + 20 / 180 * Math.PI 
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0.1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				0:
					x: contours[0].nodes[0].x
					y: ascenderHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})