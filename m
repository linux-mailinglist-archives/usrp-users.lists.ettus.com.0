Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA04E02CF
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 13:25:41 +0200 (CEST)
Received: from [::1] (port=50072 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMsIB-0000Vw-EF; Tue, 22 Oct 2019 07:25:35 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:33231)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ishai.alouche@gmail.com>)
 id 1iMsI7-0000Ps-Bf; Tue, 22 Oct 2019 07:25:31 -0400
Received: by mail-lj1-f177.google.com with SMTP id a22so16774055ljd.0;
 Tue, 22 Oct 2019 04:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=QqdIpUx2FJFQMhRwxKg1vADIU6XAyRT8iuTO6row1xM=;
 b=cPj+VUh80jmEoKrD4XV0EL02CbVjxhCBDgeHaq+VrBHPLfuwrCITDKPXgxhURS228M
 FJDgNt1HYKp1Hl8j+ZnsG8sO6uhqx+xH1nxWGC9h5LLwPhIvmgR4S87o8QZwE9JnQyCU
 Zlri53E3HWNf9IXA0E8WwMxUgrU2g/ns5OcvvN4uD2Ja4cv8j0K3qm669oFMIVZngpAX
 hgghwkJbwzItHamkOqfLHheieWBL3GflkhCGC0uaA7Kp7ASF5iYrj6sZdQnXZ8JR5lsQ
 sPm/5h45AaGpvjpWF1wHelzx8aMWs3bhb8X6XsbTFx2dqzAm7c7+HYCWmXYgmEdbN0XB
 P5Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=QqdIpUx2FJFQMhRwxKg1vADIU6XAyRT8iuTO6row1xM=;
 b=etCW9ROxX3nnGv0LM7bvwWKy2zncmNhiL3X3ADHKyKCaYgNijYexuYjgiMsGUeNnMR
 Vnh708T55WvUd/7HeDvY8tXF40dtNHoVPI1dgNLggqFSJGQ1J33DGXYpSP2/3LTX1lxa
 hQs6MRiU7VNc0x/aaA/cUu/rjkPECdrXr6RZqwbkJzQeg1CCAD2ryeJi7hDN1LyogdsZ
 qPRYmtZsyg7O84764ghmqn0b4mEwunWVZqfER9gid38TRpR+hytJH+5sLDnHZnUQQeEO
 +VbkCgaSzlXIwQX0cU+ELBTZU8HweiNk3Dk5Xy99k8qux5B0BKId+BbmF383XD8OhKY4
 0tZA==
X-Gm-Message-State: APjAAAUSkukNJh2g1HaeJZjMrwpwpuBM1nkDCA8IoFmGdsOrR1fjpUks
 rs7izDMdGXz9KxpQXUrOnYzgaVI4RdD5X5NTChFrA0dn
X-Google-Smtp-Source: APXvYqzEZFPi9nImJMoTXu7nZjEJv8xJWMoOaPAy7bjthaiO/iEqbFFcnLpByYv3xvQd2jKi7SANScxaRYWJ5TesMu0=
X-Received: by 2002:a2e:9e0a:: with SMTP id e10mr18820897ljk.35.1571743469618; 
 Tue, 22 Oct 2019 04:24:29 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 22 Oct 2019 14:24:18 +0300
Message-ID: <CAC8T01=CSd0sr-pUGWAnaeaVHKB4AoTRdSK18NovSp=drF3Dxw@mail.gmail.com>
To: usrp-users-request@lists.ettus.com, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] Unable to Load X310 Registers
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
Content-Type: multipart/mixed; boundary="===============7486051180294052470=="
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

--===============7486051180294052470==
Content-Type: multipart/alternative; boundary="0000000000002f4b7105957e0b28"

--0000000000002f4b7105957e0b28
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am running a testbench on my architecture, and all default tests pass as
expected. This includes TEST 4 which tests writing and reading back from
registers. The problem is - the following tests prove the registers hold
their initial (default) value and not the value I tried writing to them in
TEST 4.

Did I miss something in the process?
what possible reasons may cause this problem?

Scripts of both Testbench code and NoC_block code given below.

Thanks in advance,
Ishai

*Testbench Code:*

*    /******************************

****************************    ** Test 4 -- Write / readback user
registers    *******************************


***************************/    `TEST_CASE_START("Write user registers");
  random_word =3D 0;    tb_streamer.write_user_reg(**sid_noc_block_TxChanne=
lSrc,
noc_block_TxChannelSrc.SR_MIN_*

*BW, random_word[21:0]);    random_word =3D 5;
tb_streamer.write_user_reg(**sid_noc_block_TxChannelSrc,
noc_block_TxChannelSrc.SR_MAX_*

*BW, random_word[21:0]);    random_word =3D 10;
tb_streamer.write_user_reg(**sid_noc_block_TxChannelSrc,
noc_block_TxChannelSrc.SR_BW_*

*CHANGE_RATE, random_word[21:0]);    random_word =3D 256;
tb_streamer.write_user_reg(**sid_noc_block_TxChannelSrc,
noc_block_TxChannelSrc.SR_PKT_*
*SIZE, random_word[15:0]);    `TEST_CASE_DONE(1);*

*noc_block verilog code:*















*localparam SR_USER_REG_BASE =3D 129;    localparam [7:0] SR_MIN_BW =3D 129=
;
//SR_USER_REG_BASE;  localparam [7:0] SR_MAX_BW =3D 130;//TeSR_USER_REG_BAS=
E
+ 8'd1;  localparam [7:0] SR_BW_CHANGE_RATE =3D 131;//SR_USER_REG_BASE +
8'd2;  localparam [7:0] SR_PKT_SIZE       =3D 132; //SR_USER_REG_BASE +
8'd3;  wire [15:0] payload_length;  wire [21:0] min_BW;  wire [21:0]
max_BW;  wire [21:0] BW_change_rate;     cvita_hdr_encoder
cvita_hdr_encoder (    .pkt_type(2'd0), .eob(1'b0), .has_time(1'b0),
.seqnum(12'd0), .payload_length(payload_*




























*length), .dst_sid(next_dst_sid), .src_sid(src_sid),    .vita_time(64'd0),
  .header(s_axis_data_tuser));      // Set packet size  setting_reg #(
.my_addr(SR_PKT_SIZE), .awidth(8), .width(16),    .at_reset(4)) // Set a
safe default packet size in case packet size is never set
set_payload_length (    .clk(ce_clk), .rst(ce_rst),    .strobe(set_stb),
.addr(set_addr), .in(set_data),    .out(payload_length), .changed());
    setting_reg #(    .my_addr(SR_MIN_BW), .awidth(8), .width(22))
sr_min_bw (    .clk(ce_clk), .rst(ce_rst),    .strobe(set_stb),
.addr(set_addr), .in(set_data), .out(min_BW), .changed());   setting_reg
#(    .my_addr(SR_MAX_BW), .awidth(8), .width(22))  sr_max_bw (
.clk(ce_clk), .rst(ce_rst),    .strobe(set_stb), .addr(set_addr),
.in(set_data), .out(max_BW), .changed());   setting_reg #(
.my_addr(SR_BW_CHANGE_RATE), .awidth(8), .width(22))  sr_bw_change_rate (
  .clk(ce_clk), .rst(ce_rst),    .strobe(set_stb), .addr(set_addr),
.in(set_data), .out(BW_change_rate), .changed()); *


--=20
=D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=A9
054-5823400

--0000000000002f4b7105957e0b28
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am running a testbench on my arch=
itecture, and=20
all default=C2=A0tests pass as expected. This includes TEST 4 which tests=
=20
writing and reading back from registers. The problem is - the following=20
tests prove the registers hold their initial (default) value and not the
 value I tried writing to them in TEST 4.</div><div><br></div><div>Did I mi=
ss=C2=A0something in the process?</div><div>what possible reasons may cause=
 this problem?</div><div><br></div><div>Scripts of both Testbench code and =
NoC_block code given below.=C2=A0</div><div><br></div><div>Thanks in advanc=
e,</div><div>Ishai</div><div><br></div><div><u>Testbench Code:</u></div><di=
v><br></div><div><b>=C2=A0 =C2=A0 /*****************************</b><b>****=
***********************<br>=C2=A0 =C2=A0 ** Test 4 -- Write / readback user=
 registers<br>=C2=A0 =C2=A0 ******************************</b><b>**********=
****************/<br>=C2=A0 =C2=A0 `TEST_CASE_START(&quot;Write user regist=
ers&quot;);<br>=C2=A0 =C2=A0 random_word =3D 0;<br>=C2=A0 =C2=A0 tb_streame=
r.write_user_reg(</b><b>sid_noc_block_TxChannelSrc, noc_block_TxChannelSrc.=
SR_MIN_</b><b>BW, random_word[21:0]);<br>=C2=A0 =C2=A0 random_word =3D 5;<b=
r>=C2=A0 =C2=A0 tb_streamer.write_user_reg(</b><b>sid_noc_block_TxChannelSr=
c, noc_block_TxChannelSrc.SR_MAX_</b><b>BW, random_word[21:0]);<br>=C2=A0 =
=C2=A0 random_word =3D 10;<br>=C2=A0 =C2=A0 tb_streamer.write_user_reg(</b>=
<b>sid_noc_block_TxChannelSrc, noc_block_TxChannelSrc.SR_BW_</b><b>CHANGE_R=
ATE, random_word[21:0]);<br>=C2=A0 =C2=A0 random_word =3D 256;<br>=C2=A0 =
=C2=A0 tb_streamer.write_user_reg(</b><b>sid_noc_block_TxChannelSrc, noc_bl=
ock_TxChannelSrc.SR_PKT_</b><b>SIZE, random_word[15:0]);<br>=C2=A0 =C2=A0 `=
TEST_CASE_DONE(1);</b><br></div><div><br></div><div><u>noc_block verilog co=
de:</u></div><div><br></div><div><b>localparam SR_USER_REG_BASE =3D 129;<br=
>=C2=A0 <br>=C2=A0 localparam [7:0] SR_MIN_BW =3D 129; //SR_USER_REG_BASE;<=
br>=C2=A0 localparam [7:0] SR_MAX_BW =3D 130;//TeSR_USER_REG_BASE + 8&#39;d=
1;<br>=C2=A0 localparam [7:0] SR_BW_CHANGE_RATE =3D 131;//SR_USER_REG_BASE =
+ 8&#39;d2;<br>=C2=A0 localparam [7:0] SR_PKT_SIZE =C2=A0 =C2=A0 =C2=A0 =3D=
 132; //SR_USER_REG_BASE + 8&#39;d3;<br><br>=C2=A0 wire [15:0] payload_leng=
th;<br>=C2=A0 wire [21:0] min_BW;<br>=C2=A0 wire [21:0] max_BW;<br>=C2=A0 w=
ire [21:0] BW_change_rate;<br>=C2=A0 =C2=A0<br>=C2=A0 cvita_hdr_encoder cvi=
ta_hdr_encoder (<br>=C2=A0 =C2=A0 .pkt_type(2&#39;d0), .eob(1&#39;b0), .has=
_time(1&#39;b0),<br>=C2=A0 =C2=A0 .seqnum(12&#39;d0), .payload_length(paylo=
ad_</b><b>length), .dst_sid(next_dst_sid), .src_sid(src_sid),<br>=C2=A0 =C2=
=A0 .vita_time(64&#39;d0),<br>=C2=A0 =C2=A0 .header(s_axis_data_tuser));<br=
>=C2=A0 =C2=A0 <br>=C2=A0 // Set packet size<br>=C2=A0 setting_reg #(<br>=
=C2=A0 =C2=A0 .my_addr(SR_PKT_SIZE), .awidth(8), .width(16),<br>=C2=A0 =C2=
=A0 .at_reset(4)) // Set a safe default packet size in case packet size is =
never set<br>=C2=A0 set_payload_length (<br>=C2=A0 =C2=A0 .clk(ce_clk), .rs=
t(ce_rst),<br>=C2=A0 =C2=A0 .strobe(set_stb), .addr(set_addr), .in(set_data=
),<br>=C2=A0 =C2=A0 .out(payload_length), .changed()); =C2=A0 =C2=A0 =C2=A0=
 <br>=C2=A0 <br>=C2=A0 setting_reg #(<br>=C2=A0 =C2=A0 .my_addr(SR_MIN_BW),=
 .awidth(8), .width(22))<br>=C2=A0 sr_min_bw (<br>=C2=A0 =C2=A0 .clk(ce_clk=
), .rst(ce_rst),<br>=C2=A0 =C2=A0 .strobe(set_stb), .addr(set_addr), .in(se=
t_data), .out(min_BW), .changed()); <br><br>=C2=A0 setting_reg #(<br>=C2=A0=
 =C2=A0 .my_addr(SR_MAX_BW), .awidth(8), .width(22))<br>=C2=A0 sr_max_bw (<=
br>=C2=A0 =C2=A0 .clk(ce_clk), .rst(ce_rst),<br>=C2=A0 =C2=A0 .strobe(set_s=
tb), .addr(set_addr), .in(set_data), .out(max_BW), .changed()); <br><br>=C2=
=A0 setting_reg #(<br>=C2=A0 =C2=A0 .my_addr(SR_BW_CHANGE_RATE), .awidth(8)=
, .width(22))<br>=C2=A0 sr_bw_change_rate (<br>=C2=A0 =C2=A0 .clk(ce_clk), =
.rst(ce_rst),<br>=C2=A0 =C2=A0 .strobe(set_stb), .addr(set_addr), .in(set_d=
ata), .out(BW_change_rate), .changed()); </b></div><br clear=3D"all"><br>--=
 <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_sig=
nature"><div dir=3D"ltr"><div>=D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=A9</=
div>
<div>054-5823400</div></div></div></div>

--0000000000002f4b7105957e0b28--


--===============7486051180294052470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7486051180294052470==--

