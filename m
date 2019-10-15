Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96816D7E58
	for <lists+usrp-users@lfdr.de>; Tue, 15 Oct 2019 20:02:23 +0200 (CEST)
Received: from [::1] (port=57754 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iKR9H-0005CZ-Ky; Tue, 15 Oct 2019 14:02:19 -0400
Received: from mail-lj1-f178.google.com ([209.85.208.178]:42019)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <martin.braun@ettus.com>)
 id 1iKR9D-00056I-Hj
 for usrp-users@lists.ettus.com; Tue, 15 Oct 2019 14:02:15 -0400
Received: by mail-lj1-f178.google.com with SMTP id y23so21186429lje.9
 for <usrp-users@lists.ettus.com>; Tue, 15 Oct 2019 11:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=broAnv1FWyi4E+07/tvNFA6Rn8KobyvdJfyGcFzxAtU=;
 b=WHCgAwi2xPt/AjmQzUtOTATK+ktw3uBhbXHa5hPpqiKXHhKntDhVi99meKInGCubzQ
 AtJUJBYq25F9M2G7D1iyyxJLiioCdMaMUaNTNCTYAH7xf9J8ZYBszf7pDIHjFEZc3e8V
 xr1blLA2gFND0pUbslRI8uKO1N0nntL6IIp/q4WobalMl3XGG7HrHuHCOrpbmqhqIAHK
 DwBdxoLfGNjGVbPny0qt4sXptyHE+BcovoMj2osCeE2Vd8BTjedY35ZOb477MRErFS92
 aZLCPWCQuATIXckXvprhR2og8YIebJfp2eWthm78a8NamNI/C4r8XeNBh+hn07AsIVLh
 aNwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=broAnv1FWyi4E+07/tvNFA6Rn8KobyvdJfyGcFzxAtU=;
 b=H/e2gotCM4r1JAGpKJDJ1phY00K9qN1bB4C90/22gRB8ly9Of4ckVPpOJfTS29XvbU
 F/dNIMIT7m/LVXNy9qYc7YLDU/tGKeqJ/010E/mbu08LMQafLiBouAWq1nsi7jnY9p9I
 n+siemJ52mnkvGQoi0sZKFzXLt4QkuzK9gwgM8hZFqhxh4XPsXl9rkXnNd75YUKPR1DM
 oATf9hUGsDA4blosY/EFuYfAGEUsLySc+LLcTwkgEM8QKgCb9FI4A/NL1TXnP7/8BZwO
 aI+/VMw23CZ8U2dQ4EY5lGfCxIB0mrXauCIGaYxLsyxddoHM/Ss9IjhWC+/DRIkxjwx1
 mCLw==
X-Gm-Message-State: APjAAAU4paYUlh9PmK/wXFFyLOANjbCaLKJwht7YMwQMQjUFEdfTQKht
 4s76gqRVkBwbFdOfoUN7t6wHKqDPyc2ASblGLkkAtZ99
X-Google-Smtp-Source: APXvYqxGBd12ISre8KX+mnobjn71GguVhwamgUGpAvvkv9Vijv6cecr0yMKCSTApgGztrRvF8UuPRffKpdYK9zblBjw=
X-Received: by 2002:a05:651c:237:: with SMTP id z23mr995123ljn.8.1571162494022; 
 Tue, 15 Oct 2019 11:01:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8T01nXkLDG1ZAMcevpkHCDUBUVmuVwVRL4e+vZLEB2hzbJcg@mail.gmail.com>
In-Reply-To: <CAC8T01nXkLDG1ZAMcevpkHCDUBUVmuVwVRL4e+vZLEB2hzbJcg@mail.gmail.com>
Date: Tue, 15 Oct 2019 11:01:23 -0700
Message-ID: <CAFOi1A5x8VOaMf2HVu89dMGj_o3J=FugFUSTeCj91-HAZ4QS1A@mail.gmail.com>
To: ishai alouche <ishai.alouche@gmail.com>
Subject: Re: [USRP-users] error to write and read from user register x310
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 usrp-users-request@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============8250809152400845860=="
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

--===============8250809152400845860==
Content-Type: multipart/alternative; boundary="000000000000574df10594f6c606"

--000000000000574df10594f6c606
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ishai,

it's a bit hard to tell from this snippet, since we're missing the
definitions of random_word and s. Which one is wrong, is it random_word, or
readback?

-- M

On Thu, Oct 3, 2019 at 12:56 AM ishai alouche via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I work with X310 and I try to write to user register and read to verify
> that the value was update.
>
> I change the code like in the instruction at the following  website:
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>
> The relevant code from the test-bench is:
>
>
>
>
>
>
>
>
> *    /********************************************************    ** Test
> 4 -- Write / readback user registers
> ********************************************************/
> `TEST_CASE_START("Write / readback user registers");    random_word =3D 5=
; //
> $random();    tb_streamer.write_user_reg(sid_noc_block_TxChannelSrc,
> noc_block_TxChannelSrc.SR_MIN_BW, random_word[21:0]);
> tb_streamer.read_user_reg(sid_noc_block_TxChannelSrc, 0, readback);
> `ASSERT_ERROR(readback[21:0] =3D=3D random_word[21:0], s);*
>
> The relevant code from the noc block is:
>
> *  localparam SR_USER_REG_BASE =3D 128;*
>
> *  localparam [7:0] SR_MIN_BW =3D SR_USER_REG_BASE;*
>
> *  wire [21:0] min_BW;*
>
>
>
>
>
>
> * setting_reg #(    .my_addr(SR_MIN_BW), .awidth(8), .width(22))
> sr_min_BW (    .clk(ce_clk), .rst(ce_rst),    .strobe(set_stb),
> .addr(set_addr), .in(set_data), .out(min_BW), .changed()); *
>
>
>
>
>
>
>
>
>
> *  always @(posedge ce_clk) begin    case(rb_addr)      8'd0 : rb_data <=
=3D
> {42'd0, min_BW};      8'd1 : rb_data <=3D {42'd0, max_BW};      8'd2 :
> rb_data <=3D {42'd0, BW_change_rate};      8'd3 : rb_data <=3D {48'd0,
> payload_length};            default : rb_data <=3D 64'h0BADC0DE0BADC0DE;
> endcase  end*
>
> when i run the make command with the noc_block_TxChannelSrc_tb , I get th=
e
> following warning:
>
>
>
>
>
>
>
>
> *WARNING: [XSIM 43-3431] One or more environment variables have been
> detected which affect the operation of the C compiler. These are typicall=
y
> not set in standard installations and are not tested by Xilinx, however
> they may be appropriate for your system, so the flow will attempt to
> continue.  If errors occur, try running fuse with the "-mt off -v 1"
> switches to see more information from the C compiler. The following
> environment variables have been detected:    LIBRARY_PATHStarting static
> elaborationWARNING: [VRFC 10-278] actual bit length 3 differs from formal
> bit length 4 for port rb_addr
> [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelS=
rc_tb/noc_block_TxChannelSrc_tb.sv:35]WARNING:
> [VRFC 10-278] actual bit length 4 differs from formal bit length 2 for po=
rt
> dest
> [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc_shell.v:230]WARNING=
:
> [VRFC 10-278] actual bit length 4 differs from formal bit length 2 for po=
rt
> dest
> [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc_block_export_io.v:1=
83]WARNING:
> [VRFC 10-526] concatenation with unsized literal; will interpret as 32 bi=
ts
> [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelS=
rc_tb/noc_block_TxChannelSrc_tb.sv:75]WARNING:
> [VRFC 10-526] concatenation with unsized literal; will interpret as 32 bi=
ts
> [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelS=
rc_tb/noc_block_TxChannelSrc_tb.sv:76]WARNING:
> [VRFC 10-1783] select index -1 into value is out of bounds
> [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/control/synchronizer_impl.v:3=
8]*
>
> The test don't stop to run, and when I get the test results the same valu=
e
> is always read.
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3DTESTBENCH
> STARTED:
> noc_block_TxChannelSrc=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D[TEST
> CASE   1] (t=3D000000000) BEGIN: Wait for Reset...[TEST CASE   1]
> (t=3D000001002) DONE... Passed[TEST CASE   2] (t=3D000001002) BEGIN: Chec=
k NoC
> ID...Read TxChannelSrc NOC ID: 1111222233334444[TEST CASE   2]
> (t=3D000001238) DONE... Passed[TEST CASE   3] (t=3D000001238) BEGIN: Conn=
ect
> RFNoC blocks...Connecting noc_block_tb (SID: 1:0) to noc_block_TxChannelS=
rc
> (SID: 0:0)Connecting noc_block_TxChannelSrc (SID: 0:0) to noc_block_tb
> (SID: 1:0)[TEST CASE   3] (t=3D000006075) DONE... Passed[TEST CASE   4]
> (t=3D000006075) BEGIN: Write / readback user registers...Error: User regi=
ster
> 0 incorrect readback! Expected: 3359812, Actual 5Time: 6602500 ps
>  Iteration: 0  Process: /noc_block_TxChannelSrc_tb/Initial43_1195  File:
> /home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelSr=
c_tb/noc_block_TxChannelSrc_tb.sv*
>
> please someone can explain me what is wrong here.
>
> BR
> Ishai
>
> --
> =D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=A9
> 054-5823400
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000574df10594f6c606
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ishai,</div><div><br></div><div>it&#39;s a bit hard t=
o tell from this snippet, since we&#39;re missing the definitions of random=
_word and s. Which one is wrong, is it random_word, or readback?</div><div>=
<br></div><div>-- M<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Oct 3, 2019 at 12:56 AM ishai alouche=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I work with X310 a=
nd I try to write to user register and read to verify that the value was up=
date.</div><div><br></div><div>I change the code like in the instruction at=
 the following=C2=A0 website:=C2=A0<a href=3D"https://kb.ettus.com/Getting_=
Started_with_RFNoC_Development" target=3D"_blank">https://kb.ettus.com/Gett=
ing_Started_with_RFNoC_Development</a>=C2=A0</div><div><br></div><div>The r=
elevant code from the test-bench is:</div><div><b>=C2=A0 =C2=A0 /**********=
**********************************************<br>=C2=A0 =C2=A0 ** Test 4 -=
- Write / readback user registers<br>=C2=A0 =C2=A0 ************************=
********************************/<br>=C2=A0 =C2=A0 `TEST_CASE_START(&quot;W=
rite / readback user registers&quot;);<br>=C2=A0 =C2=A0 random_word =3D 5; =
// $random();<br>=C2=A0 =C2=A0 tb_streamer.write_user_reg(sid_noc_block_TxC=
hannelSrc, noc_block_TxChannelSrc.SR_MIN_BW, random_word[21:0]);<br>=C2=A0 =
=C2=A0 tb_streamer.read_user_reg(sid_noc_block_TxChannelSrc, 0, readback);<=
br>=C2=A0 =C2=A0 `ASSERT_ERROR(readback[21:0] =3D=3D random_word[21:0], s);=
<br></b></div><div><b><br></b></div><div><div>The relevant code from the no=
c block is:</div><div></div></div><div><b>=C2=A0 localparam SR_USER_REG_BAS=
E =3D 128;<br></b></div><div><b>=C2=A0 localparam [7:0] SR_MIN_BW =3D SR_US=
ER_REG_BASE;<br></b></div><div><b>=C2=A0 wire [21:0] min_BW;<br></b></div><=
div><b><br></b></div><div><b>=C2=A0setting_reg #(<br>=C2=A0 =C2=A0 .my_addr=
(SR_MIN_BW), .awidth(8), .width(22))<br>=C2=A0 sr_min_BW (<br>=C2=A0 =C2=A0=
 .clk(ce_clk), .rst(ce_rst),<br>=C2=A0 =C2=A0 .strobe(set_stb), .addr(set_a=
ddr), .in(set_data), .out(min_BW), .changed());=C2=A0<br></b></div><div><b>=
<br></b></div><div><b>=C2=A0 always @(posedge ce_clk) begin<br>=C2=A0 =C2=
=A0 case(rb_addr)<br>=C2=A0 =C2=A0 =C2=A0 8&#39;d0 : rb_data &lt;=3D {42&#3=
9;d0, min_BW};<br>=C2=A0 =C2=A0 =C2=A0 8&#39;d1 : rb_data &lt;=3D {42&#39;d=
0, max_BW};<br>=C2=A0 =C2=A0 =C2=A0 8&#39;d2 : rb_data &lt;=3D {42&#39;d0, =
BW_change_rate};<br>=C2=A0 =C2=A0 =C2=A0 8&#39;d3 : rb_data &lt;=3D {48&#39=
;d0, payload_length}; =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 default =
: rb_data &lt;=3D 64&#39;h0BADC0DE0BADC0DE;<br>=C2=A0 =C2=A0 endcase<br>=C2=
=A0 end</b><br></div><div><b><br></b></div><div>when i run the make command=
 with the noc_block_TxChannelSrc_tb , I get the following warning:</div><di=
v><b>WARNING: [XSIM 43-3431] One or more environment variables have been de=
tected which affect the operation of the C compiler. These are typically no=
t set in standard installations and are not tested by Xilinx, however they =
may be appropriate for your system, so the flow will attempt to continue.=
=C2=A0 If errors occur, try running fuse with the &quot;-mt off -v 1&quot; =
switches to see more information from the C compiler. The following environ=
ment variables have been detected:<br>=C2=A0 =C2=A0 LIBRARY_PATH<br>Startin=
g static elaboration<br>WARNING: [VRFC 10-278] actual bit length 3 differs =
from formal bit length 4 for port rb_addr [/home/user/rfnoc_01/rfnoc-module=
s/rfnoc/testbenches/noc_block_TxChannelSrc_tb/noc_block_TxChannelSrc_tb.sv:=
35]<br>WARNING: [VRFC 10-278] actual bit length 4 differs from formal bit l=
ength 2 for port dest [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc=
_shell.v:230]<br>WARNING: [VRFC 10-278] actual bit length 4 differs from fo=
rmal bit length 2 for port dest [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib=
/rfnoc/noc_block_export_io.v:183]<br>WARNING: [VRFC 10-526] concatenation w=
ith unsized literal; will interpret as 32 bits [/home/user/rfnoc_01/rfnoc-m=
odules/rfnoc/testbenches/noc_block_TxChannelSrc_tb/noc_block_TxChannelSrc_t=
b.sv:75]<br>WARNING: [VRFC 10-526] concatenation with unsized literal; will=
 interpret as 32 bits [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/=
noc_block_TxChannelSrc_tb/noc_block_TxChannelSrc_tb.sv:76]<br>WARNING: [VRF=
C 10-1783] select index -1 into value is out of bounds [/home/user/rfnoc_01=
/src/uhd-fpga/usrp3/lib/control/synchronizer_impl.v:38]</b><br></div><div><=
br></div><div>The test don&#39;t stop to run, and when I get the test resul=
ts the same value is always read.</div><div><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>TESTB=
ENCH STARTED: noc_block_TxChannelSrc<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[TEST CASE =
=C2=A0 1] (t=3D000000000) BEGIN: Wait for Reset...<br>[TEST CASE =C2=A0 1] =
(t=3D000001002) DONE... Passed<br>[TEST CASE =C2=A0 2] (t=3D000001002) BEGI=
N: Check NoC ID...<br>Read TxChannelSrc NOC ID: 1111222233334444<br>[TEST C=
ASE =C2=A0 2] (t=3D000001238) DONE... Passed<br>[TEST CASE =C2=A0 3] (t=3D0=
00001238) BEGIN: Connect RFNoC blocks...<br>Connecting noc_block_tb (SID: 1=
:0) to noc_block_TxChannelSrc (SID: 0:0)<br>Connecting noc_block_TxChannelS=
rc (SID: 0:0) to noc_block_tb (SID: 1:0)<br>[TEST CASE =C2=A0 3] (t=3D00000=
6075) DONE... Passed<br>[TEST CASE =C2=A0 4] (t=3D000006075) BEGIN: Write /=
 readback user registers...<br>Error: User register 0 incorrect readback! E=
xpected: 3359812, Actual 5<br>Time: 6602500 ps =C2=A0Iteration: 0 =C2=A0Pro=
cess: /noc_block_TxChannelSrc_tb/Initial43_1195 =C2=A0File: /home/user/rfno=
c_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelSrc_tb/noc_block_Tx=
ChannelSrc_tb.sv</b><br></div><div><b><br></b></div><div>please someone can=
 explain me what is wrong here.</div><div><br></div><div>BR</div><div>Ishai=
<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><=
div>=D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=A9</div>
<div>054-5823400</div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000574df10594f6c606--


--===============8250809152400845860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8250809152400845860==--

