Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E69457943
	for <lists+usrp-users@lfdr.de>; Sat, 20 Nov 2021 00:04:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B087383F26
	for <lists+usrp-users@lfdr.de>; Fri, 19 Nov 2021 18:04:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gtri.gatech.edu header.i=@gtri.gatech.edu header.b="YMWe+a6e";
	dkim-atps=neutral
Received: from unifiededge.gtri.gatech.edu (unifiededge.gtri.gatech.edu [130.207.205.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E06C383DC6
	for <usrp-users@lists.ettus.com>; Fri, 19 Nov 2021 18:03:22 -0500 (EST)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
	c=simple/simple; t=1637363001; h=from:subject:to:date:message-id;
	bh=4KR8OsCrCLWJuK+px2fKMd3Q7HrplaAekIkk+Ma8qyo=;
	b=YMWe+a6eTSAsc9DYAHwMT13d/CgM/LxtLXXNMatJwqLf9mF2yI3flfjds/4vMuaQ3DTtyuz9YDR
	jT78wYlep+BxbwoWroMJvHT68OqGiLK4XUJQqYXp75r2BFj5J6EuhNb+lzzwTEGsOGRcfSLKzhAqv
	9c7YjA7zl+gNQYYi9fV1cma9j81eHqbr0h0O4a2zm7x4/ToOzy7NaTh8AKbHVdUHe9MndyzjKLKCD
	znddNgDVnY1GN039NgYCY9rRJTtO2ToUgO6gQyTURqKNwSZZQoLGzCjuhi0NLf0qLOafUbuCnCU79
	FZBF0Mgn8IX5wAalQ71VxBidQbSyfmhZAKfw==
Received: from parris.core.gtri.org (2610:148:610:291f::71) by
 exedge07.gtri.dmz (2610:148:610:2968::1c9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.858.5;
 Fri, 19 Nov 2021 18:03:21 -0500
Received: from tybee.core.gtri.org (2610:148:610:2901::49) by
 parris.core.gtri.org (2610:148:610:291f::71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2375.12; Fri, 19 Nov 2021 18:03:21 -0500
Received: from tybee.core.gtri.org ([fe80::bc87:62f3:89b0:fc9e]) by
 tybee.core.gtri.org ([fe80::bc87:62f3:89b0:fc9e%15]) with mapi id
 15.01.2375.012; Fri, 19 Nov 2021 18:03:21 -0500
To: Wade Fife <wade.fife@ettus.com>, Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Re: Testbench Compile Error
Thread-Index: AQHX3Y0tS3BxYxv1n0W0rK5CplqdzawLdtVA
Date: Fri, 19 Nov 2021 23:03:21 +0000
Message-ID: <9464a8d9b1f6458da01df55f89972acd@gtri.gatech.edu>
References: <d078107dcf9a451fa06aabce9066ae81@gtri.gatech.edu>
 <CAB__hTSsRx7v0Ob4YNsju08O=8J8ESE+P89KOApWiKifPNRQAw@mail.gmail.com>
 <CAFche=gNebkUovuoP0FFNbzpg1cS6CEJwXrrJtdAaHQF-vVHqA@mail.gmail.com>
In-Reply-To: <CAFche=gNebkUovuoP0FFNbzpg1cS6CEJwXrrJtdAaHQF-vVHqA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Message-ID-Hash: EGK3O77XELMTS46Q3ZE4A3SMH7VZ2TLS
X-Message-ID-Hash: EGK3O77XELMTS46Q3ZE4A3SMH7VZ2TLS
X-MailFrom: Michael.Rich@gtri.gatech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Testbench Compile Error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EGK3O77XELMTS46Q3ZE4A3SMH7VZ2TLS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rich, Michael via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rich, Michael" <Michael.Rich@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============2679398440321347907=="

--===============2679398440321347907==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0037_01D7DD6F.BC81F1E0"

------=_NextPart_000_0037_01D7DD6F.BC81F1E0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0038_01D7DD6F.BC81F1E0"


------=_NextPart_001_0038_01D7DD6F.BC81F1E0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

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

From: Wade Fife <wade.fife@ettus.com>=20
Sent: Friday, November 19, 2021 4:34 PM
To: Rob Kossler <rkossler@nd.edu>
Cc: Rich, Michael <Michael.Rich@gtri.gatech.edu>; =
usrp-users@lists.ettus.com
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


------=_NextPart_001_0038_01D7DD6F.BC81F1E0
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
>Thanks for the info on how the default-nettype is used. I usually work =
in VHDL and am not very familiar with Verilog. <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>The testbench SystemVerilog files seem to be set up by default exactly =
as you=E2=80=99ve said, with =E2=80=9Cdefault_nettype none=E2=80=9D at =
the top and =E2=80=9Cdefault_nettype wire=E2=80=9D at the end. This is =
the case for both of my testbenches, but only one of them is exhibiting =
this issue. That said, I tried changing the default-nettype at the top =
of the offending testbench to wire, but I get the same error. I even =
tried setting the default-nettype to wire directly in the gray2bin.v =
file (even though modifying the UHD code didn=E2=80=99t seem like the =
best approach) and that had no effect either. <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Any other suggestions?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Thank you,<o:p></o:p></span></p><p class=3DMsoNormal><span =
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
Wade Fife &lt;wade.fife@ettus.com&gt; <br><b>Sent:</b> Friday, November =
19, 2021 4:34 PM<br><b>To:</b> Rob Kossler =
&lt;rkossler@nd.edu&gt;<br><b>Cc:</b> Rich, Michael =
&lt;Michael.Rich@gtri.gatech.edu&gt;; =
usrp-users@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] Re: =
Testbench Compile Error<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>This means there's a file that set default_nettype to =
none somewhere. That setting will affect the files that get compiled =
after it, and in your case gray2bin.v doesn't like =
it.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Like Rob said, you can add &quot;`default_nettype =
wire&quot; to the top of the file that's having issues and it should =
compile after that.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Check any files you've added to make sure they don't =
leave the default_nettype as none. The general convention is to put =
&quot;`default_nettype none&quot; at the top of a file but have =
&quot;`default_nettype wire&quot;at the end of a file to avoid messing =
up any other files in the compile.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Wade<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Fri, Nov 19, 2021 at 1:04 PM Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><div><p class=3DMsoNormal>Are =
you able to run the testbench for the provided &quot;rfnoc-example&quot; =
folder?&nbsp; I notice that the gain testbench that is part of this =
example has the following as the last statement. Perhaps this is =
needed?<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>`default_nettype wire<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Fri, Nov 19, 2021 at 11:53 AM Rich, Michael via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><div><div><p class=3DMsoNormal =
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
/o:p></p></div></div><p =
class=3DMsoNormal>_______________________________________________<br>USRP=
-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></bl=
ockquote></div><p =
class=3DMsoNormal>_______________________________________________<br>USRP=
-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send =
an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><o:p></o:p></p></bl=
ockquote></div></div></body></html>
------=_NextPart_001_0038_01D7DD6F.BC81F1E0--

------=_NextPart_000_0037_01D7DD6F.BC81F1E0
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
1TnzBbo9Gn0AAAAAAAA=

------=_NextPart_000_0037_01D7DD6F.BC81F1E0--

--===============2679398440321347907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2679398440321347907==--
