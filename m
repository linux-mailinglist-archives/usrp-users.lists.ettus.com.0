Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 019E385C06
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 09:50:56 +0200 (CEST)
Received: from [::1] (port=53262 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvdCH-0008GR-Ki; Thu, 08 Aug 2019 03:50:53 -0400
Received: from mailservice.tudelft.nl ([130.161.131.5]:42568)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <C.E.V.Diouf@tudelft.nl>)
 id 1hvdCD-0008CH-Sn
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 03:50:50 -0400
Received: from localhost (localhost [127.0.0.1])
 by amavis (Postfix) with ESMTP id 999F2400FE;
 Thu,  8 Aug 2019 09:50:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tudelft.nl
X-Spam-Flag: NO
X-Spam-Score: -0.195
X-Spam-Level: 
X-Spam-Status: No, score=-0.195 tagged_above=-99 required=5
 tests=[ALL_TRUSTED=-1, BASW_FROM=0.01, HTML_MESSAGE=0.001,
 RDNS_NONE=0.793, SPF_HELO_NONE=0.001] autolearn=no autolearn_force=no
Received: from mailservice.tudelft.nl ([130.161.131.69])
 by localhost (tudelft.nl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id auQzCOQUysjY; Thu,  8 Aug 2019 09:50:07 +0200 (CEST)
Received: from SRV216.tudelft.net (srv216.tudelft.net [131.180.6.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.tudelft.nl (Postfix) with ESMTPS id 2A8C34014C;
 Thu,  8 Aug 2019 09:50:06 +0200 (CEST)
Received: from SRV220.tudelft.net (131.180.6.20) by SRV216.tudelft.net
 (131.180.6.16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id 15.1.1713.5; Thu, 8 Aug
 2019 09:50:04 +0200
Received: from SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210]) by
 SRV220.tudelft.net ([fe80::dc7a:a6b8:8bb9:2210%13]) with mapi id
 15.01.1713.004; Thu, 8 Aug 2019 09:50:04 +0200
To: Nick Foster <bistromath@gmail.com>
Thread-Topic: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
Thread-Index: AQHVS6aS1TCFrhuJn0SBC9u4weX6oabsnjuAgABHIfP///2lAIAD+4I3
Date: Thu, 8 Aug 2019 07:50:04 +0000
Message-ID: <c0eaef84471d450eb094cbde30009471@tudelft.nl>
References: <9f5dbd7ab00f4be59f6ed8ad0de7da59@tudelft.nl>
 <9c8f200ed81542cea52e138e82c74002@tudelft.nl>
 <CA+JMMq8nDYpcTAyabu63jvG=_NwqD6oqsMBddRyTrJj9cgOGeQ@mail.gmail.com>
 <6f515697ddcd41718d14e5f8eea799c7@tudelft.nl>,
 <CA+JMMq9m1K+LRK=xGDVv+nGTvmCBeTykE-bYC=3foQ2qPi7kqg@mail.gmail.com>
In-Reply-To: <CA+JMMq9m1K+LRK=xGDVv+nGTvmCBeTykE-bYC=3foQ2qPi7kqg@mail.gmail.com>
Accept-Language: en-US, nl-NL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310
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
From: Cherif Diouf via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2617682364198930219=="
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

--===============2617682364198930219==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_c0eaef84471d450eb094cbde30009471tudelftnl_"

--_000_c0eaef84471d450eb094cbde30009471tudelftnl_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

From What I have observed t

I did some measurements at the oscilloscope but, from my observations  the =
214.86 Mhz clock and the 200 MHz clock are not synchronized. I might be wro=
ng. Then I also looked to the x300.v files.

It seems that  the two clocks are deriving from two different clock branche=
s feeded by two inputs.
The 214 MHz (bus_clk) derived from the first branch.

The 200 MHz (radio_clk) derived from the second branch. But I don't see whe=
re they are synchronized. From what I have observed only the branch 2 is sy=
nc to the 10 MHz reference.

In any cases I am now using the radio_clk as my CE main clock and the syste=
m is working  as expected.

(See below for the branches)
Best Regards
Cherif




(from x300.v verilog file)

=3D=3D=3D=3Dbranch 2 (radio_clk)
   wire radio_clk_locked;
   radio_clk_gen radio_clk_gen (
      .clk_in1_p(FPGA_CLK_p), .clk_in1_n(FPGA_CLK_n),
      .CLK_OUT1(radio_clk), .CLK_OUT2(radio_clk_2x), .CLK_OUT3(dac_dci_clk)=
,
      .RESET(sw_rst[2]), .LOCKED(radio_clk_locked));

.

=3D=3D=3D=3Dbranch 1 (bus_clk)

   IBUFG fpga_125MHz_clk_buf (
     .I(FPGA_125MHz_CLK),
     .O(fpga_clk125));

   //----------------------------------------------------------------------=
------
   //  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
   //   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
   //----------------------------------------------------------------------=
------
   // CLK_OUT1___187.500______0.000______50.0_______85.263_____73.940
   // CLK_OUT2___125.000______0.000______50.0_______91.831_____73.940
   // CLK_OUT3____93.750______0.000______50.0_______96.813_____73.940
   // CLK_OUT4___214.286______0.000______50.0_______83.210_____73.940
   //
   //----------------------------------------------------------------------=
------
   // Input Clock   Freq (MHz)    Input Jitter (UI)
   //----------------------------------------------------------------------=
------
   // __primary_________125.000____________0.010

   localparam BUS_CLK_RATE =3D 32'd187500000;

   wire ioport2_clk_unbuf;

   bus_clk_gen bus_clk_gen (
      .CLK_IN1(fpga_clk125),
      .CLKFB_IN(ioport2_clk),
      .CLK_OUT1(bus_clk),
      .CLK_OUT2_UNBUF(/* unused */),    //This exists to make the IP genera=
te a 125MHz FB clock
      .CLK_OUT3(bus_clk_div2), //bus_clk divided by 2. used by sc/zpu
      .CLK_OUT4(ce_clk),
      .CLKFB_OUT(ioport2_clk_unbuf),
      .LOCKED(bus_clk_locked));



________________________________
From: Nick Foster <bistromath@gmail.com>
Sent: Monday, August 5, 2019 10:39 PM
To: Cherif Diouf
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310

All synthesized clocks are synchronized to whatever reference is selected.

On Mon, Aug 5, 2019 at 1:03 PM Cherif Diouf <C.E.V.Diouf@tudelft.nl<mailto:=
C.E.V.Diouf@tudelft.nl>> wrote:

Thanks Nick,


That's fine as explanation.  I however need a HW clock synchronized to the =
10 MHz external reference. I am using some local counters to run timely ope=
rations. If not using the 200 MHz clock Is it possible to synchronize the 2=
14 MHz clock to the 10 MHz external reference.


Best Regards

Cherif


________________________________
From: Nick Foster <bistromath@gmail.com<mailto:bistromath@gmail.com>>
Sent: Monday, August 5, 2019 6:33:37 PM
To: Cherif Diouf
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP X310

The radio TX frontend backpressures upstream blocks. You don't have to worr=
y about providing samples at the frontend rate. There is no reason to use a=
 200MHz clock in your block.

Remember: if the frontend is operating at 200Msps, then the samples your bl=
ock is producing must assume a 200Msps sample rate. It doesn't matter at al=
l that the clock driving your block is 214MHz -- that only means that the l=
ogic is operating a bit faster.

Nick

On Mon, Aug 5, 2019 at 8:58 AM Cherif Diouf via USRP-users <usrp-users@list=
s.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:



________________________________

Hello guys,



I am working with the X310 USRP. I have developed customed RFNoC CEs runnin=
g at ce_clk which is no more 200 MHz but rather 214 MHz.

So my blocks are providing samples to the RF frontends at 214 MSps. Is that=
 right?

Then how the operation can be consistent when the sampling rate of the RF f=
rontends is still at 200MSps.


Is it possible to synchronize both the 214 MHz and the 200 MHz clocks to th=
e same 10 MHz external reference, or to  use the 200 MHz reference clock as=
 my HW blocks main clock?




Best Regards

Cherif

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_c0eaef84471d450eb094cbde30009471tudelftnl_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&q=
uot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p>From What I have observed t <br>
</p>
<p><span lang=3D"nl"></span></p>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB">I
 did some measurements at the oscilloscope but, from my observations&nbsp; =
the 214.86 Mhz clock and the 200 MHz clock are not synchronized. I might be=
 wrong. Then I also looked to the x300.v files.
<br>
</span></font></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB"><br>
</span></font></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB">It
 seems that&nbsp; the two clocks are deriving from two different clock bran=
ches feeded by two inputs.</span></font></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB">The
 214 MHz (bus_clk) derived from the first branch.</span></font></span></fon=
t></div>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB"><br>
</span></font></span></font></div>
<div style=3D"margin:0">
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB">The
 200 MHz (radio_clk) derived from the second branch. But I don't see where =
they are synchronized. From what I have observed only the branch 2 is sync =
to the 10 MHz reference.</span></font></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB"><br>
</span></font></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB">In
 any cases I am now using the radio_clk as my CE main clock and the system =
is working&nbsp; as expected.</span></font></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB"><br>
</span></font></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB">(See
 below for the branches)<br>
</span></font></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB">Best
 Regards</span></font></span></font></div>
<div style=3D"margin:0"><font style=3D"font-family:Times New Roman,serif,se=
rif,&quot;EmojiFont&quot;" size=3D"3" face=3D"Times New Roman,serif"><span =
style=3D"font-size:12pt"><font style=3D"font-family:Calibri,sans-serif,seri=
f,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif" color=3D"#1=
F497D"><span style=3D"font-size:11pt" lang=3D"en-GB">Cherif<br>
</span></font></span></font></div>
</div>
<div style=3D"margin:0"><br>
</div>
<div style=3D"margin:0"><br>
</div>
<div style=3D"margin:0"><br>
</div>
<div style=3D"margin:0"><br>
</div>
<div style=3D"margin:0">(from x300.v verilog file)</div>
<div style=3D"margin:0"><br>
</div>
<div style=3D"margin:0"><span>=3D=3D=3D=3Dbranch 2 (radio_clk)</span><br>
</div>
<div style=3D"margin:0">
<div>&nbsp;&nbsp; wire radio_clk_locked;<br>
&nbsp;&nbsp; radio_clk_gen radio_clk_gen (<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .clk_in1_p(FPGA_CLK_p), .clk_in1_n(FPGA_CLK_=
n),<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .CLK_OUT1(radio_clk), .CLK_OUT2(radio_clk_2x=
), .CLK_OUT3(dac_dci_clk),<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .RESET(sw_rst[2]), .LOCKED(radio_clk_locked)=
);</div>
<br>
</div>
.<br>
<p>=3D=3D=3D=3Dbranch 1 (bus_clk)<br>
<span style=3D"font-size: 10pt;"></span></p>
<span style=3D"font-size: 10pt;"></span>
<div><span style=3D"font-size: 10pt;">&nbsp;&nbsp; IBUFG fpga_125MHz_clk_bu=
f (</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp; .I(FPGA_125MHz_CL=
K),</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp; .O(fpga_clk125));=
</span><br>
<span style=3D"font-size: 10pt;"></span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; //---------------------------=
-------------------------------------------------</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; //&nbsp; Output&nbsp;&nbsp;&n=
bsp;&nbsp; Output&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phase&nbsp;&nbsp;&nbsp; Dut=
y Cycle&nbsp;&nbsp; Pk-to-Pk&nbsp;&nbsp;&nbsp;&nbsp; Phase</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; //&nbsp;&nbsp; Clock&nbsp;&nb=
sp;&nbsp;&nbsp; Freq (MHz)&nbsp; (degrees)&nbsp;&nbsp;&nbsp; (%)&nbsp;&nbsp=
;&nbsp;&nbsp; Jitter (ps)&nbsp; Error (ps)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; //---------------------------=
-------------------------------------------------</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; // CLK_OUT1___187.500______0.=
000______50.0_______85.263_____73.940</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; // CLK_OUT2___125.000______0.=
000______50.0_______91.831_____73.940</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; // CLK_OUT3____93.750______0.=
000______50.0_______96.813_____73.940</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; // CLK_OUT4___214.286______0.=
000______50.0_______83.210_____73.940</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; //</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; //---------------------------=
-------------------------------------------------</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; // Input Clock&nbsp;&nbsp; Fr=
eq (MHz)&nbsp;&nbsp;&nbsp; Input Jitter (UI)</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; //---------------------------=
-------------------------------------------------</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; // __primary_________125.000_=
___________0.010</span><br>
<span style=3D"font-size: 10pt;"></span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; localparam BUS_CLK_RATE =3D 3=
2'd187500000;</span><br>
<span style=3D"font-size: 10pt;"></span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; wire ioport2_clk_unbuf;</span=
><br>
<span style=3D"font-size: 10pt;"></span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp; bus_clk_gen bus_clk_gen (</sp=
an><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .CLK_IN1(fp=
ga_clk125),</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .CLKFB_IN(i=
oport2_clk),</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .CLK_OUT1(b=
us_clk),</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .CLK_OUT2_U=
NBUF(/* unused */),&nbsp;&nbsp;&nbsp; //This exists to make the IP generate=
 a 125MHz FB clock</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .CLK_OUT3(b=
us_clk_div2), //bus_clk divided by 2. used by sc/zpu</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .CLK_OUT4(c=
e_clk),</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .CLKFB_OUT(=
ioport2_clk_unbuf),</span><br>
<span style=3D"font-size: 10pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .LOCKED(bus=
_clk_locked));</span><br>
<span style=3D"font-size: 10pt;"></span><br>
<span style=3D"font-size: 10pt;"></span></div>
<span style=3D"font-size: 10pt;"></span><br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Nick Foster &lt;bis=
tromath@gmail.com&gt;<br>
<b>Sent:</b> Monday, August 5, 2019 10:39 PM<br>
<b>To:</b> Cherif Diouf<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP =
X310</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">All synthesized clocks are synchronized to whatever refere=
nce is selected.<br>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 5, 2019 at 1:03 PM Cherif=
 Diouf &lt;<a href=3D"mailto:C.E.V.Diouf@tudelft.nl">C.E.V.Diouf@tudelft.nl=
</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-6011160831851846257divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sans=
-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI E=
moji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&q=
uot;,EmojiSymbols">
<div id=3D"gmail-m_-6011160831851846257divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt; color:rgb(0,0,0); font-family:Calibri,Helvetica,sans=
-serif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI E=
moji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&q=
uot;,EmojiSymbols">
<p>Thanks Nick,</p>
<p><br>
</p>
That's fine as explanation.&nbsp; I however need a HW clock synchronized to=
 the 10 MHz external reference. I am using some local counters to run timel=
y operations. If not using the 200 MHz clock Is it possible to synchronize =
the 214 MHz clock to the 10 MHz external
 reference.
<p><span><br>
</span></p>
<p><span>Best Regards</span></p>
<p><span>Cherif<br>
</span></p>
<p><span></span><br>
</p>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"gmail-m_-6011160831851846257divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" target=3D"_b=
lank">bistromath@gmail.com</a>&gt;<br>
<b>Sent:</b> Monday, August 5, 2019 6:33:37 PM<br>
<b>To:</b> Cherif Diouf<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] 214 MHz ce_clk vs 200 MHz radio_clk, USRP =
X310</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>The radio TX frontend backpressures upstream blocks. You don't have to=
 worry about providing samples at the frontend rate. There is no reason to =
use a 200MHz clock in your block.</div>
<div><br>
</div>
<div>Remember: if the frontend is operating at 200Msps, then the samples yo=
ur block is producing must assume a 200Msps sample rate. It doesn't matter =
at all that the clock driving your block is 214MHz -- that only means that =
the logic is operating a bit faster.</div>
<div><br>
</div>
<div>Nick<br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 5, 2019 at 8:58 AM Cherif=
 Diouf via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-6011160831851846257gmail-m_-6936411464282814038divtagde=
faultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color:rgb(0,0,0); font-f=
amily:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol=
&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p><br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div>
<div>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
Hello guys,</p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
&nbsp;</p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">I am working with the X310 USRP. I have developed cust=
omed RFNoC CEs running at ce_clk which is no more 200 MHz but rather 214 MH=
z.
<br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">So my blocks are providing samples to the RF frontends=
 at 214 MSps. Is that right?</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">Then how the operation can be consistent when the samp=
ling rate of the RF frontends is still at 200MSps.</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB"><br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">Is it possible to synchronize both the 214 MHz and the=
 200 MHz clocks to the same 10 MHz external reference, or to&nbsp; use the =
200 MHz reference clock as my HW blocks main clock?</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB"><br>
</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">&nbsp;</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">Best Regards</span></p>
<p style=3D"margin:0cm 0cm 0.0001pt; font-size:11pt; font-family:&quot;Cali=
bri&quot;,sans-serif">
<span lang=3D"EN-GB">Cherif</span></p>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_c0eaef84471d450eb094cbde30009471tudelftnl_--


--===============2617682364198930219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2617682364198930219==--

