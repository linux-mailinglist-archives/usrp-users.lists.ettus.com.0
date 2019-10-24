Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A95D1E35B3
	for <lists+usrp-users@lfdr.de>; Thu, 24 Oct 2019 16:39:22 +0200 (CEST)
Received: from [::1] (port=50734 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iNeGh-0005b4-C6; Thu, 24 Oct 2019 10:39:15 -0400
Received: from llmx2.ll.mit.edu ([129.55.12.48]:43790)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <prvs=5200832067=richard.muri@ll.mit.edu>)
 id 1iNeGd-0005Vx-SC
 for USRP-users@lists.ettus.com; Thu, 24 Oct 2019 10:39:11 -0400
Received: from LLE2K16-MBX01.mitll.ad.local (LLE2K16-MBX01.mitll.ad.local) by
 llmx2.ll.mit.edu (unknown) with ESMTPS id x9OEcV6e035164 for
 <USRP-users@lists.ettus.com>; Thu, 24 Oct 2019 10:38:31 -0400
To: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Thread-Topic: [USRP-users] Controlling an X310 from embedded devices
Thread-Index: AdWJ/HL4vnBolMrXQciHvM+r4m+4bQAJ9DsAAATiXIAAD8C2MA==
Date: Thu, 24 Oct 2019 14:38:29 +0000
Message-ID: <cd4c001a4fc84e91847013eadac5e889@ll.mit.edu>
References: <CA+JMMq8N1EzMBbAU_KUMn27G7ya0qOjPfv_F7F5pR-Vopda5nA@mail.gmail.com>
 <FCEC6A68-6E5D-4EA7-BD3A-E314F11F39FE@gmail.com>
In-Reply-To: <FCEC6A68-6E5D-4EA7-BD3A-E314F11F39FE@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.1.90]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-24_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910240135
Subject: Re: [USRP-users] Controlling an X310 from embedded devices
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
From: "Muri,
 Richard - 1002 - MITLL via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Muri, Richard - 1002 - MITLL" <Richard.Muri@ll.mit.edu>
Content-Type: multipart/mixed; boundary="===============1988311319653270776=="
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

--===============1988311319653270776==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_005E_01D58A57.2C1A8120"

------=_NextPart_000_005E_01D58A57.2C1A8120
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_005F_01D58A57.2C1A8120"


------=_NextPart_001_005F_01D58A57.2C1A8120
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

That was my concern and why I want to control it from an FPGA. My =
initial thought was I use an FPGA to fill the data buffers with DMA and =
then use an ARM to handle the control flow, but that doesn=E2=80=99t =
help me receive data at the rates the x300 series is capable of =
supplying. Is there a way to accept received packets into a DMA?

=20

Alternatively, how crazy would it be to use an ARM for the =
initialization/configuration, and then build the appropriate data and =
command packets in FPGA and send those directly to the USRP?

=20

Thanks,

Richard

=20

From: Marcus D Leech <patchvonbraun@gmail.com>=20
Sent: Wednesday, October 23, 2019 10:54 PM
To: Nick Foster <bistromath@gmail.com>
Cc: Muri, Richard - 1002 - MITLL <Richard.Muri@ll.mit.edu>; =
usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Controlling an X310 from embedded devices

=20

I run B210 from an Odoid XU4 platform and can get up to about 12Msps out =
of it, depending on what I=E2=80=99m doing.=20

=20

But no way you=E2=80=99ll do the 10s of Msps that the X3xx series is =
capable of.=20

Sent from my iPhone





On Oct 23, 2019, at 8:35 PM, Nick Foster via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > wrote:

=EF=BB=BF

You should have no trouble running UHD on an ARM architecture. The Ettus =
E300 series radios are ARM devices. UHD does a huge amount of =
initialization and configuration for the X310, and in any case the X310 =
doesn't use VRT in any real capacity. You won't realistically be able to =
divorce the X310 from UHD.

=20

Your biggest headache on an embedded machine will be keeping up with =
high data rates, and waiting for UHD to compile in the first place. =3D)

=20

Nick

=20

On Wed, Oct 23, 2019 at 4:59 PM Muri, Richard - 1002 - MITLL via =
USRP-users <usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com> > wrote:

Hello,

=20

I=E2=80=99m looking into controlling an X310 from an embedded device. I =
wanted to probe the users list before I bury myself into a rabbit hole.

=20

Is it possible to control a USRP directly from an FPGA? I noticed that =
UHD use VRT as the transport protocol =
(http://files.ettus.com/manual/page_rtp.html). If I have an FPGA that =
speaks VRT over Ethernet or Aurora can I control a USRP, and are there =
examples/documentation of controlling a USRP without running an instance =
of UHD? In my use case I need to send timed transmit commands and data =
packets, and timed receive commands and receive data packets.=20

=20

In the case that running without UHD is a headache I don=E2=80=99t want =
to brave, are there examples of running UHD on ARM cores?

=20

Any insight is appreciated.

=20

Thanks,

Richard

=20

=20

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=20
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>=20
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


------=_NextPart_001_005F_01D58A57.2C1A8120
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>That was my concern and why I want to control it from an FPGA. My =
initial thought was I use an FPGA to fill the data buffers with DMA and =
then use an ARM to handle the control flow, but that doesn=E2=80=99t =
help me receive data at the rates the x300 series is capable of =
supplying. Is there a way to accept received packets into a =
DMA?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Alternatively, how crazy would it be to use an ARM for the =
initialization/configuration, and then build the appropriate data and =
command packets in FPGA and send those directly to the =
USRP?<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Thanks,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
>Richard<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> =
Marcus D Leech &lt;patchvonbraun@gmail.com&gt; <br><b>Sent:</b> =
Wednesday, October 23, 2019 10:54 PM<br><b>To:</b> Nick Foster =
&lt;bistromath@gmail.com&gt;<br><b>Cc:</b> Muri, Richard - 1002 - MITLL =
&lt;Richard.Muri@ll.mit.edu&gt;; =
usrp-users@lists.ettus.com<br><b>Subject:</b> Re: [USRP-users] =
Controlling an X310 from embedded =
devices<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I run B210 =
from an Odoid XU4 platform and can get up to about 12Msps out of it, =
depending on what I=E2=80=99m doing.&nbsp;<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>But no way you=E2=80=99ll do the 10s of =
Msps that the X3xx series is capable of.&nbsp;<o:p></o:p></p><div><p =
class=3DMsoNormal>Sent from my iPhone<o:p></o:p></p></div><div><p =
class=3DMsoNormal><br><br><o:p></o:p></p><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'>On Oct 23, 2019, at 8:35 PM, Nick Foster =
via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<o:p></o:p></p></blockquote></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><div><p =
class=3DMsoNormal><span =
style=3D'font-family:"Tahoma",sans-serif'>=EF=BB=BF</span><o:p></o:p></p>=
<div><div><p class=3DMsoNormal>You should have no trouble running UHD on =
an ARM architecture. The Ettus E300 series radios are ARM devices. UHD =
does a huge amount of initialization and configuration for the X310, and =
in any case the X310 doesn't use VRT in any real capacity. You won't =
realistically be able to divorce the X310 from =
UHD.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Your biggest headache on an embedded machine will be =
keeping up with high data rates, and waiting for UHD to compile in the =
first place. =3D)<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Nick<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Wed, Oct 23, 2019 at 4:59 PM Muri, Richard - 1002 - MITLL via USRP-users =
&lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0in 0in 0in =
6.0pt;margin-left:4.8pt;margin-right:0in'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hello,<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I=E2=80=99m =
looking into controlling an X310 from an embedded device. I wanted to =
probe the users list before I bury myself into a rabbit =
hole.<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Is it =
possible to control a USRP directly from an FPGA? I noticed that UHD use =
VRT as the transport protocol (<a =
href=3D"http://files.ettus.com/manual/page_rtp.html" =
target=3D"_blank">http://files.ettus.com/manual/page_rtp.html</a>). If I =
have an FPGA that speaks VRT over Ethernet or Aurora can I control a =
USRP, and are there examples/documentation of controlling a USRP without =
running an instance of UHD? In my use case I need to send timed transmit =
commands and data packets, and timed receive commands and receive data =
packets. <o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>In the case =
that running without UHD is a headache I don=E2=80=99t want to brave, =
are there examples of running UHD on ARM cores?<o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Any insight =
is appreciated.<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Thanks,<o:p>=
</o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Richard<o:p>=
</o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div></div><p =
class=3DMsoNormal>_______________________________________________<br>USRP=
-users mailing list<br><a href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank">USRP-users@lists.ettus.com</a><br><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a><o:p></o:p></p></blockquote></div><p =
class=3DMsoNormal>_______________________________________________<br>USRP=
-users mailing list<br><a =
href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>=
<br><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>=
<o:p></o:p></p></div></blockquote></div></div></body></html>
------=_NextPart_001_005F_01D58A57.2C1A8120--

------=_NextPart_000_005E_01D58A57.2C1A8120
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIISVTCCA4ow
ggJyoAMCAQICAQEwDQYJKoZIhvcNAQELBQAwVjELMAkGA1UEBhMCVVMxHzAdBgNVBAoTFk1JVCBM
aW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsTA1BLSTEYMBYGA1UEAxMPTUlUTEwgUm9vdCBDQS0y
MB4XDTE2MDQyMDEyMDAwMFoXDTM1MDQxOTIzNTk1OVowVjELMAkGA1UEBhMCVVMxHzAdBgNVBAoT
Fk1JVCBMaW5jb2xuIExhYm9yYXRvcnkxDDAKBgNVBAsTA1BLSTEYMBYGA1UEAxMPTUlUTEwgUm9v
dCBDQS0yMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv3WoBEGOOJtm4ucvaf6vKIFP
s8watCd6Smwq/XeRNo7P3jPIxNPwF398RGDUmPJIXA7idzD6j0opFIW+kLqYye9e788PV0dqaJlX
8818fNDbSE+8B6hieqKTR7VfOI74UVQEUKVRFuRFw6uVYuvgew2Tj/C2dEee37eruQl5nHkbV2Os
WnZ7O+yt+etd6HRcaXLlP9q8WKgA3B7vkOVIMCKoAuaWj+BFq7K+WNkiyi/KdOH9JmOpbyRK4jcA
7xbLnF8JFUSNg5c4Y1BJrFaZtkCeG6Nm9p524GllkRFzPgpj8VicV+AK+9rY07dTx02kYotTnKuy
0YxBAwsUXxAQEwIDAQABo2MwYTAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBT/ycllTFOA8akM
PCGugirH7vgy+zAfBgNVHSMEGDAWgBT/ycllTFOA8akMPCGugirH7vgy+zAOBgNVHQ8BAf8EBAMC
AYYwDQYJKoZIhvcNAQELBQADggEBAHqYfEf/3J5aMKhlYQ0PnUAbMB8jZSr9/HvjfOF00crFUCfS
rqG8JQwo+S/iq66gcp62FEgJ0fQkDgVg6m+C2ETo1LoWiSxhYCfcSIQECljlXwR8wFSayF822S69
IqvHhdq4d58jU6gYi6ssjU4vwsvsVLRJKk/m/Cg/w8gW6YHM5ahBD6/5Ccel2fI7oSmskO991+ot
rC11YfDwCFvz7Am0r+K9iVhSWta4hmIuV0YBia07eZKSO02LPgQ8YOz3ku0Yt+mh8VWRKux2CcYj
Mpk+WDV0BMp75tqb6pqBFkcKvEBXqxg+8+G/umjii4H0c5kvJhaQyykbmOKmxO9IcJIwggTAMIID
qKADAgECAgEGMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZNSVQgTGlu
Y29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExMIFJvb3QgQ0EtMjAe
Fw0xNzAzMDIxMjAwMDBaFw0yNjAzMDIyMzU5NTlaMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUw
ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCnmoMOvTkfw7nq19mrWazGaa+Q83Uv0+AT
XT3q6kr+WExIMIZ87C74WCcRXpvO7uvx7HvMsYWAFHW93wQwhjytxHIOZgKNJ4VnGVDUl+KI7g0n
9+Zjt3hB3HhHbcvbe9+Y4jz+XzCiLl2OaYvICKbxvbBSCLtPEeZQ6x6Tb6EK0ym0gvYeHO3kuuY+
SJHJMltbrLnIVLxjZrNVS77zXKvu6Q3hSdkRIB7kJgEXfL+p/z/2p94bEEZ2TnQz0TkOjG+Jq7Ul
XlFRtvsYcDPEQD3UNkZsWcXgC1hXG8TGknUcAhlGxVhlKlFLmNd7342seGy2s9YxNDnSE+eXTtb0
I5LLAgMBAAGjggGcMIIBmDASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBQv77vGDR276Wr+
rGfzBzsIdvZLWTAfBgNVHSMEGDAWgBT/ycllTFOA8akMPCGugirH7vgy+zAOBgNVHQ8BAf8EBAMC
AYYwZwYIKwYBBQUHAQEEWzBZMC4GCCsGAQUFBzAChiJodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0
dG8vTExSQ0EyMCcGCCsGAQUFBzABhhtodHRwOi8vb2NzcC5sbC5taXQuZWR1L29jc3AwNAYDVR0f
BC0wKzApoCegJYYjaHR0cDovL2NybC5sbC5taXQuZWR1L2dldGNybC9MTFJDQTIwgZIGA1UdIASB
ijCBhzANBgsqhkiG9xICAQMBBjANBgsqhkiG9xICAQMBCDANBgsqhkiG9xICAQMBBzANBgsqhkiG
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
BAoTFk1JVCBMaW5jb2xuIExhYm9yYXRvcnkxDzANBgNVBAsTBlBlb3BsZTEgMB4GA1UEAxMXTXVy
aS5SaWNoYXJkLkouNTAwMTg4NzQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCgIFGi
SyvcKm5nUpTQ9F/k32yFipRZ/3k9R94ivEwbbLZVyln9r6DqdZ3Qas/4EC7tkGdRSNZral+QzAMj
PDF2kfYdH5mqLuIpV0d5uimzoGhAxN3Kvo5gSJVEcXXc1aqvrQVKRj68uPC5Zi68Sc/2K/oZ1Izn
o+IUSG6vl4kpuXBLGEf0jgbuOk1KwMUegiyrjatk2JqseSJMss3/thomiq9i0775EW2al6FpK6WR
4xox3ltGmCg2BfUF07cu1WBQyIDgqsUMlxshmagUN97+XKyYXtB7DApGKgAmk3kVZLlu/nlgbhsN
pPBoOmHukFTXbDZQFGZY3pMCvyB7RnQ3AgMBAAGjggG+MIIBujAdBgNVHQ4EFgQUw7qbTU+dvgpa
vu3j4hVx5oULZl8wDgYDVR0PAQH/BAQDAgUgMB8GA1UdIwQYMBaAFC/vu8YNHbvpav6sZ/MHOwh2
9ktZMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwvbGxjYTUw
ZgYIKwYBBQUHAQEEWjBYMC0GCCsGAQUFBzAChiFodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0dG8v
bGxjYTUwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLmxsLm1pdC5lZHUvb2NzcDA9BgkrBgEEAYI3
FQcEMDAuBiYrBgEEAYI3FQiDg+Udh+ynZoathxWD6vBFhbahHx2F69Bwg+vtIAIBZAIBCTAlBgNV
HSUEHjAcBgRVHSUABggrBgEFBQcDBAYKKwYBBAGCNwoDBDAiBgNVHREEGzAZgRdSaWNoYXJkLk11
cmlAbGwubWl0LmVkdTAYBgNVHSAEETAPMA0GCyqGSIb3EgIBAwEIMCcGCSsGAQQBgjcUAgQaHhgA
TABMAFUAcwBlAHIARQBuAGMALQBTAFcwDQYJKoZIhvcNAQELBQADggEBAI05eksRfEq3fZ8KCP+w
Ds4foRZ2WnzcesR2y9QMHhAUC5ndr84tf0GxWl9WqUhqWrR8210lStKoajNtEjozqkXEmQ8frKux
1nc7gkqHyyW/ULW6rEz2ezBapYppTrEZciRfCflFr9obAau3uWHcQeutIFBJZ+GLcxqtr+bkbNs6
9mACJEmId3woe+gan+jHncqlLR3eMEAsuUSeXBEd/PgvJGZUbxDUoSTzzhXaJRvP+8M9PKmTAoCV
O3e+otBr+dkFF6ord1RitvL/G9QR/3gRmVPoXboPHxde8H3nAPVdjKWZ8rLLn/ZD/NUwDLNTfvgl
VnuJl2eSPbrOL41dHtQxggMKMIIDBgIBATBoMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQg
TGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUCE1kA
BExt6m6yiwjKZWwAAAAETG0wCQYFKw4DAhoFAKCCAXcwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMTkxMDI0MTQzODI4WjAjBgkqhkiG9w0BCQQxFgQUY9But4AzimcN
p1oLsfKmRHcCB98wJAYJKoZIhvcNAQkPMRcwFTAKBggqhkiG9w0DBzAHBgUrDgMCGjB3BgkrBgEE
AYI3EAQxajBoMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBMYWJvcmF0b3J5
MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUCE1kAA4xrqsueL93get4AAAADjGsw
eQYLKoZIhvcNAQkQAgsxaqBoMFExCzAJBgNVBAYTAlVTMR8wHQYDVQQKDBZNSVQgTGluY29sbiBM
YWJvcmF0b3J5MQwwCgYDVQQLDANQS0kxEzARBgNVBAMMCk1JVExMIENBLTUCE1kAA4xrqsueL93g
et4AAAADjGswDQYJKoZIhvcNAQEBBQAEggEAPvYC2FKiFRSDdE5Nww8ZtS25GbHS8fUzPq5i3FYH
rwwaJV2He5DyfMjfSJa1p2UKF3vYUTgdpSiZEuoQvOOuBcK/mATb0tBAIOtWtQTG6EE9uo4UDIRK
+C9ShOmLq3PcxX47K9enSo21KlErUlOIA9ND8OSS5CCyqisCwuOaaNcPpNl5GJ23cfxA4fUCSVrl
t87LdAZQQlSJRDm6j/3R2BaSmKSZPlncvymYh8NTvkRdRcpStokJN/zNUbyah+oVSeTIUIejOxSs
o+AIBYAJyE7l1j1GHEo9mf8/na2ax46wUI9mFETxOq6etXI6X6qHqTsWVKHBBsSUNfk0IgG+LgAA
AAAAAA==

------=_NextPart_000_005E_01D58A57.2C1A8120--


--===============1988311319653270776==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1988311319653270776==--

