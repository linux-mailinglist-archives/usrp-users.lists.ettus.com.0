Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA9B2CF8A9
	for <lists+usrp-users@lfdr.de>; Sat,  5 Dec 2020 02:37:48 +0100 (CET)
Received: from [::1] (port=40824 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1klMW7-0004Dh-R6; Fri, 04 Dec 2020 20:37:43 -0500
Received: from mail-il1-f180.google.com ([209.85.166.180]:34543)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1klMW3-0003xu-1G
 for usrp-users@lists.ettus.com; Fri, 04 Dec 2020 20:37:39 -0500
Received: by mail-il1-f180.google.com with SMTP id x15so6945602ilq.1
 for <usrp-users@lists.ettus.com>; Fri, 04 Dec 2020 17:37:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=content-transfer-encoding:mime-version:subject:from:in-reply-to
 :date:cc:message-id:references:to;
 bh=FNQ6G5hZ1WnqpOu/gk6otejxLQSbH+TfyhLLWuGJSDs=;
 b=o19hZEDKMKUNeuA2vpgyBiLndRUmlmN101Xcr9VPFljcF+UNJMPeaJUaGs9vGC1eB8
 q/AIafvFngXnRew+AHYqf+j4X+QAUzHQbjKtltfOfBbtnTJ/M1C8VdHo7ZRY0NeDy0uR
 UTc+2CZLUe8qbgctWoWayfBBPqMN6mzgGkn1TU2lCPTsnoMNJCDUezWH6MGxrCvnQw7+
 TydhqUyA5tUSyehIdtxHP+ddC/whEJpETWMN/felpZSh0iZGh+052EDFsVvl/0uYqBC5
 Ep3UrChddecpq52N6Hz6+CK60caE1WhdJMgtUv39szdzhHmPZl4VVNlxs7lYs62YQ4D4
 XkMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:mime-version:subject
 :from:in-reply-to:date:cc:message-id:references:to;
 bh=FNQ6G5hZ1WnqpOu/gk6otejxLQSbH+TfyhLLWuGJSDs=;
 b=JM9NV1/+d479NhidyZSRIcp/FNOPj3qkisWJe0bjATCyDf5DLeTsBL4d1T14kenF9n
 Gg9f2DOTOdnAw1lLepq8CRDwYs3XbVu2I+W79rfDEU8kM2ohxfAw9pj3JnuJbawftHfW
 lzSNDw1ApVDphYJ2em/L/kBw9QmH0TNOuH/E+KQojwAtulMvT4OrWn5Qae2S2i5IhuRU
 33KSJfVYq32OQbuORFe36mDf78Lv3ifgsE97N4c8deKqSVXRY9Byi6B5KdVfczxdXd/Y
 +GfJtwRnxlqi+eACJVw7f8YPcXb9JVKVz5ybq32lELxGN0Mo4YEBnItA/j5pHCaXBoA/
 E2kA==
X-Gm-Message-State: AOAM532f9kekh/TCLum2cbcfvjBGXA7aCgNbqGkSE2HKCDbi2ZCQM0cO
 ZXv8kPfTc2PtTQd9geFkyuphI2Iz
X-Google-Smtp-Source: ABdhPJzrPT0UHEmXSHMZY1aDG4oFk2PKojpHrDZTk3ippCTOYbpnHK+GvFjnfhBeTHhofZgt7XycRg==
X-Received: by 2002:a92:d8c3:: with SMTP id l3mr9663749ilo.295.1607132217430; 
 Fri, 04 Dec 2020 17:36:57 -0800 (PST)
Received: from [192.168.10.159] (c-73-247-35-187.hsd1.in.comcast.net.
 [73.247.35.187])
 by smtp.gmail.com with ESMTPSA id t21sm2637942ild.86.2020.12.04.17.36.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Dec 2020 17:36:56 -0800 (PST)
Mime-Version: 1.0 (1.0)
In-Reply-To: <6188590.6ma6Ngl4jg@terra>
Date: Fri, 4 Dec 2020 20:36:55 -0500
Cc: usrp-users@lists.ettus.com
Message-Id: <796DFA46-11DB-40C8-B36F-785190E5B7B5@ettus.com>
References: <6188590.6ma6Ngl4jg@terra>
To: Dustin Widmann <dw2zq@virginia.edu>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] power-cycle after remote reflash image
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============6854942497796289064=="
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


--===============6854942497796289064==
Content-Type: multipart/alternative; boundary=Apple-Mail-0D0FE44C-F93F-478B-BB89-05E225099CE4
Content-Transfer-Encoding: 7bit


--Apple-Mail-0D0FE44C-F93F-478B-BB89-05E225099CE4
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Try this UHD-provided utility: https://github.com/EttusResearch/uhd/blob/mas=
ter/host/utils/x300_reset.py

Guessing it ends up doing similarly to what Nate mentioned. Worth a try! - M=
LD=20

> On Dec 4, 2020, at 5:42 PM, Dustin Widmann via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi Jeff,
>=20
> I have been meaning to look into this as well, because I have some need of=
 this myself. I believe I've found something that might do the trick in the u=
srp-users archives, but I haven't had a chance to test it yet.
>=20
> http://ettus.80997.x6.nabble.com/USRP-users-X310-software-reset-revisted-t=
d10183.html=20
>=20
> Dustin
>=20
> On Friday, December 4, 2020 5:19:04 PM EST Hodges, Jeff via USRP-users wro=
te:
> =20
>=20
> I have a lab set-up where I remotely run uhd_image_loader on my X310, but t=
hen I need to power-cycle the device in order for the new image to be used.
>=20
>=20
>=20
> Does the uhd driver have a command that will do this? or can this be done b=
y the aux IO or JTAG? or do I need to buy a remote power switch?
>=20
> =20
>=20
>=20
>=20
> Jeff
>=20
> =20
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-0D0FE44C-F93F-478B-BB89-05E225099CE4
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div dir=3D"ltr">Try this UHD-provided util=
ity:&nbsp;<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/u=
tils/x300_reset.py">https://github.com/EttusResearch/uhd/blob/master/host/ut=
ils/x300_reset.py</a></div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Guess=
ing it ends up doing similarly to what Nate mentioned. Worth a try! - MLD&nb=
sp;</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Dec 4, 2020, at 5=
:42 PM, Dustin Widmann via USRP-users &lt;usrp-users@lists.ettus.com&gt; wro=
te:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=
=BB=BF

<meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8">

<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">Hi J=
eff,</p>
<br><p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">=
I have been meaning to look into this as well, because I have some need of t=
his myself. I believe I've found something that might do the trick in the us=
rp-users archives, but I haven't had a chance to test it yet. </p>
<br><p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">=
<a href=3D"http://ettus.80997.x6.nabble.com/USRP-users-X310-software-reset-r=
evisted-td10183.html">http://ettus.80997.x6.nabble.com/USRP-users-X310-softw=
are-reset-revisted-td10183.html</a>&nbsp;</p>
<br><p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">=
Dustin</p>
<br><p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;">=
On Friday, December 4, 2020 5:19:04 PM EST Hodges, Jeff via USRP-users wrote=
:</p>
<p>&nbsp;</p>
<p style=3D"margin-top:12;margin-bottom:12;margin-left:40;margin-right:40;">=
I have a lab set-up where I remotely run uhd_image_loader on my X310, but th=
en I need to power-cycle the device in order for the new image to be used.</=
p>
<p style=3D"margin-top:12;margin-bottom:12;margin-left:40;margin-right:40;">=
<br></p>
<p style=3D"margin-top:12;margin-bottom:12;margin-left:40;margin-right:40;">=
Does the uhd driver have a command that will do this? or can this be done by=
 the aux IO or JTAG? or do I need to buy a remote power switch?</p>
<p>&nbsp;</p>
<p style=3D"margin-top:12;margin-bottom:12;margin-left:40;margin-right:40;">=
<br></p>
<p style=3D"margin-top:12;margin-bottom:12;margin-left:40;margin-right:40;">=
Jeff</p>
<p>&nbsp;</p>
<p style=3D"margin-top:0;margin-bottom:0;margin-left:0;margin-right:0;"><br>=
</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></body></html>=

--Apple-Mail-0D0FE44C-F93F-478B-BB89-05E225099CE4--


--===============6854942497796289064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6854942497796289064==--

