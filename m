Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A493AC9951
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2019 09:56:06 +0200 (CEST)
Received: from [::1] (port=45916 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFvxx-00067R-8r; Thu, 03 Oct 2019 03:56:01 -0400
Received: from mail-lj1-f170.google.com ([209.85.208.170]:35708)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ishai.alouche@gmail.com>)
 id 1iFvxt-0005zt-TC; Thu, 03 Oct 2019 03:55:58 -0400
Received: by mail-lj1-f170.google.com with SMTP id m7so1587510lji.2;
 Thu, 03 Oct 2019 00:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Fp31gApsgCZ48va9hhTQbuXGll0SP5Gvw5yb82rWJh8=;
 b=qrnPWvvobpsA2q18De2xpLaSp3aDTE9EsD/gh7C5nH2p+wmUNbUcvUH5Dh2KQJLQc4
 KO/z3SeZjlXimfiJDiNnjdjIrL8mEBvGadQ9Nd6NsK4Zzmgnw8SZI1sHTXu3JR6jvEdT
 ZFq7naHYtTUSuxn8bQzfuGRW1lfiKLqChCYEfZujZ/1TJHgsS8MP+EVrhTB7oUmL7VTR
 yCqHWxV5YrdD9yC52BAE9lJ5nATYX985DFMPV5870lYO1g4jWzDNKiqQH+YpRgv/bvi5
 R05hIRQooE6bfboEiH5m0I6ERYolWQbyW2QVjXrhm1LO0hW7vjpp5eDIL95dNRrV2NLL
 elbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Fp31gApsgCZ48va9hhTQbuXGll0SP5Gvw5yb82rWJh8=;
 b=S4CmYla81BHnsDlNzxnjTnvdjl40PREFSldciwS80Kzt8yggfoEMVR6cjbEEREExrQ
 51070jWj+NAmzcF/ONZGKraEskxfCy4Kvmd3l2Cla/HZ+7yDoFc1vw4awrnD46K7YQuj
 09gEYn/c1IzpZLzwi/+YfhNUkKkfnRzmQfJW3WmMHanK63xArW+KZeaKUPp1c8AbVkd5
 nRz0hXiI8Bxcvy7GOERBBYUFxuR6VpGAYWVQzrmIem/X+6I7lxgfoZhOTAe0SCMkG+10
 9F1CdLeXR7tP3DgkqZTQAtnZsOFMJrHGVgz849jexfI5MO0Y+Wz3Kpkk9ibvlc48INVX
 cqgQ==
X-Gm-Message-State: APjAAAXSUIWiODPNWdUaHyUOlT8lF5btdrClyp21jPNUVtQFwodDjKvC
 n0NGFbJ8Vrpns7Q/nU6G3ItVlGt3TWUrUPFCTPo4XLg6
X-Google-Smtp-Source: APXvYqzk+iTMJIpzSocg4SMJnrF/Dazm5VmjfIt9FMqTEmmqwW5ISKonjwmzW3VVGbTfIcg2+LR4BQKx9FVBIbNLY0E=
X-Received: by 2002:a2e:b045:: with SMTP id d5mr5247379ljl.105.1570089296043; 
 Thu, 03 Oct 2019 00:54:56 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 3 Oct 2019 10:54:44 +0300
Message-ID: <CAC8T01nXkLDG1ZAMcevpkHCDUBUVmuVwVRL4e+vZLEB2hzbJcg@mail.gmail.com>
To: usrp-users@lists.ettus.com, usrp-users-request@lists.ettus.com
Subject: [USRP-users] error to write and read from user register x310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: ishai alouche via USRP-users <usrp-users@lists.ettus.com>
Reply-To: ishai alouche <ishai.alouche@gmail.com>
Content-Type: multipart/mixed; boundary="===============3475309758742366515=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3475309758742366515==
Content-Type: multipart/alternative; boundary="000000000000c1a40e0593fce6cf"

--000000000000c1a40e0593fce6cf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I work with X310 and I try to write to user register and read to verify
that the value was update.

I change the code like in the instruction at the following  website:
https://kb.ettus.com/Getting_Started_with_RFNoC_Development

The relevant code from the test-bench is:








*    /********************************************************    ** Test 4
-- Write / readback user registers
********************************************************/
`TEST_CASE_START("Write / readback user registers");    random_word =3D 5; =
//
$random();    tb_streamer.write_user_reg(sid_noc_block_TxChannelSrc,
noc_block_TxChannelSrc.SR_MIN_BW, random_word[21:0]);
tb_streamer.read_user_reg(sid_noc_block_TxChannelSrc, 0, readback);
`ASSERT_ERROR(readback[21:0] =3D=3D random_word[21:0], s);*

The relevant code from the noc block is:

*  localparam SR_USER_REG_BASE =3D 128;*

*  localparam [7:0] SR_MIN_BW =3D SR_USER_REG_BASE;*

*  wire [21:0] min_BW;*






* setting_reg #(    .my_addr(SR_MIN_BW), .awidth(8), .width(22))  sr_min_BW
(    .clk(ce_clk), .rst(ce_rst),    .strobe(set_stb), .addr(set_addr),
.in(set_data), .out(min_BW), .changed()); *









*  always @(posedge ce_clk) begin    case(rb_addr)      8'd0 : rb_data <=3D
{42'd0, min_BW};      8'd1 : rb_data <=3D {42'd0, max_BW};      8'd2 :
rb_data <=3D {42'd0, BW_change_rate};      8'd3 : rb_data <=3D {48'd0,
payload_length};            default : rb_data <=3D 64'h0BADC0DE0BADC0DE;
endcase  end*

when i run the make command with the noc_block_TxChannelSrc_tb , I get the
following warning:








*WARNING: [XSIM 43-3431] One or more environment variables have been
detected which affect the operation of the C compiler. These are typically
not set in standard installations and are not tested by Xilinx, however
they may be appropriate for your system, so the flow will attempt to
continue.  If errors occur, try running fuse with the "-mt off -v 1"
switches to see more information from the C compiler. The following
environment variables have been detected:    LIBRARY_PATHStarting static
elaborationWARNING: [VRFC 10-278] actual bit length 3 differs from formal
bit length 4 for port rb_addr
[/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelSrc=
_tb/noc_block_TxChannelSrc_tb.sv:35]WARNING:
[VRFC 10-278] actual bit length 4 differs from formal bit length 2 for port
dest
[/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc_shell.v:230]WARNING:
[VRFC 10-278] actual bit length 4 differs from formal bit length 2 for port
dest
[/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc_block_export_io.v:183=
]WARNING:
[VRFC 10-526] concatenation with unsized literal; will interpret as 32 bits
[/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelSrc=
_tb/noc_block_TxChannelSrc_tb.sv:75]WARNING:
[VRFC 10-526] concatenation with unsized literal; will interpret as 32 bits
[/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelSrc=
_tb/noc_block_TxChannelSrc_tb.sv:76]WARNING:
[VRFC 10-1783] select index -1 into value is out of bounds
[/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/control/synchronizer_impl.v:38]=
*

The test don't stop to run, and when I get the test results the same value
is always read.














*=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3DTESTBENCH STARTED:
noc_block_TxChannelSrc=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D[TEST
CASE   1] (t=3D000000000) BEGIN: Wait for Reset...[TEST CASE   1]
(t=3D000001002) DONE... Passed[TEST CASE   2] (t=3D000001002) BEGIN: Check =
NoC
ID...Read TxChannelSrc NOC ID: 1111222233334444[TEST CASE   2]
(t=3D000001238) DONE... Passed[TEST CASE   3] (t=3D000001238) BEGIN: Connec=
t
RFNoC blocks...Connecting noc_block_tb (SID: 1:0) to noc_block_TxChannelSrc
(SID: 0:0)Connecting noc_block_TxChannelSrc (SID: 0:0) to noc_block_tb
(SID: 1:0)[TEST CASE   3] (t=3D000006075) DONE... Passed[TEST CASE   4]
(t=3D000006075) BEGIN: Write / readback user registers...Error: User regist=
er
0 incorrect readback! Expected: 3359812, Actual 5Time: 6602500 ps
 Iteration: 0  Process: /noc_block_TxChannelSrc_tb/Initial43_1195  File:
/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelSrc_=
tb/noc_block_TxChannelSrc_tb.sv*

please someone can explain me what is wrong here.

BR
Ishai

--=20
=D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=A9
054-5823400

--000000000000c1a40e0593fce6cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I work with X310 and I try to write=
 to user register and read to verify that the value was update.</div><div><=
br></div><div>I change the code like in the instruction at the following=C2=
=A0 website:=C2=A0<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNo=
C_Development">https://kb.ettus.com/Getting_Started_with_RFNoC_Development<=
/a>=C2=A0</div><div><br></div><div>The relevant code from the test-bench is=
:</div><div><b>=C2=A0 =C2=A0 /*********************************************=
***********<br>=C2=A0 =C2=A0 ** Test 4 -- Write / readback user registers<b=
r>=C2=A0 =C2=A0 ********************************************************/<b=
r>=C2=A0 =C2=A0 `TEST_CASE_START(&quot;Write / readback user registers&quot=
;);<br>=C2=A0 =C2=A0 random_word =3D 5; // $random();<br>=C2=A0 =C2=A0 tb_s=
treamer.write_user_reg(sid_noc_block_TxChannelSrc, noc_block_TxChannelSrc.S=
R_MIN_BW, random_word[21:0]);<br>=C2=A0 =C2=A0 tb_streamer.read_user_reg(si=
d_noc_block_TxChannelSrc, 0, readback);<br>=C2=A0 =C2=A0 `ASSERT_ERROR(read=
back[21:0] =3D=3D random_word[21:0], s);<br></b></div><div><b><br></b></div=
><div><div>The relevant code from the noc block is:</div><div></div></div><=
div><b>=C2=A0 localparam SR_USER_REG_BASE =3D 128;<br></b></div><div><b>=C2=
=A0 localparam [7:0] SR_MIN_BW =3D SR_USER_REG_BASE;<br></b></div><div><b>=
=C2=A0 wire [21:0] min_BW;<br></b></div><div><b><br></b></div><div><b>=C2=
=A0setting_reg #(<br>=C2=A0 =C2=A0 .my_addr(SR_MIN_BW), .awidth(8), .width(=
22))<br>=C2=A0 sr_min_BW (<br>=C2=A0 =C2=A0 .clk(ce_clk), .rst(ce_rst),<br>=
=C2=A0 =C2=A0 .strobe(set_stb), .addr(set_addr), .in(set_data), .out(min_BW=
), .changed());=C2=A0<br></b></div><div><b><br></b></div><div><b>=C2=A0 alw=
ays @(posedge ce_clk) begin<br>=C2=A0 =C2=A0 case(rb_addr)<br>=C2=A0 =C2=A0=
 =C2=A0 8&#39;d0 : rb_data &lt;=3D {42&#39;d0, min_BW};<br>=C2=A0 =C2=A0 =
=C2=A0 8&#39;d1 : rb_data &lt;=3D {42&#39;d0, max_BW};<br>=C2=A0 =C2=A0 =C2=
=A0 8&#39;d2 : rb_data &lt;=3D {42&#39;d0, BW_change_rate};<br>=C2=A0 =C2=
=A0 =C2=A0 8&#39;d3 : rb_data &lt;=3D {48&#39;d0, payload_length}; =C2=A0 =
=C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 default : rb_data &lt;=3D 64&#39;h0BA=
DC0DE0BADC0DE;<br>=C2=A0 =C2=A0 endcase<br>=C2=A0 end</b><br></div><div><b>=
<br></b></div><div>when i run the make command with the noc_block_TxChannel=
Src_tb , I get the following warning:</div><div><b>WARNING: [XSIM 43-3431] =
One or more environment variables have been detected which affect the opera=
tion of the C compiler. These are typically not set in standard installatio=
ns and are not tested by Xilinx, however they may be appropriate for your s=
ystem, so the flow will attempt to continue.=C2=A0 If errors occur, try run=
ning fuse with the &quot;-mt off -v 1&quot; switches to see more informatio=
n from the C compiler. The following environment variables have been detect=
ed:<br>=C2=A0 =C2=A0 LIBRARY_PATH<br>Starting static elaboration<br>WARNING=
: [VRFC 10-278] actual bit length 3 differs from formal bit length 4 for po=
rt rb_addr [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_T=
xChannelSrc_tb/noc_block_TxChannelSrc_tb.sv:35]<br>WARNING: [VRFC 10-278] a=
ctual bit length 4 differs from formal bit length 2 for port dest [/home/us=
er/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc_shell.v:230]<br>WARNING: [VRFC=
 10-278] actual bit length 4 differs from formal bit length 2 for port dest=
 [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc_block_export_io.v:18=
3]<br>WARNING: [VRFC 10-526] concatenation with unsized literal; will inter=
pret as 32 bits [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_bl=
ock_TxChannelSrc_tb/noc_block_TxChannelSrc_tb.sv:75]<br>WARNING: [VRFC 10-5=
26] concatenation with unsized literal; will interpret as 32 bits [/home/us=
er/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelSrc_tb/noc_b=
lock_TxChannelSrc_tb.sv:76]<br>WARNING: [VRFC 10-1783] select index -1 into=
 value is out of bounds [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/control=
/synchronizer_impl.v:38]</b><br></div><div><br></div><div>The test don&#39;=
t stop to run, and when I get the test results the same value is always rea=
d.</div><div><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>TESTBENCH STARTED: noc_block_TxChan=
nelSrc<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[TEST CASE =C2=A0 1] (t=3D000000000) BEGI=
N: Wait for Reset...<br>[TEST CASE =C2=A0 1] (t=3D000001002) DONE... Passed=
<br>[TEST CASE =C2=A0 2] (t=3D000001002) BEGIN: Check NoC ID...<br>Read TxC=
hannelSrc NOC ID: 1111222233334444<br>[TEST CASE =C2=A0 2] (t=3D000001238) =
DONE... Passed<br>[TEST CASE =C2=A0 3] (t=3D000001238) BEGIN: Connect RFNoC=
 blocks...<br>Connecting noc_block_tb (SID: 1:0) to noc_block_TxChannelSrc =
(SID: 0:0)<br>Connecting noc_block_TxChannelSrc (SID: 0:0) to noc_block_tb =
(SID: 1:0)<br>[TEST CASE =C2=A0 3] (t=3D000006075) DONE... Passed<br>[TEST =
CASE =C2=A0 4] (t=3D000006075) BEGIN: Write / readback user registers...<br=
>Error: User register 0 incorrect readback! Expected: 3359812, Actual 5<br>=
Time: 6602500 ps =C2=A0Iteration: 0 =C2=A0Process: /noc_block_TxChannelSrc_=
tb/Initial43_1195 =C2=A0File: /home/user/rfnoc_01/rfnoc-modules/rfnoc/testb=
enches/noc_block_TxChannelSrc_tb/noc_block_TxChannelSrc_tb.sv</b><br></div>=
<div><b><br></b></div><div>please someone can explain me what is wrong here=
.</div><div><br></div><div>BR</div><div>Ishai<br clear=3D"all"><div><br></d=
iv>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div>=D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=
=A9</div>
<div>054-5823400</div></div></div></div></div>

--000000000000c1a40e0593fce6cf--


--===============3475309758742366515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3475309758742366515==--

