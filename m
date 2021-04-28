Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE56E36D16B
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 06:53:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 80C0138413A
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 00:53:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="dGHnHEt9";
	dkim-atps=neutral
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	by mm2.emwd.com (Postfix) with ESMTPS id B893F3840ED
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 00:52:41 -0400 (EDT)
Received: by mail-vk1-f179.google.com with SMTP id g5so2160757vkm.9
        for <usrp-users@lists.ettus.com>; Tue, 27 Apr 2021 21:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=q+IDs0hGjnzRiGg2YH/cv0OaH0Vy574+uT9gSiByxHQ=;
        b=dGHnHEt9KR5fPJbMfPwNdwor7wEWxFRicJbpkJB8NgdNVaddeyY+iZJanV+rbQXhEg
         uBvuptmfxmSTSxF4dY+yfQFhQvkR/eh9iDUM4aO+Fnw2PXs3zyhXZ58Oj2tjBepp0/Cy
         IMkqsk18NwE7kr4h3aK9Tn6LwidVBvUailEWYILSp5a5l49P0/4TL5Gqs9BEH0p9gxOd
         Ah+6JswSRUUBZoliaYiLiRDpxYsmcYjzF0xp8UWleRC9ajpX1JpW9Rpk8O8irzo91tC6
         GtttjIZiIPh2nnQpuSmeEA675dumGUSn31JiS05B0476szDdpWjwZhkAwiWed3vmJwHH
         pKTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=q+IDs0hGjnzRiGg2YH/cv0OaH0Vy574+uT9gSiByxHQ=;
        b=Kto0M194zWXaKXipE7jCs7y1keAH7cz6b6iRaRxzm180UvnpTFw9F/3sTl2er/PbWb
         yhx3DVXh1aXrKUWkYiklg3rJA1Sux0f9zughQgVfhRY60bsqzO7MDyw1XifxceaRysm1
         CrzxcnsX274wFGo69HuGigi0aVO7+ZF9jzLVy4KmKwAPjiMdRzIuKivus/8p0lIeKPIN
         B296ctruHa1sJr5Oq3LiwydPuu1fS27WJOtLR4sWZ5rn9u7Q8kqNr4vvo1A3FusxGL96
         KpuvSrwuyxtFiTD9gTTSa2MLDou9iwHzWaaQQIk1ka/ARo0loHH2kjuu2ujHFgmoVsNK
         2AzA==
X-Gm-Message-State: AOAM530IxIb6kUICq8oVk/Sx1fQAiVe5mEYrxJF26zuJVLbrUdEBsxi3
	KGX+H90hPuY94SnXIXe5VVJ6Dm+qiFmfsZLOqZS6CqNCO1IjwbRG
X-Google-Smtp-Source: ABdhPJzSHZnv5Ug3nLnE71aR9VIAoHmOTkU/33okSqWZEg80ehNf1iOB2CWX1TEDmro2ydWUkVvzb/QelmK6vCLv2DU=
X-Received: by 2002:a1f:9e48:: with SMTP id h69mr5125215vke.15.1619585560823;
 Tue, 27 Apr 2021 21:52:40 -0700 (PDT)
MIME-Version: 1.0
From: Ismail Guvenc <iguvenc@ncsu.edu>
Date: Wed, 28 Apr 2021 00:52:32 -0400
Message-ID: <CAAJK0V3vXSbdNBXCoKrqAB-wukMwrJd+Nkgd+fjyak7R6Dj=kQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: DETRZXY4VVWA5K56W6VU52Y2B4XAZ5N2
X-Message-ID-Hash: DETRZXY4VVWA5K56W6VU52Y2B4XAZ5N2
X-MailFrom: iguvenc@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Research Associate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DETRZXY4VVWA5K56W6VU52Y2B4XAZ5N2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2952848358037003254=="

--===============2952848358037003254==
Content-Type: multipart/alternative; boundary="0000000000000974f705c10126aa"

--0000000000000974f705c10126aa
Content-Type: text/plain; charset="UTF-8"

Dear all,

We are looking into hiring a research associate with strong background and
experience in working with USRPs, please consider applying if interested:
https://jobs.ncsu.edu/postings/140981
<https://urldefense.com/v3/__https:/jobs.ncsu.edu/postings/140981__;!!FbZ0ZwI3Qg!8ZYD_TBCKFQ62_fq-cvtdZMUK-mR2xANgj3Tdm_q34hYwhVOUKvH-ETMqvzUaw$>


If you have any questions, please feel free to contact me directly. Thank
you,

--

Ismail Guvenc, Professor
Department of Electrical and Computer Engineering
North Carolina State University
Email: iguvenc@ncsu.edu
Office Phone: 919-513-1378
https://research.ece.ncsu.edu/mpact/

--0000000000000974f705c10126aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear all,=C2=A0<div><br></div><div>We are looking into hir=
ing a research associate with strong background and experience in working w=
ith USRPs, please consider applying if interested:=C2=A0<a href=3D"https://=
urldefense.com/v3/__https:/jobs.ncsu.edu/postings/140981__;!!FbZ0ZwI3Qg!8ZY=
D_TBCKFQ62_fq-cvtdZMUK-mR2xANgj3Tdm_q34hYwhVOUKvH-ETMqvzUaw$" target=3D"_bl=
ank">https://jobs.ncsu.edu/postings/140981</a>=C2=A0=C2=A0</div><div><br></=
div><div>If you have any questions, please feel free to contact me directly=
. Thank you,=C2=A0=C2=A0</div><div><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"color:=
rgb(136,136,136)"><br></div><div style=3D"color:rgb(136,136,136)">--</div><=
div style=3D"color:rgb(136,136,136)"><br></div><div style=3D"color:rgb(136,=
136,136)">Ismail Guvenc, Professor<br></div><div style=3D"color:rgb(136,136=
,136)">Department of Electrical and Computer Engineering<br></div><div styl=
e=3D"color:rgb(136,136,136)">North Carolina State University</div><div styl=
e=3D"color:rgb(136,136,136)">Email: <a href=3D"mailto:iguvenc@ncsu.edu" tar=
get=3D"_blank">iguvenc@ncsu.edu</a>=C2=A0</div><div style=3D"color:rgb(136,=
136,136)">Office Phone: 919-513-1378=C2=A0</div><div style=3D"color:rgb(136=
,136,136)"><a href=3D"https://research.ece.ncsu.edu/mpact/" target=3D"_blan=
k">https://research.ece.ncsu.edu/mpact/</a></div></div></div></div></div>

--0000000000000974f705c10126aa--

--===============2952848358037003254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2952848358037003254==--
