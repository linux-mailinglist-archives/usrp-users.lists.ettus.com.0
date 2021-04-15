Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7882361196
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 20:00:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0DF7538410B
	for <lists+usrp-users@lfdr.de>; Thu, 15 Apr 2021 14:00:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gtri.gatech.edu header.i=@gtri.gatech.edu header.b="HnHUOZV0";
	dkim-atps=neutral
Received: from unifiededge.gtri.gatech.edu (unifiededge.gtri.gatech.edu [130.207.205.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 314AD38407B
	for <usrp-users@lists.ettus.com>; Thu, 15 Apr 2021 14:00:00 -0400 (EDT)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; d=gtri.gatech.edu; s=unifiededge;
	c=simple/simple; t=1618509599; h=from:subject:to:date:message-id;
	bh=3/+hnFnt4072+PYjaB+7tqhnznCVDLau4dl28uT3UJI=;
	b=HnHUOZV0dvhMgBGFX9YhSdj+qtcY843ehivVM46sttjbzxZtVVfzN8FaZlPhtr618ufaOQDoCR6
	LGb2yJehivaCLlz+p0Oq1gCroiOPEpeLHHvznre0CRVkPN0xtTkb/r7at4tiLBtJhI6LJOKG12+er
	LFoQIEyLR9lZPyU7wWRa3vu84+/pwalF3TO+whsnqdEdgJ5hiBuVq4L37lq7hBWEdYaJ8+kUJRwcx
	obsPLKLrRKyhDgkrzsdDodOpsxOJKq/rFvm3TmyyxCy1srXiiyhsx8Bw21k9YmaOdS6JB16h6bSiS
	JZNa+Ct2zufCJFLsotLPh3jty9sZCoDrDEVQ==
Received: from jekyll.core.gtri.org (10.41.1.48) by exedge06.gtri.dmz
 (10.41.104.63) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.2.721.2; Thu, 15 Apr 2021
 13:59:59 -0400
Received: from tybee.core.gtri.org (10.41.1.49) by jekyll.core.gtri.org
 (10.41.1.48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2242.4; Thu, 15
 Apr 2021 13:59:59 -0400
Received: from tybee.core.gtri.org ([fe80::bc87:62f3:89b0:fc9e]) by
 tybee.core.gtri.org ([fe80::bc87:62f3:89b0:fc9e%15]) with mapi id
 15.01.2242.008; Thu, 15 Apr 2021 13:59:59 -0400
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: AXI Stream Issue
Thread-Index: AdcvzSiJaruC5YfNQv2B3bJuz6m75gAh9IKAAHJJChA=
Date: Thu, 15 Apr 2021 17:59:59 +0000
Message-ID: <52db1ef0491e4088ae2ce829102a50ec@gtri.gatech.edu>
References: <b4cb345657e64c14b5fc1bfa84d34922@gtri.gatech.edu>
 <804ea930-44e5-aad0-cf5c-77d13b0afbf7@itsystems.it>
In-Reply-To: <804ea930-44e5-aad0-cf5c-77d13b0afbf7@itsystems.it>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
Message-ID-Hash: U4E7A3PCF75LJNNRVTWG4UIY3ZTUYTPK
X-Message-ID-Hash: U4E7A3PCF75LJNNRVTWG4UIY3ZTUYTPK
X-MailFrom: Michael.Rich@gtri.gatech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI Stream Issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U4E7A3PCF75LJNNRVTWG4UIY3ZTUYTPK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rich, Michael via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rich, Michael" <Michael.Rich@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============6770392076745861603=="

--===============6770392076745861603==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_009F_01D731FF.9EC9B640"

------=_NextPart_000_009F_01D731FF.9EC9B640
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_00A0_01D731FF.9EC9B640"


------=_NextPart_001_00A0_01D731FF.9EC9B640
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Has anyone had any ideas on how to address this issue?

 

I'm not sure if my issue is the same as Paolo is seeing or not, but after
debugging some more, I did have an additional question I was hoping someone
could help me with. As I mentioned, the data stream I'm sending to the
AXI_Wrapper seems to work for a while, but at some point I start getting the
following error in GNU Radio:

 

overrun on chan 0

D

 

That persists for a while, then I get the error:

 

timeout on chan 0

 

Once I get that timeout, data_tready from AXI_Wrapper is stuck low, and I
have to power-cycle or reprogram the FGPA to recover. 

 

Does anyone know what exactly would cause these error messages, and what
that means within the context of the FGPA datapath?

 

Any assistance or insights would be greatly appreciated.

 

Thank you,

 

Michael H. Rich

Electronic Systems Laboratory

Georgia Tech Research InstituteR

Phone: (404) 407-8358

E-mail:  <mailto:michael.rich@gtri.gatech.edu> michael.rich@gtri.gatech.edu

 

From: Paolo Palana <p.palana@itsystems.it> 
Sent: Tuesday, April 13, 2021 3:06 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: AXI Stream Issue

 

Cheers to all the mailing list.

I have similar problem too (the device is an X310 with TwinRx, UHD-3.15 on
ubuntu 20.04). My NoC Block too has 2 input and 2 output at a different data
rate. The start streaming goes smootly and it seems to work for a while, but
when I stop the streaming (during my tests I streamed for a very short time,
say 10 secs) I had the following error from UHD.

  [ERROR] [UHD] Exception caught in safe-call. in
ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with uhd::endianness_t
_endianness = uhd::ENDIANNESS_BIG] at ~/host/lib/rfnoc/ctrl_iface.cpp:50
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block ctrl
(CE_03_Port_61) no response packet - AssertionError: bool(buff) in uint64_t
ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with
uhd::endianness_t _endianness = uhd::ENDIANNESS_BIG; uint64_t = long
unsigned int] at ~/host/lib/rfnoc/ctrl_iface.cpp:151

It seems too me that the internal FPGA bus for some reason is stuck. In fact
when I see the signals with ILA after the stop streaming I can see that the
i_tready signal for the second input in my Noc Block is low, while the the
i_tvalid is high. 

In my implementation I'm not using the axi_wrapper, but directly the
chdr_deframer_2clk and chdr_framer_2clk.

I'm pretty shure that the logic of my NoC Block is (almost) correct because
I have the same one running with UHD-3.10.3 without any problem.

Up to now I'm unable to pinpoint the problem, What can be the problem? Any
suggestion

Thank you for your attention

Paolo

 

From: Rich, Michael via USRP-users <usrp-users@lists.ettus.com> 
Sent: Monday, April 12, 2021 2:54 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] AXI Stream Issue

 

I am having issues getting data out of a custom block NoC Block (on an X310
using UHD3.15) and I'm not quite sure what would be causing what I'm seeing.
When everything starts up, it seems to work just fine for a bit, but then
output stops. Checking the data bus using an ILA, it appears as though
data_tready from the AXI_Wrapper goes low at some point and just stays
there. 

 

My output is at a different rate than the input, so I've set SIMPLE_MODE=0
for AXI_WRAPPER. I'm fairly sure I'm driving the AMBA bus properly. I'm
setting s_axis_data_tuser as follows:

Bit 127-126 = 00 (data)

Bit 125 = 0 (timestamp not used)

Bit 124 = 0 or 1 (depending upon if end-of-burst or not)

Bit 123-112 = sequence number (monotonically increasing for each packet
starting at 0)

Bit 111-96 = packet length (total number of data bytes + 8 header bytes)

Bit 95-80 = src_sid (from noc_shell)

Bit 79-64 = next_dst_sid (from noc_shell)

Bit 63-0 = 0

 

What might cause data_tready to remain low? Is there anything else I should
be looking at that might explain this behavior?


Thank you,

 

Michael H. Rich

Electronic Systems Laboratory

Georgia Tech Research InstituteR

Phone: (404) 407-8358

E-mail:  <mailto:michael.rich@gtri.gatech.edu> michael.rich@gtri.gatech.edu

 

 

 


------=_NextPart_001_00A0_01D731FF.9EC9B640
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Has anyone had any ideas on how to address this =
issue?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>I&#8217;m not sure if my issue is the same as Paolo is seeing or not, =
but after debugging some more, I did have an additional question I was =
hoping someone could help me with. As I mentioned, the data stream =
I&#8217;m sending to the AXI_Wrapper seems to work for a while, but at =
some point I start getting the following error in GNU =
Radio:<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-left:.5in'><span =
style=3D'font-size:11.0pt;font-family:"Courier =
New";color:#1F497D'>overrun on chan 0<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'margin-left:.5in'><span =
style=3D'font-size:11.0pt;font-family:"Courier =
New";color:#1F497D'>D<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>That persists for a while, then I get the =
error:<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'margin-left:.5in'><span =
style=3D'font-size:11.0pt;font-family:"Courier =
New";color:#1F497D'>timeout on chan 0<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Once I get that timeout, data_tready from AXI_Wrapper is stuck low, and =
I have to power-cycle or reprogram the FGPA to recover. =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Does anyone know what exactly would cause these error messages, and =
what that means within the context of the FGPA =
datapath?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Any assistance or insights would be greatly =
appreciated.<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Thank you,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><div><p class=3DMsoNormal><b><span =
style=3D'font-family:"Calibri",sans-serif;color:black'>Michael H. =
Rich</span></b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p></o:p></span></p><p class=3DMsoNormal><i><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>E=
lectronic Systems Laboratory</span></i><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p></o:p></span></p><p class=3DMsoNormal><b><i><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>G=
eorgia Tech Research Institute&reg;</span></i></b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>P=
hone: (404) 407-8358</span><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>E=
-mail:</span><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
> <a href=3D"mailto:michael.rich@gtri.gatech.edu"><span =
style=3D'color:blue'>michael.rich@gtri.gatech.edu</span></a></span><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p></o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><div =
style=3D'mso-element:para-border-div;border:none;border-top:solid =
windowtext 1.0pt;padding:1.0pt 0in 0in 0in'><p class=3DMsoNormal =
style=3D'border:none;padding:0in'><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
Paolo Palana &lt;p.palana@itsystems.it&gt; <br><b>Sent:</b> Tuesday, =
April 13, 2021 3:06 AM<br><b>To:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [USRP-users] Re: AXI =
Stream Issue<o:p></o:p></span></p></div></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p>Cheers to all the mailing =
list.<o:p></o:p></p><p>I have similar problem too (the device is an X310 =
with TwinRx, UHD-3.15 on ubuntu 20.04). My NoC Block too has 2 input and =
2 output at a different data rate. The start streaming goes smootly and =
it seems to work for a while, but when I stop the streaming (during my =
tests I streamed for a very short time, say 10 secs) I had the following =
error from UHD.<o:p></o:p></p><p>&nbsp; <span =
style=3D'font-size:10.0pt'>[ERROR] [UHD] Exception caught in safe-call. =
in ctrl_iface_impl&lt;_endianness&gt;::~ctrl_iface_impl() [with =
uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG] at =
~/host/lib/rfnoc/ctrl_iface.cpp:50 this-&gt;send_cmd_pkt(0, 0, true); =
-&gt; EnvironmentError: IOError: Block ctrl (CE_03_Port_61) no response =
packet - AssertionError: bool(buff) in uint64_t =
ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool, double) [with =
uhd::endianness_t _endianness =3D uhd::ENDIANNESS_BIG; uint64_t =3D long =
unsigned int] at =
~/host/lib/rfnoc/ctrl_iface.cpp:151</span><o:p></o:p></p><p>It seems too =
me that the internal FPGA bus for some reason is stuck. In fact when I =
see the signals with ILA after the stop streaming I can see that the =
i_tready signal for the second input in my Noc Block is low, while the =
the i_tvalid is high. <o:p></o:p></p><p>In my implementation I'm not =
using the axi_wrapper, but directly the chdr_deframer_2clk and =
chdr_framer_2clk.<o:p></o:p></p><p>I'm pretty shure that the logic of my =
NoC Block is (almost) correct because I have the same one running with =
UHD-3.10.3 without any problem.<o:p></o:p></p><p>Up to now I'm unable to =
pinpoint the problem<span style=3D'font-size:10.0pt'>, </span>What can =
be the problem?<span style=3D'font-size:10.0pt'> </span>Any =
suggestion<o:p></o:p></p><p>Thank you for your =
attention<o:p></o:p></p><p>Paolo<span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'><o:p></o:p></=
span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><div =
style=3D'mso-element:para-border-div;border:none;border-top:solid =
windowtext 1.0pt;padding:1.0pt 0in 0in 0in'><p class=3DMsoNormal =
style=3D'border:none;padding:0in'><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
Rich, Michael via USRP-users &lt;usrp-users@lists.ettus.com&gt; =
<br><b>Sent:</b> Monday, April 12, 2021 2:54 PM<br><b>To:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [USRP-users] AXI Stream =
Issue<o:p></o:p></span></p></div><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'><o:p>&nbsp;</=
o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>I am having =
issues getting data out of a custom block NoC Block (on an X310 using =
UHD3.15) and I&#8217;m not quite sure what would be causing what =
I&#8217;m seeing. When everything starts up, it seems to work just fine =
for a bit, but then output stops. Checking the data bus using an ILA, it =
appears as though data_tready from the AXI_Wrapper goes low at some =
point and just stays there. <o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'><o:p>&nbsp;</=
o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>My output is =
at a different rate than the input, so I&#8217;ve set SIMPLE_MODE=3D0 =
for AXI_WRAPPER. I&#8217;m fairly sure I&#8217;m driving the AMBA bus =
properly. I&#8217;m setting s_axis_data_tuser as =
follows:<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Bit 127-126 =
=3D 00 (data)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Bit 125 =3D =
0 (timestamp not used)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Bit 124 =3D =
0 or 1 (depending upon if end-of-burst or not)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Bit 123-112 =
=3D sequence number (monotonically increasing for each packet starting =
at 0)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Bit 111-96 =
=3D packet length (total number of data bytes + 8 header =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Bit 95-80 =
=3D src_sid (from noc_shell)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Bit 79-64 =
=3D next_dst_sid (from noc_shell)<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>Bit 63-0 =3D =
0<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'><o:p>&nbsp;</=
o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>What might =
cause data_tready to remain low? Is there anything else I should be =
looking at that might explain this behavior?<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'><br>Thank =
you,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-family:"Calibri",sans-serif'><o:p>&nbsp;</o:p></span></p><p=
 class=3DMsoNormal><b><span =
style=3D'font-family:"Calibri",sans-serif;color:black'>Michael H. =
Rich</span></b><span =
style=3D'font-family:"Calibri",sans-serif;color:#1F497D'><o:p></o:p></spa=
n></p><p class=3DMsoNormal><i><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>E=
lectronic Systems Laboratory</span></i><span =
style=3D'font-family:"Calibri",sans-serif;color:#1F497D'><o:p></o:p></spa=
n></p><p class=3DMsoNormal><b><i><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>G=
eorgia Tech Research Institute&reg;</span></i></b><span =
style=3D'font-family:"Calibri",sans-serif;color:#1F497D'><o:p></o:p></spa=
n></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>P=
hone: (404) 407-8358</span><span =
style=3D'font-family:"Calibri",sans-serif;color:#1F497D'><o:p></o:p></spa=
n></p><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:black'>E=
-mail:</span><span =
style=3D'font-size:10.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
> <a href=3D"mailto:michael.rich@gtri.gatech.edu"><span =
style=3D'color:blue'>michael.rich@gtri.gatech.edu</span></a></span><span =
style=3D'font-family:"Calibri",sans-serif;color:#1F497D'><o:p></o:p></spa=
n></p><p class=3DMsoNormal><span =
style=3D'font-family:"Calibri",sans-serif'><o:p>&nbsp;</o:p></span></p><p=
><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p><span =
style=3D'font-family:"Calibri",sans-serif'><o:p>&nbsp;</o:p></span></p></=
div></body></html>
------=_NextPart_001_00A0_01D731FF.9EC9B640--

------=_NextPart_000_009F_01D731FF.9EC9B640
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
T2h3iW0mwNQAAAAAAAA=

------=_NextPart_000_009F_01D731FF.9EC9B640--

--===============6770392076745861603==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6770392076745861603==--
