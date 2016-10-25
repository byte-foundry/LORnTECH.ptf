exports.glyphs['u'] =
	unicode: 'u'
	glyphName: 'u'
	characterName: 'LATIN SMALL LETTER U'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 70 * spacing
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[3].expandedTo[0].x + ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * 0.5
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 310 + 200 * width - 0.25 * thickness
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x
					y: 80 + 30 * width
					y: 110 + (8/80) * thickness
					dirOut: 40 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0.9
					})
				1:
					x: contours[1].nodes[2].expandedTo[1].x - ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * (100/300)
					y: 0 - overshoot
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 1
					})
				2:
					x: spacingLeft + 0.25 * thickness
					y: 80 + 30 * width
					dirIn: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 12 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[2].x
					y: xHeight
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.75
					})
