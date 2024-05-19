Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4CD8C954B
	for <lists+usrp-users@lfdr.de>; Sun, 19 May 2024 18:51:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DE98A3857F3
	for <lists+usrp-users@lfdr.de>; Sun, 19 May 2024 12:51:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716137505; bh=milM13iRzrsdyIZf1m89qZ/w6ROUOlfCmR+Ujoi26Os=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rewawwuiR+PWtfEvv5hAT/9sZMaf3lrPnycqqiIyDdIortWL0CVttIrQXlfsWEFaK
	 +ar8NzdVtsRLJvCDne+fTX0fzKUHFP/L9Zg4z4hsWoKJZth2y1G69OqXwduTeuExoV
	 OFWwvOmj3h0HzxkGr0Jjz9wSF501rhEtyW4dtUSM9mLmHypwI7SokmD97InMtsc+yq
	 p0saqaywH6MEfPb5Cjr4ZE2mLlgE1P0uUan2J9U2k4BKQt9idgS6K7av9ZXNLRsvpz
	 YAhn59oOTgADUlJSMNeWyc3ZW2WUM6oxRdmXheGVnISeiWppr46wM3KcszQN+3G9Mi
	 pkBXjCaJida1w==
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A9893855C8
	for <usrp-users@lists.ettus.com>; Sun, 19 May 2024 12:51:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="AYnOmdwk";
	dkim-atps=neutral
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e576057c56so23324921fa.3
        for <usrp-users@lists.ettus.com>; Sun, 19 May 2024 09:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1716137476; x=1716742276; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZKMMmWbFAnvbGrN9Rm7XvJDaa7XmyLobLqYbvyo5thM=;
        b=AYnOmdwkZt5OgK6Oe3yC4V40QaBLvJ5mfoAOnTob46HjhRLr3OVLJRwcaN+AuUzTTy
         x5Vp45XZkLyiu3Ee4CUADVrTm9x4ADJdmnuD3Howouu8fdZLZdQjBMHHKauuhaWaeLsJ
         EObSKjJMbtRTm2FtfNmUFRM7vm2nEYDXpxJMfpiiuQhErWT/Y0d7hkls8J/f21etLO1D
         /ZsLJeiwCIfBb46NOa2o5yYuwx6EWuqepJm165AqAiv550fOG0/9WPryR1ki2OVMNZML
         Bn3vPwsqbER1OXmDY8S+vWfJlEVBa4KvCkBv5XzSuvje6dvYpNqS0fTPciWCjSO1gHgk
         Yrpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716137476; x=1716742276;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZKMMmWbFAnvbGrN9Rm7XvJDaa7XmyLobLqYbvyo5thM=;
        b=dVYLmYD6zdTgLWCGbyVpKaGg84nQFGE85nOQ9zUpXJuq7IQOsk4uPvAjgsHLilh4SB
         sqjM/mJ3VMu6SwzGrR2AKFGEBPCVcbSk/c9YlsYHZ8AV5fMBSyQeTv7RZD6Un2TVwl42
         iRXWuSSt6Wintx1KYU/Ct0pySyajpYSes5OI41ZFIZI8HdziHOfse/AdmlnXmDZuHP+1
         3/MzoHbfhK48RD5LEHRssPWBGrvy/4V3dGUDdhUR2aC7bdwrAYewnc3pq0s1GZ2m6kKU
         K+hK8RRGDG2fmorlRfSjt2w3wRlNYZ5iicrWz0Xob0+jMGqFSbZZ3mKj7bKgdsm4RqQZ
         kgPg==
X-Gm-Message-State: AOJu0YwdxfBALyha5qFz2vsTNv7g8O0sRxv7knOa4ZcNFRltwAgaV3xK
	UZf8T3N3h+D8z3ooAB9Q/p5OB/KgwIBN6TVEuajsn+ov9P04CvBcd3Ek7W/Uny3wSjXFcB5w7gB
	h3kDS2MerWa2EFZtiq0FbHjjLqmksaS9iGQfrxK6gOx+Db0JH2QDVxg==
X-Google-Smtp-Source: AGHT+IFEtWr/NJnUCJVyS/w7fZ+fm4USUe9RzPw/20JkBQpVzywItwVsG/TxXWlsKgZXd2i5JSahzyQEeB7n192rtpU=
X-Received: by 2002:a2e:900b:0:b0:2df:b2d5:590d with SMTP id
 38308e7fff4ca-2e51fc36b06mr165094541fa.10.1716137476356; Sun, 19 May 2024
 09:51:16 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Sun, 19 May 2024 11:50:40 -0500
Message-ID: <CACaXmv-YzNTkbN4MV6GysEWok2+msGuBFtsYmk09brLduY0RSA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: HMXAG6AEQQM6POARROEPL23KBMXJ2NVP
X-Message-ID-Hash: HMXAG6AEQQM6POARROEPL23KBMXJ2NVP
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR on Friday May 31 at WPI (coming in ten days, with further updates to the agenda)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMXAG6AEQQM6POARROEPL23KBMXJ2NVP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0183984214663245381=="

--===============0183984214663245381==
Content-Type: multipart/alternative; boundary="000000000000aa2c950618d16490"

--000000000000aa2c950618d16490
Content-Type: text/plain; charset="UTF-8"

The New England Workshop on Software Defined Radio (NEWSDR) will be held at
Worcester Polytechnic Institute (WPI) on Friday May 31, in Worcester,
Massachusetts, USA.

There will also be a tutorial session on the evening before on Thursday May
30.

There will be food, drinks, coffee, etc. provided at both sessions, as well
as free parking.

The event is completely free, but advance registration is required.

To learn more about this event and to register, please visit our website at
the link below.

There have been further updates to the agenda since the previous
announcement.


*https://newsdr.org/workshops/newsdr2024/
<https://newsdr.org/workshops/newsdr2024/>*

--000000000000aa2c950618d16490
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">The New England Workshop on Software Defined Radio (NEWSDR=
) will be held at<br>Worcester Polytechnic Institute (WPI) on Friday May 31=
, in Worcester, Massachusetts, USA.<br><br>There will also be a tutorial se=
ssion on the evening before on Thursday May 30.</font></div><div class=3D"g=
mail_default" style=3D""><font face=3D"verdana, sans-serif"><br></font></di=
v><div class=3D"gmail_default" style=3D"">There will be food, drinks, coffe=
e, etc. provided at both sessions, as well as free parking.<font face=3D"ve=
rdana, sans-serif"><br><br>The event is completely free, but advance regist=
ration is required.<br><br>To learn more about this event and to register, =
please visit our website at the link below.<br><br>There have been further =
updates to the agenda since the previous announcement.<br><br><b style=3D""=
><a href=3D"https://newsdr.org/workshops/newsdr2024/">https://newsdr.org/wo=
rkshops/newsdr2024/</a><br></b></font><br></div></div>

--000000000000aa2c950618d16490--

--===============0183984214663245381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0183984214663245381==--
