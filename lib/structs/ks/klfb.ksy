meta:
  id: klfb
  endian: le
seq:
  - id: count
    type: u4
  - id: local_joints_offset
    type: u4
  - id: global_joints_offset
    type: u4
  - id: parent_joints
    type: u2
    repeat: expr
    repeat-expr: count
instances:
  local_joints:
    pos: local_joints_offset
    type: coordinate
    repeat: expr
    repeat-expr: count
  global_joints:
    pos: global_joints_offset
    type: coordinate
    repeat: expr
    repeat-expr: count
types:
  coordinate:
    seq:
      - id: x
        type: f4
      - id: y
        type: f4
      - id: z
        type: f4
      - id: zero
        type: f4