exports.glyphs['c'] =
	unicode: 'c'
	glyphName: 'c'
	characterName: 'LATIN SMALL LETTER C'
	ot:
		advanceWidth: contours[0].nodes[4].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 60
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: 0
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 190,
						contours[0].nodes[2].expandedTo[1].x + 10 + (0)
					)
					y: xHeight - 25 - (10)
					dirOut: 150 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[0].x ) * ( 235 / 390 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + (20/80) * thickness
					y: xHeight / 2
					type: 'smooth'
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: 0 - overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].x + 10
					y: 40 + (10)
					dirIn: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[4].point ) + 20 / 180 * Math.PI
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0.1
					})
