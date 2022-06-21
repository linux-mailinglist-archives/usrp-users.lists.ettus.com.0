Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 077E8552A5E
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jun 2022 06:50:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96C59383C2C
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jun 2022 00:50:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655787018; bh=s3qzJYcK4jv6YQ3sOxr9H2naMn4TEkgSMwj99yOA5Xc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=y5665o/OQLwKeNoUUmBhUXVVwIglPooxEeNOSpnvM3XSbxWT9hncfp9x/sr4Vinzx
	 72KrkBf4UJ2lD4kf5kkPDILpORbOYETFn3hHAGusxKWCJV/7XI5C8Yj1sDGBhCfDLr
	 6HLQh/LVcTnrYQI9EoVdxMaREfkDy+6pObV5B3y1LnajgtJOJFsCz2KQvvLBoJ8mAR
	 DlbWu5hwXIHdUN6o/VCAmuH3r2O3mSeu+HGVdarNMhVzlIUPoEADw3VDI5YGQ9CQzU
	 AzO0hvNUtdLrlEok2cUJ1cmHjMZLeTD6Rhe2R3beTiVYHyxgtMNkoCckbYRISJPp+s
	 2x7ZUr2+2YIxg==
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 927DC383B9C
	for <usrp-users@lists.ettus.com>; Tue, 21 Jun 2022 00:49:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ay1eqqhZ";
	dkim-atps=neutral
Received: by mail-pj1-f50.google.com with SMTP id w19-20020a17090a8a1300b001ec79064d8dso9246489pjn.2
        for <usrp-users@lists.ettus.com>; Mon, 20 Jun 2022 21:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=AhDKXPHtW1GiS99AYEK5HxbuU6Ufw/hqW+/vJsUtZ08=;
        b=ay1eqqhZ1MrM6TgxfGpxQoVwf9RTvUfgPPYtWfE+vcFts+aQUyCxtuUZeTTavPG0YK
         HGnK6HEJGudfcpdxL8x3xFskfmzwZSPH13Mp/G/XMbxVsfgx8TR1PNgD/JKCbIcQiDuh
         d1I/f9mmJkFSX0f7JLqpPFCubN8Rc4rLjSOGzXayiIBJsdnvLccbEFYHtL4Xw1B49afe
         K89S4SNnovWzqvxZVKiB/TCaJkcsqqHY2OMGMPZYiq7Qr9p92LNKTZH4sa2dY5EbdZ6v
         /IsqigVeGNyxD8ZygppUqn1Gg9CCxWhw4GC0kpelXXVTEymVq8XnPOW7Cp8QkTvfv+Oq
         koeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=AhDKXPHtW1GiS99AYEK5HxbuU6Ufw/hqW+/vJsUtZ08=;
        b=KBxgIMsgQZftqJZaCJ77r/eE6S2WoOaiB4xa9lWHR19fxeTIemGmhOK3wxHOT/bOn9
         Wnigv5OnjMonp0RC7kXLy7sF/YcQE3Mi1SfLILY31j3OZxbPxrF4zI0l/i2X5Jcm6/OR
         XRbImXuLDyERzRFz0wXUPaZ30fH1o5Whf6wdBWLCCb8Q7Y1TNkn2nMoVP7dtL7YeHlVk
         gMF31viECnjIYi0bUEmvhDKZqbv+ICGmrBBLlGUWsPUNTfQEwj3c95hNjd+AOwP0kdwB
         FHiWw5cUnYwUVmmMJZ07dUf0WjvcHT43XCGzygBSamc6s9PAhLRfO25IuoeSwzXqhbBI
         nolw==
X-Gm-Message-State: AJIora+OJyLFuvQx41z2fbvQFOlVwiaGycaAM6jBz+dWo+W0IJGXAlAv
	Eoria6F2INGifPyiBu0Usn08dR7YNg63W4XKbmCjz1Z2dHk=
X-Google-Smtp-Source: AGRyM1t2Cfa1PtWywj8zIVyxV6YM4n8Qi5kPfBn2i5+3ud5CjKAKobgzjNA/uYPxoeTvGc8EDhRU4cHOPZLKJ4Fk92E=
X-Received: by 2002:a17:903:11d2:b0:167:8a0f:8d33 with SMTP id
 q18-20020a17090311d200b001678a0f8d33mr27303949plh.95.1655786952223; Mon, 20
 Jun 2022 21:49:12 -0700 (PDT)
MIME-Version: 1.0
From: Stefan Orosco <oroscogold@gmail.com>
Date: Mon, 20 Jun 2022 21:49:01 -0700
Message-ID: <CAMCCzRYyoKsnuVW-yz_0XWq3sxNTQ0bxw9snoGsanrJmzdBMtg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: QL6DIAGWX7FFEAKVJGVZCRRHS35ZLUR7
X-Message-ID-Hash: QL6DIAGWX7FFEAKVJGVZCRRHS35ZLUR7
X-MailFrom: oroscogold@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error when attempting to install dependencies for Ubuntu 20.04 "E: Unable to locate package python3-numpy-dbg"
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QL6DIAGWX7FFEAKVJGVZCRRHS35ZLUR7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4848186253336437823=="

--===============4848186253336437823==
Content-Type: multipart/alternative; boundary="0000000000001c725905e1edf1f5"

--0000000000001c725905e1edf1f5
Content-Type: text/plain; charset="UTF-8"

Hi There,

I was following these instructions for Ubuntu 20.04:
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux

Here is my version of Linux.
Distributor ID: Ubuntu
Description: Ubuntu 22.04 LTS
Release: 22.04
Codename: jammy

Hardware: B210

All other dependencies install correctly. Only error is the following:
*E: Unable to locate package python3-numpy-dbg*

I have searched for the package here: https://packages.ubuntu.com/
and could not find it.

Seems like this is a debug package, is it required for runtime? Thanks so
much!

Best,

--0000000000001c725905e1edf1f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-h7" role=3D"listitem" aria-expanded=3D=
"true" tabindex=3D"-1"><div class=3D"gmail-Bk"><div class=3D"gmail-G3 gmail=
-G2"><div><div id=3D"gmail-:pm"><div><div class=3D"gmail-adn gmail-ads"><di=
v class=3D"gmail-gs"><div class=3D"gmail-"><div id=3D"gmail-:r0" class=3D"g=
mail-ii gmail-gt"><div id=3D"gmail-:pp" class=3D"gmail-a3s gmail-aiL"><div =
dir=3D"ltr"><div><font size=3D"2"><span style=3D"font-family:arial,sans-ser=
if">Hi There,</span></font></div><div><font size=3D"2"><span style=3D"font-=
family:arial,sans-serif"><br></span></font></div><div><font size=3D"2"><spa=
n style=3D"font-family:arial,sans-serif">I was following these instructions=
 for Ubuntu 20.04:</span></font></div><div><font size=3D"2"><span style=3D"=
font-family:arial,sans-serif"><a href=3D"https://kb.ettus.com/Building_and_=
Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux" tar=
get=3D"_blank">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-S=
ource_Toolchain_(UHD_and_GNU_Radio)_on_Linux</a></span></font></div><div><f=
ont size=3D"2"><span style=3D"font-family:arial,sans-serif"><br></span></fo=
nt></div><div><font size=3D"2"><span style=3D"font-family:arial,sans-serif"=
>Here is my version of Linux. </span></font><font size=3D"2"><span style=3D=
"font-family:arial,sans-serif"><br></span></font></div><div><font size=3D"2=
"><span style=3D"font-family:arial,sans-serif">Distributor ID:	Ubuntu</span=
></font></div><font size=3D"2"><span style=3D"font-family:arial,sans-serif"=
>Description:	Ubuntu 22.04 LTS<br>Release:	22.04<br></span></font><div><fon=
t size=3D"2"><span style=3D"font-family:arial,sans-serif">Codename:	jammy</=
span></font></div><div><font size=3D"2"><span style=3D"font-family:arial,sa=
ns-serif"><br></span></font></div><div><font size=3D"2"><span style=3D"font=
-family:arial,sans-serif">Hardware: B210<br></span></font></div><div><font =
size=3D"2"><span style=3D"font-family:arial,sans-serif"><br></span></font><=
/div><div><font size=3D"2"><span style=3D"font-family:arial,sans-serif">All=
 other dependencies install correctly. Only error is the following:</span><=
/font></div><div><font size=3D"2"><span style=3D"font-family:arial,sans-ser=
if"><b>E: Unable to locate package python3-numpy-dbg</b><br></span></font><=
/div><div><font size=3D"2"><span style=3D"font-family:arial,sans-serif"><br=
></span></font></div><div><font size=3D"2"><span style=3D"font-family:arial=
,sans-serif">I have searched for the package here: <a href=3D"https://packa=
ges.ubuntu.com/" target=3D"_blank">https://packages.ubuntu.com/</a></span><=
/font></div><div><font size=3D"2"><span style=3D"font-family:arial,sans-ser=
if">and could not find it. <br></span></font></div><div><font size=3D"2"><s=
pan style=3D"font-family:arial,sans-serif"><br></span></font></div><div><fo=
nt size=3D"2"><span style=3D"font-family:arial,sans-serif">Seems like this =
is a debug package, is it required for runtime? Thanks so much! <br></span>=
</font></div><div><font size=3D"2"><span style=3D"font-family:arial,sans-se=
rif"><br></span></font></div><div><font size=3D"2"><span style=3D"font-fami=
ly:arial,sans-serif">Best,</span></font></div><div><font size=3D"2"><span s=
tyle=3D"font-family:arial,sans-serif"><br></span></font></div></div><div cl=
ass=3D"gmail-yj6qo"></div><div class=3D"gmail-adL">
</div></div></div><div class=3D"gmail-hi"></div></div></div><div class=3D"g=
mail-ajx"></div></div><div class=3D"gmail-gA gmail-gt gmail-acV"><div class=
=3D"gmail-gB gmail-xu"><div class=3D"gmail-ip gmail-iq"><br></div></div></d=
iv></div></div></div></div></div></div></div>

--0000000000001c725905e1edf1f5--

--===============4848186253336437823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4848186253336437823==--
