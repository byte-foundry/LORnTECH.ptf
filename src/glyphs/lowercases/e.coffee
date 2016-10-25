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
		spacingLeft: 50 * spacing + 50
		spacingRight: 50 * spacing + 50
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
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 190,
						contours[0].nodes[2].expandedTo[1].x + 10
					)
					y: 48 + (8)
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
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].x - contours[0].nodes[2].expandedTo[1].x ) * (16 / 31) - (thickness / 80 - 1) * 40
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: -90 + 'deg'
						distr: 0
					})
				4:
					x: Math.max(
						contours[0].nodes[2].expandedTo[0].x + 200 * width + 210 - (20),
						contours[0].nodes[2].expandedTo[1].x + 10
					)
					y: xHeight - (130 / 500) * xHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.3
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
