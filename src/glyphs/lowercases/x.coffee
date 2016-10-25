exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 30 * spacing
		spacingRight: 30 * spacing
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
					typeOut: "line"
					expand: Object({
						width: thickness + (width - 1) * 8
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: xHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: thickness + (width - 1) * 6
						angle: 0 + 'deg'
						distr: 0.75
					})
				2:
					x: spacingLeft + 0.25 * thickness
					y: xHeight
					typeOut: "line"
					expand: Object({
						width: thickness + (width - 1) * 8
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 180 + 200 * width + 0.75 * thickness
					y: 0
					typeOut: "line"
					expand: Object({
						width: thickness + (width - 1) * 8
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: xHeight * 0.5
					typeOut: "line"
					expand: Object({
						width: thickness + (width - 1) * 6
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: 180 + 200 * width + 0.75 * thickness
					y: xHeight
					typeOut: "line"
					expand: Object({
						width: thickness + (width - 1) * 8
						angle: 0 + 'deg'
						distr: 0.75
					})