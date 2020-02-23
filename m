Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E1416982C
	for <lists+usrp-users@lfdr.de>; Sun, 23 Feb 2020 15:56:43 +0100 (CET)
Received: from [::1] (port=47882 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j5sgT-0002C4-Rn; Sun, 23 Feb 2020 09:56:41 -0500
Received: from atl4mhob09.registeredsite.com ([209.17.115.47]:34802)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <k5so@k5so.com>) id 1j5sgQ-00024L-09
 for usrp-users@lists.ettus.com; Sun, 23 Feb 2020 09:56:38 -0500
Received: from mailpod.hostingplatform.com
 (atl4qobmail01pod3.registeredsite.com [10.30.77.67])
 by atl4mhob09.registeredsite.com (8.14.4/8.14.4) with ESMTP id 01NEtsoK018402
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Sun, 23 Feb 2020 09:55:54 -0500
Received: (qmail 8381 invoked by uid 0); 23 Feb 2020 14:55:54 -0000
X-TCPREMOTEIP: 192.206.203.20
X-Authenticated-UID: k5so@k5so.com
Received: from unknown (HELO ?192.168.1.8?) (k5so@k5so.com@192.206.203.20)
 by 0 with ESMTPA; 23 Feb 2020 14:55:54 -0000
Message-Id: <43A7B653-7713-4F75-BF44-C978C8341346@k5so.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Sun, 23 Feb 2020 07:55:52 -0700
In-Reply-To: <4F6D0DB1-9068-49BB-8150-7406F0A9BD13@k5so.com>
To: Joe Martin <k5so@k5so.com>
References: <105801d5e7ff$f7f2aa10$e7d7fe30$@sdr-radio.com>
 <CAGNhwTPXJP3j6xNmpjwom-+BEKf11Vv=EmYHxLK+Wd=o6YpCTw@mail.gmail.com>
 <04d301d5ea1a$1adf0390$509d0ab0$@sdr-radio.com>
 <4F6D0DB1-9068-49BB-8150-7406F0A9BD13@k5so.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [USRP-users] UHD 3.15 LTS, X310 performance
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1237815806695537896=="
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


--===============1237815806695537896==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A83E9E41-C142-4EA3-ADB3-09C64E127659"


--Apple-Mail=_A83E9E41-C142-4EA3-ADB3-09C64E127659
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I meant 25Msps per channel, not 25Mbps, of course.=20

Joe

> On Feb 23, 2020, at 7:38 AM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com> wrote:
>=20
> Hi Simon,=20
>=20
> Yes, indeed, my X310 streams via 10G ethernet without a hitch using =
dual channels at 25Mbps/channel in my radio astronomy application and I =
could go more if I needed to do that.  It=E2=80=99ll work fine for you =
I=E2=80=99m sure.
>=20
> Joe K5SO
>=20
>> On Feb 23, 2020, at 12:23 AM, Simon G4ELI via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>=20
>> Hi,
>> =20
>> Some feedback: I=E2=80=99ve been reading the UHD code and now have =
the X310 running well albeit at 20Msps as the user has only GigE, but =
he=E2=80=99s buying a 10 GigE card  and does have a =E2=80=98stonking=E2=80=
=99 Windows PC so I=E2=80=99ll document the experience. I expect we=E2=80=99=
ll stream sustained at 50 Msps, quite possibly much more.
>> =20
>> My B200 is streaming superbly at 28 Msps on a mid-range PC.
>> =20
>> Simon Brown, G4ELI
>> https://www.sdr-radio.com <https://www.sdr-radio.com/>
>> =20
>> From: Michael Dickens <michael.dickens@ettus.com =
<mailto:michael.dickens@ettus.com>>=20
>> =20
>> Hi Simon - When you say "but performance is not great" ... beyond CPU =
load: do you get good Tx and Rx rates (e.g., if you run =
"benchmark_rate") without underruns / overflows / late packets (etc)? =
What is the MTU set to for this ENET link? 1 GbE or 10 GbE? Can you =
provide a little more detail for us to work with here? Thx! - MLD
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--Apple-Mail=_A83E9E41-C142-4EA3-ADB3-09C64E127659
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">I =
meant 25Msps per channel, not 25Mbps, of course.&nbsp;<div class=3D""><br =
class=3D""></div><div class=3D"">Joe<br class=3D""><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On Feb =
23, 2020, at 7:38 AM, Joe Martin via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">Hi Simon,&nbsp;<div =
class=3D""><br class=3D""></div><div class=3D"">Yes, indeed, my X310 =
streams via 10G ethernet without a hitch using dual channels at =
25Mbps/channel in my radio astronomy application and I could go more if =
I needed to do that. &nbsp;It=E2=80=99ll work fine for you I=E2=80=99m =
sure.</div><div class=3D""><br class=3D""></div><div class=3D"">Joe =
K5SO<br class=3D""><div class=3D""><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Feb 23, 2020, at 12:23 AM, =
Simon G4ELI via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; caret-color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
class=3D"">Hi,<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span class=3D"">Some feedback: I=E2=80=99=
ve been reading the UHD code and now have the X310 running well albeit =
at 20Msps as the user has only GigE, but he=E2=80=99s buying a 10 GigE =
card&nbsp; and does have a =E2=80=98stonking=E2=80=99 Windows PC so =
I=E2=80=99ll document the experience. I expect we=E2=80=99ll stream =
sustained at 50 Msps, quite possibly much more.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><span =
class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span class=3D"">My B200 is streaming superbly at 28 Msps on =
a mid-range PC.<o:p class=3D""></o:p></span></div><div style=3D"margin: =
0cm 0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><span class=3D""><o:p class=3D"">&nbsp;</o:p></span></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Simon Brown, G4ELI<o:p =
class=3D""></o:p></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><a =
href=3D"https://www.sdr-radio.com/" =
class=3D"">https://www.sdr-radio.com</a><o:p class=3D""></o:p></div><div =
style=3D"margin: 0cm 0cm 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D""><span class=3D""><o:p =
class=3D"">&nbsp;</o:p></span></div><div style=3D"margin: 0cm 0cm =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D""><b class=3D""><span lang=3D"EN-US" =
class=3D"">From:</span></b><span lang=3D"EN-US" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>Michael Dickens &lt;<a =
href=3D"mailto:michael.dickens@ettus.com" =
class=3D"">michael.dickens@ettus.com</a>&gt;<span =
class=3D"Apple-converted-space">&nbsp;</span><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0cm 0cm 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div class=3D""><div style=3D"margin: 0cm =
0cm 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">Hi Simon - When you say "but performance is not great" ... =
beyond CPU load: do you get good Tx and Rx rates (e.g., if you run =
"benchmark_rate") without underruns / overflows / late packets (etc)? =
What is the MTU set to for this ENET link? 1 GbE or 10 GbE? Can you =
provide a little more detail for us to work with here? Thx! - MLD<o:p =
class=3D""></o:p></div></div></div><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">_______________________________________________</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">USRP-users mailing =
list</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><a href=3D"mailto:USRP-users@lists.ettus.com" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">USRP-users@lists.ettus.com</a><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><a =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a></div></blockquote></div><br =
class=3D""></div></div>_______________________________________________<br =
class=3D"">USRP-users mailing list<br class=3D""><a =
href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com<br class=3D""></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_A83E9E41-C142-4EA3-ADB3-09C64E127659--


--===============1237815806695537896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1237815806695537896==--

