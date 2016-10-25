exports.glyphs['o'] =
	unicode: 'o'
	glyphName: 'o'
	characterName: 'LATIN SMALL LETTER O'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[2].x
			y: xHeight + diacriticHeight
			left: contours[0].nodes[1].expandedTo[0].x
			right: contours[0].nodes[3].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: (contours[0].nodes[1].x + contours[0].nodes[3].x) / 2
					y: - ( 15 / 10 ) * overshoot
					dirOut: 180 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + (20/80) * thickness
					y: xHeight / 2
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x
					y: xHeight + ( 20 / 10 ) * overshoot
					dirOut: 0 + 'deg'
					tensionIn: 1.1
					tensionOut: 1.1
					expand: Object({
						width: thickness
						angle: -90 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 290 - (17),
						contours[0].nodes[1].expandedTo[1].x + 0.25 * thickness
					)
					y: contours[0].nodes[1].y
					dirOut: 270 + 'deg'
					expand: Object({
						width: ( 75 / 80 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
