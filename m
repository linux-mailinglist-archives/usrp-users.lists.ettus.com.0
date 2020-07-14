Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6674221F3BB
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jul 2020 16:18:06 +0200 (CEST)
Received: from [::1] (port=50390 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvLkx-0006Th-Q7; Tue, 14 Jul 2020 10:18:03 -0400
Received: from atl4mhob13.registeredsite.com ([209.17.115.51]:37826)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <k5so@k5so.com>) id 1jvLkt-0006PM-VF
 for usrp-users@lists.ettus.com; Tue, 14 Jul 2020 10:18:00 -0400
Received: from mailpod.hostingplatform.com
 (atl4qobmail02pod3.registeredsite.com [10.30.77.68])
 by atl4mhob13.registeredsite.com (8.14.4/8.14.4) with ESMTP id 06EEHIHD018681
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Tue, 14 Jul 2020 10:17:19 -0400
Received: (qmail 26225 invoked by uid 0); 14 Jul 2020 14:17:18 -0000
X-TCPREMOTEIP: 158.51.162.42
X-Authenticated-UID: k5so@k5so.com
Received: from unknown (HELO ?192.168.1.75?) (k5so@k5so.com@158.51.162.42)
 by 0 with ESMTPA; 14 Jul 2020 14:17:18 -0000
Message-Id: <04C32D5F-2C01-4683-9F96-86DCB43F5174@k5so.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Tue, 14 Jul 2020 08:17:17 -0600
In-Reply-To: <5F0DB93B.8090100@gmail.com>
Cc: usrp-users@lists.ettus.com
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <CANzM3hxAfQDHM4xfJiWO9mdaRUbOP3c-+sksV85wgD=ZwzX6bw@mail.gmail.com>
 <071c37d5-a9d9-1332-de7e-14c64660f329@ettus.com> <5F0DB93B.8090100@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [USRP-users] USRP X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============8111815540112643375=="
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


--===============8111815540112643375==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6559B9F9-202F-41C5-8FCE-7B783B8C52D4"


--Apple-Mail=_6559B9F9-202F-41C5-8FCE-7B783B8C52D4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Arash,=20

Marcus L.=E2=80=99s response has some definitive info in the links.  For =
example, in the TwinRX link it is stated:=20

> Never apply more than +10 dBm of power into any RF input.

So there you have it.  Thanks for the details Marcus.=20

Regards,=20

Joe

> On Jul 14, 2020, at 7:55 AM, Marcus D. Leech via USRP-users =
<usrp-users@lists.ettus.com> wrote:
>=20
> On 07/14/2020 05:53 AM, Marcus M=C3=BCller via USRP-users wrote:
>> Hi Arash,
>>=20
>> The input power is not defined by the motherboard (X310) you're =
using,
>> but by the analog frontend daughterboard (like TwinRX, UBX-160, =
SBX,=E2=80=A6)
>> you've plugged in to these.
>>=20
> For example, see the "Care and Handling" for the SBX here:
>=20
> =
https://kb.ettus.com/SBX_Getting_Started_Guides#Proper_Care_and_Handling
>=20
> And for the TwinRx
>=20
> =
https://kb.ettus.com/TwinRX_Getting_Started_Guides#Proper_Care_and_Handlin=
g
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--Apple-Mail=_6559B9F9-202F-41C5-8FCE-7B783B8C52D4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Arash,&nbsp;<div class=3D""><br class=3D""></div><div =
class=3D"">Marcus L.=E2=80=99s response has some definitive info in the =
links. &nbsp;For example, in the TwinRX link it is =
stated:&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D""><blockquote type=3D"cite" class=3D""><span =
style=3D"font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida =
Grande&quot;, sans-serif; font-size: 14px; background-color: rgb(255, =
255, 255);" class=3D"">Never apply more than +10 dBm of power into any =
RF input.</span></blockquote><div class=3D""><br class=3D""></div>So =
there you have it. &nbsp;Thanks for the details Marcus.&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">Regards,&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">Joe</div><div =
class=3D""></div><div style=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">On Jul 14, 2020, at 7:55 AM, Marcus D. Leech =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">On =
07/14/2020 05:53 AM, Marcus M=C3=BCller via USRP-users wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D"">Hi Arash,<br =
class=3D""><br class=3D"">The input power is not defined by the =
motherboard (X310) you're using,<br class=3D"">but by the analog =
frontend daughterboard (like TwinRX, UBX-160, SBX,=E2=80=A6)<br =
class=3D"">you've plugged in to these.<br class=3D""><br =
class=3D""></blockquote>For example, see the "Care and Handling" for the =
SBX here:<br class=3D""><br class=3D""><a =
href=3D"https://kb.ettus.com/SBX_Getting_Started_Guides#Proper_Care_and_Ha=
ndling" =
class=3D"">https://kb.ettus.com/SBX_Getting_Started_Guides#Proper_Care_and=
_Handling</a><br class=3D""><br class=3D"">And for the TwinRx<br =
class=3D""><br =
class=3D"">https://kb.ettus.com/TwinRX_Getting_Started_Guides#Proper_Care_=
and_Handling<br class=3D""><br class=3D""><br =
class=3D"">_______________________________________________<br =
class=3D"">USRP-users mailing list<br =
class=3D"">USRP-users@lists.ettus.com<br =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com<br class=3D""></div></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_6559B9F9-202F-41C5-8FCE-7B783B8C52D4--


--===============8111815540112643375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8111815540112643375==--

