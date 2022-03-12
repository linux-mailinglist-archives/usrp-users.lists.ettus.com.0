Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F524D6D00
	for <lists+usrp-users@lfdr.de>; Sat, 12 Mar 2022 07:19:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30ABD384D48
	for <lists+usrp-users@lfdr.de>; Sat, 12 Mar 2022 01:19:29 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YCoauFBc";
	dkim-atps=neutral
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 4AF38384854
	for <usrp-users@lists.ettus.com>; Sat, 12 Mar 2022 01:18:25 -0500 (EST)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-2dc28791ecbso114995017b3.4
        for <usrp-users@lists.ettus.com>; Fri, 11 Mar 2022 22:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=STxqxtDJFVP1NwWxXbSkX1wlBLZfQCZ9qxyrlaHXu00=;
        b=YCoauFBcMqoxsU7Xr9zXvKktaHf7bO1Vz+Xn0nK/fVAYeagpphS2Y6cUELd2paDqqV
         tv8YPovUJSNkhfAZjPU69isqgT1wriJ3emLaadJalGzSFJsGob6Ns4BmklzUM2TETEhN
         yQPj0hax30x/ih1MOa3oYBT+kG/Y4+FPliToOzthFbPfaXHyHkT9y1maPtrcNv6PeIEN
         L34UN5v+5C3sXy2m6sjVQXGZSOVVw+IKROfQifxvq3d1cfJ+wWyd7G00bQJ+elHdQ07b
         qkBXpn8eUzm1XRIMpvvjOhfbxZQnJ6yvB/42j9fQMsiJejazdJI0q2uGgcI58nHJy80g
         hCKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=STxqxtDJFVP1NwWxXbSkX1wlBLZfQCZ9qxyrlaHXu00=;
        b=KIZTCpBAVsfH/YA+Inztb/4t0fcfmsFaH42P2kQh5jjurx772D5glvMMOhS69WaR9e
         uuQLdiIYtDyWOPmzKmgkXvF+faPiSurKomNiJ7lWmDzi1yxZ4SG6lAAuf2OLEqA15XTr
         zx9bQRxBX9L3KTGVZ0BCbrXT0FEjk+Dz1msaFv2M88b165Fpt8Ob93zcmlwSw6Jm8PAn
         8hCaW7LZ7EqbfxYfjVDCSf6LFJdD975xsBLbUU1jmgmv9Cn4gaXf7BNGM89qY4PDfKiN
         xBRUByox/qLoagzM1CTKjehQs9rwqsnAMoH8HhzvkPXHAA0DCmThoii+SLaKG9coTXDj
         Iuuw==
X-Gm-Message-State: AOAM531VW33HFBSTNwH12JnUFaPAyWOfLZq38iiiRgKkP6WhAThBORSX
	AhaVIfJ+qRMOBqY5siWzBk/JNeFOgvbDzv8EYWqKj6XGXIa8uKr2VNo=
X-Google-Smtp-Source: ABdhPJxE7uYxDiRDPbhOE3LOnkANGEE2PAn5OKpFAIRAHfVf1fqpDcVf2lUO/S/6o3EGQrC1EqrF0EwOm6dVOTdq6Ps=
X-Received: by 2002:a0d:d644:0:b0:2dc:9ab:d70e with SMTP id
 y65-20020a0dd644000000b002dc09abd70emr11259453ywd.316.1647065903346; Fri, 11
 Mar 2022 22:18:23 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sat, 12 Mar 2022 09:48:11 +0330
Message-ID: <CAA=S3Puz9A3_4QPhfzfKHMRk_j2iz+g_J4-5nEyXqk996YR3FQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: Z5G3ZMWO4MBY5KQIF3ODOVRFP7WCTKF7
X-Message-ID-Hash: Z5G3ZMWO4MBY5KQIF3ODOVRFP7WCTKF7
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] When I create a rfnoc block with rfnocmodtool, the block has default code...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5G3ZMWO4MBY5KQIF3ODOVRFP7WCTKF7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0050963517802109856=="

--===============0050963517802109856==
Content-Type: multipart/alternative; boundary="000000000000173a3605d9ff6a0c"

--000000000000173a3605d9ff6a0c
Content-Type: text/plain; charset="UTF-8"

When I create an RFNOC block with rfnocmodtool, the block has a default
code...
My question is what to do this default code for RFNOC block? It is a  gain
block? It is a buffer block?
What is this code? can anyone guide me...........

//
// Copyright 2022 <+YOU OR YOUR COMPANY+>.
//
// This is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// This software is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this software; see the file COPYING. If not, write to
// the Free Software Foundation, Inc., 51 Franklin Street,
// Boston, MA 02110-1301, USA.
//

//
// Module: rfnoc_block_gain
//
// Description:
//
// This is a skeleton file for a RFNoC block. It passes incoming samples
// to the output without any modification. A read/write user register is
// instantiated, but left unused.
//
// Parameters:
//
// THIS_PORTID : Control crossbar port to which this block is connected
// CHDR_W : AXIS-CHDR data bus width
// MTU : Maximum transmission unit (i.e., maximum packet size in
// CHDR words is 2**MTU).
//

`default_nettype none


module rfnoc_block_gain #(
parameter [9:0] THIS_PORTID = 10'd0,
parameter CHDR_W = 64,
parameter [5:0] MTU = 10
)(
// RFNoC Framework Clocks and Resets
input wire rfnoc_chdr_clk,
input wire rfnoc_ctrl_clk,
input wire ce_clk,
// RFNoC Backend Interface
input wire [511:0] rfnoc_core_config,
output wire [511:0] rfnoc_core_status,
// AXIS-CHDR Input Ports (from framework)
input wire [(1)*CHDR_W-1:0] s_rfnoc_chdr_tdata,
input wire [(1)-1:0] s_rfnoc_chdr_tlast,
input wire [(1)-1:0] s_rfnoc_chdr_tvalid,
output wire [(1)-1:0] s_rfnoc_chdr_tready,
// AXIS-CHDR Output Ports (to framework)
output wire [(1)*CHDR_W-1:0] m_rfnoc_chdr_tdata,
output wire [(1)-1:0] m_rfnoc_chdr_tlast,
output wire [(1)-1:0] m_rfnoc_chdr_tvalid,
input wire [(1)-1:0] m_rfnoc_chdr_tready,
// AXIS-Ctrl Input Port (from framework)
input wire [31:0] s_rfnoc_ctrl_tdata,
input wire s_rfnoc_ctrl_tlast,
input wire s_rfnoc_ctrl_tvalid,
output wire s_rfnoc_ctrl_tready,
// AXIS-Ctrl Output Port (to framework)
output wire [31:0] m_rfnoc_ctrl_tdata,
output wire m_rfnoc_ctrl_tlast,
output wire m_rfnoc_ctrl_tvalid,
input wire m_rfnoc_ctrl_tready
);

//---------------------------------------------------------------------------
// Signal Declarations
//---------------------------------------------------------------------------

// Clocks and Resets
wire ctrlport_clk;
wire ctrlport_rst;
wire axis_data_clk;
wire axis_data_rst;
// CtrlPort Master
wire m_ctrlport_req_wr;
wire m_ctrlport_req_rd;
wire [19:0] m_ctrlport_req_addr;
wire [31:0] m_ctrlport_req_data;
reg m_ctrlport_resp_ack;
reg [31:0] m_ctrlport_resp_data;
// Payload Stream to User Logic: in
wire [32*1-1:0] m_in_payload_tdata;
wire [1-1:0] m_in_payload_tkeep;
wire m_in_payload_tlast;
wire m_in_payload_tvalid;
wire m_in_payload_tready;
// Context Stream to User Logic: in
wire [CHDR_W-1:0] m_in_context_tdata;
wire [3:0] m_in_context_tuser;
wire m_in_context_tlast;
wire m_in_context_tvalid;
wire m_in_context_tready;
// Payload Stream from User Logic: out
wire [32*1-1:0] s_out_payload_tdata;
wire [0:0] s_out_payload_tkeep;
wire s_out_payload_tlast;
wire s_out_payload_tvalid;
wire s_out_payload_tready;
// Context Stream from User Logic: out
wire [CHDR_W-1:0] s_out_context_tdata;
wire [3:0] s_out_context_tuser;
wire s_out_context_tlast;
wire s_out_context_tvalid;
wire s_out_context_tready;

//---------------------------------------------------------------------------
// NoC Shell
//---------------------------------------------------------------------------

noc_shell_gain #(
.CHDR_W (CHDR_W),
.THIS_PORTID (THIS_PORTID),
.MTU (MTU)
) noc_shell_gain_i (
//---------------------
// Framework Interface
//---------------------

// Clock Inputs
.rfnoc_chdr_clk (rfnoc_chdr_clk),
.rfnoc_ctrl_clk (rfnoc_ctrl_clk),
// Reset Outputs
.rfnoc_chdr_rst (),
.rfnoc_ctrl_rst (),
// RFNoC Backend Interface
.rfnoc_core_config (rfnoc_core_config),
.rfnoc_core_status (rfnoc_core_status),
// CHDR Input Ports (from framework)
.s_rfnoc_chdr_tdata (s_rfnoc_chdr_tdata),
.s_rfnoc_chdr_tlast (s_rfnoc_chdr_tlast),
.s_rfnoc_chdr_tvalid (s_rfnoc_chdr_tvalid),
.s_rfnoc_chdr_tready (s_rfnoc_chdr_tready),
// CHDR Output Ports (to framework)
.m_rfnoc_chdr_tdata (m_rfnoc_chdr_tdata),
.m_rfnoc_chdr_tlast (m_rfnoc_chdr_tlast),
.m_rfnoc_chdr_tvalid (m_rfnoc_chdr_tvalid),
.m_rfnoc_chdr_tready (m_rfnoc_chdr_tready),
// AXIS-Ctrl Input Port (from framework)
.s_rfnoc_ctrl_tdata (s_rfnoc_ctrl_tdata),
.s_rfnoc_ctrl_tlast (s_rfnoc_ctrl_tlast),
.s_rfnoc_ctrl_tvalid (s_rfnoc_ctrl_tvalid),
.s_rfnoc_ctrl_tready (s_rfnoc_ctrl_tready),
// AXIS-Ctrl Output Port (to framework)
.m_rfnoc_ctrl_tdata (m_rfnoc_ctrl_tdata),
.m_rfnoc_ctrl_tlast (m_rfnoc_ctrl_tlast),
.m_rfnoc_ctrl_tvalid (m_rfnoc_ctrl_tvalid),
.m_rfnoc_ctrl_tready (m_rfnoc_ctrl_tready),

//---------------------
// Client Interface
//---------------------

// CtrlPort Clock and Reset
.ctrlport_clk (ctrlport_clk),
.ctrlport_rst (ctrlport_rst),
// CtrlPort Master
.m_ctrlport_req_wr (m_ctrlport_req_wr),
.m_ctrlport_req_rd (m_ctrlport_req_rd),
.m_ctrlport_req_addr (m_ctrlport_req_addr),
.m_ctrlport_req_data (m_ctrlport_req_data),
.m_ctrlport_resp_ack (m_ctrlport_resp_ack),
.m_ctrlport_resp_data (m_ctrlport_resp_data),

// AXI-Stream Payload Context Clock and Reset
.axis_data_clk (axis_data_clk),
.axis_data_rst (axis_data_rst),
// Payload Stream to User Logic: in
.m_in_payload_tdata (m_in_payload_tdata),
.m_in_payload_tkeep (m_in_payload_tkeep),
.m_in_payload_tlast (m_in_payload_tlast),
.m_in_payload_tvalid (m_in_payload_tvalid),
.m_in_payload_tready (m_in_payload_tready),
// Context Stream to User Logic: in
.m_in_context_tdata (m_in_context_tdata),
.m_in_context_tuser (m_in_context_tuser),
.m_in_context_tlast (m_in_context_tlast),
.m_in_context_tvalid (m_in_context_tvalid),
.m_in_context_tready (m_in_context_tready),
// Payload Stream from User Logic: out
.s_out_payload_tdata (s_out_payload_tdata),
.s_out_payload_tkeep (s_out_payload_tkeep),
.s_out_payload_tlast (s_out_payload_tlast),
.s_out_payload_tvalid (s_out_payload_tvalid),
.s_out_payload_tready (s_out_payload_tready),
// Context Stream from User Logic: out
.s_out_context_tdata (s_out_context_tdata),
.s_out_context_tuser (s_out_context_tuser),
.s_out_context_tlast (s_out_context_tlast),
.s_out_context_tvalid (s_out_context_tvalid),
.s_out_context_tready (s_out_context_tready)
);

//---------------------------------------------------------------------------
// User Registers
//---------------------------------------------------------------------------
//
// There's only one register now, but we'll structure the register code to
// make it easier to add more registers later.
// Register use the ctrlport_clk clock.
//
//---------------------------------------------------------------------------

// Note: Register addresses increment by 4
localparam REG_USER_ADDR = 0; // Address for example user register
localparam REG_USER_DEFAULT = 0; // Default value for user register

reg [31:0] reg_user = REG_USER_DEFAULT;

always @(posedge ctrlport_clk) begin
if (ctrlport_rst) begin
reg_user = REG_USER_DEFAULT;
end else begin
// Default assignment
m_ctrlport_resp_ack <= 0;

// Read user register
if (m_ctrlport_req_rd) begin // Read request
case (m_ctrlport_req_addr)
REG_USER_ADDR: begin
m_ctrlport_resp_ack <= 1;
m_ctrlport_resp_data <= reg_user;
end
endcase
end

// Write user register
if (m_ctrlport_req_wr) begin // Write requst
case (m_ctrlport_req_addr)
REG_USER_ADDR: begin
m_ctrlport_resp_ack <= 1;
reg_user <= m_ctrlport_req_data[31:0];
end
endcase
end
end
end

//---------------------------------------------------------------------------
// User Logic
//---------------------------------------------------------------------------
//
// User logic uses the axis_data_clk clock. While the registers above use
the
// ctrlport_clk clock, in the block YAML configuration file both the control
// and data interfaces are specified to use the rfnoc_chdr clock. Therefore,
// we do not need to cross clock domains when using user registers with
// user logic.
//
//---------------------------------------------------------------------------

// Sample data, pass through unchanged
assign s_out_payload_tdata = m_in_payload_tdata;
assign s_out_payload_tlast = m_in_payload_tlast;
assign s_out_payload_tvalid = m_in_payload_tvalid;
assign m_in_payload_tready = s_out_payload_tready;

// Context data, we are not doing anything with the context
// (the CHDR header info) so we can simply pass through unchanged
assign s_out_context_tdata = m_in_context_tdata;
assign s_out_context_tuser = m_in_context_tuser;
assign s_out_context_tlast = m_in_context_tlast;
assign s_out_context_tvalid = m_in_context_tvalid;
assign m_in_context_tready = s_out_context_tready;

// Only 1-sample per clock, so tkeep should always be asserted
assign s_out_payload_tkeep = 1'b1;

endmodule // rfnoc_block_gain

`default_nettype wire

--000000000000173a3605d9ff6a0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When I create an RFNOC block with rfnocmodtool, the block =
has a default code...<br><div>My question is what to do this default code f=
or RFNOC block? It is a=C2=A0 gain block? It is a buffer block?</div><div>W=
hat is this code? can anyone guide me...........</div><div><br></div><div><=
div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot=
;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-size:14px;l=
ine-height:19px;white-space:pre"><div><span style=3D"color:rgb(0,128,0)">//=
</span></div><div><span style=3D"color:rgb(0,128,0)">// Copyright 2022 &lt;=
+YOU OR YOUR COMPANY+&gt;.</span></div><div><span style=3D"color:rgb(0,128,=
0)">// </span></div><div><span style=3D"color:rgb(0,128,0)">// This is free=
 software; you can redistribute it and/or modify</span></div><div><span sty=
le=3D"color:rgb(0,128,0)">// it under the terms of the GNU General Public L=
icense as published by</span></div><div><span style=3D"color:rgb(0,128,0)">=
// the Free Software Foundation; either version 3, or (at your option)</spa=
n></div><div><span style=3D"color:rgb(0,128,0)">// any later version.</span=
></div><div><span style=3D"color:rgb(0,128,0)">// </span></div><div><span s=
tyle=3D"color:rgb(0,128,0)">// This software is distributed in the hope tha=
t it will be useful,</span></div><div><span style=3D"color:rgb(0,128,0)">//=
 but WITHOUT ANY WARRANTY; without even the implied warranty of</span></div=
><div><span style=3D"color:rgb(0,128,0)">// MERCHANTABILITY or FITNESS FOR =
A PARTICULAR PURPOSE.  See the</span></div><div><span style=3D"color:rgb(0,=
128,0)">// GNU General Public License for more details.</span></div><div><s=
pan style=3D"color:rgb(0,128,0)">// </span></div><div><span style=3D"color:=
rgb(0,128,0)">// You should have received a copy of the GNU General Public =
License</span></div><div><span style=3D"color:rgb(0,128,0)">// along with t=
his software; see the file COPYING.  If not, write to</span></div><div><spa=
n style=3D"color:rgb(0,128,0)">// the Free Software Foundation, Inc., 51 Fr=
anklin Street,</span></div><div><span style=3D"color:rgb(0,128,0)">// Bosto=
n, MA 02110-1301, USA.</span></div><div><span style=3D"color:rgb(0,128,0)">=
//</span></div><br><div><span style=3D"color:rgb(0,128,0)">//</span></div><=
div><span style=3D"color:rgb(0,128,0)">// Module: rfnoc_block_gain</span></=
div><div><span style=3D"color:rgb(0,128,0)">//</span></div><div><span style=
=3D"color:rgb(0,128,0)">// Description:</span></div><div><span style=3D"col=
or:rgb(0,128,0)">//</span></div><div><span style=3D"color:rgb(0,128,0)">// =
  This is a skeleton file for a RFNoC block. It passes incoming samples</sp=
an></div><div><span style=3D"color:rgb(0,128,0)">//   to the output without=
 any modification. A read/write user register is</span></div><div><span sty=
le=3D"color:rgb(0,128,0)">//   instantiated, but left unused.</span></div><=
div><span style=3D"color:rgb(0,128,0)">//</span></div><div><span style=3D"c=
olor:rgb(0,128,0)">// Parameters:</span></div><div><span style=3D"color:rgb=
(0,128,0)">//</span></div><div><span style=3D"color:rgb(0,128,0)">//   THIS=
_PORTID : Control crossbar port to which this block is connected</span></di=
v><div><span style=3D"color:rgb(0,128,0)">//   CHDR_W      : AXIS-CHDR data=
 bus width</span></div><div><span style=3D"color:rgb(0,128,0)">//   MTU    =
     : Maximum transmission unit (i.e., maximum packet size in</span></div>=
<div><span style=3D"color:rgb(0,128,0)">//                 CHDR words is 2*=
*MTU).</span></div><div><span style=3D"color:rgb(0,128,0)">//</span></div><=
br><div><span style=3D"color:rgb(0,0,255)">`default_nettype</span> none</di=
v><br><br><div><span style=3D"color:rgb(0,0,255)">module</span> rfnoc_block=
_gain #(</div><div>  <span style=3D"color:rgb(0,0,255)">parameter</span> [<=
span style=3D"color:rgb(9,134,88)">9</span>:<span style=3D"color:rgb(9,134,=
88)">0</span>] THIS_PORTID     =3D <span style=3D"color:rgb(9,134,88)">10&#=
39;d0</span>,</div><div>  <span style=3D"color:rgb(0,0,255)">parameter</spa=
n>       CHDR_W          =3D <span style=3D"color:rgb(9,134,88)">64</span>,=
</div><div>  <span style=3D"color:rgb(0,0,255)">parameter</span> [<span sty=
le=3D"color:rgb(9,134,88)">5</span>:<span style=3D"color:rgb(9,134,88)">0</=
span>] MTU             =3D <span style=3D"color:rgb(9,134,88)">10</span></d=
iv><div>)(</div><div>  <span style=3D"color:rgb(0,128,0)">// RFNoC Framewor=
k Clocks and Resets</span></div><div>  <span style=3D"color:rgb(0,0,255)">i=
nput</span>  <span style=3D"color:rgb(0,0,255)">wire</span>                =
   rfnoc_chdr_clk,</div><div>  <span style=3D"color:rgb(0,0,255)">input</sp=
an>  <span style=3D"color:rgb(0,0,255)">wire</span>                   rfnoc=
_ctrl_clk,</div><div>  <span style=3D"color:rgb(0,0,255)">input</span>  <sp=
an style=3D"color:rgb(0,0,255)">wire</span>                   ce_clk,</div>=
<div>  <span style=3D"color:rgb(0,128,0)">// RFNoC Backend Interface</span>=
</div><div>  <span style=3D"color:rgb(0,0,255)">input</span>  <span style=
=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">51=
1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]           rfnoc_core=
_config,</div><div>  <span style=3D"color:rgb(0,0,255)">output</span> <span=
 style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,8=
8)">511</span>:<span style=3D"color:rgb(9,134,88)">0</span>]           rfno=
c_core_status,</div><div>  <span style=3D"color:rgb(0,128,0)">// AXIS-CHDR =
Input Ports (from framework)</span></div><div>  <span style=3D"color:rgb(0,=
0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [(<spa=
n style=3D"color:rgb(9,134,88)">1</span>)*CHDR_W-<span style=3D"color:rgb(9=
,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]  s_rfnoc_c=
hdr_tdata,</div><div>  <span style=3D"color:rgb(0,0,255)">input</span>  <sp=
an style=3D"color:rgb(0,0,255)">wire</span> [(<span style=3D"color:rgb(9,13=
4,88)">1</span>)-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=
=3D"color:rgb(9,134,88)">0</span>]         s_rfnoc_chdr_tlast,</div><div>  =
<span style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0=
,0,255)">wire</span> [(<span style=3D"color:rgb(9,134,88)">1</span>)-<span =
style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">=
0</span>]         s_rfnoc_chdr_tvalid,</div><div>  <span style=3D"color:rgb=
(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span> [(<=
span style=3D"color:rgb(9,134,88)">1</span>)-<span style=3D"color:rgb(9,134=
,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]         s_rfno=
c_chdr_tready,</div><div>  <span style=3D"color:rgb(0,128,0)">// AXIS-CHDR =
Output Ports (to framework)</span></div><div>  <span style=3D"color:rgb(0,0=
,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span> [(<span=
 style=3D"color:rgb(9,134,88)">1</span>)*CHDR_W-<span style=3D"color:rgb(9,=
134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]  m_rfnoc_ch=
dr_tdata,</div><div>  <span style=3D"color:rgb(0,0,255)">output</span> <spa=
n style=3D"color:rgb(0,0,255)">wire</span> [(<span style=3D"color:rgb(9,134=
,88)">1</span>)-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D=
"color:rgb(9,134,88)">0</span>]         m_rfnoc_chdr_tlast,</div><div>  <sp=
an style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,=
255)">wire</span> [(<span style=3D"color:rgb(9,134,88)">1</span>)-<span sty=
le=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</=
span>]         m_rfnoc_chdr_tvalid,</div><div>  <span style=3D"color:rgb(0,=
0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [(<spa=
n style=3D"color:rgb(9,134,88)">1</span>)-<span style=3D"color:rgb(9,134,88=
)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]         m_rfnoc_c=
hdr_tready,</div><div>  <span style=3D"color:rgb(0,128,0)">// AXIS-Ctrl Inp=
ut Port (from framework)</span></div><div>  <span style=3D"color:rgb(0,0,25=
5)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span sty=
le=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0<=
/span>]            s_rfnoc_ctrl_tdata,</div><div>  <span style=3D"color:rgb=
(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span>    =
               s_rfnoc_ctrl_tlast,</div><div>  <span style=3D"color:rgb(0,0=
,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span>        =
           s_rfnoc_ctrl_tvalid,</div><div>  <span style=3D"color:rgb(0,0,25=
5)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>           =
        s_rfnoc_ctrl_tready,</div><div>  <span style=3D"color:rgb(0,128,0)"=
>// AXIS-Ctrl Output Port (to framework)</span></div><div>  <span style=3D"=
color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</=
span> [<span style=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:r=
gb(9,134,88)">0</span>]            m_rfnoc_ctrl_tdata,</div><div>  <span st=
yle=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)"=
>wire</span>                   m_rfnoc_ctrl_tlast,</div><div>  <span style=
=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wi=
re</span>                   m_rfnoc_ctrl_tvalid,</div><div>  <span style=3D=
"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire<=
/span>                   m_rfnoc_ctrl_tready</div><div>);</div><br><div>  <=
span style=3D"color:rgb(0,128,0)">//---------------------------------------=
------------------------------------</span></div><div>  <span style=3D"colo=
r:rgb(0,128,0)">// Signal Declarations</span></div><div>  <span style=3D"co=
lor:rgb(0,128,0)">//-------------------------------------------------------=
--------------------</span></div><br><div>  <span style=3D"color:rgb(0,128,=
0)">// Clocks and Resets</span></div><div>  <span style=3D"color:rgb(0,0,25=
5)">wire</span>               ctrlport_clk;</div><div>  <span style=3D"colo=
r:rgb(0,0,255)">wire</span>               ctrlport_rst;</div><div>  <span s=
tyle=3D"color:rgb(0,0,255)">wire</span>               axis_data_clk;</div><=
div>  <span style=3D"color:rgb(0,0,255)">wire</span>               axis_dat=
a_rst;</div><div>  <span style=3D"color:rgb(0,128,0)">// CtrlPort Master</s=
pan></div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>            =
   m_ctrlport_req_wr;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</=
span>               m_ctrlport_req_rd;</div><div>  <span style=3D"color:rgb=
(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">19</span>:<span=
 style=3D"color:rgb(9,134,88)">0</span>]        m_ctrlport_req_addr;</div><=
div>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:=
rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0</span>]     =
   m_ctrlport_req_data;</div><div>  <span style=3D"color:rgb(0,0,255)">reg<=
/span>                m_ctrlport_resp_ack;</div><div>  <span style=3D"color=
:rgb(0,0,255)">reg</span>  [<span style=3D"color:rgb(9,134,88)">31</span>:<=
span style=3D"color:rgb(9,134,88)">0</span>]        m_ctrlport_resp_data;</=
div><div>  <span style=3D"color:rgb(0,128,0)">// Payload Stream to User Log=
ic: in</span></div><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [<=
span style=3D"color:rgb(9,134,88)">32</span>*<span style=3D"color:rgb(9,134=
,88)">1</span>-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"=
color:rgb(9,134,88)">0</span>]    m_in_payload_tdata;</div><div>  <span sty=
le=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">=
1</span>-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:=
rgb(9,134,88)">0</span>]       m_in_payload_tkeep;</div><div>  <span style=
=3D"color:rgb(0,0,255)">wire</span>               m_in_payload_tlast;</div>=
<div>  <span style=3D"color:rgb(0,0,255)">wire</span>               m_in_pa=
yload_tvalid;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>   =
            m_in_payload_tready;</div><div>  <span style=3D"color:rgb(0,128=
,0)">// Context Stream to User Logic: in</span></div><div>  <span style=3D"=
color:rgb(0,0,255)">wire</span> [CHDR_W-<span style=3D"color:rgb(9,134,88)"=
>1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]  m_in_context_tdata=
;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=
=3D"color:rgb(9,134,88)">3</span>:<span style=3D"color:rgb(9,134,88)">0</sp=
an>]         m_in_context_tuser;</div><div>  <span style=3D"color:rgb(0,0,2=
55)">wire</span>               m_in_context_tlast;</div><div>  <span style=
=3D"color:rgb(0,0,255)">wire</span>               m_in_context_tvalid;</div=
><div>  <span style=3D"color:rgb(0,0,255)">wire</span>               m_in_c=
ontext_tready;</div><div>  <span style=3D"color:rgb(0,128,0)">// Payload St=
ream from User Logic: out</span></div><div>  <span style=3D"color:rgb(0,0,2=
55)">wire</span> [<span style=3D"color:rgb(9,134,88)">32</span>*<span style=
=3D"color:rgb(9,134,88)">1</span>-<span style=3D"color:rgb(9,134,88)">1</sp=
an>:<span style=3D"color:rgb(9,134,88)">0</span>]    s_out_payload_tdata;</=
div><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"c=
olor:rgb(9,134,88)">0</span>:<span style=3D"color:rgb(9,134,88)">0</span>] =
        s_out_payload_tkeep;</div><div>  <span style=3D"color:rgb(0,0,255)"=
>wire</span>               s_out_payload_tlast;</div><div>  <span style=3D"=
color:rgb(0,0,255)">wire</span>               s_out_payload_tvalid;</div><d=
iv>  <span style=3D"color:rgb(0,0,255)">wire</span>               s_out_pay=
load_tready;</div><div>  <span style=3D"color:rgb(0,128,0)">// Context Stre=
am from User Logic: out</span></div><div>  <span style=3D"color:rgb(0,0,255=
)">wire</span> [CHDR_W-<span style=3D"color:rgb(9,134,88)">1</span>:<span s=
tyle=3D"color:rgb(9,134,88)">0</span>]  s_out_context_tdata;</div><div>  <s=
pan style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,13=
4,88)">3</span>:<span style=3D"color:rgb(9,134,88)">0</span>]         s_out=
_context_tuser;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span> =
              s_out_context_tlast;</div><div>  <span style=3D"color:rgb(0,0=
,255)">wire</span>               s_out_context_tvalid;</div><div>  <span st=
yle=3D"color:rgb(0,0,255)">wire</span>               s_out_context_tready;<=
/div><br><div>  <span style=3D"color:rgb(0,128,0)">//----------------------=
-----------------------------------------------------</span></div><div>  <s=
pan style=3D"color:rgb(0,128,0)">// NoC Shell</span></div><div>  <span styl=
e=3D"color:rgb(0,128,0)">//------------------------------------------------=
---------------------------</span></div><br><div>  <span style=3D"color:rgb=
(128,0,0)">noc_shell_gain</span> #(</div><div>    .CHDR_W      (CHDR_W),</d=
iv><div>    .THIS_PORTID (THIS_PORTID),</div><div>    .MTU         (MTU)</d=
iv><div>  ) <span style=3D"color:rgb(128,0,0)">noc_shell_gain_i</span> (</d=
iv><div>    <span style=3D"color:rgb(0,128,0)">//---------------------</spa=
n></div><div>    <span style=3D"color:rgb(0,128,0)">// Framework Interface<=
/span></div><div>    <span style=3D"color:rgb(0,128,0)">//-----------------=
----</span></div><br><div>    <span style=3D"color:rgb(0,128,0)">// Clock I=
nputs</span></div><div>    .rfnoc_chdr_clk      (rfnoc_chdr_clk),</div><div=
>    .rfnoc_ctrl_clk      (rfnoc_ctrl_clk),</div><div>    <span style=3D"co=
lor:rgb(0,128,0)">// Reset Outputs</span></div><div>    .rfnoc_chdr_rst    =
  (),</div><div>    .rfnoc_ctrl_rst      (),</div><div>    <span style=3D"c=
olor:rgb(0,128,0)">// RFNoC Backend Interface</span></div><div>    .rfnoc_c=
ore_config   (rfnoc_core_config),</div><div>    .rfnoc_core_status   (rfnoc=
_core_status),</div><div>    <span style=3D"color:rgb(0,128,0)">// CHDR Inp=
ut Ports  (from framework)</span></div><div>    .s_rfnoc_chdr_tdata  (s_rfn=
oc_chdr_tdata),</div><div>    .s_rfnoc_chdr_tlast  (s_rfnoc_chdr_tlast),</d=
iv><div>    .s_rfnoc_chdr_tvalid (s_rfnoc_chdr_tvalid),</div><div>    .s_rf=
noc_chdr_tready (s_rfnoc_chdr_tready),</div><div>    <span style=3D"color:r=
gb(0,128,0)">// CHDR Output Ports (to framework)</span></div><div>    .m_rf=
noc_chdr_tdata  (m_rfnoc_chdr_tdata),</div><div>    .m_rfnoc_chdr_tlast  (m=
_rfnoc_chdr_tlast),</div><div>    .m_rfnoc_chdr_tvalid (m_rfnoc_chdr_tvalid=
),</div><div>    .m_rfnoc_chdr_tready (m_rfnoc_chdr_tready),</div><div>    =
<span style=3D"color:rgb(0,128,0)">// AXIS-Ctrl Input Port (from framework)=
</span></div><div>    .s_rfnoc_ctrl_tdata  (s_rfnoc_ctrl_tdata),</div><div>=
    .s_rfnoc_ctrl_tlast  (s_rfnoc_ctrl_tlast),</div><div>    .s_rfnoc_ctrl_=
tvalid (s_rfnoc_ctrl_tvalid),</div><div>    .s_rfnoc_ctrl_tready (s_rfnoc_c=
trl_tready),</div><div>    <span style=3D"color:rgb(0,128,0)">// AXIS-Ctrl =
Output Port (to framework)</span></div><div>    .m_rfnoc_ctrl_tdata  (m_rfn=
oc_ctrl_tdata),</div><div>    .m_rfnoc_ctrl_tlast  (m_rfnoc_ctrl_tlast),</d=
iv><div>    .m_rfnoc_ctrl_tvalid (m_rfnoc_ctrl_tvalid),</div><div>    .m_rf=
noc_ctrl_tready (m_rfnoc_ctrl_tready),</div><br><div>    <span style=3D"col=
or:rgb(0,128,0)">//---------------------</span></div><div>    <span style=
=3D"color:rgb(0,128,0)">// Client Interface</span></div><div>    <span styl=
e=3D"color:rgb(0,128,0)">//---------------------</span></div><br><div>    <=
span style=3D"color:rgb(0,128,0)">// CtrlPort Clock and Reset</span></div><=
div>    .ctrlport_clk         (ctrlport_clk),</div><div>    .ctrlport_rst  =
       (ctrlport_rst),</div><div>    <span style=3D"color:rgb(0,128,0)">// =
CtrlPort Master</span></div><div>    .m_ctrlport_req_wr    (m_ctrlport_req_=
wr),</div><div>    .m_ctrlport_req_rd    (m_ctrlport_req_rd),</div><div>   =
 .m_ctrlport_req_addr  (m_ctrlport_req_addr),</div><div>    .m_ctrlport_req=
_data  (m_ctrlport_req_data),</div><div>    .m_ctrlport_resp_ack  (m_ctrlpo=
rt_resp_ack),</div><div>    .m_ctrlport_resp_data (m_ctrlport_resp_data),</=
div><br><div>    <span style=3D"color:rgb(0,128,0)">// AXI-Stream Payload C=
ontext Clock and Reset</span></div><div>    .axis_data_clk        (axis_dat=
a_clk),</div><div>    .axis_data_rst        (axis_data_rst),</div><div>    =
<span style=3D"color:rgb(0,128,0)">// Payload Stream to User Logic: in</spa=
n></div><div>    .m_in_payload_tdata   (m_in_payload_tdata),</div><div>    =
.m_in_payload_tkeep   (m_in_payload_tkeep),</div><div>    .m_in_payload_tla=
st   (m_in_payload_tlast),</div><div>    .m_in_payload_tvalid  (m_in_payloa=
d_tvalid),</div><div>    .m_in_payload_tready  (m_in_payload_tready),</div>=
<div>    <span style=3D"color:rgb(0,128,0)">// Context Stream to User Logic=
: in</span></div><div>    .m_in_context_tdata   (m_in_context_tdata),</div>=
<div>    .m_in_context_tuser   (m_in_context_tuser),</div><div>    .m_in_co=
ntext_tlast   (m_in_context_tlast),</div><div>    .m_in_context_tvalid  (m_=
in_context_tvalid),</div><div>    .m_in_context_tready  (m_in_context_tread=
y),</div><div>    <span style=3D"color:rgb(0,128,0)">// Payload Stream from=
 User Logic: out</span></div><div>    .s_out_payload_tdata  (s_out_payload_=
tdata),</div><div>    .s_out_payload_tkeep  (s_out_payload_tkeep),</div><di=
v>    .s_out_payload_tlast  (s_out_payload_tlast),</div><div>    .s_out_pay=
load_tvalid (s_out_payload_tvalid),</div><div>    .s_out_payload_tready (s_=
out_payload_tready),</div><div>    <span style=3D"color:rgb(0,128,0)">// Co=
ntext Stream from User Logic: out</span></div><div>    .s_out_context_tdata=
  (s_out_context_tdata),</div><div>    .s_out_context_tuser  (s_out_context=
_tuser),</div><div>    .s_out_context_tlast  (s_out_context_tlast),</div><d=
iv>    .s_out_context_tvalid (s_out_context_tvalid),</div><div>    .s_out_c=
ontext_tready (s_out_context_tready)</div><div>  );</div><br><div>  <span s=
tyle=3D"color:rgb(0,128,0)">//---------------------------------------------=
------------------------------</span></div><div>  <span style=3D"color:rgb(=
0,128,0)">// User Registers</span></div><div>  <span style=3D"color:rgb(0,1=
28,0)">//------------------------------------------------------------------=
---------</span></div><div>  <span style=3D"color:rgb(0,128,0)">//</span></=
div><div>  <span style=3D"color:rgb(0,128,0)">// There&#39;s only one regis=
ter now, but we&#39;ll structure the register code to</span></div><div>  <s=
pan style=3D"color:rgb(0,128,0)">// make it easier to add more registers la=
ter.</span></div><div>  <span style=3D"color:rgb(0,128,0)">// Register use =
the ctrlport_clk clock.</span></div><div>  <span style=3D"color:rgb(0,128,0=
)">//</span></div><div>  <span style=3D"color:rgb(0,128,0)">//-------------=
--------------------------------------------------------------</span></div>=
<br><div>  <span style=3D"color:rgb(0,128,0)">// Note: Register addresses i=
ncrement by 4</span></div><div>  <span style=3D"color:rgb(0,0,255)">localpa=
ram</span> REG_USER_ADDR    =3D <span style=3D"color:rgb(9,134,88)">0</span=
>; <span style=3D"color:rgb(0,128,0)">// Address for example user register<=
/span></div><div>  <span style=3D"color:rgb(0,0,255)">localparam</span> REG=
_USER_DEFAULT =3D <span style=3D"color:rgb(9,134,88)">0</span>; <span style=
=3D"color:rgb(0,128,0)">// Default value for user register</span></div><br>=
<div>  <span style=3D"color:rgb(0,0,255)">reg</span> [<span style=3D"color:=
rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0</span>] reg_=
user =3D REG_USER_DEFAULT;</div><br><div>  <span style=3D"color:rgb(0,0,255=
)">always</span> @(<span style=3D"color:rgb(0,0,255)">posedge</span> ctrlpo=
rt_clk) <span style=3D"color:rgb(0,0,255)">begin</span></div><div>    <span=
 style=3D"color:rgb(0,0,255)">if</span> (ctrlport_rst) <span style=3D"color=
:rgb(0,0,255)">begin</span></div><div>      reg_user =3D REG_USER_DEFAULT;<=
/div><div>    <span style=3D"color:rgb(0,0,255)">end</span> <span style=3D"=
color:rgb(0,0,255)">else</span> <span style=3D"color:rgb(0,0,255)">begin</s=
pan></div><div>      <span style=3D"color:rgb(0,128,0)">// Default assignme=
nt</span></div><div>      m_ctrlport_resp_ack &lt;=3D <span style=3D"color:=
rgb(9,134,88)">0</span>;</div><br><div>      <span style=3D"color:rgb(0,128=
,0)">// Read user register</span></div><div>      <span style=3D"color:rgb(=
0,0,255)">if</span> (m_ctrlport_req_rd) <span style=3D"color:rgb(0,0,255)">=
begin</span> <span style=3D"color:rgb(0,128,0)">// Read request</span></div=
><div>        <span style=3D"color:rgb(0,0,255)">case</span> (m_ctrlport_re=
q_addr)</div><div>          REG_USER_ADDR: <span style=3D"color:rgb(0,0,255=
)">begin</span></div><div>            m_ctrlport_resp_ack  &lt;=3D <span st=
yle=3D"color:rgb(9,134,88)">1</span>;</div><div>            m_ctrlport_resp=
_data &lt;=3D reg_user;</div><div>          <span style=3D"color:rgb(0,0,25=
5)">end</span></div><div>        <span style=3D"color:rgb(0,0,255)">endcase=
</span></div><div>      <span style=3D"color:rgb(0,0,255)">end</span></div>=
<br><div>      <span style=3D"color:rgb(0,128,0)">// Write user register</s=
pan></div><div>      <span style=3D"color:rgb(0,0,255)">if</span> (m_ctrlpo=
rt_req_wr) <span style=3D"color:rgb(0,0,255)">begin</span> <span style=3D"c=
olor:rgb(0,128,0)">// Write requst</span></div><div>        <span style=3D"=
color:rgb(0,0,255)">case</span> (m_ctrlport_req_addr)</div><div>          R=
EG_USER_ADDR: <span style=3D"color:rgb(0,0,255)">begin</span></div><div>   =
         m_ctrlport_resp_ack &lt;=3D <span style=3D"color:rgb(9,134,88)">1<=
/span>;</div><div>            reg_user            &lt;=3D m_ctrlport_req_da=
ta[<span style=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9=
,134,88)">0</span>];</div><div>          <span style=3D"color:rgb(0,0,255)"=
>end</span></div><div>        <span style=3D"color:rgb(0,0,255)">endcase</s=
pan></div><div>      <span style=3D"color:rgb(0,0,255)">end</span></div><di=
v>    <span style=3D"color:rgb(0,0,255)">end</span></div><div>  <span style=
=3D"color:rgb(0,0,255)">end</span></div><br><div>  <span style=3D"color:rgb=
(0,128,0)">//--------------------------------------------------------------=
-------------</span></div><div>  <span style=3D"color:rgb(0,128,0)">// User=
 Logic</span></div><div>  <span style=3D"color:rgb(0,128,0)">//------------=
---------------------------------------------------------------</span></div=
><div>  <span style=3D"color:rgb(0,128,0)">//</span></div><div>  <span styl=
e=3D"color:rgb(0,128,0)">// User logic uses the axis_data_clk clock. While =
the registers above use the</span></div><div>  <span style=3D"color:rgb(0,1=
28,0)">// ctrlport_clk clock, in the block YAML configuration file both the=
 control</span></div><div>  <span style=3D"color:rgb(0,128,0)">// and data =
interfaces are specified to use the rfnoc_chdr clock. Therefore,</span></di=
v><div>  <span style=3D"color:rgb(0,128,0)">// we do not need to cross cloc=
k domains when using user registers with</span></div><div>  <span style=3D"=
color:rgb(0,128,0)">// user logic.</span></div><div>  <span style=3D"color:=
rgb(0,128,0)">//</span></div><div>  <span style=3D"color:rgb(0,128,0)">//--=
-------------------------------------------------------------------------</=
span></div><br><div>  <span style=3D"color:rgb(0,128,0)">// Sample data, pa=
ss through unchanged</span></div><div>  <span style=3D"color:rgb(0,0,255)">=
assign</span> s_out_payload_tdata  =3D m_in_payload_tdata;</div><div>  <spa=
n style=3D"color:rgb(0,0,255)">assign</span> s_out_payload_tlast  =3D m_in_=
payload_tlast;</div><div>  <span style=3D"color:rgb(0,0,255)">assign</span>=
 s_out_payload_tvalid =3D m_in_payload_tvalid;</div><div>  <span style=3D"c=
olor:rgb(0,0,255)">assign</span> m_in_payload_tready  =3D s_out_payload_tre=
ady;</div><br><div>  <span style=3D"color:rgb(0,128,0)">// Context data, we=
 are not doing anything with the context</span></div><div>  <span style=3D"=
color:rgb(0,128,0)">// (the CHDR header info) so we can simply pass through=
 unchanged</span></div><div>  <span style=3D"color:rgb(0,0,255)">assign</sp=
an> s_out_context_tdata  =3D m_in_context_tdata;</div><div>  <span style=3D=
"color:rgb(0,0,255)">assign</span> s_out_context_tuser  =3D m_in_context_tu=
ser;</div><div>  <span style=3D"color:rgb(0,0,255)">assign</span> s_out_con=
text_tlast  =3D m_in_context_tlast;</div><div>  <span style=3D"color:rgb(0,=
0,255)">assign</span> s_out_context_tvalid =3D m_in_context_tvalid;</div><d=
iv>  <span style=3D"color:rgb(0,0,255)">assign</span> m_in_context_tready  =
=3D s_out_context_tready;</div><br><div>  <span style=3D"color:rgb(0,128,0)=
">// Only 1-sample per clock, so tkeep should always be asserted</span></di=
v><div>  <span style=3D"color:rgb(0,0,255)">assign</span> s_out_payload_tke=
ep =3D <span style=3D"color:rgb(9,134,88)">1&#39;b1</span>;</div><br><div><=
span style=3D"color:rgb(0,0,255)">endmodule</span> <span style=3D"color:rgb=
(0,128,0)">// rfnoc_block_gain</span></div><br><div><span style=3D"color:rg=
b(0,0,255)">`default_nettype</span> <span style=3D"color:rgb(0,0,255)">wire=
</span></div><br><br></div></div><div><br></div></div>

--000000000000173a3605d9ff6a0c--

--===============0050963517802109856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0050963517802109856==--
