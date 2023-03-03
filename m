Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BE66A9A5C
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 16:14:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2B32384869
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 10:14:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677856494; bh=2j+OWIVHI20G1fCnCm8vBUBOdXqhguo6Bt6vB0jWHNo=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wvqlTFqW9UuWJQdC7Hy2nOIS2ntVhjAvTPG3O8XiE29BHuOsqiP9iWArESDeIkpSD
	 OMAadbI5kMh88PCbVdb51QTEOX34Y5T1fJ9+mZM7MgDI8mZMPNIfweWTNfds22KaTX
	 qor2q+2PPSlNHeo5BUUmV5CyLZriiUykWrVEnOVR6Sfsuq194N5JMU9DZu07LiZ24Z
	 dWs/SlTCaIPELBg5vP/dD5DgpGY5HWStRV4Z1emO8RqcY7k71/pqV31YJ5IHRHlZS4
	 37q3H7R7wpFkG3XIUmIjuVXvLtXmI476WXT5jbyME/RU+Om0W7pKHeqLqstJP4vL9c
	 LmpuufYbQIpNQ==
Received: from za-smtp-delivery-132.mimecast.co.za (za-smtp-delivery-132.mimecast.co.za [41.74.201.132])
	by mm2.emwd.com (Postfix) with ESMTPS id CCB1538489D
	for <usrp-users@lists.ettus.com>; Fri,  3 Mar 2023 10:14:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=vastech.co.za header.i=@vastech.co.za header.b="gogbwSpm";
	dkim-atps=neutral
Received: from mail.vastech.co.za (mail.vastech.co.za [41.193.221.138]) by
 relay.mimecast.com with ESMTP id za-mta-7--k_GCvjsPYSYG0_gsJKs-A-1; Fri, 03
 Mar 2023 17:14:14 +0200
X-MC-Unique: -k_GCvjsPYSYG0_gsJKs-A-1
dkim-signature: v=1; a=rsa-sha256; d=vastech.co.za; s=dkim;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:In-Reply-To:References;
	bh=bVxwxKH3jbAuaWtuW6MXYqRlfMD5rB4VjulxeNqbv2Y=;
	b=gogbwSpmInbTpKaJr5bLPmK/tACkA9VsSoLACjsxs2SA6yr1wNN7MQCpZbdU9/LRrxWjdJvtodP3s9+c/E6ocAu8CSWJZrR28gmUFhms9FoDUssi4XvACJEbpmsuKuu30s/DWM0CDhPwAkkwOOGT9N/eVNPknOAtFYdt0ZBNuug=
Received: from EXCHANGE1.vastech.co.za (Unknown [172.30.81.15])
	by mail.vastech.co.za with ESMTPA
	; Fri, 3 Mar 2023 17:14:10 +0200
Received: from EXCHANGE1.vastech.co.za (172.30.81.15) by
 EXCHANGE1.vastech.co.za (172.30.81.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.38; Fri, 3 Mar 2023 17:14:09 +0200
Received: from EXCHANGE1.vastech.co.za ([::1]) by EXCHANGE1.vastech.co.za
 ([::1]) with mapi id 15.00.1497.040; Fri, 3 Mar 2023 17:14:09 +0200
From: Kevin Williams <kevin.williams@vastech.co.za>
To: "bpadalino@gmail.com" <bpadalino@gmail.com>, "gwenj@trabucayre.com"
	<gwenj@trabucayre.com>
Thread-Topic: [EXTERNAL][USRP-users] Re: What do I need to do to make
 uhd_usrp_probe see my custom RFNOC module?
Thread-Index: AQHZTCBYMK/vG6/85UG66FXxbOMJlK7lu20d///7LgCAABt+AIAABdSAgANU63A=
Date: Fri, 3 Mar 2023 15:14:08 +0000
Message-ID: <7ff087e59b0c4be49e9f490ec83b7277@EXCHANGE1.vastech.co.za>
References: <PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
 <PH0PR15MB470475B739510FC1329965F2E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAEXYVK76azqDJCxcBx6pN53abV9ACic0EcC1MfHLWoTpaK84Xg@mail.gmail.com>
 <20230301145718.0d3da2c7@x230>
 <CAEXYVK7YHU+XYUtTcn0k6WijONQn9eQSA22mHR0VAS5uRxrHHw@mail.gmail.com>
In-Reply-To: <CAEXYVK7YHU+XYUtTcn0k6WijONQn9eQSA22mHR0VAS5uRxrHHw@mail.gmail.com>
Accept-Language: en-US, en-ZA
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.168.3]
MIME-Version: 1.0
Message-ID-Hash: YFUCGOKAGF7M7VP3B5SVZHFLJT5SDAPC
X-Message-ID-Hash: YFUCGOKAGF7M7VP3B5SVZHFLJT5SDAPC
X-MailFrom: kevin.williams@vastech.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Bas.Vermeulen@molex.com" <Bas.Vermeulen@molex.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: What do I need to do to make uhd_usrp_probe see my custom RFNOC module?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YFUCGOKAGF7M7VP3B5SVZHFLJT5SDAPC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1511863168263114136=="

--===============1511863168263114136==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_00CA_01D94DF3.8FCB7E50"

------=_NextPart_000_00CA_01D94DF3.8FCB7E50
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_00CB_01D94DF3.8FCB7E50"


------=_NextPart_001_00CB_01D94DF3.8FCB7E50
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

=20

Answering my own question also.

=20

I had a mismatch in the NOC_ID between the driver code and my firmware =
block.

=20

After fixing that I could get uhd_usrp_probe and others, like gnuradio, =
to recognize my block.

=20

It did still require an LD_PRELOAD after the =E2=80=9Csudo make =
install=E2=80=9D but that is ok for now.

=20

Regards, Kevin

=20

From: Brian Padalino <bpadalino@gmail.com>=20
Sent: Wednesday, 01 March 2023 16:20
To: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Cc: Vermeulen, Bas (Consultant) <Bas.Vermeulen@molex.com>; =
usrp-users@lists.ettus.com
Subject: [EXTERNAL][USRP-users] Re: What do I need to do to make =
uhd_usrp_probe see my custom RFNOC module?

=20

On Wed, Mar 1, 2023 at 8:59 AM Gwenhael Goavec-Merou =
<gwenj@trabucayre.com <mailto:gwenj@trabucayre.com> > wrote:

On Wed, 1 Mar 2023 07:20:22 -0500
Brian Padalino <bpadalino@gmail.com <mailto:bpadalino@gmail.com> > =
wrote:

> On Wed, Mar 1, 2023 at 5:40 AM Vermeulen, Bas (Consultant) via =
USRP-users <
> usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> > =
wrote:
>=20
> > Just to answer my own question:
> >
> > Run uhd_usrp_probe with LD_PRELOAD=3D/usr/lib/librfnoc-module.so
> > uhd_usrp_probe and it will be able to find the RFNOC modules.
> > The same for any test programs you use, those need the LD_PRELOAD as =
well.
> > =20
>=20
> While this is a way to do it, I believe the preferred method is using =
the
> UHD_MODULE_PATH environment variable.
>=20
> Set that to a location which contains all the .so files for any RFNoC
> modules, and UHD will load them automatically.  Note that if any =
non-.so
> files are in that path, you will get a warning about not being able to =
load
> the library.
>=20
> Brian

/usr/lib is a default path for libraries.
Maybe using (as root) ldconfig to rebuild/refresh the cache used by the =
runtime
linker?

=20

No - this doesn't make sense.  Use UHD_MODULE_PATH.

=20

You can put your modules in ~/mymodules and point your UHD_MODULE_PATH =
to ~/mymodules and things will work fine.

=20

There is no need to play with LD_PRELOAD or worry about being root or =
install to default library paths.

=20

Use UHD_MODULE_PATH.

=20

Brian


------=_NextPart_001_00CB_01D94DF3.8FCB7E50
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-ZA link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal =
style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'>Hi Guys,<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'>Answering my own question =
also.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'>I had a mismatch in the NOC_ID =
between the driver code and my firmware block.<o:p></o:p></span></p><p =
class=3DMsoNormal style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'>After fixing that I could get =
uhd_usrp_probe and others, like gnuradio, to recognize my =
block.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'>It did still require an LD_PRELOAD =
after the =E2=80=9Csudo make install=E2=80=9D but that is ok for =
now.<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal style=3D'text-align:justify'><span =
style=3D'mso-fareast-language:EN-US'>Regards, =
Kevin<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US>From:</span></b><span =
lang=3DEN-US> Brian Padalino &lt;bpadalino@gmail.com&gt; =
<br><b>Sent:</b> Wednesday, 01 March 2023 16:20<br><b>To:</b> Gwenhael =
Goavec-Merou &lt;gwenj@trabucayre.com&gt;<br><b>Cc:</b> Vermeulen, Bas =
(Consultant) &lt;Bas.Vermeulen@molex.com&gt;; =
usrp-users@lists.ettus.com<br><b>Subject:</b> [EXTERNAL][USRP-users] Re: =
What do I need to do to make uhd_usrp_probe see my custom RFNOC =
module?<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><p class=3DMsoNormal>On =
Wed, Mar 1, 2023 at 8:59 AM Gwenhael Goavec-Merou &lt;<a =
href=3D"mailto:gwenj@trabucayre.com">gwenj@trabucayre.com</a>&gt; =
wrote:<o:p></o:p></p></div><div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><p class=3DMsoNormal>On Wed, 1 =
Mar 2023 07:20:22 -0500<br>Brian Padalino &lt;<a =
href=3D"mailto:bpadalino@gmail.com" =
target=3D"_blank">bpadalino@gmail.com</a>&gt; wrote:<br><br>&gt; On Wed, =
Mar 1, 2023 at 5:40 AM Vermeulen, Bas (Consultant) via USRP-users =
&lt;<br>&gt; <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>&gt; =
<br>&gt; &gt; Just to answer my own question:<br>&gt; &gt;<br>&gt; &gt; =
Run uhd_usrp_probe with LD_PRELOAD=3D/usr/lib/librfnoc-module.so<br>&gt; =
&gt; uhd_usrp_probe and it will be able to find the RFNOC =
modules.<br>&gt; &gt; The same for any test programs you use, those need =
the LD_PRELOAD as well.<br>&gt; &gt;&nbsp; <br>&gt; <br>&gt; While this =
is a way to do it, I believe the preferred method is using the<br>&gt; =
UHD_MODULE_PATH environment variable.<br>&gt; <br>&gt; Set that to a =
location which contains all the .so files for any RFNoC<br>&gt; modules, =
and UHD will load them automatically.&nbsp; Note that if any =
non-.so<br>&gt; files are in that path, you will get a warning about not =
being able to load<br>&gt; the library.<br>&gt; <br>&gt; =
Brian<br><br>/usr/lib is a default path for libraries.<br>Maybe using =
(as root) ldconfig to rebuild/refresh the cache used by the =
runtime<br>linker?<o:p></o:p></p></blockquote><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>No - this doesn't make sense.&nbsp; Use =
UHD_MODULE_PATH.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>You can put your modules in ~/mymodules and point your =
UHD_MODULE_PATH to ~/mymodules and things will work =
fine.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>There is no need to play with LD_PRELOAD or worry =
about being root or install to default library =
paths.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Use UHD_MODULE_PATH.<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Brian<o:p></o:p></p></div></div></div></div></body></ht=
ml>
------=_NextPart_001_00CB_01D94DF3.8FCB7E50--

------=_NextPart_000_00CA_01D94DF3.8FCB7E50
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
RdsBco7INDaEliQSaRLARuYOAAAAAAAA

------=_NextPart_000_00CA_01D94DF3.8FCB7E50--

--===============1511863168263114136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1511863168263114136==--
