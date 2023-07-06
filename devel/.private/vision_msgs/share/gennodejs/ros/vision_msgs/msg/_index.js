
"use strict";

let Detection3D = require('./Detection3D.js');
let VisionInfo = require('./VisionInfo.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let BoundingBox2DArray = require('./BoundingBox2DArray.js');
let BoundingBox3DArray = require('./BoundingBox3DArray.js');
let Classification3D = require('./Classification3D.js');
let Detection2DArray = require('./Detection2DArray.js');
let ObjectHypothesis = require('./ObjectHypothesis.js');
let Detection2D = require('./Detection2D.js');
let Detection3DArray = require('./Detection3DArray.js');
let BoundingBox2D = require('./BoundingBox2D.js');
let Classification2D = require('./Classification2D.js');
let ObjectHypothesisWithPose = require('./ObjectHypothesisWithPose.js');

module.exports = {
  Detection3D: Detection3D,
  VisionInfo: VisionInfo,
  BoundingBox3D: BoundingBox3D,
  BoundingBox2DArray: BoundingBox2DArray,
  BoundingBox3DArray: BoundingBox3DArray,
  Classification3D: Classification3D,
  Detection2DArray: Detection2DArray,
  ObjectHypothesis: ObjectHypothesis,
  Detection2D: Detection2D,
  Detection3DArray: Detection3DArray,
  BoundingBox2D: BoundingBox2D,
  Classification2D: Classification2D,
  ObjectHypothesisWithPose: ObjectHypothesisWithPose,
};
