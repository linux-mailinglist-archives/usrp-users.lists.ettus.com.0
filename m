Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE12463E95
	for <lists+usrp-users@lfdr.de>; Tue, 30 Nov 2021 20:23:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CDA64384933
	for <lists+usrp-users@lfdr.de>; Tue, 30 Nov 2021 14:23:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gtri.gatech.edu header.i=@gtri.gatech.edu header.b="WI/pCu8P";
	dkim-atps=neutral
Received: from unifiededge.gtri.gatech.edu (unifiededge.gtri.gatech.edu [130.207.205.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 63C82384214
	for <usrp-users@lists.ettus.com>; Tue, 30 Nov 2021 14:22:54 -0500 (EST)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
	c=simple/simple; t=1638300173; h=from:subject:to:date:message-id;
	bh=sTpjbm7vMpT9vaxrAP+qdj9SdRdilxA182CszLgxhpA=;
	b=WI/pCu8PWOBy9NZXm2UFwIDm9tL0fh0ex2LPEQlVMOWxVq7JnvV6Wb9+Q958afECMJVYWkh5LJS
	qttzWwq3O7ChtOfRynh1o36VIxxOMeMxZZp+S5Hqr90N3IJqvXiCYKHrA5tfW0TRWsGO4KYVBPq8z
	W3ZVsfW9yLVhhOfxWIm6QPQmLJt1tt+GTrXZxi4Lrzby99ehDndrW9Zubl1W74NQ04mK/2OPTt3bP
	Am/KlasWMVyLyAFstL1RlSwdSVVPh61uOOw1BGd9MHOGigr9CzfifDvjquBmj9yZusbKVpWuCfuI3
	xL/oItwei1b8FdRTjVswC0Qf1YZRy2tUNQMg==
Received: from jekyll.core.gtri.org (10.41.1.48) by exedge06.gtri.dmz
 (10.41.104.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.858.5; Tue, 30 Nov 2021
 14:22:53 -0500
Received: from tybee.core.gtri.org (2610:148:610:2901::49) by
 jekyll.core.gtri.org (2610:148:610:2901::48) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2375.12; Tue, 30 Nov 2021 14:22:53 -0500
Received: from tybee.core.gtri.org ([fe80::bc87:62f3:89b0:fc9e]) by
 tybee.core.gtri.org ([fe80::bc87:62f3:89b0:fc9e%15]) with mapi id
 15.01.2375.012; Tue, 30 Nov 2021 14:22:53 -0500
To: Wade Fife <wade.fife@ettus.com>
Thread-Topic: [USRP-users] Re: Testbench Compile Error
Thread-Index: AQHX3Y0tS3BxYxv1n0W0rK5CplqdzawLdtVAgAG0/QCAD1eVgA==
Date: Tue, 30 Nov 2021 19:22:53 +0000
Message-ID: <1b54425bdf154b889424b13dc33dc22d@gtri.gatech.edu>
References: <d078107dcf9a451fa06aabce9066ae81@gtri.gatech.edu>
 <CAB__hTSsRx7v0Ob4YNsju08O=8J8ESE+P89KOApWiKifPNRQAw@mail.gmail.com>
 <CAFche=gNebkUovuoP0FFNbzpg1cS6CEJwXrrJtdAaHQF-vVHqA@mail.gmail.com>
 <9464a8d9b1f6458da01df55f89972acd@gtri.gatech.edu>
 <CAFche=hDQTP1=TkT0k0bG5Y+KSUpDHqM3BxW9JKn81jH_2Hp8Q@mail.gmail.com>
In-Reply-To: <CAFche=hDQTP1=TkT0k0bG5Y+KSUpDHqM3BxW9JKn81jH_2Hp8Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Message-ID-Hash: Z54O5UNJQXHSI5SC7ESQN6OAST3VOR5V
X-Message-ID-Hash: Z54O5UNJQXHSI5SC7ESQN6OAST3VOR5V
X-MailFrom: Michael.Rich@gtri.gatech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Testbench Compile Error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z54O5UNJQXHSI5SC7ESQN6OAST3VOR5V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rich, Michael via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rich, Michael" <Michael.Rich@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============1473322696581041834=="

--===============1473322696581041834==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_005D_01D7E5F5.C22BAF30"

------=_NextPart_000_005D_01D7E5F5.C22BAF30
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_005E_01D7E5F5.C22BAF30"


------=_NextPart_001_005E_01D7E5F5.C22BAF30
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sorry, just getting back to this post-thanksgiving.

=20

I tried setting the default nettype back to wire on each of these files, =
but I have the same error. The good news is that I did make a mistake =
when modifying gray2bin earlier. So, if I set the default nettype to =
wire at the top of gray2bin, it works. That serves as a workaround, but =
I=E2=80=99m still not sure the source of this problem. (And since it =
only fails on my current block, but not the previous one I did, =
I=E2=80=99m not sure why this issue has suddenly arisen.)

=20

Michael H. Rich

Electronic Systems Laboratory

Georgia Tech Research Institute=C2=AE

Phone: (404) 407-8358

E-mail: michael.rich@gtri.gatech.edu =
<mailto:michael.rich@gtri.gatech.edu>=20

=20

From: Wade Fife <wade.fife@ettus.com>=20
Sent: Saturday, November 20, 2021 3:03 PM
To: Rich, Michael <Michael.Rich@gtri.gatech.edu>
Cc: Rob Kossler <rkossler@nd.edu>; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: Testbench Compile Error

=20

I agree, modifying gray2bin is not a great solution. The root of the =
problem is really in some other file. I did a grep and found these files =
set the default_nettype without changing it back. Some are testbenches, =
others are from the fosphor block IP.

=20

axis_pyld_ctxt_converter_tb.sv <http://axis_pyld_ctxt_converter_tb.sv>=20

ctrlport_endpoint_tb.sv <http://ctrlport_endpoint_tb.sv>=20

rfnoc_block_null_src_sink_tb.sv <http://rfnoc_block_null_src_sink_tb.sv> =


=20

f15_avg.v

f15_packetizer.v

f15_histo_mem.v

delay.v

f15_maxhold.v

f15_wf_agg.v

f15_logpwr.vrng.v

f15_rise_decay.v

f15_binmap.v

axi_logpwr.vfifo_srl.v

f15_core.v

f15_line_mem.v

f15_eoseq.v

=20

Are you compiling any of those? I'll see if we can update those files so =
they don't cause problems in the future. If you figure out which file it =
is, let me know. I don't have any problems when I compile those files, =
but I might have just lucked out with my compile order.

=20

Modifying gray2bin should be a quick way to work around the issue. Any =
chance you didn't enter it correctly? Make sure you use the backtick ` =
before default_nettype and that it's before the module declaration in =
gray2bin.v. Like this:

=20

`default_nettype wire

=20

Another option is to modify the gray input of gray2bin.v to make the =
type explicit, by changing "input [WIDTH-1:0] gray," to "input wire =
[WIDTH-1:0] gray". But this might just move the problem to the next =
file.

=20

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/control/g=
ray2bin.v#L13

=20

Thanks,

=20

Wade

=20

On Fri, Nov 19, 2021 at 5:03 PM Rich, Michael =
<Michael.Rich@gtri.gatech.edu <mailto:Michael.Rich@gtri.gatech.edu> > =
wrote:

Thanks for the info on how the default-nettype is used. I usually work =
in VHDL and am not very familiar with Verilog.=20

=20

The testbench SystemVerilog files seem to be set up by default exactly =
as you=E2=80=99ve said, with =E2=80=9Cdefault_nettype none=E2=80=9D at =
the top and =E2=80=9Cdefault_nettype wire=E2=80=9D at the end. This is =
the case for both of my testbenches, but only one of them is exhibiting =
this issue. That said, I tried changing the default-nettype at the top =
of the offending testbench to wire, but I get the same error. I even =
tried setting the default-nettype to wire directly in the gray2bin.v =
file (even though modifying the UHD code didn=E2=80=99t seem like the =
best approach) and that had no effect either.=20

=20

Any other suggestions?

=20

Thank you,

=20

Michael H. Rich

Electronic Systems Laboratory

Georgia Tech Research Institute=C2=AE

Phone: (404) 407-8358

E-mail: michael.rich@gtri.gatech.edu =
<mailto:michael.rich@gtri.gatech.edu>=20

=20

From: Wade Fife <wade.fife@ettus.com <mailto:wade.fife@ettus.com> >=20
Sent: Friday, November 19, 2021 4:34 PM
To: Rob Kossler <rkossler@nd.edu <mailto:rkossler@nd.edu> >
Cc: Rich, Michael <Michael.Rich@gtri.gatech.edu =
<mailto:Michael.Rich@gtri.gatech.edu> >; usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
Subject: Re: [USRP-users] Re: Testbench Compile Error

=20

This means there's a file that set default_nettype to none somewhere. =
That setting will affect the files that get compiled after it, and in =
your case gray2bin.v doesn't like it.

=20

Like Rob said, you can add "`default_nettype wire" to the top of the =
file that's having issues and it should compile after that.

=20

Check any files you've added to make sure they don't leave the =
default_nettype as none. The general convention is to put =
"`default_nettype none" at the top of a file but have "`default_nettype =
wire"at the end of a file to avoid messing up any other files in the =
compile.

=20

Wade

=20

On Fri, Nov 19, 2021 at 1:04 PM Rob Kossler <rkossler@nd.edu =
<mailto:rkossler@nd.edu> > wrote:

Are you able to run the testbench for the provided "rfnoc-example" =
folder?  I notice that the gain testbench that is part of this example =
has the following as the last statement. Perhaps this is needed?

=20

`default_nettype wire

=20

On Fri, Nov 19, 2021 at 11:53 AM Rich, Michael via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

I=E2=80=99m trying to run the testbench for a new module I created =
(UHD4) and I=E2=80=99m getting the following error:

=20

INFO: [VRFC 10-2263] Analyzing Verilog file =
"/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v" into library =
xil_defaultlib

INFO: [VRFC 10-311] analyzing module gray2bin

ERROR: [VRFC 10-1103] net type must be explicitly specified for 'gray' =
when default_nettype is none =
[/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]

ERROR: [VRFC 10-3594] non-net port 'gray' cannot be of mode input =
[/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]

ERROR: [VRFC 10-845] illegal operand for operator ^ =
[/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:21]

ERROR: [VRFC 10-2865] module 'gray2bin' ignored due to previous errors =
[/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:10]

=20

This file seems to compile without issue on my previous testbench, so =
I=E2=80=99m not sure what the difference would be here. If anyone has =
any insights into what could be going on I=E2=80=99d greatly appreciate =
it.

=20

Thank you,

=20

Michael H. Rich

Electronic Systems Laboratory

Georgia Tech Research Institute=C2=AE

Phone: (404) 407-8358

E-mail: michael.rich@gtri.gatech.edu =
<mailto:michael.rich@gtri.gatech.edu>=20

=20

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20


------=_NextPart_001_005E_01D7E5F5.C22BAF30
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Sorry, just getting back to this =
post-thanksgiving.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>I tried setting the default nettype back to wire on each of these =
files, but I have the same error. The good news is that I <i>did</i> =
make a mistake when modifying gray2bin earlier. So, if I set the default =
nettype to wire at the top of gray2bin, it works. That serves as a =
workaround, but I=E2=80=99m still not sure the source of this problem. =
(And since it only fails on my current block, but not the previous one I =
did, I=E2=80=99m not sure why this issue has suddenly =
arisen.)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-family:"Calibri",sans-serif;color:black'>Michael H. =
Rich</span></b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p></o:p></span></p><p class=3DMsoNormal><i><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>E=
lectronic Systems Laboratory</span></i><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p></o:p></span></p><p class=3DMsoNormal><b><i><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>G=
eorgia Tech Research Institute=C2=AE</span></i></b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>P=
hone: (404) 407-8358</span><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>E=
-mail:</span><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
> <a =
href=3D"mailto:michael.rich@gtri.gatech.edu">michael.rich@gtri.gatech.edu=
</a></span><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
Wade Fife &lt;wade.fife@ettus.com&gt; <br><b>Sent:</b> Saturday, =
November 20, 2021 3:03 PM<br><b>To:</b> Rich, Michael =
&lt;Michael.Rich@gtri.gatech.edu&gt;<br><b>Cc:</b> Rob Kossler =
&lt;rkossler@nd.edu&gt;; usrp-users@lists.ettus.com<br><b>Subject:</b> =
Re: [USRP-users] Re: Testbench Compile Error<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>I =
agree, modifying gray2bin is not a great solution. The root of the =
problem is really in some other file. I did a grep and found these files =
set the default_nettype without changing it back. Some are testbenches, =
others are from the fosphor block IP.<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal><a =
href=3D"http://axis_pyld_ctxt_converter_tb.sv">axis_pyld_ctxt_converter_t=
b.sv</a><o:p></o:p></p></div><div><p class=3DMsoNormal><a =
href=3D"http://ctrlport_endpoint_tb.sv">ctrlport_endpoint_tb.sv</a><o:p><=
/o:p></p></div><div><p class=3DMsoNormal><a =
href=3D"http://rfnoc_block_null_src_sink_tb.sv">rfnoc_block_null_src_sink=
_tb.sv</a><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>f15_avg.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>f15_packetizer.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>f15_histo_mem.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>delay.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>f15_maxhold.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>f15_wf_agg.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>f15_logpwr.vrng.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>f15_rise_decay.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>f15_binmap.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>axi_logpwr.vfifo_srl.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>f15_core.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>f15_line_mem.v<o:p></o:p></p></div><div><p =
class=3DMsoNormal>f15_eoseq.v<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>Are you =
compiling any of those? I'll see if we can update those files so they =
don't cause problems in the future. If you figure out which file it is, =
let me know. I don't have any problems when I compile those files, but I =
might have just lucked out with my compile =
order.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Modifying gray2bin should be a quick way to work =
around the issue. Any chance you didn't enter it correctly? Make sure =
you use the backtick ` before default_nettype and that it's before the =
module declaration in gray2bin.v. Like this:<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>`default_nettype wire<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p =
class=3DMsoNormal>Another option is to modify the gray input of =
gray2bin.v to make the type explicit, by changing &quot;input =
[WIDTH-1:0] gray,&quot; to &quot;input wire [WIDTH-1:0] gray&quot;. But =
this might just move the problem to the next file.<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><a =
href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/c=
ontrol/gray2bin.v#L13">https://github.com/EttusResearch/uhd/blob/master/f=
pga/usrp3/lib/control/gray2bin.v#L13</a><o:p></o:p></p></div></div><div><=
p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p =
class=3DMsoNormal>Wade<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Fri, Nov 19, 2021 at 5:03 PM Rich, Michael &lt;<a =
href=3D"mailto:Michael.Rich@gtri.gatech.edu">Michael.Rich@gtri.gatech.edu=
</a>&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Thanks for the info on how the default-nettype is used. I usually work =
in VHDL and am not very familiar with Verilog. </span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>The testbench SystemVerilog files seem to be set up by default exactly =
as you=E2=80=99ve said, with =E2=80=9Cdefault_nettype none=E2=80=9D at =
the top and =E2=80=9Cdefault_nettype wire=E2=80=9D at the end. This is =
the case for both of my testbenches, but only one of them is exhibiting =
this issue. That said, I tried changing the default-nettype at the top =
of the offending testbench to wire, but I get the same error. I even =
tried setting the default-nettype to wire directly in the gray2bin.v =
file (even though modifying the UHD code didn=E2=80=99t seem like the =
best approach) and that had no effect either. </span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Any other suggestions?</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Thank you,</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
style=3D'font-family:"Calibri",sans-serif;color:black'>Michael H. =
Rich</span></b><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><i><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>E=
lectronic Systems Laboratory</span></i><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><i><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>G=
eorgia Tech Research Institute=C2=AE</span></i></b><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>P=
hone: (404) 407-8358</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>E=
-mail:</span><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
> <a href=3D"mailto:michael.rich@gtri.gatech.edu" =
target=3D"_blank">michael.rich@gtri.gatech.edu</a></span><o:p></o:p></p><=
p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" =
target=3D"_blank">wade.fife@ettus.com</a>&gt; <br><b>Sent:</b> Friday, =
November 19, 2021 4:34 PM<br><b>To:</b> Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu" =
target=3D"_blank">rkossler@nd.edu</a>&gt;<br><b>Cc:</b> Rich, Michael =
&lt;<a href=3D"mailto:Michael.Rich@gtri.gatech.edu" =
target=3D"_blank">Michael.Rich@gtri.gatech.edu</a>&gt;; <a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br><b>Subject:</b> Re: =
[USRP-users] Re: Testbench Compile Error</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>This means =
there's a file that set default_nettype to none somewhere. That setting =
will affect the files that get compiled after it, and in your case =
gray2bin.v doesn't like it.<o:p></o:p></p></div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Like Rob =
said, you can add &quot;`default_nettype wire&quot; to the top of the =
file that's having issues and it should compile after =
that.<o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Check any =
files you've added to make sure they don't leave the default_nettype as =
none. The general convention is to put &quot;`default_nettype none&quot; =
at the top of a file but have &quot;`default_nettype wire&quot;at the =
end of a file to avoid messing up any other files in the =
compile.<o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Wade<o:p></o=
:p></p></div></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>On Fri, Nov =
19, 2021 at 1:04 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" =
target=3D"_blank">rkossler@nd.edu</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid windowtext 1.0pt;padding:0in 0in =
0in =
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5=
.0pt;border-color:currentcolor currentcolor currentcolor =
rgb(204,204,204)'><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Are you =
able to run the testbench for the provided &quot;rfnoc-example&quot; =
folder?&nbsp; I notice that the gain testbench that is part of this =
example has the following as the last statement. Perhaps this is =
needed?<o:p></o:p></p><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>`default_net=
type wire<o:p></o:p></p></div></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>On Fri, Nov =
19, 2021 at 11:53 AM Rich, Michael via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid windowtext 1.0pt;padding:0in 0in =
0in =
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0in;margin-bottom:5=
.0pt;border-color:currentcolor currentcolor currentcolor =
rgb(204,204,204)'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I=E2=80=99m =
trying to run the testbench for a new module I created (UHD4) and =
I=E2=80=99m getting the following error:<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-family:"Courier New"'>INFO: [VRFC 10-2263] Analyzing =
Verilog file &quot;/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v&quot; =
into library xil_defaultlib</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-family:"Courier New"'>INFO: [VRFC 10-311] analyzing module =
gray2bin</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-family:"Courier New"'>ERROR: [VRFC 10-1103] net type must =
be explicitly specified for 'gray' when default_nettype is none =
[/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]</span><o:p></o:p></p=
><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-family:"Courier New"'>ERROR: [VRFC 10-3594] non-net port =
'gray' cannot be of mode input =
[/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:13]</span><o:p></o:p></p=
><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-family:"Courier New"'>ERROR: [VRFC 10-845] illegal operand =
for operator ^ =
[/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:21]</span><o:p></o:p></p=
><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-family:"Courier New"'>ERROR: [VRFC 10-2865] module =
'gray2bin' ignored due to previous errors =
[/home/nvd/uhd/fpga/usrp3/lib/control/gray2bin.v:10]</span><o:p></o:p></p=
><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>This file =
seems to compile without issue on my previous testbench, so I=E2=80=99m =
not sure what the difference would be here. If anyone has any insights =
into what could be going on I=E2=80=99d greatly appreciate =
it.<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Thank =
you,<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
style=3D'color:black'>&nbsp;</span></b><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
style=3D'color:black'>Michael H. Rich</span></b><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><i><span =
style=3D'font-size:10.0pt;color:black'>Electronic Systems =
Laboratory</span></i><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><i><span =
style=3D'font-size:10.0pt;color:black'>Georgia Tech Research =
Institute=C2=AE</span></i></b><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:10.0pt;color:black'>Phone: (404) =
407-8358</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:10.0pt;color:black'>E-mail:</span><span =
style=3D'font-size:10.0pt;color:#1F497D'> <a =
href=3D"mailto:michael.rich@gtri.gatech.edu" =
target=3D"_blank">michael.rich@gtri.gatech.edu</a></span><o:p></o:p></p><=
p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>____________=
___________________________________<br>USRP-users mailing list -- <a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></bl=
ockquote></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>____________=
___________________________________<br>USRP-users mailing list -- <a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></bl=
ockquote></div></div></div></blockquote></div></div></body></html>
------=_NextPart_001_005E_01D7E5F5.C22BAF30--

------=_NextPart_000_005D_01D7E5F5.C22BAF30
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIVtzCCBDIw
ggMaoAMCAQICAQEwDQYJKoZIhvcNAQEFBQAwezELMAkGA1UEBhMCR0IxGzAZBgNVBAgMEkdyZWF0
ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBwwHU2FsZm9yZDEaMBgGA1UECgwRQ29tb2RvIENBIExpbWl0
ZWQxITAfBgNVBAMMGEFBQSBDZXJ0aWZpY2F0ZSBTZXJ2aWNlczAeFw0wNDAxMDEwMDAwMDBaFw0y
ODEyMzEyMzU5NTlaMHsxCzAJBgNVBAYTAkdCMRswGQYDVQQIDBJHcmVhdGVyIE1hbmNoZXN0ZXIx
EDAOBgNVBAcMB1NhbGZvcmQxGjAYBgNVBAoMEUNvbW9kbyBDQSBMaW1pdGVkMSEwHwYDVQQDDBhB
QUEgQ2VydGlmaWNhdGUgU2VydmljZXMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC+
QJ30buHqdoccTUVEjr5GyIMGncEq/hgfjuQC+vOrXVCKFjELmgbQxXAizUktVGPMtm5oRgtT6stM
JMC8ck7q8RWu9FSaEgrDerIzYOLaiVXzIljz3tzP74OGooyUT59o8piQRoQnx3a/48w1LIteB2Rl
gsBIsKiR+WGfdiBQqJHHZrXreGIDVvCKGhPqMaMeoJn9OPb2JzJYbwf1a7j7FCuvt6rM1mNfc4za
BZmoOKjLF3g2UazpnvR4Oo3PD9lC4pgMqy+fDgHe75+ZSfEt36x0TRuYtUfF5SnR+ZAYx2KcvoPH
Jns+iiXHwN2d5jVoECCdj9je0sOEnA1e6C/JAgMBAAGjgcAwgb0wHQYDVR0OBBYEFKARCiM+lvEH
7OKvKe+CpX/QMKS0MA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MHsGA1UdHwR0MHIw
OKA2oDSGMmh0dHA6Ly9jcmwuY29tb2RvY2EuY29tL0FBQUNlcnRpZmljYXRlU2VydmljZXMuY3Js
MDagNKAyhjBodHRwOi8vY3JsLmNvbW9kby5uZXQvQUFBQ2VydGlmaWNhdGVTZXJ2aWNlcy5jcmww
DQYJKoZIhvcNAQEFBQADggEBAAhW/ALwm+j/pPrWe8ZEgM5PxMX2AFjMpra8FEloBHbo5u5d7AIP
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
MDMxNzAwMDAwMFoXDTIzMDMxNzIzNTk1OVowgd8xDjAMBgNVBBETBTMwMzMyMRMwEQYDVQQLEwpH
VFJJLUVMU1lTMSgwJgYDVQQKEx9HZW9yZ2lhIEluc3RpdHV0ZSBvZiBUZWNobm9sb2d5MRkwFwYD
VQQJExAyMjUgTk9SVEggQVZFIE5XMRAwDgYDVQQIEwdHZW9yZ2lhMRAwDgYDVQQHEwdBdGxhbnRh
MQswCQYDVQQGEwJVUzEVMBMGA1UEAxMMTWljaGFlbCBSaWNoMSswKQYJKoZIhvcNAQkBFhxtaWNo
YWVsLnJpY2hAZ3RyaS5nYXRlY2guZWR1MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
24fvyXxky1Bj+3LTRunyP4Qx7xk3OtkgVLXktky9UAvurKAdtF+kgdgS7BqEZK2yG+Y3nQHSods+
g8EDrgnyCmIuYVwlrH/H36Pg9Ca601ZYpBVbJ+vonDNhmRWWH+w5pbuhQ8IrtTxVKkR1Q7iZu9+T
CEtjZ/Q8a0NKt8xpDNqF+ey73OSl5cIgkhVjobDTF0hzx8y3eLZfoZ7Vg8gRNpK1WLG9dWRi4NVS
qD5wDW7IxS/vvvYdGh406ZiezNsOuZjCnpTU5lrXeHvrXPjLrs74kaNIfyQzs/b4pckcFEhJXJkx
gh1LSCAvIMHA57dg1BfyR7hB/1b4nOUpAWFHKQIDAQABo4IB+jCCAfYwHwYDVR0jBBgwFoAUfe5x
0B/rqWFtj2aErQ8rB+Ix27wwHQYDVR0OBBYEFAQKpoUYI6FNQQLbi8DZCQshCN24MA4GA1UdDwEB
/wQEAwIFoDAMBgNVHRMBAf8EAjAAMB0GA1UdJQQWMBQGCCsGAQUFBwMEBggrBgEFBQcDAjBqBgNV
HSAEYzBhMF8GDSsGAQQBriMBBAMDAAEwTjBMBggrBgEFBQcCARZAaHR0cHM6Ly93d3cuaW5jb21t
b24ub3JnL2NlcnQvcmVwb3NpdG9yeS9jcHNfc3RhbmRhcmRfY2xpZW50LnBkZjBVBgNVHR8ETjBM
MEqgSKBGhkRodHRwOi8vY3JsLmluY29tbW9uLXJzYS5vcmcvSW5Db21tb25SU0FTdGFuZGFyZEFz
c3VyYW5jZUNsaWVudENBLmNybDCBigYIKwYBBQUHAQEEfjB8MFAGCCsGAQUFBzAChkRodHRwOi8v
Y3J0LmluY29tbW9uLXJzYS5vcmcvSW5Db21tb25SU0FTdGFuZGFyZEFzc3VyYW5jZUNsaWVudENB
LmNydDAoBggrBgEFBQcwAYYcaHR0cDovL29jc3AuaW5jb21tb24tcnNhLm9yZzAnBgNVHREEIDAe
gRxtaWNoYWVsLnJpY2hAZ3RyaS5nYXRlY2guZWR1MA0GCSqGSIb3DQEBCwUAA4IBAQAOQx1GHPoX
3sz6J9o9zk1NjXH7ZclwC/PQawXElV3vDGSryCnNsNqQJNMnG7OOzjq/u9PnGdDpmVI8mFjci6jr
YR8yTgd3aTiG230emq+lbmYmGhibxQZGRN725JFt9veX62fp3esnMoIqKbAz+LxnUtWc42uJeCoF
C0+d+Jmo+VIrVSO3vJJLGimOPh+iHrLpyV2bqj0AorSi2Mfb4c3G4oiAGykF38pZtsW9cwoo+ZE+
IsCBiMn7JCXIEFtpmYUpPCeECgAVOOQvB7B3maSa+Qu0BRQZ78sRXluHAEoh6PhsMgqNuwEVNvp3
BQx7uNz8j+30hpKBMV0X26FUKefDMIIGAzCCA+ugAwIBAgIQP7008rpS/A7TClejgeG+ZDANBgkq
hkiG9w0BAQ0FADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCk5ldyBKZXJzZXkxFDASBgNVBAcT
C0plcnNleSBDaXR5MR4wHAYDVQQKExVUaGUgVVNFUlRSVVNUIE5ldHdvcmsxLjAsBgNVBAMTJVVT
RVJUcnVzdCBSU0EgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkwHhcNMTQwOTE5MDAwMDAwWhcNMjQw
OTE4MjM1OTU5WjCBiTELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAk1JMRIwEAYDVQQHEwlBbm4gQXJi
b3IxEjAQBgNVBAoTCUludGVybmV0MjERMA8GA1UECxMISW5Db21tb24xMjAwBgNVBAMTKUluQ29t
bW9uIFJTQSBTdGFuZGFyZCBBc3N1cmFuY2UgQ2xpZW50IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
AQ8AMIIBCgKCAQEAgP7KW3d3xh/sgvvnWYpVrcDqnrEH6CYrNgmi8S9MOllAnKuc8kApQCWScil4
j5sGahB8t2QH/xj8UNuoGCDG5xEZxgFoRz/ZkuzdNJK4ZJ8b9dIm2XPUTKbgIwluPp38+oLV5P6k
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
hm9VA39s2xcAAAAAAAA=

------=_NextPart_000_005D_01D7E5F5.C22BAF30--

--===============1473322696581041834==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1473322696581041834==--
