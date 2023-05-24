// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Top module auto-generated by `reggen`

`include "prim_assert.sv"

module wide_alu_reg_top #(
  parameter type reg_req_t = logic,
  parameter type reg_rsp_t = logic
) (
  input clk_i,
  input rst_ni,

  // Below Register interface can be changed
  input  reg_req_t reg_req_i,
  output reg_rsp_t reg_rsp_o,
  // To HW
  output wide_alu_reg_pkg::wide_alu_reg2hw_t reg2hw, // Write
  input  wide_alu_reg_pkg::wide_alu_hw2reg_t hw2reg, // Read

  // Config
  input devmode_i // If 1, explicit error return for unmapped register access
);

  import wide_alu_reg_pkg::* ;

  localparam int AW = 8;
  localparam int DW = 32;
  localparam int DBW = DW/8;                    // Byte Width

  // register signals
  logic           reg_we;
  logic           reg_re;
  logic [AW-1:0]  reg_addr;
  logic [DW-1:0]  reg_wdata;
  logic [DBW-1:0] reg_be;
  logic [DW-1:0]  reg_rdata;
  logic           reg_error;

  logic          addrmiss, wr_err;

  logic [DW-1:0] reg_rdata_next;

  reg_req_t reg_intf_req;
  reg_rsp_t reg_intf_rsp;

  assign reg_intf_req = reg_req_i;
  assign reg_rsp_o = reg_intf_rsp;

  assign reg_we = reg_intf_req.valid & reg_intf_req.write;
  assign reg_re = reg_intf_req.valid & ~reg_intf_req.write;
  assign reg_addr = reg_intf_req.addr;
  assign reg_wdata = reg_intf_req.wdata;
  assign reg_be = reg_intf_req.wstrb;
  assign reg_intf_rsp.rdata = reg_rdata;
  assign reg_intf_rsp.error = reg_error;
  assign reg_intf_rsp.ready = 1'b1;

  assign reg_rdata = reg_rdata_next ;
  assign reg_error = (devmode_i & addrmiss) | wr_err ;

  // Define SW related signals
  // Format: <reg>_<field>_{wd|we|qs}
  //        or <reg>_{wd|we|qs} if field == 1 or 0
  logic [31:0] op_a_0_wd;
  logic op_a_0_we;
  logic [31:0] op_a_1_wd;
  logic op_a_1_we;
  logic [31:0] op_a_2_wd;
  logic op_a_2_we;
  logic [31:0] op_a_3_wd;
  logic op_a_3_we;
  logic [31:0] op_a_4_wd;
  logic op_a_4_we;
  logic [31:0] op_a_5_wd;
  logic op_a_5_we;
  logic [31:0] op_a_6_wd;
  logic op_a_6_we;
  logic [31:0] op_a_7_wd;
  logic op_a_7_we;
  logic [31:0] op_b_0_wd;
  logic op_b_0_we;
  logic [31:0] op_b_1_wd;
  logic op_b_1_we;
  logic [31:0] op_b_2_wd;
  logic op_b_2_we;
  logic [31:0] op_b_3_wd;
  logic op_b_3_we;
  logic [31:0] op_b_4_wd;
  logic op_b_4_we;
  logic [31:0] op_b_5_wd;
  logic op_b_5_we;
  logic [31:0] op_b_6_wd;
  logic op_b_6_we;
  logic [31:0] op_b_7_wd;
  logic op_b_7_we;
  logic [31:0] result_0_qs;
  logic result_0_re;
  logic [31:0] result_1_qs;
  logic result_1_re;
  logic [31:0] result_2_qs;
  logic result_2_re;
  logic [31:0] result_3_qs;
  logic result_3_re;
  logic [31:0] result_4_qs;
  logic result_4_re;
  logic [31:0] result_5_qs;
  logic result_5_re;
  logic [31:0] result_6_qs;
  logic result_6_re;
  logic [31:0] result_7_qs;
  logic result_7_re;
  logic [31:0] result_8_qs;
  logic result_8_re;
  logic [31:0] result_9_qs;
  logic result_9_re;
  logic [31:0] result_10_qs;
  logic result_10_re;
  logic [31:0] result_11_qs;
  logic result_11_re;
  logic [31:0] result_12_qs;
  logic result_12_re;
  logic [31:0] result_13_qs;
  logic result_13_re;
  logic [31:0] result_14_qs;
  logic result_14_re;
  logic [31:0] result_15_qs;
  logic result_15_re;
  logic ctrl1_trigger_wd;
  logic ctrl1_trigger_we;
  logic ctrl1_clear_err_wd;
  logic ctrl1_clear_err_we;
  logic [2:0] ctrl2_opsel_qs;
  logic [2:0] ctrl2_opsel_wd;
  logic ctrl2_opsel_we;
  logic ctrl2_opsel_re;
  logic [7:0] ctrl2_delay_qs;
  logic [7:0] ctrl2_delay_wd;
  logic ctrl2_delay_we;
  logic ctrl2_delay_re;
  logic [1:0] status_qs;
  logic status_re;

  // Register instances

  // Subregister 0 of Multireg op_a
  // R[op_a_0]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_a_0 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_a_0_we),
    .wd     (op_a_0_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_a[0].q ),

    .qs     ()
  );

  // Subregister 1 of Multireg op_a
  // R[op_a_1]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_a_1 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_a_1_we),
    .wd     (op_a_1_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_a[1].q ),

    .qs     ()
  );

  // Subregister 2 of Multireg op_a
  // R[op_a_2]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_a_2 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_a_2_we),
    .wd     (op_a_2_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_a[2].q ),

    .qs     ()
  );

  // Subregister 3 of Multireg op_a
  // R[op_a_3]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_a_3 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_a_3_we),
    .wd     (op_a_3_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_a[3].q ),

    .qs     ()
  );

  // Subregister 4 of Multireg op_a
  // R[op_a_4]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_a_4 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_a_4_we),
    .wd     (op_a_4_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_a[4].q ),

    .qs     ()
  );

  // Subregister 5 of Multireg op_a
  // R[op_a_5]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_a_5 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_a_5_we),
    .wd     (op_a_5_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_a[5].q ),

    .qs     ()
  );

  // Subregister 6 of Multireg op_a
  // R[op_a_6]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_a_6 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_a_6_we),
    .wd     (op_a_6_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_a[6].q ),

    .qs     ()
  );

  // Subregister 7 of Multireg op_a
  // R[op_a_7]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_a_7 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_a_7_we),
    .wd     (op_a_7_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_a[7].q ),

    .qs     ()
  );



  // Subregister 0 of Multireg op_b
  // R[op_b_0]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_b_0 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_b_0_we),
    .wd     (op_b_0_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_b[0].q ),

    .qs     ()
  );

  // Subregister 1 of Multireg op_b
  // R[op_b_1]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_b_1 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_b_1_we),
    .wd     (op_b_1_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_b[1].q ),

    .qs     ()
  );

  // Subregister 2 of Multireg op_b
  // R[op_b_2]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_b_2 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_b_2_we),
    .wd     (op_b_2_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_b[2].q ),

    .qs     ()
  );

  // Subregister 3 of Multireg op_b
  // R[op_b_3]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_b_3 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_b_3_we),
    .wd     (op_b_3_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_b[3].q ),

    .qs     ()
  );

  // Subregister 4 of Multireg op_b
  // R[op_b_4]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_b_4 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_b_4_we),
    .wd     (op_b_4_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_b[4].q ),

    .qs     ()
  );

  // Subregister 5 of Multireg op_b
  // R[op_b_5]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_b_5 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_b_5_we),
    .wd     (op_b_5_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_b[5].q ),

    .qs     ()
  );

  // Subregister 6 of Multireg op_b
  // R[op_b_6]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_b_6 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_b_6_we),
    .wd     (op_b_6_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_b[6].q ),

    .qs     ()
  );

  // Subregister 7 of Multireg op_b
  // R[op_b_7]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("WO"),
    .RESVAL  (32'h0)
  ) u_op_b_7 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (op_b_7_we),
    .wd     (op_b_7_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.op_b[7].q ),

    .qs     ()
  );



  // Subregister 0 of Multireg result
  // R[result_0]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_0 (
    .re     (result_0_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[0].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_0_qs)
  );

  // Subregister 1 of Multireg result
  // R[result_1]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_1 (
    .re     (result_1_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[1].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_1_qs)
  );

  // Subregister 2 of Multireg result
  // R[result_2]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_2 (
    .re     (result_2_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[2].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_2_qs)
  );

  // Subregister 3 of Multireg result
  // R[result_3]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_3 (
    .re     (result_3_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[3].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_3_qs)
  );

  // Subregister 4 of Multireg result
  // R[result_4]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_4 (
    .re     (result_4_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[4].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_4_qs)
  );

  // Subregister 5 of Multireg result
  // R[result_5]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_5 (
    .re     (result_5_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[5].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_5_qs)
  );

  // Subregister 6 of Multireg result
  // R[result_6]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_6 (
    .re     (result_6_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[6].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_6_qs)
  );

  // Subregister 7 of Multireg result
  // R[result_7]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_7 (
    .re     (result_7_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[7].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_7_qs)
  );

  // Subregister 8 of Multireg result
  // R[result_8]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_8 (
    .re     (result_8_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[8].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_8_qs)
  );

  // Subregister 9 of Multireg result
  // R[result_9]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_9 (
    .re     (result_9_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[9].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_9_qs)
  );

  // Subregister 10 of Multireg result
  // R[result_10]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_10 (
    .re     (result_10_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[10].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_10_qs)
  );

  // Subregister 11 of Multireg result
  // R[result_11]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_11 (
    .re     (result_11_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[11].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_11_qs)
  );

  // Subregister 12 of Multireg result
  // R[result_12]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_12 (
    .re     (result_12_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[12].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_12_qs)
  );

  // Subregister 13 of Multireg result
  // R[result_13]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_13 (
    .re     (result_13_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[13].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_13_qs)
  );

  // Subregister 14 of Multireg result
  // R[result_14]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_14 (
    .re     (result_14_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[14].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_14_qs)
  );

  // Subregister 15 of Multireg result
  // R[result_15]: V(True)

  prim_subreg_ext #(
    .DW    (32)
  ) u_result_15 (
    .re     (result_15_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.result[15].d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (result_15_qs)
  );


  // R[ctrl1]: V(True)

  //   F[trigger]: 0:0
  prim_subreg_ext #(
    .DW    (1)
  ) u_ctrl1_trigger (
    .re     (1'b0),
    .we     (ctrl1_trigger_we),
    .wd     (ctrl1_trigger_wd),
    .d      ('0),
    .qre    (),
    .qe     (reg2hw.ctrl1.trigger.qe),
    .q      (reg2hw.ctrl1.trigger.q ),
    .qs     ()
  );


  //   F[clear_err]: 1:1
  prim_subreg_ext #(
    .DW    (1)
  ) u_ctrl1_clear_err (
    .re     (1'b0),
    .we     (ctrl1_clear_err_we),
    .wd     (ctrl1_clear_err_wd),
    .d      ('0),
    .qre    (),
    .qe     (reg2hw.ctrl1.clear_err.qe),
    .q      (reg2hw.ctrl1.clear_err.q ),
    .qs     ()
  );


  // R[ctrl2]: V(True)

  //   F[opsel]: 2:0
  prim_subreg_ext #(
    .DW    (3)
  ) u_ctrl2_opsel (
    .re     (ctrl2_opsel_re),
    .we     (ctrl2_opsel_we),
    .wd     (ctrl2_opsel_wd),
    .d      (hw2reg.ctrl2.opsel.d),
    .qre    (),
    .qe     (reg2hw.ctrl2.opsel.qe),
    .q      (reg2hw.ctrl2.opsel.q ),
    .qs     (ctrl2_opsel_qs)
  );


  //   F[delay]: 23:16
  prim_subreg_ext #(
    .DW    (8)
  ) u_ctrl2_delay (
    .re     (ctrl2_delay_re),
    .we     (ctrl2_delay_we),
    .wd     (ctrl2_delay_wd),
    .d      (hw2reg.ctrl2.delay.d),
    .qre    (),
    .qe     (reg2hw.ctrl2.delay.qe),
    .q      (reg2hw.ctrl2.delay.q ),
    .qs     (ctrl2_delay_qs)
  );


  // R[status]: V(True)

  prim_subreg_ext #(
    .DW    (2)
  ) u_status (
    .re     (status_re),
    .we     (1'b0),
    .wd     ('0),
    .d      (hw2reg.status.d),
    .qre    (),
    .qe     (),
    .q      (),
    .qs     (status_qs)
  );




  logic [34:0] addr_hit;
  always_comb begin
    addr_hit = '0;
    addr_hit[ 0] = (reg_addr == WIDE_ALU_OP_A_0_OFFSET);
    addr_hit[ 1] = (reg_addr == WIDE_ALU_OP_A_1_OFFSET);
    addr_hit[ 2] = (reg_addr == WIDE_ALU_OP_A_2_OFFSET);
    addr_hit[ 3] = (reg_addr == WIDE_ALU_OP_A_3_OFFSET);
    addr_hit[ 4] = (reg_addr == WIDE_ALU_OP_A_4_OFFSET);
    addr_hit[ 5] = (reg_addr == WIDE_ALU_OP_A_5_OFFSET);
    addr_hit[ 6] = (reg_addr == WIDE_ALU_OP_A_6_OFFSET);
    addr_hit[ 7] = (reg_addr == WIDE_ALU_OP_A_7_OFFSET);
    addr_hit[ 8] = (reg_addr == WIDE_ALU_OP_B_0_OFFSET);
    addr_hit[ 9] = (reg_addr == WIDE_ALU_OP_B_1_OFFSET);
    addr_hit[10] = (reg_addr == WIDE_ALU_OP_B_2_OFFSET);
    addr_hit[11] = (reg_addr == WIDE_ALU_OP_B_3_OFFSET);
    addr_hit[12] = (reg_addr == WIDE_ALU_OP_B_4_OFFSET);
    addr_hit[13] = (reg_addr == WIDE_ALU_OP_B_5_OFFSET);
    addr_hit[14] = (reg_addr == WIDE_ALU_OP_B_6_OFFSET);
    addr_hit[15] = (reg_addr == WIDE_ALU_OP_B_7_OFFSET);
    addr_hit[16] = (reg_addr == WIDE_ALU_RESULT_0_OFFSET);
    addr_hit[17] = (reg_addr == WIDE_ALU_RESULT_1_OFFSET);
    addr_hit[18] = (reg_addr == WIDE_ALU_RESULT_2_OFFSET);
    addr_hit[19] = (reg_addr == WIDE_ALU_RESULT_3_OFFSET);
    addr_hit[20] = (reg_addr == WIDE_ALU_RESULT_4_OFFSET);
    addr_hit[21] = (reg_addr == WIDE_ALU_RESULT_5_OFFSET);
    addr_hit[22] = (reg_addr == WIDE_ALU_RESULT_6_OFFSET);
    addr_hit[23] = (reg_addr == WIDE_ALU_RESULT_7_OFFSET);
    addr_hit[24] = (reg_addr == WIDE_ALU_RESULT_8_OFFSET);
    addr_hit[25] = (reg_addr == WIDE_ALU_RESULT_9_OFFSET);
    addr_hit[26] = (reg_addr == WIDE_ALU_RESULT_10_OFFSET);
    addr_hit[27] = (reg_addr == WIDE_ALU_RESULT_11_OFFSET);
    addr_hit[28] = (reg_addr == WIDE_ALU_RESULT_12_OFFSET);
    addr_hit[29] = (reg_addr == WIDE_ALU_RESULT_13_OFFSET);
    addr_hit[30] = (reg_addr == WIDE_ALU_RESULT_14_OFFSET);
    addr_hit[31] = (reg_addr == WIDE_ALU_RESULT_15_OFFSET);
    addr_hit[32] = (reg_addr == WIDE_ALU_CTRL1_OFFSET);
    addr_hit[33] = (reg_addr == WIDE_ALU_CTRL2_OFFSET);
    addr_hit[34] = (reg_addr == WIDE_ALU_STATUS_OFFSET);
  end

  assign addrmiss = (reg_re || reg_we) ? ~|addr_hit : 1'b0 ;

  // Check sub-word write is permitted
  always_comb begin
    wr_err = 1'b0;
    if (addr_hit[ 0] && reg_we && (WIDE_ALU_PERMIT[ 0] != (WIDE_ALU_PERMIT[ 0] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[ 1] && reg_we && (WIDE_ALU_PERMIT[ 1] != (WIDE_ALU_PERMIT[ 1] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[ 2] && reg_we && (WIDE_ALU_PERMIT[ 2] != (WIDE_ALU_PERMIT[ 2] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[ 3] && reg_we && (WIDE_ALU_PERMIT[ 3] != (WIDE_ALU_PERMIT[ 3] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[ 4] && reg_we && (WIDE_ALU_PERMIT[ 4] != (WIDE_ALU_PERMIT[ 4] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[ 5] && reg_we && (WIDE_ALU_PERMIT[ 5] != (WIDE_ALU_PERMIT[ 5] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[ 6] && reg_we && (WIDE_ALU_PERMIT[ 6] != (WIDE_ALU_PERMIT[ 6] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[ 7] && reg_we && (WIDE_ALU_PERMIT[ 7] != (WIDE_ALU_PERMIT[ 7] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[ 8] && reg_we && (WIDE_ALU_PERMIT[ 8] != (WIDE_ALU_PERMIT[ 8] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[ 9] && reg_we && (WIDE_ALU_PERMIT[ 9] != (WIDE_ALU_PERMIT[ 9] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[10] && reg_we && (WIDE_ALU_PERMIT[10] != (WIDE_ALU_PERMIT[10] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[11] && reg_we && (WIDE_ALU_PERMIT[11] != (WIDE_ALU_PERMIT[11] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[12] && reg_we && (WIDE_ALU_PERMIT[12] != (WIDE_ALU_PERMIT[12] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[13] && reg_we && (WIDE_ALU_PERMIT[13] != (WIDE_ALU_PERMIT[13] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[14] && reg_we && (WIDE_ALU_PERMIT[14] != (WIDE_ALU_PERMIT[14] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[15] && reg_we && (WIDE_ALU_PERMIT[15] != (WIDE_ALU_PERMIT[15] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[16] && reg_we && (WIDE_ALU_PERMIT[16] != (WIDE_ALU_PERMIT[16] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[17] && reg_we && (WIDE_ALU_PERMIT[17] != (WIDE_ALU_PERMIT[17] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[18] && reg_we && (WIDE_ALU_PERMIT[18] != (WIDE_ALU_PERMIT[18] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[19] && reg_we && (WIDE_ALU_PERMIT[19] != (WIDE_ALU_PERMIT[19] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[20] && reg_we && (WIDE_ALU_PERMIT[20] != (WIDE_ALU_PERMIT[20] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[21] && reg_we && (WIDE_ALU_PERMIT[21] != (WIDE_ALU_PERMIT[21] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[22] && reg_we && (WIDE_ALU_PERMIT[22] != (WIDE_ALU_PERMIT[22] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[23] && reg_we && (WIDE_ALU_PERMIT[23] != (WIDE_ALU_PERMIT[23] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[24] && reg_we && (WIDE_ALU_PERMIT[24] != (WIDE_ALU_PERMIT[24] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[25] && reg_we && (WIDE_ALU_PERMIT[25] != (WIDE_ALU_PERMIT[25] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[26] && reg_we && (WIDE_ALU_PERMIT[26] != (WIDE_ALU_PERMIT[26] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[27] && reg_we && (WIDE_ALU_PERMIT[27] != (WIDE_ALU_PERMIT[27] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[28] && reg_we && (WIDE_ALU_PERMIT[28] != (WIDE_ALU_PERMIT[28] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[29] && reg_we && (WIDE_ALU_PERMIT[29] != (WIDE_ALU_PERMIT[29] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[30] && reg_we && (WIDE_ALU_PERMIT[30] != (WIDE_ALU_PERMIT[30] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[31] && reg_we && (WIDE_ALU_PERMIT[31] != (WIDE_ALU_PERMIT[31] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[32] && reg_we && (WIDE_ALU_PERMIT[32] != (WIDE_ALU_PERMIT[32] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[33] && reg_we && (WIDE_ALU_PERMIT[33] != (WIDE_ALU_PERMIT[33] & reg_be))) wr_err = 1'b1 ;
    if (addr_hit[34] && reg_we && (WIDE_ALU_PERMIT[34] != (WIDE_ALU_PERMIT[34] & reg_be))) wr_err = 1'b1 ;
  end

  assign op_a_0_we = addr_hit[0] & reg_we & ~wr_err;
  assign op_a_0_wd = reg_wdata[31:0];

  assign op_a_1_we = addr_hit[1] & reg_we & ~wr_err;
  assign op_a_1_wd = reg_wdata[31:0];

  assign op_a_2_we = addr_hit[2] & reg_we & ~wr_err;
  assign op_a_2_wd = reg_wdata[31:0];

  assign op_a_3_we = addr_hit[3] & reg_we & ~wr_err;
  assign op_a_3_wd = reg_wdata[31:0];

  assign op_a_4_we = addr_hit[4] & reg_we & ~wr_err;
  assign op_a_4_wd = reg_wdata[31:0];

  assign op_a_5_we = addr_hit[5] & reg_we & ~wr_err;
  assign op_a_5_wd = reg_wdata[31:0];

  assign op_a_6_we = addr_hit[6] & reg_we & ~wr_err;
  assign op_a_6_wd = reg_wdata[31:0];

  assign op_a_7_we = addr_hit[7] & reg_we & ~wr_err;
  assign op_a_7_wd = reg_wdata[31:0];

  assign op_b_0_we = addr_hit[8] & reg_we & ~wr_err;
  assign op_b_0_wd = reg_wdata[31:0];

  assign op_b_1_we = addr_hit[9] & reg_we & ~wr_err;
  assign op_b_1_wd = reg_wdata[31:0];

  assign op_b_2_we = addr_hit[10] & reg_we & ~wr_err;
  assign op_b_2_wd = reg_wdata[31:0];

  assign op_b_3_we = addr_hit[11] & reg_we & ~wr_err;
  assign op_b_3_wd = reg_wdata[31:0];

  assign op_b_4_we = addr_hit[12] & reg_we & ~wr_err;
  assign op_b_4_wd = reg_wdata[31:0];

  assign op_b_5_we = addr_hit[13] & reg_we & ~wr_err;
  assign op_b_5_wd = reg_wdata[31:0];

  assign op_b_6_we = addr_hit[14] & reg_we & ~wr_err;
  assign op_b_6_wd = reg_wdata[31:0];

  assign op_b_7_we = addr_hit[15] & reg_we & ~wr_err;
  assign op_b_7_wd = reg_wdata[31:0];

  assign result_0_re = addr_hit[16] && reg_re;

  assign result_1_re = addr_hit[17] && reg_re;

  assign result_2_re = addr_hit[18] && reg_re;

  assign result_3_re = addr_hit[19] && reg_re;

  assign result_4_re = addr_hit[20] && reg_re;

  assign result_5_re = addr_hit[21] && reg_re;

  assign result_6_re = addr_hit[22] && reg_re;

  assign result_7_re = addr_hit[23] && reg_re;

  assign result_8_re = addr_hit[24] && reg_re;

  assign result_9_re = addr_hit[25] && reg_re;

  assign result_10_re = addr_hit[26] && reg_re;

  assign result_11_re = addr_hit[27] && reg_re;

  assign result_12_re = addr_hit[28] && reg_re;

  assign result_13_re = addr_hit[29] && reg_re;

  assign result_14_re = addr_hit[30] && reg_re;

  assign result_15_re = addr_hit[31] && reg_re;

  assign ctrl1_trigger_we = addr_hit[32] & reg_we & ~wr_err;
  assign ctrl1_trigger_wd = reg_wdata[0];

  assign ctrl1_clear_err_we = addr_hit[32] & reg_we & ~wr_err;
  assign ctrl1_clear_err_wd = reg_wdata[1];

  assign ctrl2_opsel_we = addr_hit[33] & reg_we & ~wr_err;
  assign ctrl2_opsel_wd = reg_wdata[2:0];
  assign ctrl2_opsel_re = addr_hit[33] && reg_re;

  assign ctrl2_delay_we = addr_hit[33] & reg_we & ~wr_err;
  assign ctrl2_delay_wd = reg_wdata[23:16];
  assign ctrl2_delay_re = addr_hit[33] && reg_re;

  assign status_re = addr_hit[34] && reg_re;

  // Read data return
  always_comb begin
    reg_rdata_next = '0;
    unique case (1'b1)
      addr_hit[0]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[1]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[2]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[3]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[4]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[5]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[6]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[7]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[8]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[9]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[10]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[11]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[12]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[13]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[14]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[15]: begin
        reg_rdata_next[31:0] = '0;
      end

      addr_hit[16]: begin
        reg_rdata_next[31:0] = result_0_qs;
      end

      addr_hit[17]: begin
        reg_rdata_next[31:0] = result_1_qs;
      end

      addr_hit[18]: begin
        reg_rdata_next[31:0] = result_2_qs;
      end

      addr_hit[19]: begin
        reg_rdata_next[31:0] = result_3_qs;
      end

      addr_hit[20]: begin
        reg_rdata_next[31:0] = result_4_qs;
      end

      addr_hit[21]: begin
        reg_rdata_next[31:0] = result_5_qs;
      end

      addr_hit[22]: begin
        reg_rdata_next[31:0] = result_6_qs;
      end

      addr_hit[23]: begin
        reg_rdata_next[31:0] = result_7_qs;
      end

      addr_hit[24]: begin
        reg_rdata_next[31:0] = result_8_qs;
      end

      addr_hit[25]: begin
        reg_rdata_next[31:0] = result_9_qs;
      end

      addr_hit[26]: begin
        reg_rdata_next[31:0] = result_10_qs;
      end

      addr_hit[27]: begin
        reg_rdata_next[31:0] = result_11_qs;
      end

      addr_hit[28]: begin
        reg_rdata_next[31:0] = result_12_qs;
      end

      addr_hit[29]: begin
        reg_rdata_next[31:0] = result_13_qs;
      end

      addr_hit[30]: begin
        reg_rdata_next[31:0] = result_14_qs;
      end

      addr_hit[31]: begin
        reg_rdata_next[31:0] = result_15_qs;
      end

      addr_hit[32]: begin
        reg_rdata_next[0] = '0;
        reg_rdata_next[1] = '0;
      end

      addr_hit[33]: begin
        reg_rdata_next[2:0] = ctrl2_opsel_qs;
        reg_rdata_next[23:16] = ctrl2_delay_qs;
      end

      addr_hit[34]: begin
        reg_rdata_next[1:0] = status_qs;
      end

      default: begin
        reg_rdata_next = '1;
      end
    endcase
  end

  // Assertions for Register Interface

  `ASSERT(en2addrHit, (reg_we || reg_re) |-> $onehot0(addr_hit))


endmodule
