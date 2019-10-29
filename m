Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2C6E7E80
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2019 03:17:14 +0100 (CET)
Received: from [::1] (port=47290 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iPH4L-0007O6-PL; Mon, 28 Oct 2019 22:17:13 -0400
Received: from mail-lj1-f180.google.com ([209.85.208.180]:37156)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1iPH4H-0007Gq-U6
 for usrp-users@lists.ettus.com; Mon, 28 Oct 2019 22:17:10 -0400
Received: by mail-lj1-f180.google.com with SMTP id l21so13496356lje.4
 for <usrp-users@lists.ettus.com>; Mon, 28 Oct 2019 19:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y4BGv+ldE8mWWQ4JixGglTuXv/ca9Gg77/WUyvU4gl0=;
 b=IkoAu6donpwpW9g/gaOhA6+wRVup0smxB7c3BcW9o/sHcPZ9iXupPhaCwW1fkAaZVl
 pWH8s2c9MROMBlfd/qwfFNUAq1g3Bv7tU5jiBN9F+flz+URbgLf5ClesKrQOErErk9eH
 x/BS3/G+WncGcjgaFMg4E705hRtl8h5aNNkaT9Yp8sp6xT2zGYw29JjCCfB4gFqmF/hT
 Y1elY/VSJCcBxI5924bdWFWnw58P3gaogwDM2kC/uGhbFRBcAk1D/Tbuw5KXADOQwub7
 cbi4cFFOx604OjGXOMeBSFWgaqoTyl7VehQJQaHyb+k6taBURX9CKp9RdcC870qNp/ZB
 MwpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y4BGv+ldE8mWWQ4JixGglTuXv/ca9Gg77/WUyvU4gl0=;
 b=ev9CnY9LoBjm+BwIp1Wg68zvihlheSVjtHfG+AJAIdSnkdvDHHXmSsNIHubuEOxlVF
 MYFYSONLWPk7zRj3XWch0ZyA/bvT42f2wI+PKgbyJP43GR093RtURV9/ox+OLvk7Av8V
 Tzf9s/C6ydwQxTvN5/1phZj2S8TYOaok/GRB1VRL4VJQgba+vdtFmepFRq1rKil8F5TG
 /OfiFpg/qCKk1c0j2CEKkjk0lQIod4YTgCDzkJQ88W2B38NsGWuQ1f0Pa+UJSwhnSwOV
 FSQUuyPtODDtsEz3JdDGXa8269QE8ozdexL1rOORpL5s4BnharTGq3dluP/bBLEM61Sb
 /3Vw==
X-Gm-Message-State: APjAAAVcGw1PbwlCBv5DvyhQMsrIylWyLrBLzlz36jjbbmRgyeECs/Ec
 y3LE56j3qtYaItfJdNOrMDzInZPdNf8DVOTW1RlA9d1R
X-Google-Smtp-Source: APXvYqwrhnoMOKNRf9Os+Y/W1kbVm4GJUj4TpxFtAuIVrQLESDaNe9EHV23MeVMveWzy2toOoBuLn95Uez23MJpzyA0=
X-Received: by 2002:a2e:b013:: with SMTP id y19mr522699ljk.157.1572315388630; 
 Mon, 28 Oct 2019 19:16:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8T01=CSd0sr-pUGWAnaeaVHKB4AoTRdSK18NovSp=drF3Dxw@mail.gmail.com>
In-Reply-To: <CAC8T01=CSd0sr-pUGWAnaeaVHKB4AoTRdSK18NovSp=drF3Dxw@mail.gmail.com>
Date: Tue, 29 Oct 2019 11:15:52 +0900
Message-ID: <CAL7q81u1bkxMgDaC0FevVNc-pVvoTst926iY_1JjqSoyJf9eYQ@mail.gmail.com>
To: ishai alouche <ishai.alouche@gmail.com>
Subject: Re: [USRP-users] Unable to Load X310 Registers
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 usrp-users-request@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============5207390293332460289=="
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

--===============5207390293332460289==
Content-Type: multipart/alternative; boundary="00000000000036e7530596033486"

--00000000000036e7530596033486
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I don't see anything inherently wrong with your code. Using the waveform
viewer, do you see the settings bus writes occur? You'll need to watch for
the condition where set_stb asserts and set_addr is equal to one of your
user register addresses.

Jonathon

On Tue, Oct 22, 2019 at 8:25 PM ishai alouche via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I am running a testbench on my architecture, and all default tests pass a=
s
> expected. This includes TEST 4 which tests writing and reading back from
> registers. The problem is - the following tests prove the registers hold
> their initial (default) value and not the value I tried writing to them i=
n
> TEST 4.
>
> Did I miss something in the process?
> what possible reasons may cause this problem?
>
> Scripts of both Testbench code and NoC_block code given below.
>
> Thanks in advance,
> Ishai
>
> *Testbench Code:*
>
> *    /******************************
>
> ****************************    ** Test 4 -- Write / readback user
> registers    *******************************
>
>
> ***************************/    `TEST_CASE_START("Write user registers");
>   random_word =3D 0;    tb_streamer.write_user_reg(**sid_noc_block_TxChan=
nelSrc,
> noc_block_TxChannelSrc.SR_MIN_*
>
> *BW, random_word[21:0]);    random_word =3D 5;
> tb_streamer.write_user_reg(**sid_noc_block_TxChannelSrc,
> noc_block_TxChannelSrc.SR_MAX_*
>
> *BW, random_word[21:0]);    random_word =3D 10;
> tb_streamer.write_user_reg(**sid_noc_block_TxChannelSrc,
> noc_block_TxChannelSrc.SR_BW_*
>
> *CHANGE_RATE, random_word[21:0]);    random_word =3D 256;
> tb_streamer.write_user_reg(**sid_noc_block_TxChannelSrc,
> noc_block_TxChannelSrc.SR_PKT_*
> *SIZE, random_word[15:0]);    `TEST_CASE_DONE(1);*
>
> *noc_block verilog code:*
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
>
> *localparam SR_USER_REG_BASE =3D 129;    localparam [7:0] SR_MIN_BW =3D 1=
29;
> //SR_USER_REG_BASE;  localparam [7:0] SR_MAX_BW =3D 130;//TeSR_USER_REG_B=
ASE
> + 8'd1;  localparam [7:0] SR_BW_CHANGE_RATE =3D 131;//SR_USER_REG_BASE +
> 8'd2;  localparam [7:0] SR_PKT_SIZE       =3D 132; //SR_USER_REG_BASE +
> 8'd3;  wire [15:0] payload_length;  wire [21:0] min_BW;  wire [21:0]
> max_BW;  wire [21:0] BW_change_rate;     cvita_hdr_encoder
> cvita_hdr_encoder (    .pkt_type(2'd0), .eob(1'b0), .has_time(1'b0),
> .seqnum(12'd0), .payload_length(payload_*
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
> *length), .dst_sid(next_dst_sid), .src_sid(src_sid),
> .vita_time(64'd0),    .header(s_axis_data_tuser));      // Set packet siz=
e
> setting_reg #(    .my_addr(SR_PKT_SIZE), .awidth(8), .width(16),
> .at_reset(4)) // Set a safe default packet size in case packet size is
> never set  set_payload_length (    .clk(ce_clk), .rst(ce_rst),
> .strobe(set_stb), .addr(set_addr), .in(set_data),    .out(payload_length)=
,
> .changed());           setting_reg #(    .my_addr(SR_MIN_BW), .awidth(8),
> .width(22))  sr_min_bw (    .clk(ce_clk), .rst(ce_rst),
> .strobe(set_stb), .addr(set_addr), .in(set_data), .out(min_BW),
> .changed());   setting_reg #(    .my_addr(SR_MAX_BW), .awidth(8),
> .width(22))  sr_max_bw (    .clk(ce_clk), .rst(ce_rst),
> .strobe(set_stb), .addr(set_addr), .in(set_data), .out(max_BW),
> .changed());   setting_reg #(    .my_addr(SR_BW_CHANGE_RATE), .awidth(8),
> .width(22))  sr_bw_change_rate (    .clk(ce_clk), .rst(ce_rst),
> .strobe(set_stb), .addr(set_addr), .in(set_data), .out(BW_change_rate),
> .changed()); *
>
>
> --
> =D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=A9
> 054-5823400
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000036e7530596033486
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I don&#39;t see anything inherently=
=C2=A0wrong with your code. Using the waveform viewer, do you see the setti=
ngs bus writes occur? You&#39;ll need to watch for the condition where set_=
stb asserts and set_addr is equal to one of your user register addresses.</=
div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 22, 2019 at 8:25 PM ishai=
 alouche via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I am runni=
ng a testbench on my architecture, and=20
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
 <br><div dir=3D"ltr"><div dir=3D"ltr"><div>=D7=99=D7=A9=D7=99 =D7=90=D7=9C=
=D7=95=D7=A9</div>
<div>054-5823400</div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000036e7530596033486--


--===============5207390293332460289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5207390293332460289==--

