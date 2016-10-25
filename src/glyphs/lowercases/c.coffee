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
		spacingLeft: 40 * spacing
		spacingRight: 30 * spacing
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
					x: 220 + 200 * width
					y: xHeight - 50
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - 20 / 180 * Math.PI
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[1].x ) * (150/310)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + 0.25 * thickness
					y: xHeight / 2
					type: 'smooth'
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness + (width - 1) * 20  * (thickness / 80 - 1)
						angle: 0 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[1].x ) * (150/310)
					y: 0 - overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].x + 10
					y: 50
					dirIn: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[4].point ) + 20 / 180 * Math.PI
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0.1
					})
