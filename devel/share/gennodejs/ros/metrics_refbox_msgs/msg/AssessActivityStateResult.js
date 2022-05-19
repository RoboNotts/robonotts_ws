// Auto-generated. Do not edit!

// (in-package metrics_refbox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBox2D = require('./BoundingBox2D.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class AssessActivityStateResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_type = null;
      this.phase = null;
      this.image = null;
      this.box2d = null;
      this.activities = null;
    }
    else {
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = 0;
      }
      if (initObj.hasOwnProperty('phase')) {
        this.phase = initObj.phase
      }
      else {
        this.phase = 0;
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('box2d')) {
        this.box2d = initObj.box2d
      }
      else {
        this.box2d = new BoundingBox2D();
      }
      if (initObj.hasOwnProperty('activities')) {
        this.activities = initObj.activities
      }
      else {
        this.activities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssessActivityStateResult
    // Serialize message field [message_type]
    bufferOffset = _serializer.uint8(obj.message_type, buffer, bufferOffset);
    // Serialize message field [phase]
    bufferOffset = _serializer.uint8(obj.phase, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [box2d]
    bufferOffset = BoundingBox2D.serialize(obj.box2d, buffer, bufferOffset);
    // Serialize message field [activities]
    bufferOffset = _arraySerializer.string(obj.activities, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssessActivityStateResult
    let len;
    let data = new AssessActivityStateResult(null);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [phase]
    data.phase = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [box2d]
    data.box2d = BoundingBox2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [activities]
    data.activities = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    object.activities.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metrics_refbox_msgs/AssessActivityStateResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '158623e93d31a5f8e12464016a13faf0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FEEDBACK=1
    uint8 RESULT=2
    uint8 message_type
    
    # feedback
    uint8 PHASE_DETECTION=1
    uint8 PHASE_VISUAL_ASSESSMENT=2
    uint8 PHASE_VERBAL_ASSESSMENT=3
    
    uint8 phase
    
    # phase: detection
    sensor_msgs/Image image
    BoundingBox2D box2d
    
    # for all of the following phases/result
    # we need to return a list of activities:
    #
    # phase: visual assessment
    # phase: verbal assessment
    # final result
    
    # list of activities ordered from most probable to least probable.
    # Up to a maximum of 5 activities will be considered for evaluation
    string[] activities
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: metrics_refbox_msgs/BoundingBox2D
    uint32 min_x
    uint32 min_y
    uint32 max_x
    uint32 max_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssessActivityStateResult(null);
    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = 0
    }

    if (msg.phase !== undefined) {
      resolved.phase = msg.phase;
    }
    else {
      resolved.phase = 0
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.box2d !== undefined) {
      resolved.box2d = BoundingBox2D.Resolve(msg.box2d)
    }
    else {
      resolved.box2d = new BoundingBox2D()
    }

    if (msg.activities !== undefined) {
      resolved.activities = msg.activities;
    }
    else {
      resolved.activities = []
    }

    return resolved;
    }
};

// Constants for message
AssessActivityStateResult.Constants = {
  FEEDBACK: 1,
  RESULT: 2,
  PHASE_DETECTION: 1,
  PHASE_VISUAL_ASSESSMENT: 2,
  PHASE_VERBAL_ASSESSMENT: 3,
}

module.exports = AssessActivityStateResult;
