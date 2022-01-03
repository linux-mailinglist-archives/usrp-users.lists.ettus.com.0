Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E23482FF5
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 11:37:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68BC63852C1
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jan 2022 05:37:37 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="lFqXNPJL";
	dkim-atps=neutral
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 0E0FD384EA1
	for <usrp-users@lists.ettus.com>; Mon,  3 Jan 2022 05:36:29 -0500 (EST)
Received: by mail-yb1-f176.google.com with SMTP id 139so66272057ybd.3
        for <usrp-users@lists.ettus.com>; Mon, 03 Jan 2022 02:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=WykEk6vJB4Bq18j3ao4cO2yaCitqNDa4sumAs51Hqx8=;
        b=lFqXNPJL48cPWC1I1fAWln/KbmWXciyLn1DidBiR1rNAuyKnJHSuUUv6ZWO6duS1Ua
         VY0axER0RrDjwtZrsLPWSQvInimGA0fxc6KwZGw9BR1iQtj5mV+1IMoDPGVAP9mEPKXm
         YnTMa3hsPMrflYPCJExuafORMCCBZOKQFvpmfg7+FFkB2nzWXOCuajdchLlqswcfIeJ1
         yHH52epMZo27HG1nqy7TuNkb0OrwC6nfeXl0APm/iE18WE1zRrkMvpU1Wj6V6N3oEOc8
         afXYE2lBIFR3WXxpdmK/Uqd3lhaaeAWnwzzQA+5kP2QRVyAH0Gwoh+lb1QffU7TcOr2U
         jv8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WykEk6vJB4Bq18j3ao4cO2yaCitqNDa4sumAs51Hqx8=;
        b=aGDhPdvqmx0feHQmJwWT/tHRk+RVKP2vh1StAYHOS1SxmznO6lqbaUaRGRbrIFw1AF
         AEbn3p+foEO69sh1CGcxDMksNGEltgRWlLC7NsgIn/+/ob+CWqF8mIpOTnGxyG1V/YM8
         3NNqVaTOC2fRfseGD+6CuzzgFVCCXHnXaTTUVFPm76ULhmGmlIjWSfMLD6RJKNKzVWgf
         0u/qCDGqwTDEe3ImZ8e8pRVQRnuAbBFvczXcfxE2d5k4wOoJWtb4mwfZ9KMvUgpRyeKg
         o6yh714MKXE7Bg6M8LoXYyj4y9F/nNB+DVqk5m7x3tdTz6zLcDSydyeUyLkv+b3koxfW
         4i/A==
X-Gm-Message-State: AOAM533Oi+HdHzyJ/OIkDGdLJQkur+k40xBrGsNjPxqwr4fA6nso54bF
	6plaC8pamIixpsTOcuXk8hbuhuJgBvwFgeOoNerSX434MvH+wiNxyPg=
X-Google-Smtp-Source: ABdhPJyrL6Y4BQzPGsELP8MN09wuR1DG/aFpQDltix+UXc4KAzgDnmLPSADOggOqWh4OAZlCHvA3d05jUz7rTMqhzm0=
X-Received: by 2002:a25:9d82:: with SMTP id v2mr55163017ybp.383.1641206188202;
 Mon, 03 Jan 2022 02:36:28 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Mon, 3 Jan 2022 14:06:16 +0330
Message-ID: <CAA=S3Pv+aWAsGxtMAj+JcNA9FG8H6WFdQsKgbSJ0SS=+Mym_vA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: G44BXYXR2XZ5MPBS7NEDTYLT4CO3TG2S
X-Message-ID-Hash: G44BXYXR2XZ5MPBS7NEDTYLT4CO3TG2S
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Can any guide me in rfnoc blocks?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G44BXYXR2XZ5MPBS7NEDTYLT4CO3TG2S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7131118448497811207=="

--===============7131118448497811207==
Content-Type: multipart/alternative; boundary="000000000000d9deff05d4ab1725"

--000000000000d9deff05d4ab1725
Content-Type: text/plain; charset="UTF-8"

Hi, I am studying  RFNOC blocks for USRP, the file that I am reading is in
the below link...
https://files.ettus.com/app_notes/RFNoC_Specification.pdf
I know Verilog language, so another part I am studying RFNOC blocks Verilog
Code.

However knowing Verilog and RFNoC_Specification is not enough, because I
think I am faced with a Verilog framework for kintex7.
So I had some questions yet. Verilog code for an RFNOC block has two main
files for example: for gain example, we have two files:
noc_shell_gain.v
rfnoc_block_gain.v

my question is about noc_shell_gain.v file. there is a section defining the
input module...
anyone can guide me on whats do this section(Client Interface)? what's the
difference between
this section and the  Framework Interface section?
what's the difference between context and payload streams?
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

--000000000000d9deff05d4ab1725
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I am studying=C2=A0 RFNOC blocks for USRP, the file th=
at I am reading is in the below link...<div><a href=3D"https://files.ettus.=
com/app_notes/RFNoC_Specification.pdf">https://files.ettus.com/app_notes/RF=
NoC_Specification.pdf</a><br></div><div>I know Verilog language, so another=
 part I am studying RFNOC blocks Verilog Code.</div><div><br></div><div>How=
ever knowing Verilog and RFNoC_Specification is not enough, because I think=
 I am faced with a Verilog framework for kintex7.</div><div>So I had some q=
uestions yet. Verilog code for an RFNOC block has two main files for exampl=
e: for gain example, we have two files:</div><div><div style=3D"color:rgb(0=
,0,0);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospa=
ce,&quot;Droid Sans Fallback&quot;;line-height:19px;white-space:pre"><div s=
tyle=3D"font-size:14px"> noc_shell_gain.v</div><div style=3D"font-size:14px=
"> rfnoc_block_gain.v</div><div style=3D"font-size:14px"><br></div><div sty=
le=3D"">my question is about noc_shell_gain.v file. there is a section defi=
ning the input module...</div><div style=3D"">anyone can guide me on whats =
do this section(Client Interface)? what&#39;s the difference between </div>=
<div style=3D"">this section and the =C2=A0Framework Interface section?</di=
v><div style=3D"">what&#39;s the difference between context and payload str=
eams?</div><div style=3D"">thanks in advance</div><div style=3D""><div styl=
e=3D"font-size:14px;line-height:19px"><div> <span style=3D"color:rgb(0,128,=
0)">//---------------------</span></div><div style=3D"line-height:19px"><di=
v>  <span style=3D"color:rgb(0,128,0)">// Framework Interface</span></div><=
div>  <span style=3D"color:rgb(0,128,0)">//---------------------</span></di=
v><br><div>  <span style=3D"color:rgb(0,128,0)">// RFNoC Framework Clocks</=
span></div><div>  <span style=3D"color:rgb(0,0,255)">input</span>  <span st=
yle=3D"color:rgb(0,0,255)">wire</span> rfnoc_chdr_clk,</div><div>  <span st=
yle=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)"=
>wire</span> rfnoc_ctrl_clk,</div><br><div>  <span style=3D"color:rgb(0,128=
,0)">// NoC Shell Generated Resets</span></div><div>  <span style=3D"color:=
rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span> =
rfnoc_chdr_rst,</div><div>  <span style=3D"color:rgb(0,0,255)">output</span=
> <span style=3D"color:rgb(0,0,255)">wire</span> rfnoc_ctrl_rst,</div><br><=
div>  <span style=3D"color:rgb(0,128,0)">// RFNoC Backend Interface</span><=
/div><div>  <span style=3D"color:rgb(0,0,255)">input</span>  <span style=3D=
"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">511</=
span>:<span style=3D"color:rgb(9,134,88)">0</span>]          rfnoc_core_con=
fig,</div><div>  <span style=3D"color:rgb(0,0,255)">output</span> <span sty=
le=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color:rgb(9,134,88)">=
511</span>:<span style=3D"color:rgb(9,134,88)">0</span>]          rfnoc_cor=
e_status,</div><br><div>  <span style=3D"color:rgb(0,128,0)">// AXIS-CHDR I=
nput Ports (from framework)</span></div><div>  <span style=3D"color:rgb(0,0=
,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [(<span=
 style=3D"color:rgb(9,134,88)">1</span>)*CHDR_W-<span style=3D"color:rgb(9,=
134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>] s_rfnoc_chd=
r_tdata,</div><div>  <span style=3D"color:rgb(0,0,255)">input</span>  <span=
 style=3D"color:rgb(0,0,255)">wire</span> [(<span style=3D"color:rgb(9,134,=
88)">1</span>)-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"=
color:rgb(9,134,88)">0</span>]        s_rfnoc_chdr_tlast,</div><div>  <span=
 style=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,25=
5)">wire</span> [(<span style=3D"color:rgb(9,134,88)">1</span>)-<span style=
=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</sp=
an>]        s_rfnoc_chdr_tvalid,</div><div>  <span style=3D"color:rgb(0,0,2=
55)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span> [(<span s=
tyle=3D"color:rgb(9,134,88)">1</span>)-<span style=3D"color:rgb(9,134,88)">=
1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]        s_rfnoc_chdr_=
tready,</div><div>  <span style=3D"color:rgb(0,128,0)">// AXIS-CHDR Output =
Ports (to framework)</span></div><div>  <span style=3D"color:rgb(0,0,255)">=
output</span> <span style=3D"color:rgb(0,0,255)">wire</span> [(<span style=
=3D"color:rgb(9,134,88)">1</span>)*CHDR_W-<span style=3D"color:rgb(9,134,88=
)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>] m_rfnoc_chdr_tdat=
a,</div><div>  <span style=3D"color:rgb(0,0,255)">output</span> <span style=
=3D"color:rgb(0,0,255)">wire</span> [(<span style=3D"color:rgb(9,134,88)">1=
</span>)-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:=
rgb(9,134,88)">0</span>]        m_rfnoc_chdr_tlast,</div><div>  <span style=
=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wi=
re</span> [(<span style=3D"color:rgb(9,134,88)">1</span>)-<span style=3D"co=
lor:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</span>]  =
      m_rfnoc_chdr_tvalid,</div><div>  <span style=3D"color:rgb(0,0,255)">i=
nput</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [(<span style=
=3D"color:rgb(9,134,88)">1</span>)-<span style=3D"color:rgb(9,134,88)">1</s=
pan>:<span style=3D"color:rgb(9,134,88)">0</span>]        m_rfnoc_chdr_trea=
dy,</div><br><div>  <span style=3D"color:rgb(0,128,0)">// AXIS-Ctrl Control=
 Input Port (from framework)</span></div><div>  <span style=3D"color:rgb(0,=
0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span=
 style=3D"color:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)=
">0</span>]           s_rfnoc_ctrl_tdata,</div><div>  <span style=3D"color:=
rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> =
                 s_rfnoc_ctrl_tlast,</div><div>  <span style=3D"color:rgb(0=
,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span>      =
            s_rfnoc_ctrl_tvalid,</div><div>  <span style=3D"color:rgb(0,0,2=
55)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>          =
        s_rfnoc_ctrl_tready,</div><div>  <span style=3D"color:rgb(0,128,0)"=
>// AXIS-Ctrl Control Output Port (to framework)</span></div><div>  <span s=
tyle=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)=
">wire</span> [<span style=3D"color:rgb(9,134,88)">31</span>:<span style=3D=
"color:rgb(9,134,88)">0</span>]           m_rfnoc_ctrl_tdata,</div><div>  <=
span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,=
0,255)">wire</span>                  m_rfnoc_ctrl_tlast,</div><div>  <span =
style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255=
)">wire</span>                  m_rfnoc_ctrl_tvalid,</div><div>  <span styl=
e=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">w=
ire</span>                  m_rfnoc_ctrl_tready,</div><br><div>  <span styl=
e=3D"color:rgb(0,128,0)">//---------------------</span></div><div>  <span s=
tyle=3D"color:rgb(0,128,0)">// Client Interface</span></div><div>  <span st=
yle=3D"color:rgb(0,128,0)">//---------------------</span></div><br><div>  <=
span style=3D"color:rgb(0,128,0)">// CtrlPort Clock and Reset</span></div><=
div>  <span style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color=
:rgb(0,0,255)">wire</span>               ctrlport_clk,</div><div>  <span st=
yle=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)"=
>wire</span>               ctrlport_rst,</div><div>  <span style=3D"color:r=
gb(0,128,0)">// CtrlPort Master</span></div><div>  <span style=3D"color:rgb=
(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>    =
           m_ctrlport_req_wr,</div><div>  <span style=3D"color:rgb(0,0,255)=
">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>             =
  m_ctrlport_req_rd,</div><div>  <span style=3D"color:rgb(0,0,255)">output<=
/span> <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"color=
:rgb(9,134,88)">19</span>:<span style=3D"color:rgb(9,134,88)">0</span>]    =
    m_ctrlport_req_addr,</div><div>  <span style=3D"color:rgb(0,0,255)">out=
put</span> <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"c=
olor:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0</span>]=
        m_ctrlport_req_data,</div><div>  <span style=3D"color:rgb(0,0,255)"=
>input</span>  <span style=3D"color:rgb(0,0,255)">wire</span>              =
 m_ctrlport_resp_ack,</div><div>  <span style=3D"color:rgb(0,0,255)">input<=
/span>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"colo=
r:rgb(9,134,88)">31</span>:<span style=3D"color:rgb(9,134,88)">0</span>]   =
     m_ctrlport_resp_data,</div><br><div>  <span style=3D"color:rgb(0,128,0=
)">// AXI-Stream Payload Context Clock and Reset</span></div><div>  <span s=
tyle=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)=
">wire</span>               axis_data_clk,</div><div>  <span style=3D"color=
:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>=
               axis_data_rst,</div><div>  <span style=3D"color:rgb(0,128,0)=
">// Payload Stream to User Logic: in</span></div><div>  <span style=3D"col=
or:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</spa=
n> [<span style=3D"color:rgb(9,134,88)">32</span>*<span style=3D"color:rgb(=
9,134,88)">1</span>-<span style=3D"color:rgb(9,134,88)">1</span>:<span styl=
e=3D"color:rgb(9,134,88)">0</span>]    m_in_payload_tdata,</div><div>  <spa=
n style=3D"color:rgb(0,0,255)">output</span> <span style=3D"color:rgb(0,0,2=
55)">wire</span> [<span style=3D"color:rgb(9,134,88)">1</span>-<span style=
=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</sp=
an>]       m_in_payload_tkeep,</div><div>  <span style=3D"color:rgb(0,0,255=
)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>            =
   m_in_payload_tlast,</div><div>  <span style=3D"color:rgb(0,0,255)">outpu=
t</span> <span style=3D"color:rgb(0,0,255)">wire</span>               m_in_=
payload_tvalid,</div><div>  <span style=3D"color:rgb(0,0,255)">input</span>=
  <span style=3D"color:rgb(0,0,255)">wire</span>               m_in_payload=
_tready,</div><div>  <span style=3D"color:rgb(0,128,0)">// Context Stream t=
o User Logic: in</span></div><div>  <span style=3D"color:rgb(0,0,255)">outp=
ut</span> <span style=3D"color:rgb(0,0,255)">wire</span> [CHDR_W-<span styl=
e=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">0</s=
pan>]  m_in_context_tdata,</div><div>  <span style=3D"color:rgb(0,0,255)">o=
utput</span> <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D=
"color:rgb(9,134,88)">3</span>:<span style=3D"color:rgb(9,134,88)">0</span>=
]         m_in_context_tuser,</div><div>  <span style=3D"color:rgb(0,0,255)=
">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>             =
  m_in_context_tlast,</div><div>  <span style=3D"color:rgb(0,0,255)">output=
</span> <span style=3D"color:rgb(0,0,255)">wire</span>               m_in_c=
ontext_tvalid,</div><div>  <span style=3D"color:rgb(0,0,255)">input</span> =
 <span style=3D"color:rgb(0,0,255)">wire</span>               m_in_context_=
tready,</div><div>  <span style=3D"color:rgb(0,128,0)">// Payload Stream fr=
om User Logic: out</span></div><div>  <span style=3D"color:rgb(0,0,255)">in=
put</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [<span style=3D"=
color:rgb(9,134,88)">32</span>*<span style=3D"color:rgb(9,134,88)">1</span>=
-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,13=
4,88)">0</span>]    s_out_payload_tdata,</div><div>  <span style=3D"color:r=
gb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span> [=
<span style=3D"color:rgb(9,134,88)">0</span>:<span style=3D"color:rgb(9,134=
,88)">0</span>]         s_out_payload_tkeep,</div><div>  <span style=3D"col=
or:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</spa=
n>               s_out_payload_tlast,</div><div>  <span style=3D"color:rgb(=
0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span>     =
          s_out_payload_tvalid,</div><div>  <span style=3D"color:rgb(0,0,25=
5)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>           =
    s_out_payload_tready,</div><div>  <span style=3D"color:rgb(0,128,0)">//=
 Context Stream from User Logic: out</span></div><div>  <span style=3D"colo=
r:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</span=
> [CHDR_W-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color=
:rgb(9,134,88)">0</span>]  s_out_context_tdata,</div><div>  <span style=3D"=
color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</=
span> [<span style=3D"color:rgb(9,134,88)">3</span>:<span style=3D"color:rg=
b(9,134,88)">0</span>]         s_out_context_tuser,</div><div>  <span style=
=3D"color:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wi=
re</span>               s_out_context_tlast,</div><div>  <span style=3D"col=
or:rgb(0,0,255)">input</span>  <span style=3D"color:rgb(0,0,255)">wire</spa=
n>               s_out_context_tvalid,</div><div>  <span style=3D"color:rgb=
(0,0,255)">output</span> <span style=3D"color:rgb(0,0,255)">wire</span>    =
           s_out_context_tready</div></div></div></div><div style=3D"font-s=
ize:14px"><br></div></div></div></div>

--000000000000d9deff05d4ab1725--

--===============7131118448497811207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7131118448497811207==--
