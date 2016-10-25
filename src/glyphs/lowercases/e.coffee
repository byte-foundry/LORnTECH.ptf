exports.glyphs['e'] =
	unicode: 'e'
	glyphName: 'e'
	characterName: 'LATIN SMALL LETTER '
	ot:
		advanceWidth: contours[0].nodes[4].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg'],
		['translateY', baseLine]
	)
	parameters:
		spacingLeft: 50 * spacing
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[3].expandedTo[0].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 220 + 200 * width
					y: 50
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) + 20 / 180 * Math.PI
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0.1
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[1].x ) * (14/31)
					y: - overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft + 0.26 * thickness
					y: xHeight / 2
					type: 'smooth'
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[1].x ) * (16 / 31) - (thickness / 80 - 1) * 40
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: -90 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].x
					y: xHeight - (130 / 500) * xHeight
					dirOut: -90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * 1.05
						angle: 195 + 'deg'
						distr: 0.25
					})
				5:
						x: (contours[0].nodes[3].x + contours[0].nodes[2].expandedTo[1].x) / 2
						y: (contours[0].nodes[1].y * 1.1 + contours[0].nodes[3].y * 0.9) / 2
						dirIn: 0 + 'deg'
						expand: Object({
							width: thickness
							angle: 90 + 'deg'
							distr: 0.5
						})