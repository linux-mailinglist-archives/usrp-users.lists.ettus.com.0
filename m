Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6B2E0270
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 13:02:30 +0200 (CEST)
Received: from [::1] (port=39128 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMrvo-000675-Ko; Tue, 22 Oct 2019 07:02:28 -0400
Received: from mail-lj1-f178.google.com ([209.85.208.178]:39033)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ishai.alouche@gmail.com>)
 id 1iMrvk-0005vG-IS; Tue, 22 Oct 2019 07:02:24 -0400
Received: by mail-lj1-f178.google.com with SMTP id y3so16696536ljj.6;
 Tue, 22 Oct 2019 04:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lptJh45IpsGW+bcJQyGU/FDUhkB6kY3EfZJcVShPupI=;
 b=h211c0rdzOYGV6AVQlDdr1NEmG5ibGPlKIx31f6Y8g81/839fC6lzL79XWSdBccyfQ
 uwMPXSv0QnUFsoIVBFqt1hCSKXufPUadOkSNBsRl6IIEKIoz2dcXpsMwbhpRnGFKRUPA
 xP+Htj3QlWjIAfcQXz9of3aibZxDGiVEflV+vAn6IF9qj94dWlD73RX1ct13fKJKStUE
 tRq4KlgqanPxTWq03F8Tbv1u2bF667d0dN/vuJCJwxzyzPQwedCPxq9hoTvs//KL82eH
 +LnvtdyAjweu4IpTmVL5u35aj9UB6KlRqu2UBwOmPPSb0i+oK4MoWrrx4Hgt6sAqwHnN
 D2fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lptJh45IpsGW+bcJQyGU/FDUhkB6kY3EfZJcVShPupI=;
 b=W4v5S0yRXCDGOC8EXXpXWhqy1vnU5PkWWJ0qmhhilTRKU8O1bY06Lv4PedlwM7ab77
 uC21XGtfSqp/aRpT63+YaO2JoFtklV2YJXGC6tzLkzQtknAAxQSiMMhCoXq4QlF1tdGX
 Qb6hDSNbtS5+d9x/nmlkw/pVp4wfNjg9gMS7LwEVS/mi7cvp/R7lx82l1G0bAV5Chphi
 lXYbhH16qdHcWf0gM+Agu0tBf201eG0b6QrWsuV5+AZTiJp2hOnzoKSeFeQOZJVi4eY1
 /n5euh/LtA/8ztuVOyc/tjamXcnzTK5mLjZf2g1mVuJSQ46yqiWgXXES4CkTkH2AkS0k
 gmTA==
X-Gm-Message-State: APjAAAWagkxyLyLaqvpFyEEUmozxOn6ISM4bRSI71k6AaTvAMifZWgNz
 QQxaR9C8NoCkh/ss2EEJ6HuEU7BA6ZY3hQklY0E=
X-Google-Smtp-Source: APXvYqwocyhfDfqNLPq1yt0oHBe4PMjiGmnF//MoqQie24vCaS0WeQX/+A7um+ovJSq+vAoCDzHi44YOz/0TQkc5fkY=
X-Received: by 2002:a2e:9e0a:: with SMTP id e10mr18744930ljk.35.1571742083006; 
 Tue, 22 Oct 2019 04:01:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8T01nXkLDG1ZAMcevpkHCDUBUVmuVwVRL4e+vZLEB2hzbJcg@mail.gmail.com>
 <CAFOi1A5x8VOaMf2HVu89dMGj_o3J=FugFUSTeCj91-HAZ4QS1A@mail.gmail.com>
In-Reply-To: <CAFOi1A5x8VOaMf2HVu89dMGj_o3J=FugFUSTeCj91-HAZ4QS1A@mail.gmail.com>
Date: Tue, 22 Oct 2019 14:01:11 +0300
Message-ID: <CAC8T01kwT-7Y68KGxSUEhbxj2uMA47qgMh7korJXW_hxH4v0NQ@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
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
From: ishai alouche via USRP-users <usrp-users@lists.ettus.com>
Reply-To: ishai alouche <ishai.alouche@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 usrp-users-request@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============9069102358930613193=="
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

--===============9069102358930613193==
Content-Type: multipart/alternative; boundary="000000000000897dee05957db8a9"

--000000000000897dee05957db8a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

Thank for your answer.

1. The definition of the parameters are:







*  initial begin : tb_main    string s;    logic [15:0] real_val;    logic
[15:0] cplx_val;    logic last;    logic [31:0] random_word;    logic
[63:0] readback;*

2. The error is in the readback value.

When i check the value of the readback in hex i get that (3359812)10 =3D
(334444)16 .
It's look like the value that I read is the last 32 bits of the Noc ID. I
don 't sure that my assumption is correct.

waiting for your help.

Thank in advance
Ishai



On Tue, Oct 15, 2019 at 9:01 PM Martin Braun <martin.braun@ettus.com> wrote=
:

> Ishai,
>
> it's a bit hard to tell from this snippet, since we're missing the
> definitions of random_word and s. Which one is wrong, is it random_word, =
or
> readback?
>
> -- M
>
> On Thu, Oct 3, 2019 at 12:56 AM ishai alouche via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>>
>> I work with X310 and I try to write to user register and read to verify
>> that the value was update.
>>
>> I change the code like in the instruction at the following  website:
>> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>>
>> The relevant code from the test-bench is:
>>
>>
>>
>>
>>
>>
>>
>>
>> *    /********************************************************    ** Tes=
t
>> 4 -- Write / readback user registers
>> ********************************************************/
>> `TEST_CASE_START("Write / readback user registers");    random_word =3D =
5; //
>> $random();    tb_streamer.write_user_reg(sid_noc_block_TxChannelSrc,
>> noc_block_TxChannelSrc.SR_MIN_BW, random_word[21:0]);
>> tb_streamer.read_user_reg(sid_noc_block_TxChannelSrc, 0, readback);
>> `ASSERT_ERROR(readback[21:0] =3D=3D random_word[21:0], s);*
>>
>> The relevant code from the noc block is:
>>
>> *  localparam SR_USER_REG_BASE =3D 128;*
>>
>> *  localparam [7:0] SR_MIN_BW =3D SR_USER_REG_BASE;*
>>
>> *  wire [21:0] min_BW;*
>>
>>
>>
>>
>>
>>
>> * setting_reg #(    .my_addr(SR_MIN_BW), .awidth(8), .width(22))
>> sr_min_BW (    .clk(ce_clk), .rst(ce_rst),    .strobe(set_stb),
>> .addr(set_addr), .in(set_data), .out(min_BW), .changed()); *
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *  always @(posedge ce_clk) begin    case(rb_addr)      8'd0 : rb_data <=
=3D
>> {42'd0, min_BW};      8'd1 : rb_data <=3D {42'd0, max_BW};      8'd2 :
>> rb_data <=3D {42'd0, BW_change_rate};      8'd3 : rb_data <=3D {48'd0,
>> payload_length};            default : rb_data <=3D 64'h0BADC0DE0BADC0DE;
>> endcase  end*
>>
>> when i run the make command with the noc_block_TxChannelSrc_tb , I get
>> the following warning:
>>
>>
>>
>>
>>
>>
>>
>>
>> *WARNING: [XSIM 43-3431] One or more environment variables have been
>> detected which affect the operation of the C compiler. These are typical=
ly
>> not set in standard installations and are not tested by Xilinx, however
>> they may be appropriate for your system, so the flow will attempt to
>> continue.  If errors occur, try running fuse with the "-mt off -v 1"
>> switches to see more information from the C compiler. The following
>> environment variables have been detected:    LIBRARY_PATHStarting static
>> elaborationWARNING: [VRFC 10-278] actual bit length 3 differs from forma=
l
>> bit length 4 for port rb_addr
>> [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannel=
Src_tb/noc_block_TxChannelSrc_tb.sv:35]WARNING:
>> [VRFC 10-278] actual bit length 4 differs from formal bit length 2 for p=
ort
>> dest
>> [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc_shell.v:230]WARNIN=
G:
>> [VRFC 10-278] actual bit length 4 differs from formal bit length 2 for p=
ort
>> dest
>> [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc_block_export_io.v:=
183]WARNING:
>> [VRFC 10-526] concatenation with unsized literal; will interpret as 32 b=
its
>> [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannel=
Src_tb/noc_block_TxChannelSrc_tb.sv:75]WARNING:
>> [VRFC 10-526] concatenation with unsized literal; will interpret as 32 b=
its
>> [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannel=
Src_tb/noc_block_TxChannelSrc_tb.sv:76]WARNING:
>> [VRFC 10-1783] select index -1 into value is out of bounds
>> [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/control/synchronizer_impl.v:=
38]*
>>
>> The test don't stop to run, and when I get the test results the same
>> value is always read.
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> *=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3DTESTBENCH
>> STARTED:
>> noc_block_TxChannelSrc=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D[TEST
>> CASE   1] (t=3D000000000) BEGIN: Wait for Reset...[TEST CASE   1]
>> (t=3D000001002) DONE... Passed[TEST CASE   2] (t=3D000001002) BEGIN: Che=
ck NoC
>> ID...Read TxChannelSrc NOC ID: 1111222233334444[TEST CASE   2]
>> (t=3D000001238) DONE... Passed[TEST CASE   3] (t=3D000001238) BEGIN: Con=
nect
>> RFNoC blocks...Connecting noc_block_tb (SID: 1:0) to noc_block_TxChannel=
Src
>> (SID: 0:0)Connecting noc_block_TxChannelSrc (SID: 0:0) to noc_block_tb
>> (SID: 1:0)[TEST CASE   3] (t=3D000006075) DONE... Passed[TEST CASE   4]
>> (t=3D000006075) BEGIN: Write / readback user registers...Error: User reg=
ister
>> 0 incorrect readback! Expected: 3359812, Actual 5Time: 6602500 ps
>>  Iteration: 0  Process: /noc_block_TxChannelSrc_tb/Initial43_1195  File:
>> /home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelS=
rc_tb/noc_block_TxChannelSrc_tb.sv*
>>
>> please someone can explain me what is wrong here.
>>
>> BR
>> Ishai
>>
>> --
>> =D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=A9
>> 054-5823400
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--=20
=D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=D7=A9
054-5823400

--000000000000897dee05957db8a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font size=3D"4">Hi Martin,</font></div><div><font si=
ze=3D"4"><br></font></div><div><font size=3D"4">Thank for your answer.</fon=
t></div><div><font size=3D"4"><br></font></div><div><font size=3D"4">1. The=
 definition of the parameters are:</font></div><div><font size=3D"4"><b>=C2=
=A0 initial begin : tb_main<br>=C2=A0 =C2=A0 string s;<br>=C2=A0 =C2=A0 log=
ic [15:0] real_val;<br>=C2=A0 =C2=A0 logic [15:0] cplx_val;<br>=C2=A0 =C2=
=A0 logic last;<br><br>=C2=A0 =C2=A0 logic [31:0] random_word;<br>=C2=A0 =
=C2=A0 logic [63:0] readback;</b></font></div><div><font size=3D"4"><b><br>=
</b></font></div><div><font size=3D"4">2. The error is in the readback valu=
e.<b><br></b></font></div><div><font size=3D"4"><b><br></b></font></div><di=
v><font size=3D"4">When i check the value of the readback in hex i get that=
 (3359812)<sub>10</sub> =3D (334444)</font><sub><font size=3D"4">16 .</font=
><br></sub></div><div><font size=3D"4"><sub>It&#39;s look like the value th=
at I read is the last 32 bits of the Noc ID. I don &#39;t sure that my assu=
mption is correct.</sub></font></div><div><font size=3D"4"><sub><br></sub><=
/font></div><div><font size=3D"4"><sub>waiting for your help.</sub></font><=
/div><div><font size=3D"4"><sub><br></sub></font></div><div><font size=3D"4=
"><sub>Thank in advance</sub></font></div><div><font size=3D"4"><sub>Ishai<=
br></sub></font></div><div><sub><br></sub></div><div><sub><br></sub></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Oct 15, 2019 at 9:01 PM Martin Braun &lt;<a href=3D"mailto:martin.br=
aun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Ishai,</div><div=
><br></div><div>it&#39;s a bit hard to tell from this snippet, since we&#39=
;re missing the definitions of random_word and s. Which one is wrong, is it=
 random_word, or readback?</div><div><br></div><div>-- M<br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, O=
ct 3, 2019 at 12:56 AM ishai alouche via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hi,<div><br></div><div>I work with X310 and I try to write to =
user register and read to verify that the value was update.</div><div><br><=
/div><div>I change the code like in the instruction at the following=C2=A0 =
website:=C2=A0<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_De=
velopment" target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNo=
C_Development</a>=C2=A0</div><div><br></div><div>The relevant code from the=
 test-bench is:</div><div><b>=C2=A0 =C2=A0 /*******************************=
*************************<br>=C2=A0 =C2=A0 ** Test 4 -- Write / readback us=
er registers<br>=C2=A0 =C2=A0 *********************************************=
***********/<br>=C2=A0 =C2=A0 `TEST_CASE_START(&quot;Write / readback user =
registers&quot;);<br>=C2=A0 =C2=A0 random_word =3D 5; // $random();<br>=C2=
=A0 =C2=A0 tb_streamer.write_user_reg(sid_noc_block_TxChannelSrc, noc_block=
_TxChannelSrc.SR_MIN_BW, random_word[21:0]);<br>=C2=A0 =C2=A0 tb_streamer.r=
ead_user_reg(sid_noc_block_TxChannelSrc, 0, readback);<br>=C2=A0 =C2=A0 `AS=
SERT_ERROR(readback[21:0] =3D=3D random_word[21:0], s);<br></b></div><div><=
b><br></b></div><div><div>The relevant code from the noc block is:</div><di=
v></div></div><div><b>=C2=A0 localparam SR_USER_REG_BASE =3D 128;<br></b></=
div><div><b>=C2=A0 localparam [7:0] SR_MIN_BW =3D SR_USER_REG_BASE;<br></b>=
</div><div><b>=C2=A0 wire [21:0] min_BW;<br></b></div><div><b><br></b></div=
><div><b>=C2=A0setting_reg #(<br>=C2=A0 =C2=A0 .my_addr(SR_MIN_BW), .awidth=
(8), .width(22))<br>=C2=A0 sr_min_BW (<br>=C2=A0 =C2=A0 .clk(ce_clk), .rst(=
ce_rst),<br>=C2=A0 =C2=A0 .strobe(set_stb), .addr(set_addr), .in(set_data),=
 .out(min_BW), .changed());=C2=A0<br></b></div><div><b><br></b></div><div><=
b>=C2=A0 always @(posedge ce_clk) begin<br>=C2=A0 =C2=A0 case(rb_addr)<br>=
=C2=A0 =C2=A0 =C2=A0 8&#39;d0 : rb_data &lt;=3D {42&#39;d0, min_BW};<br>=C2=
=A0 =C2=A0 =C2=A0 8&#39;d1 : rb_data &lt;=3D {42&#39;d0, max_BW};<br>=C2=A0=
 =C2=A0 =C2=A0 8&#39;d2 : rb_data &lt;=3D {42&#39;d0, BW_change_rate};<br>=
=C2=A0 =C2=A0 =C2=A0 8&#39;d3 : rb_data &lt;=3D {48&#39;d0, payload_length}=
; =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 default : rb_data &lt;=3D 64=
&#39;h0BADC0DE0BADC0DE;<br>=C2=A0 =C2=A0 endcase<br>=C2=A0 end</b><br></div=
><div><b><br></b></div><div>when i run the make command with the noc_block_=
TxChannelSrc_tb , I get the following warning:</div><div><b>WARNING: [XSIM =
43-3431] One or more environment variables have been detected which affect =
the operation of the C compiler. These are typically not set in standard in=
stallations and are not tested by Xilinx, however they may be appropriate f=
or your system, so the flow will attempt to continue.=C2=A0 If errors occur=
, try running fuse with the &quot;-mt off -v 1&quot; switches to see more i=
nformation from the C compiler. The following environment variables have be=
en detected:<br>=C2=A0 =C2=A0 LIBRARY_PATH<br>Starting static elaboration<b=
r>WARNING: [VRFC 10-278] actual bit length 3 differs from formal bit length=
 4 for port rb_addr [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/no=
c_block_TxChannelSrc_tb/noc_block_TxChannelSrc_tb.sv:35]<br>WARNING: [VRFC =
10-278] actual bit length 4 differs from formal bit length 2 for port dest =
[/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc_shell.v:230]<br>WARNI=
NG: [VRFC 10-278] actual bit length 4 differs from formal bit length 2 for =
port dest [/home/user/rfnoc_01/src/uhd-fpga/usrp3/lib/rfnoc/noc_block_expor=
t_io.v:183]<br>WARNING: [VRFC 10-526] concatenation with unsized literal; w=
ill interpret as 32 bits [/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbench=
es/noc_block_TxChannelSrc_tb/noc_block_TxChannelSrc_tb.sv:75]<br>WARNING: [=
VRFC 10-526] concatenation with unsized literal; will interpret as 32 bits =
[/home/user/rfnoc_01/rfnoc-modules/rfnoc/testbenches/noc_block_TxChannelSrc=
_tb/noc_block_TxChannelSrc_tb.sv:76]<br>WARNING: [VRFC 10-1783] select inde=
x -1 into value is out of bounds [/home/user/rfnoc_01/src/uhd-fpga/usrp3/li=
b/control/synchronizer_impl.v:38]</b><br></div><div><br></div><div>The test=
 don&#39;t stop to run, and when I get the test results the same value is a=
lways read.</div><div><b>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>TESTBENCH STARTED: noc_blo=
ck_TxChannelSrc<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[TEST CASE =C2=A0 1] (t=3D000000=
000) BEGIN: Wait for Reset...<br>[TEST CASE =C2=A0 1] (t=3D000001002) DONE.=
.. Passed<br>[TEST CASE =C2=A0 2] (t=3D000001002) BEGIN: Check NoC ID...<br=
>Read TxChannelSrc NOC ID: 1111222233334444<br>[TEST CASE =C2=A0 2] (t=3D00=
0001238) DONE... Passed<br>[TEST CASE =C2=A0 3] (t=3D000001238) BEGIN: Conn=
ect RFNoC blocks...<br>Connecting noc_block_tb (SID: 1:0) to noc_block_TxCh=
annelSrc (SID: 0:0)<br>Connecting noc_block_TxChannelSrc (SID: 0:0) to noc_=
block_tb (SID: 1:0)<br>[TEST CASE =C2=A0 3] (t=3D000006075) DONE... Passed<=
br>[TEST CASE =C2=A0 4] (t=3D000006075) BEGIN: Write / readback user regist=
ers...<br>Error: User register 0 incorrect readback! Expected: 3359812, Act=
ual 5<br>Time: 6602500 ps =C2=A0Iteration: 0 =C2=A0Process: /noc_block_TxCh=
annelSrc_tb/Initial43_1195 =C2=A0File: /home/user/rfnoc_01/rfnoc-modules/rf=
noc/testbenches/noc_block_TxChannelSrc_tb/noc_block_TxChannelSrc_tb.sv</b><=
br></div><div><b><br></b></div><div>please someone can explain me what is w=
rong here.</div><div><br></div><div>BR</div><div>Ishai<br clear=3D"all"><di=
v><br></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div>=D7=99=D7=A9=D7=
=99 =D7=90=D7=9C=D7=95=D7=A9</div>
<div>054-5823400</div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div>=D7=99=D7=A9=D7=99 =D7=90=D7=9C=D7=95=
=D7=A9</div>
<div>054-5823400</div></div></div>

--000000000000897dee05957db8a9--


--===============9069102358930613193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9069102358930613193==--

