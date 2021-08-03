Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C21143DF895
	for <lists+usrp-users@lfdr.de>; Wed,  4 Aug 2021 01:40:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B8E2338493A
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 19:40:29 -0400 (EDT)
Received: from smtp126.iad3a.emailsrvr.com (smtp126.iad3a.emailsrvr.com [173.203.187.126])
	by mm2.emwd.com (Postfix) with ESMTPS id 7E0AC3843EC
	for <USRP-users@lists.ettus.com>; Tue,  3 Aug 2021 19:39:48 -0400 (EDT)
X-Auth-ID: epoletaev@i-blades.com
Received: by smtp16.relay.iad3a.emailsrvr.com (Authenticated sender: epoletaev-AT-i-blades.com) with ESMTPSA id 4C26645A0;
	Tue,  3 Aug 2021 19:39:47 -0400 (EDT)
Date: Wed, 4 Aug 2021 06:39:38 +0700
From: Ernest Poletaev <epoletaev@i-blades.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID: <f54a0ee1-c48e-47c5-847d-2bd49550883c@Spark>
In-Reply-To: <09177E24-752E-49E5-A1BB-9274C4F72EA1@gmail.com>
References: <d8016aba-3086-4e85-93e3-14dbfb3020f6@Spark>
 <09177E24-752E-49E5-A1BB-9274C4F72EA1@gmail.com>
X-Readdle-Message-ID: f54a0ee1-c48e-47c5-847d-2bd49550883c@Spark
MIME-Version: 1.0
X-Classification-ID: e86e7e71-e593-41db-bc10-0ae070559a05-1-1
Message-ID-Hash: ATGD5SV4QQIRNO2X47EM2GHLX7XN26YP
X-Message-ID-Hash: ATGD5SV4QQIRNO2X47EM2GHLX7XN26YP
X-MailFrom: epoletaev@i-blades.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Low power mode
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ATGD5SV4QQIRNO2X47EM2GHLX7XN26YP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8766968358607405970=="

--===============8766968358607405970==
Content-Type: multipart/alternative; boundary="6109d3c0_75a2a8d4_229"

--6109d3c0_75a2a8d4_229
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Thanks Marcus,

I was looking into it, there is power management in Spartan-6 =46PGA (whi=
ch I suppose is the main power hog).
However, it requires using Suspend pin which is inaccessible on board due=
 to BGA package.

If we had PCB design we could modify wiring on =46PGA to allow us to use =
this pin, but so far I was not able to find PCB design files.

Best Regards,
Ernest
On 4 Aug 2021 05:56 +0700, Marcus D Leech <patchvonbraun=40gmail.com>, wr=
ote:
> My gut tells me this would require exotic power management support in t=
he =46PGA fabric itself. Which it doesn=E2=80=99t as far as I know, have.=

>
> Sent from my iPhone
>
> > On Aug 3, 2021, at 6:44 PM, Ernest Poletaev <epoletaev=40i-blades.com=
> wrote:
> >
> > Hello,
> >
> > Power consumption is low until processing is started for the first ti=
me after =46PGA firmware loaded.
> > =46rom this point power consumption remains the same even if processi=
ng is stopped.
> >
> > Power cycle will reduce power consumption but result in requiring to =
load =46PGA firmware which is lengthy process.
> >
> > Is it possible to temporarily reduce B205mini power consumption witho=
ut requiring to reprogram =46PGA=3F
> >
> > Using libuhd or with hardware mod or by modifying =46PGA source code=3F=

> >
> > Best Regards,
> > Ernest
> > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> > USRP-users mailing list -- usrp-users=40lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave=40lists.ettus.com

--6109d3c0_75a2a8d4_229
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Thanks Marcus,<br />
<br />
I was looking into it, there is power management in Spartan-6 =46PGA (whi=
ch I suppose is the main power hog).<br />
However, it requires using Suspend pin which is inaccessible on board due=
 to BGA package.<br />
<br />
If we had PCB design we could modify wiring on =46PGA to allow us to use =
this pin, but so far I was not able to find PCB design files.</div>
</div>
<div name=3D=22messageSignatureSection=22><br />
<div class=3D=22match=46ont=22>
<div dir=3D=22auto=22>Best Regards,
<div dir=3D=22auto=22>Ernest</div>
</div>
</div>
</div>
<div name=3D=22messageReplySection=22>On 4 Aug 2021 05:56 +0700, Marcus D=
 Leech &lt;patchvonbraun=40gmail.com&gt;, wrote:<br />
<blockquote type=3D=22cite=22 style=3D=22border-left-color: grey; border-=
left-width: thin; border-left-style: solid; margin: 5px 5px;padding-left:=
 10px;=22>My gut tells me this would require exotic power management supp=
ort in the =46PGA fabric itself. Which it doesn=E2=80=99t as far as I kno=
w, have.&=23160;<br />
<br />
<div dir=3D=22ltr=22>Sent from my iPhone</div>
<div dir=3D=22ltr=22><br />
<blockquote type=3D=22cite=22>On Aug 3, 2021, at 6:44 PM, Ernest Poletaev=
 &lt;epoletaev=40i-blades.com&gt; wrote:<br />
<br /></blockquote>
</div>
<blockquote type=3D=22cite=22>
<div dir=3D=22ltr=22>=EF=BB=BF
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hello,<br />
<br />
<span style=3D=22color:var(--textColor);background-color:var(--background=
Color)=22>Power consumption is low until processing is started for the fi=
rst time after =46PGA firmware loaded.</span><br />
=46rom this point power consumption remains the same even if processing i=
s stopped.<br />
<br />
Power cycle will reduce power consumption but result in requiring to load=
 =46PGA firmware which is lengthy process.<br />
<br />
Is it possible to temporarily reduce B205mini power consumption without r=
equiring to reprogram =46PGA=3F<br />
<br />
Using libuhd or with hardware mod or by modifying =46PGA source code=3F</=
div>
</div>
<div name=3D=22messageSignatureSection=22><br />
<div class=3D=22match=46ont=22>
<div dir=3D=22auto=22>Best Regards,
<div dir=3D=22auto=22>Ernest</div>
</div>
</div>
</div>
<span>=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<=
/span><br />
<span>USRP-users mailing list -- usrp-users=40lists.ettus.com</span><br /=
>
<span>To unsubscribe send an email to usrp-users-leave=40lists.ettus.com<=
/span><br /></div>
</blockquote>
</blockquote>
</div>
</body>
</html>

--6109d3c0_75a2a8d4_229--

--===============8766968358607405970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8766968358607405970==--
