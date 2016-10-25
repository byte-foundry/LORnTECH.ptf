exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 20 * spacing
		spacingRight: 20 * spacing
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
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness + ( width - 1 ) * 10
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * (200/300)
					x: Utils.onLine({
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
						y: 0
					})
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness + ( width - 1 ) * 10
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 180 + 200 * width
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness + ( width - 1 ) * 10
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x + 80 * width + ( 40 / 80 ) * thickness
					y: descender
					typeOut: 'line'
					expand: Object({
						width: thickness + ( width - 1 ) * 10
						angle: 0 + 'deg'
						distr: 0.5
					})