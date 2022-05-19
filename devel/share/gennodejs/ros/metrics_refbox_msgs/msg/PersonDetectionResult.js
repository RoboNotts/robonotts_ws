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

class PersonDetectionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_type = null;
      this.person_found = null;
      this.box2d = null;
      this.image = null;
    }
    else {
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = 0;
      }
      if (initObj.hasOwnProperty('person_found')) {
        this.person_found = initObj.person_found
      }
      else {
        this.person_found = false;
      }
      if (initObj.hasOwnProperty('box2d')) {
        this.box2d = initObj.box2d
      }
      else {
        this.box2d = new BoundingBox2D();
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonDetectionResult
    // Serialize message field [message_type]
    bufferOffset = _serializer.uint8(obj.message_type, buffer, bufferOffset);
    // Serialize message field [person_found]
    bufferOffset = _serializer.bool(obj.person_found, buffer, bufferOffset);
    // Serialize message field [box2d]
    bufferOffset = BoundingBox2D.serialize(obj.box2d, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonDetectionResult
    let len;
    let data = new PersonDetectionResult(null);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [person_found]
    data.person_found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [box2d]
    data.box2d = BoundingBox2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metrics_refbox_msgs/PersonDetectionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9dd3e562d32c962b7c2882022afa06a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FEEDBACK=1
    uint8 RESULT=2
    uint8 message_type
    
    # set to true if a person has been found
    bool person_found
    
    # 2D bounding box of the person
    BoundingBox2D box2d
    
    # image which contains the person (corresponding to the 2D bounding box)
    sensor_msgs/Image image
    
    ================================================================================
    MSG: metrics_refbox_msgs/BoundingBox2D
    uint32 min_x
    uint32 min_y
    uint32 max_x
    uint32 max_y
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PersonDetectionResult(null);
    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = 0
    }

    if (msg.person_found !== undefined) {
      resolved.person_found = msg.person_found;
    }
    else {
      resolved.person_found = false
    }

    if (msg.box2d !== undefined) {
      resolved.box2d = BoundingBox2D.Resolve(msg.box2d)
    }
    else {
      resolved.box2d = new BoundingBox2D()
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

// Constants for message
PersonDetectionResult.Constants = {
  FEEDBACK: 1,
  RESULT: 2,
}

module.exports = PersonDetectionResult;
