Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEF64D8865
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 16:42:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5FF7384824
	for <lists+usrp-users@lfdr.de>; Mon, 14 Mar 2022 11:42:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="SSyUGmTH";
	dkim-atps=neutral
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E41B38439A
	for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 11:41:28 -0400 (EDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-2dc348dab52so168503097b3.6
        for <usrp-users@lists.ettus.com>; Mon, 14 Mar 2022 08:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EDuzWMryjbXu9MBeDLPGXvHAHt1Zi3rfyYt3FpxJxB4=;
        b=SSyUGmTHhBs0QYn1jKiHmqnjUt+Yj6TO0DSZRmFImNOqIkDbg6S6555uoQhMXqKjz4
         9/MlLo4L1zagOGBh/5801eayL1P3oBXqMla/BryhSCX5SX6QNnCGOLQLCNHRpedd3RK7
         zQ6YAOn6Q3i3UI/laRaHdE4srVKS+rWgVv7bwNxVj7SE4eytORzSK5k5mJQVmaWZRSga
         rrKtcDsGI0jpzDP34fVB+VOUHyuACdqDFne/ClNb6R78QXVDvnR3xrhr0ObF56wffeYN
         NwczSaWwok+fUBUghxBbDGLG09Seo2wolHSZa17NyKqqVZihlYyNqjysOusklGgJoe5I
         yUJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EDuzWMryjbXu9MBeDLPGXvHAHt1Zi3rfyYt3FpxJxB4=;
        b=myMsjb1VZu/D8Zs9ChPq37C49+WFI5EX0aNlhaK4QUCUqChV8macKoCOCsyxHsFnO0
         G3b6SicH0AqMptZnHAdDoOyGHeDRcMZFubosL9Np8OJR6SJ19eJHbZQ7KHmUb5noa+fW
         qRSlEMA1V9WGEc/T/19vZaW1JUtQ6iuu0tTCPl3MB80LZFeZwv71elzV8Syzy9rBKEOK
         oElQZHYa4vCBV7PpEYaY/I5RlkXOlyL4yEE+vy6wiBym0eArrGGKGcajAd/a1yJpQPBT
         hix7oGww06ySSof4Yo6psbbc+Lg7EIuAYxMxXOXDpqJI93w9tGQOsXTcWbXla63/Gn+/
         MbsA==
X-Gm-Message-State: AOAM5318DHzlK2nt1bUOfp6CQNWtVPAx9mvUcgGeD4ljeSMvLVlx8yRW
	ijHTb3eGJjMM3JskOZPtRBjPueWEH9ASKF9W4l9GGS5EnACjMnqp
X-Google-Smtp-Source: ABdhPJz2QX8KNKqslWs/aySEV3FfRXJvW3MQ5CJejB+RiBT3SyWF3WHKWkDGkFn5DmAnTJsow8gxq+n/hAxFORP8K84=
X-Received: by 2002:a81:36cf:0:b0:2e5:2597:a026 with SMTP id
 d198-20020a8136cf000000b002e52597a026mr10408851ywa.301.1647272487635; Mon, 14
 Mar 2022 08:41:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Puz9A3_4QPhfzfKHMRk_j2iz+g_J4-5nEyXqk996YR3FQ@mail.gmail.com>
In-Reply-To: <CAA=S3Puz9A3_4QPhfzfKHMRk_j2iz+g_J4-5nEyXqk996YR3FQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 14 Mar 2022 10:41:11 -0500
Message-ID: <CAFche=hrb0vscaLT_nAhBM2q+BmPiC8ZPFKxnczXHPAuq8tVsw@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: JNY2R6W27GO2CM5P5TRUOQBPZXZPQIPA
X-Message-ID-Hash: JNY2R6W27GO2CM5P5TRUOQBPZXZPQIPA
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: When I create a rfnoc block with rfnocmodtool, the block has default code...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JNY2R6W27GO2CM5P5TRUOQBPZXZPQIPA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7672509293468456192=="

--===============7672509293468456192==
Content-Type: multipart/alternative; boundary="00000000000079633105da2f83b0"

--00000000000079633105da2f83b0
Content-Type: text/plain; charset="UTF-8"

The default generated code has the NoC shell, an example register, and a
data path that simply passes the data through. So the block only passes the
input data to the output and has a register that software can read/write.

The noc shell is the component that allows you to connect to RFNoC. You can
modify the example register and add your own, as needed, for your
application. You can also modify the "User Logic" data path to do whatever
it is that you want to do to incoming RF data, or connect third-party IP,
etc.

I suggest you take a look at some of the other RFNoC blocks to get an idea
of how they work.

https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain
https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/blocks

Wade

On Sat, Mar 12, 2022 at 12:19 AM sp h <stackprogramer@gmail.com> wrote:

> When I create an RFNOC block with rfnocmodtool, the block has a default
> code...
> My question is what to do this default code for RFNOC block? It is a  gain
> block? It is a buffer block?
> What is this code? can anyone guide me...........
>
> //
> // Copyright 2022 <+YOU OR YOUR COMPANY+>.
> //
> // This is free software; you can redistribute it and/or modify
> // it under the terms of the GNU General Public License as published by
> // the Free Software Foundation; either version 3, or (at your option)
> // any later version.
> //
> // This software is distributed in the hope that it will be useful,
> // but WITHOUT ANY WARRANTY; without even the implied warranty of
> // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> // GNU General Public License for more details.
> //
> // You should have received a copy of the GNU General Public License
> // along with this software; see the file COPYING. If not, write to
> // the Free Software Foundation, Inc., 51 Franklin Street,
> // Boston, MA 02110-1301, USA.
> //
>
> //
> // Module: rfnoc_block_gain
> //
> // Description:
> //
> // This is a skeleton file for a RFNoC block. It passes incoming samples
> // to the output without any modification. A read/write user register is
> // instantiated, but left unused.
> //
> // Parameters:
> //
> // THIS_PORTID : Control crossbar port to which this block is connected
> // CHDR_W : AXIS-CHDR data bus width
> // MTU : Maximum transmission unit (i.e., maximum packet size in
> // CHDR words is 2**MTU).
> //
>
> `default_nettype none
>
>
> module rfnoc_block_gain #(
> parameter [9:0] THIS_PORTID = 10'd0,
> parameter CHDR_W = 64,
> parameter [5:0] MTU = 10
> )(
> // RFNoC Framework Clocks and Resets
> input wire rfnoc_chdr_clk,
> input wire rfnoc_ctrl_clk,
> input wire ce_clk,
> // RFNoC Backend Interface
> input wire [511:0] rfnoc_core_config,
> output wire [511:0] rfnoc_core_status,
> // AXIS-CHDR Input Ports (from framework)
> input wire [(1)*CHDR_W-1:0] s_rfnoc_chdr_tdata,
> input wire [(1)-1:0] s_rfnoc_chdr_tlast,
> input wire [(1)-1:0] s_rfnoc_chdr_tvalid,
> output wire [(1)-1:0] s_rfnoc_chdr_tready,
> // AXIS-CHDR Output Ports (to framework)
> output wire [(1)*CHDR_W-1:0] m_rfnoc_chdr_tdata,
> output wire [(1)-1:0] m_rfnoc_chdr_tlast,
> output wire [(1)-1:0] m_rfnoc_chdr_tvalid,
> input wire [(1)-1:0] m_rfnoc_chdr_tready,
> // AXIS-Ctrl Input Port (from framework)
> input wire [31:0] s_rfnoc_ctrl_tdata,
> input wire s_rfnoc_ctrl_tlast,
> input wire s_rfnoc_ctrl_tvalid,
> output wire s_rfnoc_ctrl_tready,
> // AXIS-Ctrl Output Port (to framework)
> output wire [31:0] m_rfnoc_ctrl_tdata,
> output wire m_rfnoc_ctrl_tlast,
> output wire m_rfnoc_ctrl_tvalid,
> input wire m_rfnoc_ctrl_tready
> );
>
>
> //---------------------------------------------------------------------------
> // Signal Declarations
>
> //---------------------------------------------------------------------------
>
> // Clocks and Resets
> wire ctrlport_clk;
> wire ctrlport_rst;
> wire axis_data_clk;
> wire axis_data_rst;
> // CtrlPort Master
> wire m_ctrlport_req_wr;
> wire m_ctrlport_req_rd;
> wire [19:0] m_ctrlport_req_addr;
> wire [31:0] m_ctrlport_req_data;
> reg m_ctrlport_resp_ack;
> reg [31:0] m_ctrlport_resp_data;
> // Payload Stream to User Logic: in
> wire [32*1-1:0] m_in_payload_tdata;
> wire [1-1:0] m_in_payload_tkeep;
> wire m_in_payload_tlast;
> wire m_in_payload_tvalid;
> wire m_in_payload_tready;
> // Context Stream to User Logic: in
> wire [CHDR_W-1:0] m_in_context_tdata;
> wire [3:0] m_in_context_tuser;
> wire m_in_context_tlast;
> wire m_in_context_tvalid;
> wire m_in_context_tready;
> // Payload Stream from User Logic: out
> wire [32*1-1:0] s_out_payload_tdata;
> wire [0:0] s_out_payload_tkeep;
> wire s_out_payload_tlast;
> wire s_out_payload_tvalid;
> wire s_out_payload_tready;
> // Context Stream from User Logic: out
> wire [CHDR_W-1:0] s_out_context_tdata;
> wire [3:0] s_out_context_tuser;
> wire s_out_context_tlast;
> wire s_out_context_tvalid;
> wire s_out_context_tready;
>
>
> //---------------------------------------------------------------------------
> // NoC Shell
>
> //---------------------------------------------------------------------------
>
> noc_shell_gain #(
> .CHDR_W (CHDR_W),
> .THIS_PORTID (THIS_PORTID),
> .MTU (MTU)
> ) noc_shell_gain_i (
> //---------------------
> // Framework Interface
> //---------------------
>
> // Clock Inputs
> .rfnoc_chdr_clk (rfnoc_chdr_clk),
> .rfnoc_ctrl_clk (rfnoc_ctrl_clk),
> // Reset Outputs
> .rfnoc_chdr_rst (),
> .rfnoc_ctrl_rst (),
> // RFNoC Backend Interface
> .rfnoc_core_config (rfnoc_core_config),
> .rfnoc_core_status (rfnoc_core_status),
> // CHDR Input Ports (from framework)
> .s_rfnoc_chdr_tdata (s_rfnoc_chdr_tdata),
> .s_rfnoc_chdr_tlast (s_rfnoc_chdr_tlast),
> .s_rfnoc_chdr_tvalid (s_rfnoc_chdr_tvalid),
> .s_rfnoc_chdr_tready (s_rfnoc_chdr_tready),
> // CHDR Output Ports (to framework)
> .m_rfnoc_chdr_tdata (m_rfnoc_chdr_tdata),
> .m_rfnoc_chdr_tlast (m_rfnoc_chdr_tlast),
> .m_rfnoc_chdr_tvalid (m_rfnoc_chdr_tvalid),
> .m_rfnoc_chdr_tready (m_rfnoc_chdr_tready),
> // AXIS-Ctrl Input Port (from framework)
> .s_rfnoc_ctrl_tdata (s_rfnoc_ctrl_tdata),
> .s_rfnoc_ctrl_tlast (s_rfnoc_ctrl_tlast),
> .s_rfnoc_ctrl_tvalid (s_rfnoc_ctrl_tvalid),
> .s_rfnoc_ctrl_tready (s_rfnoc_ctrl_tready),
> // AXIS-Ctrl Output Port (to framework)
> .m_rfnoc_ctrl_tdata (m_rfnoc_ctrl_tdata),
> .m_rfnoc_ctrl_tlast (m_rfnoc_ctrl_tlast),
> .m_rfnoc_ctrl_tvalid (m_rfnoc_ctrl_tvalid),
> .m_rfnoc_ctrl_tready (m_rfnoc_ctrl_tready),
>
> //---------------------
> // Client Interface
> //---------------------
>
> // CtrlPort Clock and Reset
> .ctrlport_clk (ctrlport_clk),
> .ctrlport_rst (ctrlport_rst),
> // CtrlPort Master
> .m_ctrlport_req_wr (m_ctrlport_req_wr),
> .m_ctrlport_req_rd (m_ctrlport_req_rd),
> .m_ctrlport_req_addr (m_ctrlport_req_addr),
> .m_ctrlport_req_data (m_ctrlport_req_data),
> .m_ctrlport_resp_ack (m_ctrlport_resp_ack),
> .m_ctrlport_resp_data (m_ctrlport_resp_data),
>
> // AXI-Stream Payload Context Clock and Reset
> .axis_data_clk (axis_data_clk),
> .axis_data_rst (axis_data_rst),
> // Payload Stream to User Logic: in
> .m_in_payload_tdata (m_in_payload_tdata),
> .m_in_payload_tkeep (m_in_payload_tkeep),
> .m_in_payload_tlast (m_in_payload_tlast),
> .m_in_payload_tvalid (m_in_payload_tvalid),
> .m_in_payload_tready (m_in_payload_tready),
> // Context Stream to User Logic: in
> .m_in_context_tdata (m_in_context_tdata),
> .m_in_context_tuser (m_in_context_tuser),
> .m_in_context_tlast (m_in_context_tlast),
> .m_in_context_tvalid (m_in_context_tvalid),
> .m_in_context_tready (m_in_context_tready),
> // Payload Stream from User Logic: out
> .s_out_payload_tdata (s_out_payload_tdata),
> .s_out_payload_tkeep (s_out_payload_tkeep),
> .s_out_payload_tlast (s_out_payload_tlast),
> .s_out_payload_tvalid (s_out_payload_tvalid),
> .s_out_payload_tready (s_out_payload_tready),
> // Context Stream from User Logic: out
> .s_out_context_tdata (s_out_context_tdata),
> .s_out_context_tuser (s_out_context_tuser),
> .s_out_context_tlast (s_out_context_tlast),
> .s_out_context_tvalid (s_out_context_tvalid),
> .s_out_context_tready (s_out_context_tready)
> );
>
>
> //---------------------------------------------------------------------------
> // User Registers
>
> //---------------------------------------------------------------------------
> //
> // There's only one register now, but we'll structure the register code to
> // make it easier to add more registers later.
> // Register use the ctrlport_clk clock.
> //
>
> //---------------------------------------------------------------------------
>
> // Note: Register addresses increment by 4
> localparam REG_USER_ADDR = 0; // Address for example user register
> localparam REG_USER_DEFAULT = 0; // Default value for user register
>
> reg [31:0] reg_user = REG_USER_DEFAULT;
>
> always @(posedge ctrlport_clk) begin
> if (ctrlport_rst) begin
> reg_user = REG_USER_DEFAULT;
> end else begin
> // Default assignment
> m_ctrlport_resp_ack <= 0;
>
> // Read user register
> if (m_ctrlport_req_rd) begin // Read request
> case (m_ctrlport_req_addr)
> REG_USER_ADDR: begin
> m_ctrlport_resp_ack <= 1;
> m_ctrlport_resp_data <= reg_user;
> end
> endcase
> end
>
> // Write user register
> if (m_ctrlport_req_wr) begin // Write requst
> case (m_ctrlport_req_addr)
> REG_USER_ADDR: begin
> m_ctrlport_resp_ack <= 1;
> reg_user <= m_ctrlport_req_data[31:0];
> end
> endcase
> end
> end
> end
>
>
> //---------------------------------------------------------------------------
> // User Logic
>
> //---------------------------------------------------------------------------
> //
> // User logic uses the axis_data_clk clock. While the registers above use
> the
> // ctrlport_clk clock, in the block YAML configuration file both the
> control
> // and data interfaces are specified to use the rfnoc_chdr clock.
> Therefore,
> // we do not need to cross clock domains when using user registers with
> // user logic.
> //
>
> //---------------------------------------------------------------------------
>
> // Sample data, pass through unchanged
> assign s_out_payload_tdata = m_in_payload_tdata;
> assign s_out_payload_tlast = m_in_payload_tlast;
> assign s_out_payload_tvalid = m_in_payload_tvalid;
> assign m_in_payload_tready = s_out_payload_tready;
>
> // Context data, we are not doing anything with the context
> // (the CHDR header info) so we can simply pass through unchanged
> assign s_out_context_tdata = m_in_context_tdata;
> assign s_out_context_tuser = m_in_context_tuser;
> assign s_out_context_tlast = m_in_context_tlast;
> assign s_out_context_tvalid = m_in_context_tvalid;
> assign m_in_context_tready = s_out_context_tready;
>
> // Only 1-sample per clock, so tkeep should always be asserted
> assign s_out_payload_tkeep = 1'b1;
>
> endmodule // rfnoc_block_gain
>
> `default_nettype wire
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000079633105da2f83b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The default generated code has the NoC shell, an exam=
ple register, and a data path that simply passes the data through. So the b=
lock only passes the input data to the output and has a register that softw=
are can read/write.<br></div><div><br></div><div>The noc shell is the compo=
nent that allows you to connect to RFNoC. You can modify the example regist=
er and add your own, as needed, for your application. You can also modify t=
he &quot;User Logic&quot; data path to do whatever it is that you want to d=
o to incoming RF data, or connect third-party IP, etc.</div><div><br></div>=
<div>I suggest you take a look at some of the other RFNoC blocks to get an =
idea of how they work.</div><div><br></div><div><a href=3D"https://github.c=
om/EttusResearch/uhd/tree/master/host/examples/rfnoc-example/fpga/rfnoc_blo=
ck_gain">https://github.com/EttusResearch/uhd/tree/master/host/examples/rfn=
oc-example/fpga/rfnoc_block_gain</a> <br></div><div><a href=3D"https://gith=
ub.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/blocks">https://g=
ithub.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/blocks</a></di=
v><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sat, Mar 12, 2022 at 12:19 AM sp h &=
lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogr=
amer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">When I create an RFNOC block with rfnocmodto=
ol, the block has a default code...<br><div>My question is what to do this =
default code for RFNOC block? It is a=C2=A0 gain block? It is a buffer bloc=
k?</div><div>What is this code? can anyone guide me...........</div><div><b=
r></div><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sans Mo=
no&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;fo=
nt-size:14px;line-height:19px;white-space:pre-wrap"><div><span style=3D"col=
or:rgb(0,128,0)">//</span></div><div><span style=3D"color:rgb(0,128,0)">// =
Copyright 2022 &lt;+YOU OR YOUR COMPANY+&gt;.</span></div><div><span style=
=3D"color:rgb(0,128,0)">// </span></div><div><span style=3D"color:rgb(0,128=
,0)">// This is free software; you can redistribute it and/or modify</span>=
</div><div><span style=3D"color:rgb(0,128,0)">// it under the terms of the =
GNU General Public License as published by</span></div><div><span style=3D"=
color:rgb(0,128,0)">// the Free Software Foundation; either version 3, or (=
at your option)</span></div><div><span style=3D"color:rgb(0,128,0)">// any =
later version.</span></div><div><span style=3D"color:rgb(0,128,0)">// </spa=
n></div><div><span style=3D"color:rgb(0,128,0)">// This software is distrib=
uted in the hope that it will be useful,</span></div><div><span style=3D"co=
lor:rgb(0,128,0)">// but WITHOUT ANY WARRANTY; without even the implied war=
ranty of</span></div><div><span style=3D"color:rgb(0,128,0)">// MERCHANTABI=
LITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span></div><div><span s=
tyle=3D"color:rgb(0,128,0)">// GNU General Public License for more details.=
</span></div><div><span style=3D"color:rgb(0,128,0)">// </span></div><div><=
span style=3D"color:rgb(0,128,0)">// You should have received a copy of the=
 GNU General Public License</span></div><div><span style=3D"color:rgb(0,128=
,0)">// along with this software; see the file COPYING.  If not, write to</=
span></div><div><span style=3D"color:rgb(0,128,0)">// the Free Software Fou=
ndation, Inc., 51 Franklin Street,</span></div><div><span style=3D"color:rg=
b(0,128,0)">// Boston, MA 02110-1301, USA.</span></div><div><span style=3D"=
color:rgb(0,128,0)">//</span></div><br><div><span style=3D"color:rgb(0,128,=
0)">//</span></div><div><span style=3D"color:rgb(0,128,0)">// Module: rfnoc=
_block_gain</span></div><div><span style=3D"color:rgb(0,128,0)">//</span></=
div><div><span style=3D"color:rgb(0,128,0)">// Description:</span></div><di=
v><span style=3D"color:rgb(0,128,0)">//</span></div><div><span style=3D"col=
or:rgb(0,128,0)">//   This is a skeleton file for a RFNoC block. It passes =
incoming samples</span></div><div><span style=3D"color:rgb(0,128,0)">//   t=
o the output without any modification. A read/write user register is</span>=
</div><div><span style=3D"color:rgb(0,128,0)">//   instantiated, but left u=
nused.</span></div><div><span style=3D"color:rgb(0,128,0)">//</span></div><=
div><span style=3D"color:rgb(0,128,0)">// Parameters:</span></div><div><spa=
n style=3D"color:rgb(0,128,0)">//</span></div><div><span style=3D"color:rgb=
(0,128,0)">//   THIS_PORTID : Control crossbar port to which this block is =
connected</span></div><div><span style=3D"color:rgb(0,128,0)">//   CHDR_W  =
    : AXIS-CHDR data bus width</span></div><div><span style=3D"color:rgb(0,=
128,0)">//   MTU         : Maximum transmission unit (i.e., maximum packet =
size in</span></div><div><span style=3D"color:rgb(0,128,0)">//             =
    CHDR words is 2**MTU).</span></div><div><span style=3D"color:rgb(0,128,=
0)">//</span></div><br><div><span style=3D"color:rgb(0,0,255)">`default_net=
type</span> none</div><br><br><div><span style=3D"color:rgb(0,0,255)">modul=
e</span> rfnoc_block_gain #(</div><div>  <span style=3D"color:rgb(0,0,255)"=
>parameter</span> [<span style=3D"color:rgb(9,134,88)">9</span>:<span style=
=3D"color:rgb(9,134,88)">0</span>] THIS_PORTID     =3D <span style=3D"color=
:rgb(9,134,88)">10&#39;d0</span>,</div><div>  <span style=3D"color:rgb(0,0,=
255)">parameter</span>       CHDR_W          =3D <span style=3D"color:rgb(9=
,134,88)">64</span>,</div><div>  <span style=3D"color:rgb(0,0,255)">paramet=
er</span> [<span style=3D"color:rgb(9,134,88)">5</span>:<span style=3D"colo=
r:rgb(9,134,88)">0</span>] MTU             =3D <span style=3D"color:rgb(9,1=
34,88)">10</span></div><div>)(</div><div>  <span style=3D"color:rgb(0,128,0=
)">// RFNoC Framework Clocks and Resets</span></div><div>  <span style=3D"c=
olor:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</s=
pan>                   rfnoc_chdr_clk,</div><div>  <span style=3D"color:rgb=
(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span>    =
               rfnoc_ctrl_clk,</div><div>  <span style=3D"color:rgb(0,0,255=
)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span>            =
       ce_clk,</div><div>  <span style=3D"color:rgb(0,128,0)">// RFNoC Back=
end Interface</span></div><div>  <span style=3D"color:rgb(0,0,255)">input</=
span>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color=
:rgb(9,134,88)">511</span>:<span style=3D"color:rgb(9,134,88)">0</span>]   =
        rfnoc_core_config,</div><div>  <span style=3D"color:rgb(0,0,255)">o=
utput</span> <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D=
"color:rgb(9,134,88)">511</span>:<span style=3D"color:rgb(9,134,88)">0</spa=
n>]           rfnoc_core_status,</div><div>  <span style=3D"color:rgb(0,128=
,0)">// AXIS-CHDR Input Ports (from framework)</span></div><div>  <span sty=
le=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">=
wire</span> [(<span style=3D"color:rgb(9,134,88)">1</span>)*CHDR_W-<span st=
yle=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0<=
/span>]  s_rfnoc_chdr_tdata,</div><div>  <span style=3D"color:rgb(0,0,255)"=
>input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [(<span style=
=3D"color:rgb(9,134,88)">1</span>)-<span style=3D"color:rgb(9,134,88)">1</s=
pan>:<span style=3D"color:rgb(9,134,88)">0</span>]         s_rfnoc_chdr_tla=
st,</div><div>  <span style=3D"color:rgb(0,0,255)">input</span>  <span styl=
e=3D"color:rgb(0,0,255)">wire</span> [(<span style=3D"color:rgb(9,134,88)">=
1</span>)-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color=
:rgb(9,134,88)">0</span>]         s_rfnoc_chdr_tvalid,</div><div>  <span st=
yle=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)"=
>wire</span> [(<span style=3D"color:rgb(9,134,88)">1</span>)-<span style=3D=
"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>=
]         s_rfnoc_chdr_tready,</div><div>  <span style=3D"color:rgb(0,128,0=
)">// AXIS-CHDR Output Ports (to framework)</span></div><div>  <span style=
=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wi=
re</span> [(<span style=3D"color:rgb(9,134,88)">1</span>)*CHDR_W-<span styl=
e=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</s=
pan>]  m_rfnoc_chdr_tdata,</div><div>  <span style=3D"color:rgb(0,0,255)">o=
utput</span> <span style=3D"color:rgb(0,0,255)">wire</span> [(<span style=
=3D"color:rgb(9,134,88)">1</span>)-<span style=3D"color:rgb(9,134,88)">1</s=
pan>:<span style=3D"color:rgb(9,134,88)">0</span>]         m_rfnoc_chdr_tla=
st,</div><div>  <span style=3D"color:rgb(0,0,255)">output</span> <span styl=
e=3D"color:rgb(0,0,255)">wire</span> [(<span style=3D"color:rgb(9,134,88)">=
1</span>)-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color=
:rgb(9,134,88)">0</span>]         m_rfnoc_chdr_tvalid,</div><div>  <span st=
yle=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)"=
>wire</span> [(<span style=3D"color:rgb(9,134,88)">1</span>)-<span style=3D=
"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>=
]         m_rfnoc_chdr_tready,</div><div>  <span style=3D"color:rgb(0,128,0=
)">// AXIS-Ctrl Input Port (from framework)</span></div><div>  <span style=
=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wi=
re</span> [<span style=3D"color:rgb(9,134,88)">31</span>:<span style=3D"col=
or:rgb(9,134,88)">0</span>]            s_rfnoc_ctrl_tdata,</div><div>  <spa=
n style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,2=
55)">wire</span>                   s_rfnoc_ctrl_tlast,</div><div>  <span st=
yle=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)"=
>wire</span>                   s_rfnoc_ctrl_tvalid,</div><div>  <span style=
=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wi=
re</span>                   s_rfnoc_ctrl_tready,</div><div>  <span style=3D=
"color:rgb(0,128,0)">// AXIS-Ctrl Output Port (to framework)</span></div><d=
iv>  <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:=
rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">31</span>:<s=
pan style=3D"color:rgb(9,134,88)">0</span>]            m_rfnoc_ctrl_tdata,<=
/div><div>  <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D=
"color:rgb(0,0,255)">wire</span>                   m_rfnoc_ctrl_tlast,</div=
><div>  <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"col=
or:rgb(0,0,255)">wire</span>                   m_rfnoc_ctrl_tvalid,</div><d=
iv>  <span style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:=
rgb(0,0,255)">wire</span>                   m_rfnoc_ctrl_tready</div><div>)=
;</div><br><div>  <span style=3D"color:rgb(0,128,0)">//--------------------=
-------------------------------------------------------</span></div><div>  =
<span style=3D"color:rgb(0,128,0)">// Signal Declarations</span></div><div>=
  <span style=3D"color:rgb(0,128,0)">//------------------------------------=
---------------------------------------</span></div><br><div>  <span style=
=3D"color:rgb(0,128,0)">// Clocks and Resets</span></div><div>  <span style=
=3D"color:rgb(0,0,255)">wire</span>               ctrlport_clk;</div><div> =
 <span style=3D"color:rgb(0,0,255)">wire</span>               ctrlport_rst;=
</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>               a=
xis_data_clk;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>   =
            axis_data_rst;</div><div>  <span style=3D"color:rgb(0,128,0)">/=
/ CtrlPort Master</span></div><div>  <span style=3D"color:rgb(0,0,255)">wir=
e</span>               m_ctrlport_req_wr;</div><div>  <span style=3D"color:=
rgb(0,0,255)">wire</span>               m_ctrlport_req_rd;</div><div>  <spa=
n style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,=
88)">19</span>:<span style=3D"color:rgb(9,134,88)">0</span>]        m_ctrlp=
ort_req_addr;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [<=
span style=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134=
,88)">0</span>]        m_ctrlport_req_data;</div><div>  <span style=3D"colo=
r:rgb(0,0,255)">reg</span>                m_ctrlport_resp_ack;</div><div>  =
<span style=3D"color:rgb(0,0,255)">reg</span>  [<span style=3D"color:rgb(9,=
134,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0</span>]        m_c=
trlport_resp_data;</div><div>  <span style=3D"color:rgb(0,128,0)">// Payloa=
d Stream to User Logic: in</span></div><div>  <span style=3D"color:rgb(0,0,=
255)">wire</span> [<span style=3D"color:rgb(9,134,88)">32</span>*<span styl=
e=3D"color:rgb(9,134,88)">1</span>-<span style=3D"color:rgb(9,134,88)">1</s=
pan>:<span style=3D"color:rgb(9,134,88)">0</span>]    m_in_payload_tdata;</=
div><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"c=
olor:rgb(9,134,88)">1</span>-<span style=3D"color:rgb(9,134,88)">1</span>:<=
span style=3D"color:rgb(9,134,88)">0</span>]       m_in_payload_tkeep;</div=
><div>  <span style=3D"color:rgb(0,0,255)">wire</span>               m_in_p=
ayload_tlast;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>   =
            m_in_payload_tvalid;</div><div>  <span style=3D"color:rgb(0,0,2=
55)">wire</span>               m_in_payload_tready;</div><div>  <span style=
=3D"color:rgb(0,128,0)">// Context Stream to User Logic: in</span></div><di=
v>  <span style=3D"color:rgb(0,0,255)">wire</span> [CHDR_W-<span style=3D"c=
olor:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>] =
 m_in_context_tdata;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</s=
pan> [<span style=3D"color:rgb(9,134,88)">3</span>:<span style=3D"color:rgb=
(9,134,88)">0</span>]         m_in_context_tuser;</div><div>  <span style=
=3D"color:rgb(0,0,255)">wire</span>               m_in_context_tlast;</div>=
<div>  <span style=3D"color:rgb(0,0,255)">wire</span>               m_in_co=
ntext_tvalid;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>   =
            m_in_context_tready;</div><div>  <span style=3D"color:rgb(0,128=
,0)">// Payload Stream from User Logic: out</span></div><div>  <span style=
=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">32=
</span>*<span style=3D"color:rgb(9,134,88)">1</span>-<span style=3D"color:r=
gb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]    s_o=
ut_payload_tdata;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span=
> [<span style=3D"color:rgb(9,134,88)">0</span>:<span style=3D"color:rgb(9,=
134,88)">0</span>]         s_out_payload_tkeep;</div><div>  <span style=3D"=
color:rgb(0,0,255)">wire</span>               s_out_payload_tlast;</div><di=
v>  <span style=3D"color:rgb(0,0,255)">wire</span>               s_out_payl=
oad_tvalid;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>     =
          s_out_payload_tready;</div><div>  <span style=3D"color:rgb(0,128,=
0)">// Context Stream from User Logic: out</span></div><div>  <span style=
=3D"color:rgb(0,0,255)">wire</span> [CHDR_W-<span style=3D"color:rgb(9,134,=
88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]  s_out_context_=
tdata;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span st=
yle=3D"color:rgb(9,134,88)">3</span>:<span style=3D"color:rgb(9,134,88)">0<=
/span>]         s_out_context_tuser;</div><div>  <span style=3D"color:rgb(0=
,0,255)">wire</span>               s_out_context_tlast;</div><div>  <span s=
tyle=3D"color:rgb(0,0,255)">wire</span>               s_out_context_tvalid;=
</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>               s=
_out_context_tready;</div><br><div>  <span style=3D"color:rgb(0,128,0)">//-=
--------------------------------------------------------------------------<=
/span></div><div>  <span style=3D"color:rgb(0,128,0)">// NoC Shell</span></=
div><div>  <span style=3D"color:rgb(0,128,0)">//---------------------------=
------------------------------------------------</span></div><br><div>  <sp=
an style=3D"color:rgb(128,0,0)">noc_shell_gain</span> #(</div><div>    .CHD=
R_W      (CHDR_W),</div><div>    .THIS_PORTID (THIS_PORTID),</div><div>    =
.MTU         (MTU)</div><div>  ) <span style=3D"color:rgb(128,0,0)">noc_she=
ll_gain_i</span> (</div><div>    <span style=3D"color:rgb(0,128,0)">//-----=
----------------</span></div><div>    <span style=3D"color:rgb(0,128,0)">//=
 Framework Interface</span></div><div>    <span style=3D"color:rgb(0,128,0)=
">//---------------------</span></div><br><div>    <span style=3D"color:rgb=
(0,128,0)">// Clock Inputs</span></div><div>    .rfnoc_chdr_clk      (rfnoc=
_chdr_clk),</div><div>    .rfnoc_ctrl_clk      (rfnoc_ctrl_clk),</div><div>=
    <span style=3D"color:rgb(0,128,0)">// Reset Outputs</span></div><div>  =
  .rfnoc_chdr_rst      (),</div><div>    .rfnoc_ctrl_rst      (),</div><div=
>    <span style=3D"color:rgb(0,128,0)">// RFNoC Backend Interface</span></=
div><div>    .rfnoc_core_config   (rfnoc_core_config),</div><div>    .rfnoc=
_core_status   (rfnoc_core_status),</div><div>    <span style=3D"color:rgb(=
0,128,0)">// CHDR Input Ports  (from framework)</span></div><div>    .s_rfn=
oc_chdr_tdata  (s_rfnoc_chdr_tdata),</div><div>    .s_rfnoc_chdr_tlast  (s_=
rfnoc_chdr_tlast),</div><div>    .s_rfnoc_chdr_tvalid (s_rfnoc_chdr_tvalid)=
,</div><div>    .s_rfnoc_chdr_tready (s_rfnoc_chdr_tready),</div><div>    <=
span style=3D"color:rgb(0,128,0)">// CHDR Output Ports (to framework)</span=
></div><div>    .m_rfnoc_chdr_tdata  (m_rfnoc_chdr_tdata),</div><div>    .m=
_rfnoc_chdr_tlast  (m_rfnoc_chdr_tlast),</div><div>    .m_rfnoc_chdr_tvalid=
 (m_rfnoc_chdr_tvalid),</div><div>    .m_rfnoc_chdr_tready (m_rfnoc_chdr_tr=
eady),</div><div>    <span style=3D"color:rgb(0,128,0)">// AXIS-Ctrl Input =
Port (from framework)</span></div><div>    .s_rfnoc_ctrl_tdata  (s_rfnoc_ct=
rl_tdata),</div><div>    .s_rfnoc_ctrl_tlast  (s_rfnoc_ctrl_tlast),</div><d=
iv>    .s_rfnoc_ctrl_tvalid (s_rfnoc_ctrl_tvalid),</div><div>    .s_rfnoc_c=
trl_tready (s_rfnoc_ctrl_tready),</div><div>    <span style=3D"color:rgb(0,=
128,0)">// AXIS-Ctrl Output Port (to framework)</span></div><div>    .m_rfn=
oc_ctrl_tdata  (m_rfnoc_ctrl_tdata),</div><div>    .m_rfnoc_ctrl_tlast  (m_=
rfnoc_ctrl_tlast),</div><div>    .m_rfnoc_ctrl_tvalid (m_rfnoc_ctrl_tvalid)=
,</div><div>    .m_rfnoc_ctrl_tready (m_rfnoc_ctrl_tready),</div><br><div> =
   <span style=3D"color:rgb(0,128,0)">//---------------------</span></div><=
div>    <span style=3D"color:rgb(0,128,0)">// Client Interface</span></div>=
<div>    <span style=3D"color:rgb(0,128,0)">//---------------------</span><=
/div><br><div>    <span style=3D"color:rgb(0,128,0)">// CtrlPort Clock and =
Reset</span></div><div>    .ctrlport_clk         (ctrlport_clk),</div><div>=
    .ctrlport_rst         (ctrlport_rst),</div><div>    <span style=3D"colo=
r:rgb(0,128,0)">// CtrlPort Master</span></div><div>    .m_ctrlport_req_wr =
   (m_ctrlport_req_wr),</div><div>    .m_ctrlport_req_rd    (m_ctrlport_req=
_rd),</div><div>    .m_ctrlport_req_addr  (m_ctrlport_req_addr),</div><div>=
    .m_ctrlport_req_data  (m_ctrlport_req_data),</div><div>    .m_ctrlport_=
resp_ack  (m_ctrlport_resp_ack),</div><div>    .m_ctrlport_resp_data (m_ctr=
lport_resp_data),</div><br><div>    <span style=3D"color:rgb(0,128,0)">// A=
XI-Stream Payload Context Clock and Reset</span></div><div>    .axis_data_c=
lk        (axis_data_clk),</div><div>    .axis_data_rst        (axis_data_r=
st),</div><div>    <span style=3D"color:rgb(0,128,0)">// Payload Stream to =
User Logic: in</span></div><div>    .m_in_payload_tdata   (m_in_payload_tda=
ta),</div><div>    .m_in_payload_tkeep   (m_in_payload_tkeep),</div><div>  =
  .m_in_payload_tlast   (m_in_payload_tlast),</div><div>    .m_in_payload_t=
valid  (m_in_payload_tvalid),</div><div>    .m_in_payload_tready  (m_in_pay=
load_tready),</div><div>    <span style=3D"color:rgb(0,128,0)">// Context S=
tream to User Logic: in</span></div><div>    .m_in_context_tdata   (m_in_co=
ntext_tdata),</div><div>    .m_in_context_tuser   (m_in_context_tuser),</di=
v><div>    .m_in_context_tlast   (m_in_context_tlast),</div><div>    .m_in_=
context_tvalid  (m_in_context_tvalid),</div><div>    .m_in_context_tready  =
(m_in_context_tready),</div><div>    <span style=3D"color:rgb(0,128,0)">// =
Payload Stream from User Logic: out</span></div><div>    .s_out_payload_tda=
ta  (s_out_payload_tdata),</div><div>    .s_out_payload_tkeep  (s_out_paylo=
ad_tkeep),</div><div>    .s_out_payload_tlast  (s_out_payload_tlast),</div>=
<div>    .s_out_payload_tvalid (s_out_payload_tvalid),</div><div>    .s_out=
_payload_tready (s_out_payload_tready),</div><div>    <span style=3D"color:=
rgb(0,128,0)">// Context Stream from User Logic: out</span></div><div>    .=
s_out_context_tdata  (s_out_context_tdata),</div><div>    .s_out_context_tu=
ser  (s_out_context_tuser),</div><div>    .s_out_context_tlast  (s_out_cont=
ext_tlast),</div><div>    .s_out_context_tvalid (s_out_context_tvalid),</di=
v><div>    .s_out_context_tready (s_out_context_tready)</div><div>  );</div=
><br><div>  <span style=3D"color:rgb(0,128,0)">//--------------------------=
-------------------------------------------------</span></div><div>  <span =
style=3D"color:rgb(0,128,0)">// User Registers</span></div><div>  <span sty=
le=3D"color:rgb(0,128,0)">//-----------------------------------------------=
----------------------------</span></div><div>  <span style=3D"color:rgb(0,=
128,0)">//</span></div><div>  <span style=3D"color:rgb(0,128,0)">// There&#=
39;s only one register now, but we&#39;ll structure the register code to</s=
pan></div><div>  <span style=3D"color:rgb(0,128,0)">// make it easier to ad=
d more registers later.</span></div><div>  <span style=3D"color:rgb(0,128,0=
)">// Register use the ctrlport_clk clock.</span></div><div>  <span style=
=3D"color:rgb(0,128,0)">//</span></div><div>  <span style=3D"color:rgb(0,12=
8,0)">//-------------------------------------------------------------------=
--------</span></div><br><div>  <span style=3D"color:rgb(0,128,0)">// Note:=
 Register addresses increment by 4</span></div><div>  <span style=3D"color:=
rgb(0,0,255)">localparam</span> REG_USER_ADDR    =3D <span style=3D"color:r=
gb(9,134,88)">0</span>; <span style=3D"color:rgb(0,128,0)">// Address for e=
xample user register</span></div><div>  <span style=3D"color:rgb(0,0,255)">=
localparam</span> REG_USER_DEFAULT =3D <span style=3D"color:rgb(9,134,88)">=
0</span>; <span style=3D"color:rgb(0,128,0)">// Default value for user regi=
ster</span></div><br><div>  <span style=3D"color:rgb(0,0,255)">reg</span> [=
<span style=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,13=
4,88)">0</span>] reg_user =3D REG_USER_DEFAULT;</div><br><div>  <span style=
=3D"color:rgb(0,0,255)">always</span> @(<span style=3D"color:rgb(0,0,255)">=
posedge</span> ctrlport_clk) <span style=3D"color:rgb(0,0,255)">begin</span=
></div><div>    <span style=3D"color:rgb(0,0,255)">if</span> (ctrlport_rst)=
 <span style=3D"color:rgb(0,0,255)">begin</span></div><div>      reg_user =
=3D REG_USER_DEFAULT;</div><div>    <span style=3D"color:rgb(0,0,255)">end<=
/span> <span style=3D"color:rgb(0,0,255)">else</span> <span style=3D"color:=
rgb(0,0,255)">begin</span></div><div>      <span style=3D"color:rgb(0,128,0=
)">// Default assignment</span></div><div>      m_ctrlport_resp_ack &lt;=3D=
 <span style=3D"color:rgb(9,134,88)">0</span>;</div><br><div>      <span st=
yle=3D"color:rgb(0,128,0)">// Read user register</span></div><div>      <sp=
an style=3D"color:rgb(0,0,255)">if</span> (m_ctrlport_req_rd) <span style=
=3D"color:rgb(0,0,255)">begin</span> <span style=3D"color:rgb(0,128,0)">// =
Read request</span></div><div>        <span style=3D"color:rgb(0,0,255)">ca=
se</span> (m_ctrlport_req_addr)</div><div>          REG_USER_ADDR: <span st=
yle=3D"color:rgb(0,0,255)">begin</span></div><div>            m_ctrlport_re=
sp_ack  &lt;=3D <span style=3D"color:rgb(9,134,88)">1</span>;</div><div>   =
         m_ctrlport_resp_data &lt;=3D reg_user;</div><div>          <span s=
tyle=3D"color:rgb(0,0,255)">end</span></div><div>        <span style=3D"col=
or:rgb(0,0,255)">endcase</span></div><div>      <span style=3D"color:rgb(0,=
0,255)">end</span></div><br><div>      <span style=3D"color:rgb(0,128,0)">/=
/ Write user register</span></div><div>      <span style=3D"color:rgb(0,0,2=
55)">if</span> (m_ctrlport_req_wr) <span style=3D"color:rgb(0,0,255)">begin=
</span> <span style=3D"color:rgb(0,128,0)">// Write requst</span></div><div=
>        <span style=3D"color:rgb(0,0,255)">case</span> (m_ctrlport_req_add=
r)</div><div>          REG_USER_ADDR: <span style=3D"color:rgb(0,0,255)">be=
gin</span></div><div>            m_ctrlport_resp_ack &lt;=3D <span style=3D=
"color:rgb(9,134,88)">1</span>;</div><div>            reg_user            &=
lt;=3D m_ctrlport_req_data[<span style=3D"color:rgb(9,134,88)">31</span>:<s=
pan style=3D"color:rgb(9,134,88)">0</span>];</div><div>          <span styl=
e=3D"color:rgb(0,0,255)">end</span></div><div>        <span style=3D"color:=
rgb(0,0,255)">endcase</span></div><div>      <span style=3D"color:rgb(0,0,2=
55)">end</span></div><div>    <span style=3D"color:rgb(0,0,255)">end</span>=
</div><div>  <span style=3D"color:rgb(0,0,255)">end</span></div><br><div>  =
<span style=3D"color:rgb(0,128,0)">//--------------------------------------=
-------------------------------------</span></div><div>  <span style=3D"col=
or:rgb(0,128,0)">// User Logic</span></div><div>  <span style=3D"color:rgb(=
0,128,0)">//---------------------------------------------------------------=
------------</span></div><div>  <span style=3D"color:rgb(0,128,0)">//</span=
></div><div>  <span style=3D"color:rgb(0,128,0)">// User logic uses the axi=
s_data_clk clock. While the registers above use the</span></div><div>  <spa=
n style=3D"color:rgb(0,128,0)">// ctrlport_clk clock, in the block YAML con=
figuration file both the control</span></div><div>  <span style=3D"color:rg=
b(0,128,0)">// and data interfaces are specified to use the rfnoc_chdr cloc=
k. Therefore,</span></div><div>  <span style=3D"color:rgb(0,128,0)">// we d=
o not need to cross clock domains when using user registers with</span></di=
v><div>  <span style=3D"color:rgb(0,128,0)">// user logic.</span></div><div=
>  <span style=3D"color:rgb(0,128,0)">//</span></div><div>  <span style=3D"=
color:rgb(0,128,0)">//-----------------------------------------------------=
----------------------</span></div><br><div>  <span style=3D"color:rgb(0,12=
8,0)">// Sample data, pass through unchanged</span></div><div>  <span style=
=3D"color:rgb(0,0,255)">assign</span> s_out_payload_tdata  =3D m_in_payload=
_tdata;</div><div>  <span style=3D"color:rgb(0,0,255)">assign</span> s_out_=
payload_tlast  =3D m_in_payload_tlast;</div><div>  <span style=3D"color:rgb=
(0,0,255)">assign</span> s_out_payload_tvalid =3D m_in_payload_tvalid;</div=
><div>  <span style=3D"color:rgb(0,0,255)">assign</span> m_in_payload_tread=
y  =3D s_out_payload_tready;</div><br><div>  <span style=3D"color:rgb(0,128=
,0)">// Context data, we are not doing anything with the context</span></di=
v><div>  <span style=3D"color:rgb(0,128,0)">// (the CHDR header info) so we=
 can simply pass through unchanged</span></div><div>  <span style=3D"color:=
rgb(0,0,255)">assign</span> s_out_context_tdata  =3D m_in_context_tdata;</d=
iv><div>  <span style=3D"color:rgb(0,0,255)">assign</span> s_out_context_tu=
ser  =3D m_in_context_tuser;</div><div>  <span style=3D"color:rgb(0,0,255)"=
>assign</span> s_out_context_tlast  =3D m_in_context_tlast;</div><div>  <sp=
an style=3D"color:rgb(0,0,255)">assign</span> s_out_context_tvalid =3D m_in=
_context_tvalid;</div><div>  <span style=3D"color:rgb(0,0,255)">assign</spa=
n> m_in_context_tready  =3D s_out_context_tready;</div><br><div>  <span sty=
le=3D"color:rgb(0,128,0)">// Only 1-sample per clock, so tkeep should alway=
s be asserted</span></div><div>  <span style=3D"color:rgb(0,0,255)">assign<=
/span> s_out_payload_tkeep =3D <span style=3D"color:rgb(9,134,88)">1&#39;b1=
</span>;</div><br><div><span style=3D"color:rgb(0,0,255)">endmodule</span> =
<span style=3D"color:rgb(0,128,0)">// rfnoc_block_gain</span></div><br><div=
><span style=3D"color:rgb(0,0,255)">`default_nettype</span> <span style=3D"=
color:rgb(0,0,255)">wire</span></div><br><br></div></div><div><br></div></d=
iv>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000079633105da2f83b0--

--===============7672509293468456192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7672509293468456192==--
