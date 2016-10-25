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
		spacingLeft: 30 * spacing
		spacingRight: 30 * spacing
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
					y: - overshoot
					dirOut: 180 + 'deg'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + 0.25 * contours[0].nodes[1].expand.width
					y: xHeight / 2
					dirOut: 90 + 'deg'
					expand: Object({
						width: 85 / 80 * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: -90 + 'deg'
						distr: 0
					})
				3:
					x: 350 + 200 * width - 0.25 * contours[0].nodes[1].expand.width
					y: contours[0].nodes[1].y
					dirOut: 270 + 'deg'
					expand: Object({
						width: 85 / 80 * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
