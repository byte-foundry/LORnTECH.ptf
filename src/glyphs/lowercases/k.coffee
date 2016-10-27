# TODO: angle / thickness
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
		spacingLeft: 50 * spacing + 65
		spacingRight: 50 * spacing + 60
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
					x: contours[1].nodes[2].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[2].expandedTo[0].x ) * 0.25
					y: 0
					typeOut: "line"
					expand: Object({
						width: ( 110 / 80 ) * thickness + (width - 1) * ( 15 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 15
					y: xHeight * 0.6
					typeOut: "line"
					expand: Object({
						width: ( 115 / 80 ) * thickness + (width - 1) * ( 10 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				2:

					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 205 - (45),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 110 / 80 ) * thickness + 10
					)
					y: xHeight
					typeOut: "line"
					expand: Object({
						width: ( 105 / 80 ) * thickness + (width - 1) * ( 15 / 80 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
