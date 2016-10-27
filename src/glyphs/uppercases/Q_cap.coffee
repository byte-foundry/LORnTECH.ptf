exports.glyphs['Q_cap'] =
	unicode: 'Q'
	glyphName: 'Q'
	characterName: 'LATIN CAPITAL LETTER Q'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
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
			x: 0
			y: 0
			left: 0 # contours[0].nodes[0].expandedTo[0].x
			right: 0 # contours[0].nodes[2].expandedTo[0].x
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: (contours[0].nodes[1].x + contours[0].nodes[3].x) / 2
					y: - overshoot
					dirOut: 180 + 'deg'
					tensionOut: 0.96
					tensionIn: 0.96
					expand: Object({
						width: 83/80 * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft + 0.25 * contours[0].nodes[1].expand.width
					y: capHeight / 2
					dirOut: 90 + 'deg'
					tensionOut: 0.96
					tensionIn: 0.96
					expand: Object({
						width: 90 / 80 * thickness * opticThickness + (width - 1) * 15  * (thickness / 80 - 1)
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					tensionOut: 0.96
					tensionIn: 0.96
					expand: Object({
						width: 84/80 * thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[1].expandedTo[0].x + 509 + 200 * width - 0.25 * contours[0].nodes[1].expand.width
					y: contours[0].nodes[1].y
					dirOut: 270 + 'deg'
					tensionOut: 0.96
					tensionIn: 0.96
					expand: Object({
						width: 90 / 80 * thickness * opticThickness + (width - 1) * 15  * (thickness / 80 - 1)
						angle: 180 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + 13 + Math.sin(40 /180 * Math.PI) * thickness * opticThickness * contrast / Math.cos(30/180*Math.PI) * 0.5
					y: - overshoot + thickness * opticThickness / 2
					tensionOut: 0.8
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast / Math.cos(30/180*Math.PI)
						angle: 240 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[3].x
					y: - 118
					dirIn: 180 + 'deg'
					tensionIn: 1.1
					expand: Object({
						width: 81 / 80 * thickness * opticThickness * contrast
						angle: 270 + 'deg'
						distr: 0.75
					})
