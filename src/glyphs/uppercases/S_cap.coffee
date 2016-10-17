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
					dirOut: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[0].point ) - 10 / 180 * Math.PI  - contours[0].nodes[0].expand.width / 80 * Math.PI / 6
					expand: Object({
						width: thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: (contours[0].nodes[0].x * 0.46 + contours[0].nodes[2].expandedTo[1].x * 0.54)
					y: 0
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[4].expandedTo[1].x + 204 + 200 * width - 0.25 * contours[0].nodes[2].expand.width
					y: capHeight / 4 + (thickness / 80 - 1) * 20 + 5 * (width - 1)
					dirIn: 90 + 'deg'
					expand: Object({
						width: 86/80 * thickness * opticThickness / Math.cos(1 / 180 * Math.PI) + Math.max(0, (width - 1) * 20 * (thickness / 80 - 1))
						angle: 181 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: capHeight / 2
					dirOut: Math.min(Math.PI, Utils.lineAngle(contours[0].nodes[2].point, contours[0].nodes[4].point) + (10*(width-1)* 1.3 ) / 180 * Math.PI + Math.PI / 8)
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness
						angle: contours[0].nodes[3].dirOut + Math.PI / 2
						distr: 0.5
					})
				4:
					x: spacingLeft + 0.25 * contours[0].nodes[4].expand.width
					y: capHeight / 4 * 3 - (thickness / 80 - 1) * 20 - 5 * (width - 1)
					dirOut: 90 + 'deg'
					expand: Object({
						width: 82/80 * thickness * opticThickness / Math.cos(1 / 180 * Math.PI) + Math.max(0, (width - 1) * 20 * (thickness / 80 - 1))
						angle: 181 + 'deg'
						distr: 0.75
					})
				5:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 1
					})
				6:
					x: contours[0].nodes[2].expandedTo[0].x - 54
					y: contours[0].nodes[5].y - 40
					dirIn: Utils.lineAngle( contours[0].nodes[5].point, contours[0].nodes[6].point ) - 10 / 180 * Math.PI - contours[0].nodes[0].expand.width / 80 * Math.PI / 6
					expand: Object({
						width: thickness * opticThickness
						angle: 90 + 'deg'
						distr: 1
					})
