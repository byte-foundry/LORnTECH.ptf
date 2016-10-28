exports.glyphs['B_cap'] =
	unicode: 'B'
	glyphName: 'B'
	characterName: 'LATIN CAPITAL LETTER B'
	ot:
		advanceWidth: contours[2].nodes[2].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 90
		spacingRight: 50 * spacing + 75
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + 0.25 * thickness
					y: 0
					typeOut: 'line'
					expand: Object({
						width: 81 / 80 * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: 81 / 80 * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: 81/80 * thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 82 + 126 * width + Math.sin(Math.max(0, (thickness - 80) / 3) / 180 * Math.PI) * 81/80 * thickness * opticThickness * contrast
					y: capHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: 81/80 * thickness * opticThickness * contrast / Math.cos((5 + Math.min(15, Math.max(0, (thickness - 80) / 60 * 20))) / 180 * Math.PI)
						angle: -95 - Math.min(15, Math.max(0, (thickness - 80) / 60 * 20)) + 'deg'
						distr: 0
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 220 - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.25 + contours[1].nodes[2].expand.width + 10
					)
					y: (contours[1].nodes[1].expandedTo[0].y + contours[1].nodes[3].expandedTo[0].y) / 2
					dirOut: 270 + 'deg'
					expand: Object({
						width: 92 / 80 * thickness * opticThickness * Math.cos(Math.max(0, (thickness - 80) / 60 * 7) / 180 * Math.PI)
						angle: 180 + Math.max(0, (thickness - 80) / 60 * 2) + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[4].x + 53 + Math.sin(3 / 180 * Math.PI) * thickness * opticThickness * contrast + 126 * (width - 1)
					y: contours[1].nodes[4].y
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast / Math.cos(3 / 180 * Math.PI)
						angle: 87 + 'deg'
						distr: 0.5
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x + Math.min(59, (59/80 * thickness)) + 12 * (width - 1)
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 140 * width,
						contours[0].nodes[0].expandedTo[1].x + 60
					)
					y: capHeight / 2
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[4].x
					y: contours[1].nodes[4].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: -90 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[2].nodes[0].x + 111 - Math.sin(8 / 180 * Math.PI) * thickness * opticThickness * contrast + 126 * (width - 1)
					y: contours[2].nodes[0].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast / Math.cos(8 / 180 * Math.PI)
						angle: -82 + 'deg'
						distr: 0.5
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 200 * width + 260 - (20),
						contours[0].nodes[0].expandedTo[1].x + 0.25 + contours[2].nodes[2].expand.width + 10
					)
					y: contours[1].nodes[3].expandedTo[1].y / 2
					dirOut: 270 + 'deg'
					expand: Object({
						width: 87 / 80 * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].expandedTo[0].x + 254 + 126 * (width - 1)
					y: 0
					dirIn: 0 + 'deg'
					dirOut: 270 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast / Math.cos(9 / 180 * Math.PI)
						angle: 99 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: 0
					dirOut: 270 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
