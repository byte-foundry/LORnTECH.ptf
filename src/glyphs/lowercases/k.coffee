exports.glyphs['k'] =
	unicode: 'k'
	glyphName: 'k'
	characterName: 'LATIN SMALL LETTER K'
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
					x: spacingLeft + 0.25 * thickness
					y: 0
					typeOut: "line"
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight
					typeOut: "line"
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
					x: 170 + 200 * width + 0.75 * thickness
					y: 0
					typeOut: "line"
					expand: Object({
						width: ( 90 / 80 ) * thickness + (width - 1) * ( 40 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight * 0.6
					typeOut: "line"
					expand: Object({
						width: ( 85 / 80 ) * thickness + (width - 1) * ( 30 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: 150 + 200 * width + 0.75 * thickness
					y: xHeight
					typeOut: "line"
					expand: Object({
						width: ( 100 / 80 ) * thickness + (width - 1) * ( 40 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
