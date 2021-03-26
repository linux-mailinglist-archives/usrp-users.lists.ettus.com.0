Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC9634AEB0
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 19:42:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7295383F73
	for <lists+usrp-users@lfdr.de>; Fri, 26 Mar 2021 14:42:33 -0400 (EDT)
Received: from dd22108.kasserver.com (dd22108.kasserver.com [85.13.141.232])
	by mm2.emwd.com (Postfix) with ESMTPS id 93F1A383CD0
	for <USRP-users@lists.ettus.com>; Fri, 26 Mar 2021 14:41:44 -0400 (EDT)
Received: from [100.77.88.143] (tmo-115-143.customers.d1-online.com [80.187.115.143])
	by dd22108.kasserver.com (Postfix) with ESMTPSA id 3AA90442008F;
	Fri, 26 Mar 2021 19:41:43 +0100 (CET)
From: Julian Arnold <julian@elitecoding.org>
Mime-Version: 1.0 (1.0)
Date: Fri, 26 Mar 2021 19:41:42 +0100
Message-Id: <7E90B7FF-A717-4B01-94F8-B01A1299D9AD@elitecoding.org>
References: <yTYxjj8SpEJYAuBgmbWthxamG1Fga2hAatc2Mg4HmS0@lists.ettus.com>
In-Reply-To: <yTYxjj8SpEJYAuBgmbWthxamG1Fga2hAatc2Mg4HmS0@lists.ettus.com>
To: christopher_beaudoin@uml.edu
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: OE5IPYADBCE6VGLLXTFRAUPKX37EMMMZ
X-Message-ID-Hash: OE5IPYADBCE6VGLLXTFRAUPKX37EMMMZ
X-MailFrom: julian@elitecoding.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 EVM
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OE5IPYADBCE6VGLLXTFRAUPKX37EMMMZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0095400708448665654=="


--===============0095400708448665654==
Content-Type: multipart/alternative; boundary=Apple-Mail-E1CDA191-D703-4078-A1DF-4628E052D659
Content-Transfer-Encoding: 7bit


--Apple-Mail-E1CDA191-D703-4078-A1DF-4628E052D659
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Chris,

I would say that your EVM is mainly affected by your SNR and your digital re=
ceiver implementation (AGC / filters / clock recovery / equalizer / ...).=20=

So without more details it=E2=80=99s going to be hard to say if what you  ar=
e seeing is within limits.

Cheers,

Julian Arnold, M.Sc

> Am 26.03.2021 um 18:29 schrieb christopher_beaudoin@uml.edu:
>=20
> =EF=BB=BF
> I'm capturing a 3 GHz QPSK signal with 5 MHz symbol rate by sampling the s=
ignal at 6 times the symbol rate. The B210 is externally referenced to a ver=
y clean 10 MHz reference. My measurements of the EVM sampling the signal for=
 ~0.5 seconds are pretty poor ~30-40%. I can provide more setup details but I=
'm wondering if others can comment on what EVM I can expect. I'm hoping this=
 isn't a fundamental limitation of this hardware system.
>=20
>=20
>=20
> Thanks,
>=20
> Chris
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-E1CDA191-D703-4078-A1DF-4628E052D659
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Chris,<div><br></div><div>I would say that y=
our EVM is mainly affected by your SNR and your digital receiver implementat=
ion (AGC / filters / clock recovery / equalizer / ...).&nbsp;</div><div>So w=
ithout more details it=E2=80=99s going to be hard to say if what you &nbsp;a=
re seeing is within limits.</div><div><br></div><div>Cheers,<br><br><div dir=
=3D"ltr">Julian Arnold, M.Sc</div><div dir=3D"ltr"><br><blockquote type=3D"c=
ite">Am 26.03.2021 um 18:29 schrieb christopher_beaudoin@uml.edu:<br><br></b=
lockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>I'm c=
apturing a 3 GHz QPSK signal with 5 MHz symbol rate by sampling the signal a=
t 6 times the symbol rate. The B210 is externally referenced to a very clean=
 10 MHz reference. My measurements of the EVM sampling the signal for ~0.5 s=
econds are pretty poor ~30-40%. I can provide more setup details but I'm won=
dering if others can comment on what EVM I can expect. I'm hoping this isn't=
 a fundamental limitation of this hardware system.</p><p><br></p><p>Thanks,<=
/p><p>Chris</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-E1CDA191-D703-4078-A1DF-4628E052D659--

--===============0095400708448665654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0095400708448665654==--
