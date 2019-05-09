Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FF718CAA
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 17:05:37 +0200 (CEST)
Received: from [::1] (port=46744 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOkc2-0006Xq-VM; Thu, 09 May 2019 11:05:34 -0400
Received: from atl4mhob04.registeredsite.com ([209.17.115.42]:51252)
 by mm2.emwd.com with esmtp (Exim 4.91)
 (envelope-from <k5so@k5so.com>) id 1hOkbU-0006GV-5z
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 11:05:30 -0400
Received: from mailpod.hostingplatform.com
 (atl4qobmail02pod3.registeredsite.com [10.30.77.68])
 by atl4mhob04.registeredsite.com (8.14.4/8.14.4) with ESMTP id x49F4Hjv032250
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Thu, 9 May 2019 11:04:17 -0400
Received: (qmail 18965 invoked by uid 0); 9 May 2019 15:04:17 -0000
X-TCPREMOTEIP: 192.206.203.10
X-Authenticated-UID: k5so@k5so.com
Received: from unknown (HELO ?192.168.1.76?) (k5so@k5so.com@192.206.203.10)
 by 0 with ESMTPA; 9 May 2019 15:04:17 -0000
Message-Id: <84612E15-1A0B-40FF-9AA3-A810D7500BE3@k5so.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Thu, 9 May 2019 09:04:15 -0600
In-Reply-To: <BL0PR12MB2340B79E071584EF5599E398AF330@BL0PR12MB2340.namprd12.prod.outlook.com>
To: Jason Matusiak <jason@gardettoengineering.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <BL0PR12MB2340E831A1782ED0958D6DBAAF320@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84C6BD1A-2901-4FFC-834C-55B481EB7045@k5so.com>
 <CA+JMMq9oRqxDSVgyACAZucejC2Z3hKwciNCjX_YEJ6taCgUQ-g@mail.gmail.com>
 <CA+JMMq8N5XP6Z9CDUO0JHZxJotHRPfQRRqsvJT5-XwZZVWRv+w@mail.gmail.com>
 <A0F0F533-AE85-4802-A676-EA4C39C9372F@k5so.com>
 <B98CD290-9E92-49CE-AD7D-E19FE82B5657@k5so.com>
 <CA+JMMq9+WVXGDRwBd9WAcwXHXDynDsUYy4nOXuryttxvNKbXCA@mail.gmail.com>
 <19BFE8B3-662A-4DC0-BB72-557E7495F6D0@k5so.com>
 <5F41CEE9-58DF-4868-89C2-5F88876803DF@k5so.com>
 <CAGVTi8VOeNG5B9X-WaMQrvbxkt96UFhm5a6-++9znYCzexfRtQ@mail.gmail.com>
 <9f223faf-add7-74cc-faa1-d4a0ed95e28a@balister.org>
 <2C9C895D-DD6D-4456-9F1D-557F699AB391@k5so.com> <5CD36887.5050805@gmail.com>
 <4F25C7C9-CB61-46DF-9163-2CB0CF86DDCF@k5so.com>
 <F19914AE-5635-4F61-A19B-13C16AE6CE8D@k5so.com>
 <2BBEC239-22F9-4F4C-B777-222484DEC314@k5so.com>
 <BL0PR12MB2340B79E071584EF5599E398AF330@BL0PR12MB2340.namprd12.prod.outlook.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Need a little help with running legacy prebuilt
 UHD versions
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
From: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joe Martin <k5so@k5so.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4086445453350143057=="
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


--===============4086445453350143057==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_397AF402-8D99-4599-A776-5748E517F223"


--Apple-Mail=_397AF402-8D99-4599-A776-5748E517F223
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Argh.  Yes, maybe that=E2=80=99s what I will need to do then.  I=E2=80=99l=
l try it.=20

Looks like the earliest vintage of UHD that=E2=80=99s available is Feb =
2014 (v3.4.0), which is about 4 years after the Rev2 N210, I think.  So =
that UHD version may still be too recent to work with the Rev2 N210.  =
That=E2=80=99ll be my last attempt before abandoning the thing as you =
did with yours. =20

Thanks for the comments and help, Jason.  Good luck with your projects!

Joe

> On May 9, 2019, at 8:20 AM, Jason Matusiak =
<jason@gardettoengineering.com> wrote:
>=20
> Maybe try running a VM of a version of Ubuntu that is roughly the =
vintage of that version of UHD?
>=20
> From: USRP-users <usrp-users-bounces@lists.ettus.com =
<mailto:usrp-users-bounces@lists.ettus.com>> on behalf of Joe Martin via =
USRP-users <usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>>
> Sent: Thursday, May 9, 2019 9:53 AM
> To: Joe Martin
> Cc: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
> Subject: [USRP-users] Need a little help with running legacy prebuilt =
UHD versions
> =20
> I need a bit of help to understand how to run legacy prebuilt UHD =
versions from the files.ettus.com/binaries/uhd =
<http://files.ettus.com/binaries/uhd> repository. =20
>=20
> I would like to try various UHD versions to try to find a version that =
will run with an elderly (Rev 2) N210 with unknown firmware/fpga images =
in it.  After downloading a legacy version, e.g., =
uhd_003.004.000-release_Ubuntu-11.10-x86_64.deb, and clicking =
=E2=80=9Cinstall=E2=80=9D I am not understanding what I need to do next =
to actually run the version, as uhd_usrp_probe =E2=80=94version reports =
the version of UHD that I originally had installed, not the legacy =
version I intended to install. =20
>=20
> I am running Ubuntu 18.04, should I expect to be able to run the =
legacy versions labeled, for example, *_Ubuntu-11.10-x86_64.deb, as in =
the example above ?=20
>=20
> Clearly I=E2=80=99m missing something fundamental, and likely simple, =
in my understanding about how to use these prebuilt older versions.  I =
have had no problem building, installing, and running UHD versions from =
source but I have never tried to run a =E2=80=9Cprebuilt=E2=80=9D =
version before.=20
>=20
> Joe


--Apple-Mail=_397AF402-8D99-4599-A776-5748E517F223
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Argh.=
 &nbsp;Yes, maybe that=E2=80=99s what I will need to do then. =
&nbsp;I=E2=80=99ll try it.&nbsp;<div class=3D""><br class=3D""></div><div =
class=3D"">Looks like the earliest vintage of UHD that=E2=80=99s =
available is Feb 2014 (v3.4.0), which is about 4 years after the Rev2 =
N210, I think. &nbsp;So that UHD version may still be too recent to work =
with the Rev2 N210. &nbsp;That=E2=80=99ll be my last attempt before =
abandoning the thing as you did with yours. &nbsp;<div class=3D""><br =
class=3D""></div><div class=3D"">Thanks for the comments and help, =
Jason. &nbsp;Good luck with your projects!</div><div class=3D""><br =
class=3D""></div><div class=3D"">Joe<br class=3D""><div =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On May 9, 2019, at 8:20 AM, Jason Matusiak &lt;<a =
href=3D"mailto:jason@gardettoengineering.com" =
class=3D"">jason@gardettoengineering.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
style=3D"caret-color: rgb(0, 0, 0); font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; font-family: Calibri, Arial, Helvetica, =
sans-serif; font-size: 12pt;" class=3D"">Maybe try running a VM of a =
version of Ubuntu that is roughly the vintage of that version of =
UHD?</div><div id=3D"Signature" style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><div class=3D""><div =
id=3D"appendonsend" class=3D""></div><div style=3D"font-family: Calibri, =
Arial, Helvetica, sans-serif; font-size: 12pt;" class=3D""><br =
class=3D""></div><hr tabindex=3D"-1" style=3D"display: inline-block; =
width: 782.03125px;" class=3D""><div id=3D"divRplyFwdMsg" dir=3D"ltr" =
class=3D""><font face=3D"Calibri, sans-serif" style=3D"font-size: 11pt;" =
class=3D""><b class=3D"">From:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>USRP-users &lt;<a =
href=3D"mailto:usrp-users-bounces@lists.ettus.com" =
class=3D"">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of Joe =
Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;<br class=3D""><b =
class=3D"">Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Thursday, May 9, 2019 9:53 =
AM<br class=3D""><b class=3D"">To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Joe Martin<br class=3D""><b =
class=3D"">Cc:</b><span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a><br class=3D""><b =
class=3D"">Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>[USRP-users] Need a little =
help with running legacy prebuilt UHD versions</font><div =
class=3D"">&nbsp;</div></div><div class=3D"" style=3D"word-wrap: =
break-word;">I need a bit of help to understand how to run legacy =
prebuilt UHD versions from the<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://files.ettus.com/binaries/uhd" =
class=3D"">files.ettus.com/binaries/uhd</a>&nbsp;repository. &nbsp;<div =
class=3D""><br class=3D""></div><div class=3D"">I would like to try =
various UHD versions to try to find a version that will run with an =
elderly (Rev 2) N210 with unknown firmware/fpga images in it. =
&nbsp;After downloading a legacy version, e.g., =
uhd_003.004.000-release_Ubuntu-11.10-x86_64.deb, and clicking =
=E2=80=9Cinstall=E2=80=9D I am not understanding what I need to do next =
to actually run the version, as uhd_usrp_probe =E2=80=94version reports =
the version of UHD that I originally had installed, not the legacy =
version I intended to install. &nbsp;<div class=3D""><br =
class=3D""></div><div class=3D"">I am running Ubuntu 18.04, should I =
expect to be able to run the legacy versions labeled, for example, =
*_Ubuntu-11.10-x86_64.deb, as in the example above ?&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">Clearly I=E2=80=99m =
missing something fundamental, and likely simple, in my understanding =
about how to use these prebuilt older versions. &nbsp;I have had no =
problem building, installing, and running UHD versions from source but I =
have never tried to run a =E2=80=9Cprebuilt=E2=80=9D version =
before.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Joe</div></div></div></div></div></div></blockquote></div><br =
class=3D""></div></div></div></body></html>=

--Apple-Mail=_397AF402-8D99-4599-A776-5748E517F223--


--===============4086445453350143057==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4086445453350143057==--

