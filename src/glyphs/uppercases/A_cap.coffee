exports.glyphs['A_cap'] =
	unicode: 'A'
	glyphName: 'A'
	characterName: 'LATIN CAPITAL LETTER A'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: (contours[2].nodes[0].x + contours[2].nodes[1].x) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (92 / 80 * thickness * opticThickness) * 0.25
					y: 0
					typeOut: "line"
					expand: Object({
						width: (92 / 80 * thickness * opticThickness) * contrast * (1 + (width - 1) / 9)
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: ( contours[0].nodes[0].x + contours[1].nodes[0].x ) / 2 - (width - 1) / 2
					y: Utils.onLine({x: ( contours[0].nodes[0].x + contours[1].nodes[0].x ) / 2, on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[3].expandedTo[1].point ]})
					typeOut: "line"
					expand: Object({
						width: (87 / 80 * thickness * opticThickness) * contrast * (1 + (width - 1) / 9)
						angle: 0 + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].point.y
					typeOut: "line"
					expand: Object({
						width: (120 / 80 * thickness * opticThickness) * contrast * (1 + (width - 1) / 9)
						angle: 0 + 'deg'
						distr: 0
					})
				3:
					x: ( contours[0].nodes[0].x + contours[1].nodes[0].x ) / 2 - (70 / 80 * thickness * opticThickness) * 0.75
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (88 / 80 * thickness * opticThickness) * contrast * (1 + (width - 1) / 9)
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 408 + 200 * width - (92 / 80 * thickness * opticThickness) * 0.25
					y: 0
					typeOut: "line"
					expand: Object({
						width: (92 / 80 * thickness * opticThickness) * (1 + (width - 1) / 9)
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: ( contours[0].nodes[0].x + contours[1].nodes[0].x ) / 2 + (width - 1) / 2
					y: Utils.onLine({x: ( contours[0].nodes[0].x + contours[1].nodes[0].x ) / 2, on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[3].expandedTo[0].point ]})
					typeOut: "line"
					expand: Object({
						width: (87 / 80 * thickness * opticThickness) * (1 + (width - 1) / 9)
						angle: 0 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].point.y
					typeOut: "line"
					expand: Object({
						width: (120 / 80 * thickness * opticThickness) * (1 + (width - 1) / 9)
						angle: 0 + 'deg'
						distr: 1
					})
				3:
					x: ( contours[0].nodes[0].x + contours[1].nodes[0].x ) / 2 + (70 / 80 * thickness * opticThickness) * 0.75
					y: capHeight
					typeOut: "line"
					expand: Object({
						width: (89 / 80 * thickness * opticThickness) * (1 + (width - 1) / 9)
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({y: contours[2].nodes[0].y, on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]})
					y: capHeight * 0.31
					typeOut: "line"
					expand: Object({
						width: thickness * opticThickness * contrast / Math.cos(Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - Math.PI / 2)
						angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) + Math.PI
						distr: 0.5
					})
				1:
					x: Utils.onLine({y: contours[2].nodes[1].y, on: [ contours[1].nodes[0].point, contours[1].nodes[1].point ]})
					y: capHeight * 0.31
					typeOut: "line"
					expand: Object({
						width: thickness * opticThickness * contrast / Math.cos(Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) - Math.PI / 2)
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point )
						distr: 0.5
					})
