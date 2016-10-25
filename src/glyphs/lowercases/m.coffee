exports.glyphs['m'] =
	unicode: 'm'
	glyphName: 'm'
	characterName: 'LATIN SMALL LETTER M'
	ot:
		advanceWidth: contours[2].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 70 * spacing
		spacingRight: 70 * spacing
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
					x: spacingLeft + 0.25 * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight
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
					x: contours[0].nodes[0].x
					y: xHeight - 120 - (8/80) * thickness
					dirOut: 40 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * (200/300)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[2].nodes[3].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * (260/500)
					y: xHeight - 80 - 30 * width
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 188 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[1].nodes[2].x
					y: 0
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].x - 0.25 * thickness
					y: xHeight - 120 - (8/80) * thickness
					dirOut: 40 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[1].nodes[3].expandedTo[1].x + ( contours[2].nodes[2].expandedTo[0].x - contours[1].nodes[3].expandedTo[1].x ) * (200/300)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: 550 + 200 * width - (20/80) * thickness
					y: xHeight - 80 - 30 * width
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 188 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[2].nodes[2].x
					y: 0
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
