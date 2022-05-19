
"use strict";

let ObjectDetectionResult = require('./ObjectDetectionResult.js');
let PersonDetectionResult = require('./PersonDetectionResult.js');
let HandoverObjectResult = require('./HandoverObjectResult.js');
let Command = require('./Command.js');
let AssessActivityStateResult = require('./AssessActivityStateResult.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let ReceiveObjectResult = require('./ReceiveObjectResult.js');
let ActivityRecognitionResult = require('./ActivityRecognitionResult.js');
let HumanRecognitionResult = require('./HumanRecognitionResult.js');
let GestureRecognitionResult = require('./GestureRecognitionResult.js');
let Confirm = require('./Confirm.js');
let BoundingBox2D = require('./BoundingBox2D.js');
let ClutteredPickResult = require('./ClutteredPickResult.js');
let ItemDeliveryResult = require('./ItemDeliveryResult.js');

module.exports = {
  ObjectDetectionResult: ObjectDetectionResult,
  PersonDetectionResult: PersonDetectionResult,
  HandoverObjectResult: HandoverObjectResult,
  Command: Command,
  AssessActivityStateResult: AssessActivityStateResult,
  BoundingBox3D: BoundingBox3D,
  ReceiveObjectResult: ReceiveObjectResult,
  ActivityRecognitionResult: ActivityRecognitionResult,
  HumanRecognitionResult: HumanRecognitionResult,
  GestureRecognitionResult: GestureRecognitionResult,
  Confirm: Confirm,
  BoundingBox2D: BoundingBox2D,
  ClutteredPickResult: ClutteredPickResult,
  ItemDeliveryResult: ItemDeliveryResult,
};
