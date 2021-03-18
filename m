Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8BA341002
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 22:43:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 732FB383858
	for <lists+usrp-users@lfdr.de>; Thu, 18 Mar 2021 17:43:09 -0400 (EDT)
Received: from outgoing-exchange-7.mit.edu (outgoing-exchange-7.mit.edu [18.9.28.58])
	by mm2.emwd.com (Postfix) with ESMTPS id 674643832FA
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 17:42:59 -0400 (EDT)
Received: from oc11exedge1.exchange.mit.edu (OC11EXEDGE1.EXCHANGE.MIT.EDU [18.9.3.17])
	by outgoing-exchange-7.mit.edu (8.14.7/8.12.4) with ESMTP id 12ILgjdB028857
	for <usrp-users@lists.ettus.com>; Thu, 18 Mar 2021 17:42:58 -0400
Received: from w92expo22.exchange.mit.edu (18.7.74.76) by
 oc11exedge1.exchange.mit.edu (18.9.3.17) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Mar 2021 17:42:25 -0400
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 w92expo22.exchange.mit.edu (18.7.74.76) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Mar 2021 17:42:38 -0400
Received: from oc11expo22.exchange.mit.edu ([18.9.4.84]) by
 oc11expo22.exchange.mit.edu ([18.9.4.84]) with mapi id 15.00.1497.012; Thu,
 18 Mar 2021 17:42:39 -0400
From: "Richard J. Muri" <ri28856@mit.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD hanging after uhd::usrp::multi_usrp::make()
Thread-Index: AdccPRMlimPj+dgCRG6D5Pp4YiZX9A==
Date: Thu, 18 Mar 2021 21:42:38 +0000
Message-ID: <2e9a7f6b9ef44d3884048125a94a02eb@oc11expo22.exchange.mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [129.55.200.20]
MIME-Version: 1.0
Message-ID-Hash: 4PW4RGDUSX4XGX2ZFVBIAFP2YUTHCDOM
X-Message-ID-Hash: 4PW4RGDUSX4XGX2ZFVBIAFP2YUTHCDOM
X-MailFrom: ri28856@mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD hanging after uhd::usrp::multi_usrp::make()
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4PW4RGDUSX4XGX2ZFVBIAFP2YUTHCDOM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0310415925427982965=="

--===============0310415925427982965==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2e9a7f6b9ef44d3884048125a94a02eboc11expo22exchangemited_"

--_000_2e9a7f6b9ef44d3884048125a94a02eboc11expo22exchangemited_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,



I encountered what appears to be a bug in UHD that I have not been able to =
reproduce. I am using a USRP x310, UHD 3.13 on a RHEL 7 OS. The issue appea=
rs to be an interaction with a bad network interface.



The hang:

After I call multi_usrp::make(<my_ip_addr>), it triggers a series of print =
statements in UHD. The output looks something like this:

[INFO][UHD] linux; GNU C++ version 4.8.5 (Red Hat 4.8.5-39); Boost_105300; =
UHD_3.13.0.3-0-unknown

[INFO][X300] x300 initialization sequence...

[INFO][X300] Maximum frame size: 8000 bytes.

And at this point it hangs indefinitely. I tried pinging the USRP, and it r=
esponds to pings. I tried running uhd_usrp_probe, and it hangs with the exa=
ct same printout as my application. Eventually for an unrelated reason, I r=
an dhclient, and the hanging uhd_usrp_probe in another program unfroze and =
completed successfully.



I have an x310 connected directly to a host PC's NIC (no switch in between)=
. The application used a hard coded IP address to connect to the USRP. In t=
heory my setup does not have a DNS server or DHCP client.  The reason I ran=
 dhclient was to bring up a bad network interface when I reconnected the fi=
eld setup to my lab LAN.



Is this a known behavior? It appears that UHD tried to scan through the ava=
ilable network configs even though it should use the static IP to connect t=
o the USRP.



The kicker is that I haven't been able to replicate the problem. It persist=
ed for two days with the field configuration (through reboot cycles), and t=
hen appears to have been resolved by running dhclient. I tried forcing a ba=
d network config in the same way, but can't repeat it.



Thanks,

Richard




--_000_2e9a7f6b9ef44d3884048125a94a02eboc11expo22exchangemited_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I encountered what appears to be a bug in UHD that I=
 have not been able to reproduce. I am using a USRP x310, UHD 3.13 on a RHE=
L 7 OS. The issue appears to be an interaction with a bad network interface=
.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The hang:<o:p></o:p></p>
<p class=3D"MsoNormal">After I call multi_usrp::make(&lt;my_ip_addr&gt;), i=
t triggers a series of print statements in UHD. The output looks something =
like this:<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO][UHD] linux; GNU C&#43;&#43; version 4.8.5 (Re=
d Hat 4.8.5-39); Boost_105300; UHD_3.13.0.3-0-unknown<o:p></o:p></p>
<p class=3D"MsoNormal">[INFO][X300] x300 initialization sequence&#8230;<o:p=
></o:p></p>
<p class=3D"MsoNormal">[INFO][X300] Maximum frame size: 8000 bytes.<o:p></o=
:p></p>
<p class=3D"MsoNormal">And at this point it hangs indefinitely. I tried pin=
ging the USRP, and it responds to pings. I tried running uhd_usrp_probe, an=
d it hangs with the exact same printout as my application. Eventually for a=
n unrelated reason, I ran dhclient,
 and the hanging uhd_usrp_probe in another program unfroze and completed su=
ccessfully.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have an x310 connected directly to a host PC&#8217=
;s NIC (no switch in between). The application used a hard coded IP address=
 to connect to the USRP. In theory my setup does not have a DNS server or D=
HCP client. &nbsp;The reason I ran dhclient was
 to bring up a bad network interface when I reconnected the field setup to =
my lab LAN.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this a known behavior? It appears that UHD tried =
to scan through the available network configs even though it should use the=
 static IP to connect to the USRP.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The kicker is that I haven&#8217;t been able to repl=
icate the problem. It persisted for two days with the field configuration (=
through reboot cycles), and then appears to have been resolved by running d=
hclient. I tried forcing a bad network config
 in the same way, but can&#8217;t repeat it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Richard<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_2e9a7f6b9ef44d3884048125a94a02eboc11expo22exchangemited_--

--===============0310415925427982965==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0310415925427982965==--
