Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4805138B1B0
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 16:26:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3EC56385428
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 10:26:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="aJH5BFDO";
	dkim-atps=neutral
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by mm2.emwd.com (Postfix) with ESMTPS id CC4523857D0
	for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 10:26:05 -0400 (EDT)
Received: by mail-il1-f169.google.com with SMTP id g11so11406969ilq.3
        for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 07:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=OJQcH+sKiKNiYqlJqXKddprUpZY3weHCX6KxPGOyGvA=;
        b=aJH5BFDOW16INqbNSkLhdHiuoy1bfc9oyMlMU0VWh7eKrOkxyrtVSIqJ4V3X244WqQ
         163jjQQoTnh4mDmwpIZ5hOuvfB5d8OP50hqupcM5cOos87DsiSBNkT4Y2W/iH8DfZlTV
         fEjfaqqKS8yMdFtKVLN1BxS37tb85xROj8v/AlnsD+/lpX0zwWO89+dqFhcJ3B3skOxg
         ZWVX+6uGmqnCvlmSIWWoM57+mw5Fh5wGiAAy+ezlcKEO63UKdMAV0p8l3UXWUOKzxZhp
         1Uhah0xKU081FJAjk4CwKexHMiK6fPDEYrygXN0SUfgIjbg42UOFLUUGQZGitDEmolAO
         pPBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OJQcH+sKiKNiYqlJqXKddprUpZY3weHCX6KxPGOyGvA=;
        b=geA/Sew3kQeRGMQCrLiEHZ1TdRezqr8riTh0x7JQEEgXtfKSt+XeOlMUGryPmVPbZV
         USqEIerur4aeUwPtRixzZT2otxXKeVBwPZ8VGx3y6AwQE7g5Ef4dVNc1Ku2hlkW3Xbt1
         dDlV1dS5rMzcJqXr1nzztRpSA62kZXOGNIRNd5QHs4qCs4Iv/B7xVY+R+Ys5JnNNkA5N
         uHxVM7GBheSm8WDM8wACZVXT/FCtCiUzdMjCZ2iX7jeW36GOnZnhK5wbceU0AsZ5F0Cj
         SawoHiYBLIKUK7LRpNQB7vbKnYANbSqwtlQhE+3l2QfKRXlsqbZUqs+BFQUkJHj8oj34
         6GEw==
X-Gm-Message-State: AOAM532nIK5kuWU3u1fw2wQhfLxscevMtRyXmxAMP/BYV7HLQDU0/Bao
	kt2isIna1NFfWPK86v5gSk47zggdzzYL9WyoloxgbQCqKSf4SCHp
X-Google-Smtp-Source: ABdhPJyW4dnqHAtRjyzBlMQvjMLFcZmCyUJT9Ngi96zjgDu4H3EHnhesdZS+rs1zTfGHfirAWwADxQK6ckot/pViggk=
X-Received: by 2002:a05:6e02:8f2:: with SMTP id n18mr4911890ilt.299.1621520764766;
 Thu, 20 May 2021 07:26:04 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Thu, 20 May 2021 09:25:28 -0500
Message-ID: <CACaXmv8WAyR_OSYOfGzu-wWE2LJ-yTSroR1CVY5wCJXA-ajGsQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 2VOD2YZBGN2ZRZYPGEGQYXL7LCOAI3JH
X-Message-ID-Hash: 2VOD2YZBGN2ZRZYPGEGQYXL7LCOAI3JH
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Save the Date -- NEWSDR 2021 on Friday August 20
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2VOD2YZBGN2ZRZYPGEGQYXL7LCOAI3JH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5588947506130573611=="

--===============5588947506130573611==
Content-Type: multipart/alternative; boundary="0000000000002e495e05c2c3b902"

--0000000000002e495e05c2c3b902
Content-Type: text/plain; charset="UTF-8"

Save the Date!

* NEWSDR 2021 will be held on Friday August 20 *

It will be fully virtual, and free to attend.

More details coming soon, and the website has more information.

https://newsdr.org/workshops/newsdr2021/

--Neel Pandeya

--0000000000002e495e05c2c3b902
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Save the Date!</div><div class=3D"gmail_default" style=3D"font-=
family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"=
font-family:verdana,sans-serif">* NEWSDR 2021 will be held on Friday August=
 20 *</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-s=
erif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif">It will be fully virtual, and free to attend.</div><div class=3D=
"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-family:verdana,sans-serif">More details =
coming soon, and the website has more information.</div><div class=3D"gmail=
_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"=
gmail_default" style=3D"font-family:verdana,sans-serif"><a href=3D"https://=
newsdr.org/workshops/newsdr2021/">https://newsdr.org/workshops/newsdr2021/<=
/a><br clear=3D"all"></div><div class=3D"gmail_default" style=3D"font-famil=
y:verdana,sans-serif"><br></div><div><div dir=3D"ltr" class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font face=3D"verd=
ana, sans-serif">--Neel Pandeya</font><div><br></div></div></div></div></di=
v>

--0000000000002e495e05c2c3b902--

--===============5588947506130573611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5588947506130573611==--
