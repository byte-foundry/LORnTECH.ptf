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
		spacingLeft: 70 * spacing
		spacingRight: 70 * spacing
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
					x: contours[1].nodes[1].x
					y: xHeight*2/3 - (thickness / 80 - 1) * 15 +15 + baseLine
					dirOut: 0 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness *90/100
						angle: 180 + 90 + 'deg'
						distr: 0.1
					})
				1:
					x: spacingLeft + thickness * 0.25
					y: 140 + (thickness / 80 - 1) * 15 + baseLine
					tensionIn: 1.15
					dirOut: 95 + 'deg'
					expand: Object({
						width: thickness
						angle: 5 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[1].x + (contours[1].nodes[1].x - contours[0].nodes[1].x) / 2 -15
					y: 0 + baseLine - overshoot
					dirOut: 0 + 'deg'
					tensionOut: 1.9
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
#			transformOrigin: contours[0].nodes[3].point
#			transforms: Array( [ 'scaleX', -1 ] )
				3:
					x: contours[1].nodes[0].expandedTo[1].x + thickness / 3 * 2
					y: 150 - (8/80) * thickness + baseLine
					tensionIn: 0.3
					dirIn: -120 + 'deg'
					expand: Object({
						width: thickness * 0.6
						angle: 140 + 'deg'
						distr: 0.25
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
					x: 230 + 200 * width
					y: xHeight - 80 - 30 * width + baseLine
					dirOut: 90 + 'deg'
					typeIn: 'line'
					expand: Object({
						width: thickness
						angle: 188 + 'deg'
						distr: 0.25
					})
				2:
					x: (contours[0].nodes[1].expandedTo[1].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) * (200/300)) - 10
					y: xHeight + overshoot + baseLine
					dirIn: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				3:
					x: Math.max(contours[0].nodes[1].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[1].x ) * 0.2, 115)
					y: xHeight - 10 - (8/80) * thickness + baseLine
					dirIn: 8 + 'deg'
					expand: Object({
						width: thickness * 95 / 100
						angle: - 90 + 'deg'
						distr: 0.1
					})
