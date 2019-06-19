Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DD54C3E1
	for <lists+usrp-users@lfdr.de>; Thu, 20 Jun 2019 00:57:24 +0200 (CEST)
Received: from [::1] (port=44830 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdjW4-0004Nw-6x; Wed, 19 Jun 2019 18:57:20 -0400
Received: from web-atmail1.tpgi.com.au ([203.12.160.53]:59135)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <gobbo@tpg.com.au>) id 1hdjVz-0004I0-OC
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 18:57:16 -0400
Received: from localhost (localhost [127.0.0.1])
 by web-atmail1.tpgi.com.au (8.14.4/8.14.4) with ESMTP id x5JMuSog014687;
 Thu, 20 Jun 2019 08:56:28 +1000
Message-Id: <d69386c0f5b0f1339eee9da920334aed03a817ac@new-postoffice.tpg.com.au>
To: "Jason Matusiak" <jason@gardettoengineering.com>,
 "Ettus Mail List" <usrp-users@lists.ettus.com>
X-Mailer: Atmail 7.2.0.14467
X-Originating-IP: 203.6.69.2
in-reply-to: <BL0PR12MB23409479CB3FBD5B7DCAAC19AFE50@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Thu, 20 Jun 2019 08:56:28 +1000
MIME-Version: 1.0
Subject: Re: [USRP-users] E320 with larger SD card
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
From: Chris Gobbett via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Chris Gobbett <gobbo@tpg.com.au>
Content-Type: multipart/mixed; boundary="===============7520582707077229699=="
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

--===============7520582707077229699==
Content-Type: multipart/alternative;
 boundary="=_5ec6c8ce6cb4217c2e82a0acf00ed5de"

--=_5ec6c8ce6cb4217c2e82a0acf00ed5de
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0=0AHi Jason,=0AI've had luck with the following:- backup/clone the=
 original SDCard=0Aimage to disk and/or larger SDCard (using dd or other=
wise)- on the new=0Acard, resize/shift the data partion to the end of th=
e card (using=0Agparted)- resize the two filesystem/kernel partitions to=
 fill in the=0Aempty space in the middle, but they need to be the same s=
ize (using=0Agparted)=0ARead up on Mender for more info on the partition=
 layout=0A(https://docs.mender.io/1.7/devices/general-system-requirement=
s#partition-layout).=0AIt's a pain that they went with Mender for the de=
fault E320 card; it=0Acuts the 'usable' file system space in half, at th=
e benefit of having=0A2 independent filesystem partitions... I haven't h=
ad time to fiddle=0Aaround and ditch the mender for a 'normal' partition=
 layout, but I'd=0Aassume it's possible.=0ACheers,Chris=0A=0A----- Origi=
nal Message -----=0AFrom: "Jason Matusiak" =0ATo:"Ettus Mail List" =0ACc=
:=0ASent:Wed, 19 Jun 2019 16:29:38 +0000=0ASubject:[USRP-users] E320 wit=
h larger SD card=0A=0A=09I wanted to use a larger SD card than the one t=
hat as supplied, but I=0Aam having issues.=C2=A0 I loaded up the card, a=
nd then extended the data=0Apartition to use up the rest of the free spa=
ce (about 100GB).=C2=A0 But=0Athen it doesn't boot. =0A=0A=09I am wonder=
ing if the change to a partition size screwed up something=0Ain a config=
 file somewhere.=C2=A0 Is there a way to fix this without=0Arebuilding a=
 docker image?=C2=A0 I am using the UHD 3.14.0.0. that has the=0Asmaller=
 data partition (UHD 3.14.1.0 has a larger data partition, but=0Adoesn't=
 include any GR/python packages, so I need to use the older=0Aimage).=
 =0A=0A=09Thanks.

--=_5ec6c8ce6cb4217c2e82a0acf00ed5de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body style=3D"font-family: 'Helvetica Neue',Helvetica,Arial,sans-=
serif; font-size: 12px;">=C2=A0<br />Hi Jason,<div><br /></div><div>I've=
 had luck with the following:</div><div>- backup/clone the original SDCa=
rd image to disk and/or larger SDCard (using dd or otherwise)</div><div>=
- on the new card, resize/shift the data partion to the end of the card=
 (using gparted)</div><div>- resize the two filesystem/kernel partitions=
 to fill in the empty space in the middle, but they need to be the same=
 size (using gparted)</div><div><br /></div><div>Read up on Mender for m=
ore info on the partition layout (https://docs.mender.io/1.7/devices/gen=
eral-system-requirements#partition-layout). It's a pain that they went w=
ith Mender for the default E320 card; it cuts the 'usable' file system s=
pace in half, at the benefit of having 2 independent filesystem partitio=
ns... I haven't had time to fiddle around and ditch the mender for a 'no=
rmal' partition layout, but I'd assume it's possible.</div><div><br /></=
div><div>Cheers,</div><div>Chris</div><div><br /><br /><blockquote><br /=
>----- Original Message -----<br /><div style=3D"width:100%;background:r=
gb(228,228,228);"><div style=3D"font-weight:bold;">From:</div> "Jason Ma=
tusiak" &lt;jason@gardettoengineering.com&gt;</div><br /><div style=3D"f=
ont-weight:bold;">To:</div>"Ettus Mail List" &lt;usrp-users@lists.ettus.=
com&gt;<br /><div style=3D"font-weight:bold;">Cc:</div><br /><div style=
=3D"font-weight:bold;">Sent:</div>Wed, 19 Jun 2019 16:29:38 +0000<br /><=
div style=3D"font-weight:bold;">Subject:</div>[USRP-users] E320 with lar=
ger SD card<br /><br /><br /><div style=3D"font-size:12pt;color:#000000;=
font-family:Calibri, Helvetica, sans-serif;" dir=3D"ltr">=0A<p style=3D"=
margin-top:0;margin-bottom:0;">I wanted to use a larger SD card than the=
 one that as supplied, but I am having issues.=C2=A0 I loaded up the car=
d, and then extended the data partition to use up the rest of the free s=
pace (about 100GB).=C2=A0 But then it doesn't=0A boot.</p>=0A<p style=3D=
"margin-top:0;margin-bottom:0;"><br /></p>=0A<p style=3D"margin-top:0;ma=
rgin-bottom:0;">I am wondering if the change to a partition size screwed=
 up something in a config file somewhere.=C2=A0 Is there a way to fix th=
is without rebuilding a docker image?=C2=A0 I am using the UHD 3.14.0.0.=
 that has the smaller data=0A partition (UHD 3.14.1.0 has a larger data=
 partition, but doesn't include any GR/python packages<span style=3D"fon=
t-family:Calibri, Helvetica, sans-serif, EmojiFont, 'Apple Color Emoji',=
 'Segoe UI Emoji', NotoColorEmoji, 'Segoe UI Symbol', 'Android Emoji', E=
mojiSymbols;font-size:16px;">,=0A so I need to use the older image</span=
>).</p>=0A<p style=3D"margin-top:0;margin-bottom:0;"><br /></p>=0A<p sty=
le=3D"margin-top:0;margin-bottom:0;">Thanks.</p>=0A</div>=0A</blockquote=
></div></body></html>

--=_5ec6c8ce6cb4217c2e82a0acf00ed5de--



--===============7520582707077229699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7520582707077229699==--


