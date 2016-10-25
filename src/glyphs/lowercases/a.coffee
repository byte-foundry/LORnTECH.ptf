exports.glyphs['a'] =
	unicode: 'a'
	glyphName: 'a'
	characterName: 'LATIN SMALL LETTER A'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 70
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[3].x + ( contours[1].nodes[2].x - contours[1].nodes[3].x ) * 0.8
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: ( contours[1].nodes[0].expandedTo[0].x + contours[1].nodes[0].expandedTo[1].x ) / 2
					y: ( 310 / 500 ) * xHeight - (18) + baseLine
					dirOut: 180 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: ( 75 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.25
					})
				1:
					x: spacingLeft - (29)
					y: 140 + (thickness / 80 - 1) * 15 + baseLine
					tensionIn: 1.15
					type: 'smooth'
					dirOut: - 90 + 'deg'
					expand: Object({
						width: ( 85 / 80 ) * thickness
						angle: 5 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].x + (contours[1].nodes[1].x - contours[0].nodes[1].x) / 2 - 15
					y: 0 + baseLine - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				3:
					x: Math.min(
						contours[1].nodes[2].expandedTo[0].x,
						contours[1].nodes[0].expandedTo[1].x - 20
					)
					y: 0 + baseLine
					dirIn: 180 + 'deg'
					tensionIn: 0
					expand: Object({
						width: ( 75 / 80 ) * thickness
						angle: 89 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: 0 + baseLine
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				1:
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 160 - (18),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * thickness + 10
					)
					y: xHeight - 145 - 30 * width + baseLine
					dirOut: 90 + 'deg'
					tensionOut: 1.3
					typeIn: 'line'
					expand: Object({
						width: thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[1].nodes[3].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[1].nodes[3].expandedTo[0].x ) * 0.55
					y: xHeight + overshoot / 2 + baseLine
					dirIn: 0 + 'deg'
					tensionIn: 1.3
					expand: Object({
						width: ( 75 / 80 ) * thickness
						angle: - 95 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[1].expandedTo[0].x + 40
					y: xHeight - 23 - (8) + baseLine
					dirIn: 18 + 'deg'
					expand: Object({
						width: ( 75 / 80 ) * thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
