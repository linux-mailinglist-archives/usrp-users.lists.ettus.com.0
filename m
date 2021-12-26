Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF3647F987
	for <lists+usrp-users@lfdr.de>; Mon, 27 Dec 2021 00:49:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E4CD384A67
	for <lists+usrp-users@lfdr.de>; Sun, 26 Dec 2021 18:49:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kw0lIEm8";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id C2E8B384A25
	for <usrp-users@lists.ettus.com>; Sun, 26 Dec 2021 18:48:36 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id e136so42779246ybc.4
        for <usrp-users@lists.ettus.com>; Sun, 26 Dec 2021 15:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Bct9C0blugN+NS7JOP7KShX6k5MrgekQt7UkmA1NOrA=;
        b=kw0lIEm8VjN+MIRmTmZOrU/bCRwi1bAXK8YkMByO5He0NQn28RU2/MeQ+nnCktUz3R
         xQZLG5WLd8AiTMikbfYM7SRYipbOgN4ssXTnmYUAGU6j5MYIKBmbk8KVvM+2rGholuQ3
         Ph9jT5flLFHV00aVhN/hd0AA7GgtO/aYHtOgWXpjSOp0B9Zot4hnHjXFBmV80hDqtvSW
         RMq7kZ4U50b5zUEYbCQkJgM5ryUTtYm1UpBQQC5/A7FL8ZMR48aW0P4XP1DdCX7U0SZO
         MZA+jq+zsP1ZJgMW2WyZud4UCGneC8q8UKjTR9pqOHxLFhMM74DCeRd1ToLApSDhNUeA
         80/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Bct9C0blugN+NS7JOP7KShX6k5MrgekQt7UkmA1NOrA=;
        b=0CZzzqJrqKjwjbjfLBUqD5gYpTi8nBJKkPxFKOoRJrSLFcdVp6J6e4v0Tma3mVPi+r
         ZL6fKUn9TnzXWhcgwznfCa/LyGM+GxPCIcR1uC/gL54XRBOz/8hy9yKixMDCc13UgzuW
         KduX8jc0lomJH31XYyXsMsbtdxJ75DHsUo/XTjY+o9hJpRlNoTORpFqBiFQR0EcMhqRt
         y1alYx14xQ1COWuA96MCsID1A+1WWs2XXBcNqoZF5v6WvpOLhkaV3aHuWGr8q6ryRgat
         K1xijH4YInDAwpYDLsujjvtG77vEudcACx+wcmkryFV9d6wENHNRir55iYLy/o0nkzv+
         x8Cw==
X-Gm-Message-State: AOAM5324zXsWgTzdI5NHiKvoSM0s/Or2mwFUYgZO9vg23q/GmxFmI08w
	qs6f06SJgz/f+MKPQ56qqcYfindHK3ycDd/CU/Bwwd+pa+XHdcXY1yyVqw==
X-Google-Smtp-Source: ABdhPJywmFln48YSYXgdUBwl9RsOmU7hZWn1Z742PG9Stzf8lIlYINJufNRE5TJihOdzjfbJyd0QOx6pUn6w2WYPScY=
X-Received: by 2002:a05:6902:102a:: with SMTP id x10mr18980577ybt.454.1640562515202;
 Sun, 26 Dec 2021 15:48:35 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Mon, 27 Dec 2021 03:18:23 +0330
Message-ID: <CAA=S3PsgGX=QmyADgYwvUvZrX5b9rAx7UjvDVq3Pp-ZaW7vzTA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: DJX455K2D2YK6JCWT4H5JPN6IQPAK4P3
X-Message-ID-Hash: DJX455K2D2YK6JCWT4H5JPN6IQPAK4P3
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Framework Interface vs Client Interface vs Backend Interface in RFNOC blocks
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DJX455K2D2YK6JCWT4H5JPN6IQPAK4P3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4244705339624238131=="

--===============4244705339624238131==
Content-Type: multipart/alternative; boundary="000000000000f3544005d4153942"

--000000000000f3544005d4153942
Content-Type: text/plain; charset="UTF-8"

I study RFNOC gain example, in noc_shell_gain.v there are three sections I
want to know whats that means?
what's the difference between three-section? can any explain?
thanks in advance

//---------------------
// Framework Interface
//---------------------

// RFNoC Framework Clocks
input wire rfnoc_chdr_clk,
input wire rfnoc_ctrl_clk,

// NoC Shell Generated Resets
output wire rfnoc_chdr_rst,
output wire rfnoc_ctrl_rst,

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

// AXIS-Ctrl Control Input Port (from framework)
input wire [31:0] s_rfnoc_ctrl_tdata,
input wire s_rfnoc_ctrl_tlast,
input wire s_rfnoc_ctrl_tvalid,
output wire s_rfnoc_ctrl_tready,
// AXIS-Ctrl Control Output Port (to framework)
output wire [31:0] m_rfnoc_ctrl_tdata,
output wire m_rfnoc_ctrl_tlast,
output wire m_rfnoc_ctrl_tvalid,
input wire m_rfnoc_ctrl_tready,

//---------------------
// Client Interface
//---------------------

// CtrlPort Clock and Reset
output wire ctrlport_clk,
output wire ctrlport_rst,
// CtrlPort Master
output wire m_ctrlport_req_wr,
output wire m_ctrlport_req_rd,
output wire [19:0] m_ctrlport_req_addr,
output wire [31:0] m_ctrlport_req_data,
input wire m_ctrlport_resp_ack,
input wire [31:0] m_ctrlport_resp_data,

// AXI-Stream Payload Context Clock and Reset
output wire axis_data_clk,
output wire axis_data_rst,
// Payload Stream to User Logic: in
output wire [32*1-1:0] m_in_payload_tdata,
output wire [1-1:0] m_in_payload_tkeep,
output wire m_in_payload_tlast,
output wire m_in_payload_tvalid,
input wire m_in_payload_tready,
// Context Stream to User Logic: in
output wire [CHDR_W-1:0] m_in_context_tdata,
output wire [3:0] m_in_context_tuser,
output wire m_in_context_tlast,
output wire m_in_context_tvalid,
input wire m_in_context_tready,
// Payload Stream from User Logic: out
input wire [32*1-1:0] s_out_payload_tdata,
input wire [0:0] s_out_payload_tkeep,
input wire s_out_payload_tlast,
input wire s_out_payload_tvalid,
output wire s_out_payload_tready,
// Context Stream from User Logic: out
input wire [CHDR_W-1:0] s_out_context_tdata,
input wire [3:0] s_out_context_tuser,
input wire s_out_context_tlast,
input wire s_out_context_tvalid,
output wire s_out_context_tready
);

//---------------------------------------------------------------------------
// Backend Interface
//---------------------------------------------------------------------------

wire data_i_flush_en;
wire [31:0] data_i_flush_timeout;
wire [63:0] data_i_flush_active;
wire [63:0] data_i_flush_done;
wire data_o_flush_en;
wire [31:0] data_o_flush_timeout;
wire [63:0] data_o_flush_active;
wire [63:0] data_o_flush_done;

backend_iface #(
.NOC_ID (32'h00000B16),
.NUM_DATA_I (1),
.NUM_DATA_O (1),
.CTRL_FIFOSIZE ($clog2(32)),
.MTU (MTU)
) backend_iface_i (
.rfnoc_chdr_clk (rfnoc_chdr_clk),
.rfnoc_chdr_rst (rfnoc_chdr_rst),
.rfnoc_ctrl_clk (rfnoc_ctrl_clk),
.rfnoc_ctrl_rst (rfnoc_ctrl_rst),
.rfnoc_core_config (rfnoc_core_config),
.rfnoc_core_status (rfnoc_core_status),
.data_i_flush_en (data_i_flush_en),
.data_i_flush_timeout (data_i_flush_timeout),
.data_i_flush_active (data_i_flush_active),
.data_i_flush_done (data_i_flush_done),
.data_o_flush_en (data_o_flush_en),
.data_o_flush_timeout (data_o_flush_timeout),
.data_o_flush_active (data_o_flush_active),
.data_o_flush_done (data_o_flush_done)
);

--000000000000f3544005d4153942
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I study RFNOC gain example, in=C2=A0noc_shell_gain.v there=
 are three sections I want to know whats=C2=A0that means?=C2=A0<div>what&#3=
9;s the difference between three-section? can any explain?</div><div>thanks=
 in advance</div><div><br></div><div><div style=3D"color:rgb(0,0,0);font-fa=
mily:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droi=
d Sans Fallback&quot;;font-size:14px;line-height:19px;white-space:pre"><div=
></div><div>  <span style=3D"color:rgb(0,128,0)">//---------------------</s=
pan></div><div>  <span style=3D"color:rgb(0,128,0)">// Framework Interface<=
/span></div><div>  <span style=3D"color:rgb(0,128,0)">//-------------------=
--</span></div><br><div>  <span style=3D"color:rgb(0,128,0)">// RFNoC Frame=
work Clocks</span></div><div>  <span style=3D"color:rgb(0,0,255)">input</sp=
an>  <span style=3D"color:rgb(0,0,255)">wire</span> rfnoc_chdr_clk,</div><d=
iv>  <span style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:=
rgb(0,0,255)">wire</span> rfnoc_ctrl_clk,</div><br><div>  <span style=3D"co=
lor:rgb(0,128,0)">// NoC Shell Generated Resets</span></div><div>  <span st=
yle=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)"=
>wire</span> rfnoc_chdr_rst,</div><div>  <span style=3D"color:rgb(0,0,255)"=
>output</span> <span style=3D"color:rgb(0,0,255)">wire</span> rfnoc_ctrl_rs=
t,</div><br><div>  <span style=3D"color:rgb(0,128,0)">// RFNoC Backend Inte=
rface</span></div><div>  <span style=3D"color:rgb(0,0,255)">input</span>  <=
span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,1=
34,88)">511</span>:<span style=3D"color:rgb(9,134,88)">0</span>]          r=
fnoc_core_config,</div><div>  <span style=3D"color:rgb(0,0,255)">output</sp=
an> <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rg=
b(9,134,88)">511</span>:<span style=3D"color:rgb(9,134,88)">0</span>]      =
    rfnoc_core_status,</div><br><div>  <span style=3D"color:rgb(0,128,0)">/=
/ AXIS-CHDR Input Ports (from framework)</span></div><div>  <span style=3D"=
color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</=
span> [(<span style=3D"color:rgb(9,134,88)">1</span>)*CHDR_W-<span style=3D=
"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>=
] s_rfnoc_chdr_tdata,</div><div>  <span style=3D"color:rgb(0,0,255)">input<=
/span>  <span style=3D"color:rgb(0,0,255)">wire</span> [(<span style=3D"col=
or:rgb(9,134,88)">1</span>)-<span style=3D"color:rgb(9,134,88)">1</span>:<s=
pan style=3D"color:rgb(9,134,88)">0</span>]        s_rfnoc_chdr_tlast,</div=
><div>  <span style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"col=
or:rgb(0,0,255)">wire</span> [(<span style=3D"color:rgb(9,134,88)">1</span>=
)-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,1=
34,88)">0</span>]        s_rfnoc_chdr_tvalid,</div><div>  <span style=3D"co=
lor:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</sp=
an> [(<span style=3D"color:rgb(9,134,88)">1</span>)-<span style=3D"color:rg=
b(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]        =
s_rfnoc_chdr_tready,</div><div>  <span style=3D"color:rgb(0,128,0)">// AXIS=
-CHDR Output Ports (to framework)</span></div><div>  <span style=3D"color:r=
gb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span> [=
(<span style=3D"color:rgb(9,134,88)">1</span>)*CHDR_W-<span style=3D"color:=
rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>] m_rfn=
oc_chdr_tdata,</div><div>  <span style=3D"color:rgb(0,0,255)">output</span>=
 <span style=3D"color:rgb(0,0,255)">wire</span> [(<span style=3D"color:rgb(=
9,134,88)">1</span>)-<span style=3D"color:rgb(9,134,88)">1</span>:<span sty=
le=3D"color:rgb(9,134,88)">0</span>]        m_rfnoc_chdr_tlast,</div><div> =
 <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(=
0,0,255)">wire</span> [(<span style=3D"color:rgb(9,134,88)">1</span>)-<span=
 style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)"=
>0</span>]        m_rfnoc_chdr_tvalid,</div><div>  <span style=3D"color:rgb=
(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [(<=
span style=3D"color:rgb(9,134,88)">1</span>)-<span style=3D"color:rgb(9,134=
,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]        m_rfnoc=
_chdr_tready,</div><br><div>  <span style=3D"color:rgb(0,128,0)">// AXIS-Ct=
rl Control Input Port (from framework)</span></div><div>  <span style=3D"co=
lor:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</sp=
an> [<span style=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb=
(9,134,88)">0</span>]           s_rfnoc_ctrl_tdata,</div><div>  <span style=
=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wi=
re</span>                  s_rfnoc_ctrl_tlast,</div><div>  <span style=3D"c=
olor:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</s=
pan>                  s_rfnoc_ctrl_tvalid,</div><div>  <span style=3D"color=
:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>=
                  s_rfnoc_ctrl_tready,</div><div>  <span style=3D"color:rgb=
(0,128,0)">// AXIS-Ctrl Control Output Port (to framework)</span></div><div=
>  <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rg=
b(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">31</span>:<spa=
n style=3D"color:rgb(9,134,88)">0</span>]           m_rfnoc_ctrl_tdata,</di=
v><div>  <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"co=
lor:rgb(0,0,255)">wire</span>                  m_rfnoc_ctrl_tlast,</div><di=
v>  <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:r=
gb(0,0,255)">wire</span>                  m_rfnoc_ctrl_tvalid,</div><div>  =
<span style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0=
,0,255)">wire</span>                  m_rfnoc_ctrl_tready,</div><br><div>  =
<span style=3D"color:rgb(0,128,0)">//---------------------</span></div><div=
>  <span style=3D"color:rgb(0,128,0)">// Client Interface</span></div><div>=
  <span style=3D"color:rgb(0,128,0)">//---------------------</span></div><b=
r><div>  <span style=3D"color:rgb(0,128,0)">// CtrlPort Clock and Reset</sp=
an></div><div>  <span style=3D"color:rgb(0,0,255)">output</span> <span styl=
e=3D"color:rgb(0,0,255)">wire</span>               ctrlport_clk,</div><div>=
  <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb=
(0,0,255)">wire</span>               ctrlport_rst,</div><div>  <span style=
=3D"color:rgb(0,128,0)">// CtrlPort Master</span></div><div>  <span style=
=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wi=
re</span>               m_ctrlport_req_wr,</div><div>  <span style=3D"color=
:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>=
               m_ctrlport_req_rd,</div><div>  <span style=3D"color:rgb(0,0,=
255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span> [<span s=
tyle=3D"color:rgb(9,134,88)">19</span>:<span style=3D"color:rgb(9,134,88)">=
0</span>]        m_ctrlport_req_addr,</div><div>  <span style=3D"color:rgb(=
0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span> [<sp=
an style=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,8=
8)">0</span>]        m_ctrlport_req_data,</div><div>  <span style=3D"color:=
rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> =
              m_ctrlport_resp_ack,</div><div>  <span style=3D"color:rgb(0,0=
,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span =
style=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)"=
>0</span>]        m_ctrlport_resp_data,</div><br><div>  <span style=3D"colo=
r:rgb(0,128,0)">// AXI-Stream Payload Context Clock and Reset</span></div><=
div>  <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color=
:rgb(0,0,255)">wire</span>               axis_data_clk,</div><div>  <span s=
tyle=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)=
">wire</span>               axis_data_rst,</div><div>  <span style=3D"color=
:rgb(0,128,0)">// Payload Stream to User Logic: in</span></div><div>  <span=
 style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,25=
5)">wire</span> [<span style=3D"color:rgb(9,134,88)">32</span>*<span style=
=3D"color:rgb(9,134,88)">1</span>-<span style=3D"color:rgb(9,134,88)">1</sp=
an>:<span style=3D"color:rgb(9,134,88)">0</span>]    m_in_payload_tdata,</d=
iv><div>  <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"c=
olor:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">1</span=
>-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,1=
34,88)">0</span>]       m_in_payload_tkeep,</div><div>  <span style=3D"colo=
r:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span=
>               m_in_payload_tlast,</div><div>  <span style=3D"color:rgb(0,=
0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>       =
        m_in_payload_tvalid,</div><div>  <span style=3D"color:rgb(0,0,255)"=
>input</span>  <span style=3D"color:rgb(0,0,255)">wire</span>              =
 m_in_payload_tready,</div><div>  <span style=3D"color:rgb(0,128,0)">// Con=
text Stream to User Logic: in</span></div><div>  <span style=3D"color:rgb(0=
,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span> [CHDR=
_W-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,=
134,88)">0</span>]  m_in_context_tdata,</div><div>  <span style=3D"color:rg=
b(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span> [<=
span style=3D"color:rgb(9,134,88)">3</span>:<span style=3D"color:rgb(9,134,=
88)">0</span>]         m_in_context_tuser,</div><div>  <span style=3D"color=
:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>=
               m_in_context_tlast,</div><div>  <span style=3D"color:rgb(0,0=
,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>        =
       m_in_context_tvalid,</div><div>  <span style=3D"color:rgb(0,0,255)">=
input</span>  <span style=3D"color:rgb(0,0,255)">wire</span>               =
m_in_context_tready,</div><div>  <span style=3D"color:rgb(0,128,0)">// Payl=
oad Stream from User Logic: out</span></div><div>  <span style=3D"color:rgb=
(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [<s=
pan style=3D"color:rgb(9,134,88)">32</span>*<span style=3D"color:rgb(9,134,=
88)">1</span>-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"c=
olor:rgb(9,134,88)">0</span>]    s_out_payload_tdata,</div><div>  <span sty=
le=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">=
wire</span> [<span style=3D"color:rgb(9,134,88)">0</span>:<span style=3D"co=
lor:rgb(9,134,88)">0</span>]         s_out_payload_tkeep,</div><div>  <span=
 style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,25=
5)">wire</span>               s_out_payload_tlast,</div><div>  <span style=
=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wi=
re</span>               s_out_payload_tvalid,</div><div>  <span style=3D"co=
lor:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</sp=
an>               s_out_payload_tready,</div><div>  <span style=3D"color:rg=
b(0,128,0)">// Context Stream from User Logic: out</span></div><div>  <span=
 style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,25=
5)">wire</span> [CHDR_W-<span style=3D"color:rgb(9,134,88)">1</span>:<span =
style=3D"color:rgb(9,134,88)">0</span>]  s_out_context_tdata,</div><div>  <=
span style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,=
0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">3</span>:<span sty=
le=3D"color:rgb(9,134,88)">0</span>]         s_out_context_tuser,</div><div=
>  <span style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rg=
b(0,0,255)">wire</span>               s_out_context_tlast,</div><div>  <spa=
n style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,2=
55)">wire</span>               s_out_context_tvalid,</div><div>  <span styl=
e=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">w=
ire</span>               s_out_context_tready</div><div>);</div><br><div>  =
<span style=3D"color:rgb(0,128,0)">//--------------------------------------=
-------------------------------------</span></div><div>  <span style=3D"col=
or:rgb(0,128,0)">//  Backend Interface</span></div><div>  <span style=3D"co=
lor:rgb(0,128,0)">//-------------------------------------------------------=
--------------------</span></div><br><div>  <span style=3D"color:rgb(0,0,25=
5)">wire</span>         data_i_flush_en;</div><div>  <span style=3D"color:r=
gb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">31</span>:<sp=
an style=3D"color:rgb(9,134,88)">0</span>]  data_i_flush_timeout;</div><div=
>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb=
(9,134,88)">63</span>:<span style=3D"color:rgb(9,134,88)">0</span>]  data_i=
_flush_active;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [=
<span style=3D"color:rgb(9,134,88)">63</span>:<span style=3D"color:rgb(9,13=
4,88)">0</span>]  data_i_flush_done;</div><div>  <span style=3D"color:rgb(0=
,0,255)">wire</span>         data_o_flush_en;</div><div>  <span style=3D"co=
lor:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">31</span=
>:<span style=3D"color:rgb(9,134,88)">0</span>]  data_o_flush_timeout;</div=
><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"colo=
r:rgb(9,134,88)">63</span>:<span style=3D"color:rgb(9,134,88)">0</span>]  d=
ata_o_flush_active;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</sp=
an> [<span style=3D"color:rgb(9,134,88)">63</span>:<span style=3D"color:rgb=
(9,134,88)">0</span>]  data_o_flush_done;</div><br><div>  <span style=3D"co=
lor:rgb(128,0,0)">backend_iface</span> #(</div><div>    .NOC_ID        (<sp=
an style=3D"color:rgb(9,134,88)">32&#39;h00000B16</span>),</div><div>    .N=
UM_DATA_I    (<span style=3D"color:rgb(9,134,88)">1</span>),</div><div>    =
.NUM_DATA_O    (<span style=3D"color:rgb(9,134,88)">1</span>),</div><div>  =
  .CTRL_FIFOSIZE ($clog2(<span style=3D"color:rgb(9,134,88)">32</span>)),</=
div><div>    .MTU           (MTU)</div><div>  ) <span style=3D"color:rgb(12=
8,0,0)">backend_iface_i</span> (</div><div>    .rfnoc_chdr_clk       (rfnoc=
_chdr_clk),</div><div>    .rfnoc_chdr_rst       (rfnoc_chdr_rst),</div><div=
>    .rfnoc_ctrl_clk       (rfnoc_ctrl_clk),</div><div>    .rfnoc_ctrl_rst =
      (rfnoc_ctrl_rst),</div><div>    .rfnoc_core_config    (rfnoc_core_con=
fig),</div><div>    .rfnoc_core_status    (rfnoc_core_status),</div><div>  =
  .data_i_flush_en      (data_i_flush_en),</div><div>    .data_i_flush_time=
out (data_i_flush_timeout),</div><div>    .data_i_flush_active  (data_i_flu=
sh_active),</div><div>    .data_i_flush_done    (data_i_flush_done),</div><=
div>    .data_o_flush_en      (data_o_flush_en),</div><div>    .data_o_flus=
h_timeout (data_o_flush_timeout),</div><div>    .data_o_flush_active  (data=
_o_flush_active),</div><div>    .data_o_flush_done    (data_o_flush_done)</=
div><div>  );</div></div></div></div>

--000000000000f3544005d4153942--

--===============4244705339624238131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4244705339624238131==--
