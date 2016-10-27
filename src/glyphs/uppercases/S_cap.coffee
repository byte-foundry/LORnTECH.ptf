exports.glyphs['S_cap'] =
	unicode: 'S'
	glyphName: 'S'
	characterName: 'LATIN CAPITAL LETTER S'
	ot:
		advanceWidth: contours[0].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 60

	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[1].x
			y: capHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x + 17
					y: contours[0].nodes[1].y + 40
					dirOut: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[0].point ) - 14 / 180 * Math.PI  - (1 - contrast) * Math.PI / 6
					expand: Object({
						width: 88/80 * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: (contours[0].nodes[0].x * 0.46 + contours[0].nodes[2].expandedTo[1].x * 0.54)
					y: -overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: 81/80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[4].expandedTo[1].x + 204 + 200 * width - 0.25 * contours[0].nodes[2].expand.width + (thickness / 80 - 1) * thickness
					y: capHeight / 3.62 + (thickness / 80 - 1) * 20 + 5 * (width - 1)
					dirIn: 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.7
					expand: Object({
						width: 86/80 * thickness * opticThickness / Math.cos((1 + (contrast - 1)) / 180 * Math.PI) * Math.pow(contrast, 0.1) + Math.max(0, (width - 1) * 20 * (thickness / 80 - 1))
						angle: 179 - (contrast - 1) * 60 + 'deg'
						distr: 0.25
					})
				3:
					x:  contours[0].nodes[4].expandedTo[1].x * 0.51 + contours[0].nodes[2].expandedTo[0].x * 0.49
					y: capHeight / 1.93
					dirOut: Math.min(Math.PI, Utils.lineAngle(contours[0].nodes[2].point, contours[0].nodes[4].point) + 15 / 180 * Math.PI + (10*(width-1)* 0.6 ) / 180 * Math.PI)
					typeIn: 1.2
					type: 'smooth'
					expand: Object({
						width: (84.5/80) * thickness * opticThickness / Math.cos(20 / 180 * Math.PI)
						angle: 220 + 'deg'
						distr: 0.5
					})
				4:
					x: spacingLeft + 0.25 * contours[0].nodes[4].expand.width
					y: capHeight / 1.31
					tensionIn: 1.7
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: 82/80 * thickness * opticThickness / Math.cos((1 + (contrast - 1)) / 180 * Math.PI) * Math.pow(contrast, 0.1) + Math.max(0, (width - 1) * 20 * (thickness / 80 - 1))
						angle: 181 - (contrast - 1) * 60 - Math.max(0, (thickness - 80 ) / 8 )+ 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: 81/80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[2].expandedTo[0].x - 54
					y: contours[0].nodes[5].y - 40
					dirIn: Utils.lineAngle( contours[0].nodes[5].point, contours[0].nodes[6].point ) - 14 / 180 * Math.PI - (1 - contrast) * Math.PI / 6
					expand: Object({
						width: 88/80 * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 1
					})
