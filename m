Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7783EBCDD
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 21:55:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 139AF383E35
	for <lists+usrp-users@lfdr.de>; Fri, 13 Aug 2021 15:55:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="AiwirQmX";
	dkim-atps=neutral
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by mm2.emwd.com (Postfix) with ESMTPS id E0936383D10
	for <usrp-users@lists.ettus.com>; Fri, 13 Aug 2021 15:54:54 -0400 (EDT)
Received: by mail-io1-f41.google.com with SMTP id x10so14799652iop.13
        for <usrp-users@lists.ettus.com>; Fri, 13 Aug 2021 12:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=vOCl2qjn/89Y3mXtmIWHGIEDF+CIns9PyfMzZspi9fg=;
        b=AiwirQmXpop+zC+uTJlpE2/ey99zRva/pCbtVLGQKHr0o4t5Le156Nzq7zMwUf6KJG
         pjHYQxJ8jVSZt+SK+/KIqIaLeYoPYgg6f0sym75UoC+e8TjlcmxGKVFoZB5pVbvVt2sg
         m+RNrFOUadUOGnG8THnTNOcAv2QwzSy1v+CNBs7Ir+gsmU+rtJQP2YvegzjNAGjYxC4X
         Gy/9wmCZbcN03Om38ApJLZ0osSfh3aTYMSoCUBVB1PR2t9OxNh90Y9Qn6+OnmUntWEBT
         xXbsBRc38cObL87dyjn/YVZo5RrJDj/VpvW9P/Z5TVOhKpX7Mpz5KgcHI5th1+ye4HuP
         qLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=vOCl2qjn/89Y3mXtmIWHGIEDF+CIns9PyfMzZspi9fg=;
        b=QLWRdvP1sA6tkHha32DumkISO3ALKzmVKO7ovDuTQOr0s8cslPMsgchJ6Ugc8ZzQz7
         AkOdTr2qbV9eK+15boqs6vKDYaxn0591xEomvJNv6MRyyb3a1pwGOHN7VybB4cuVk6js
         PCN4bNdiaQ1pNUu/rGnjYUlbtJAgAauSZ1IHqc4/IRStRJ5vUPcejxLfPpVvWicrklQu
         MO4VcHFqRKunrF3xuB0AOlVz1xjMDWkKKGbh4U9x/kIhFsveNrOO+anYPgmU10AK30EI
         on+uksXH7SJwTdR3sNsEuh9XWMSWFP1mTemnDRX1DY2mQiqcQ8ZCtPJBq9BQH9dTREXN
         zfDg==
X-Gm-Message-State: AOAM530n3luGWMHqys/JqMm58kA4pEfp9Czw4UVPhyR5MZMnuAa9ZdHz
	OLiJgxiliG4zJZ2vQT4FRl3WxiS6DbOkK1wDo/CrMmnxjkrxYT9c
X-Google-Smtp-Source: ABdhPJy4RJRMhrJCwbX4ArHiDoKRFnY+NMbXVL8c63tHlDYmMQrPd+XbXH4jXNr7sS9lHW9mmwZts0iYTWXdJrbEyeo=
X-Received: by 2002:a02:850a:: with SMTP id g10mr3812050jai.134.1628884493944;
 Fri, 13 Aug 2021 12:54:53 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Fri, 13 Aug 2021 14:54:17 -0500
Message-ID: <CACaXmv_+4JtZ4OPx8Kftj0mM4zRc4O4iUN-3LwwtqC6CSj9Eig@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: GCR6Y6IGLF6O775HTS2PRUVH32YKMQS6
X-Message-ID-Hash: GCR6Y6IGLF6O775HTS2PRUVH32YKMQS6
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Reminder -- NEWSDR -- Next Week on Friday August 20
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GCR6Y6IGLF6O775HTS2PRUVH32YKMQS6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7258962584207149720=="

--===============7258962584207149720==
Content-Type: multipart/alternative; boundary="000000000000a4617405c97639fc"

--000000000000a4617405c97639fc
Content-Type: text/plain; charset="UTF-8"

Reminder!!

*NEWSDR* will be held next week on *Friday* *August* *20*, from 9:00 AM to
5:30 PM EDT (Boston time).

Please visit our website to see the event agenda and to register.

The event is completely free.

https://newsdr.org/workshops/newsdr2021/

--Neel Pandeya

--000000000000a4617405c97639fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Reminder!!</div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:verdana,sans-serif"><b>NEWSDR</b> will be held next week on=C2=A0<b=
>Friday</b> <b>August</b> <b>20</b>, from 9:00 AM to 5:30 PM EDT (Boston ti=
me).</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sa=
ns-serif">Please visit our website to see the event agenda and to register.=
</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"=
><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-s=
erif">The event is completely free.</div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif"><font size=3D"4"><a href=3D"https:=
//newsdr.org/workshops/newsdr2021/">https://newsdr.org/workshops/newsdr2021=
/</a><br></font></div><div class=3D"gmail_default" style=3D"font-family:ver=
dana,sans-serif"><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"verdana, =
sans-serif">--Neel Pandeya</font><div><br></div></div></div></div></div>

--000000000000a4617405c97639fc--

--===============7258962584207149720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7258962584207149720==--
