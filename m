Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 851FA3D33DD
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jul 2021 07:01:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F632384F96
	for <lists+usrp-users@lfdr.de>; Fri, 23 Jul 2021 01:01:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="smjHru+g";
	dkim-atps=neutral
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 9178A384EE3
	for <usrp-users@lists.ettus.com>; Fri, 23 Jul 2021 01:00:55 -0400 (EDT)
Received: by mail-io1-f48.google.com with SMTP id u15so1037680iol.13
        for <usrp-users@lists.ettus.com>; Thu, 22 Jul 2021 22:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=4suB9f8QGjAvqiBPJn8ykk3IiBnbAl2VdhYoAR0iOBg=;
        b=smjHru+g3aHd/gqYJKLI0d+N8UJa1q4P5ZAILKvoSfzwSLoKpf196laHjRfisUclbd
         IVP1Xg0/vLxmzl9uDyEaQv4XFM2RngF1OXQcXN8AS/7bY0iCr9qPQT50T8+c1phCDaKg
         yoWQt3i10TdzUvfWGqU1QkV8vSPk5mLZ88gSWj6obCD06uzPgSnH2ahh3414tHWwz5LR
         y4IzPBpxcmqWIWszH714voIWRHcMsbDbj78tiylo7OZ6Q5tQKtu6Z66vzQWlak5e/RDt
         bCdRd1SA7Mturup2cXeD4RF4aEYcVtTLRzDK2GgbKUpyBMEzy6iLEge+ifKNu3IR96F/
         ri9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4suB9f8QGjAvqiBPJn8ykk3IiBnbAl2VdhYoAR0iOBg=;
        b=dMRRGztSw9VrkiAvrr+lIQCuXNZrVjVg/3Jkdw7PnMjbiOnD8tujcNnktyD4JzsMHI
         PkbVaabiQOc1BAiodCBls2aTa66BA+P9nkLjfNUfMWpmASODzQhY9pEHx/tcBBua7ely
         araMY+cU5DCNQSPErFG6uClevvMvd1uekY8Fge/oqVslIhd17l2sWHGciHfSTnPt5e52
         w4OI+/AIKna8++BhV29MQx6OBZnaiR3+lIYtRKqNQuinQJkiIsbEl1vfC+Eu+fWb8WVG
         kbbhNFfk9XYu2vMW5Rutf4YztY0xDlO6QfP51/EBaUXuodU0mmfUaxxQm1rPGs9zTybK
         SaiQ==
X-Gm-Message-State: AOAM5319KObnGcwOUpb/AdyG61fKR3LQAEgKDjup8V0JyDyAdKGVO9Aw
	elojWXna4SqPiERvge/OxvZ46gR/HZRQIT/ksC1x81N0phjfWKQ9
X-Google-Smtp-Source: ABdhPJxnuLFhvSAqM59E/1S+0PbvoO0szHemJ7XCxXLWkfRiLI86Rh7oks20L4vSZNYNNr3luhMbkWkJS7Rw7l4esOY=
X-Received: by 2002:a5e:dc48:: with SMTP id s8mr2547232iop.133.1627016454615;
 Thu, 22 Jul 2021 22:00:54 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Fri, 23 Jul 2021 00:00:18 -0500
Message-ID: <CACaXmv8fN-hn-=a4FFRtuHyfgj-5jpTwD2NHNc0dKbhSJrgBNg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: UVNUHZNFGMNGXEJPGO4O7KYHNAUACU5Q
X-Message-ID-Hash: UVNUHZNFGMNGXEJPGO4O7KYHNAUACU5Q
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Announcing NEWSDR 2021 on Friday August 20
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UVNUHZNFGMNGXEJPGO4O7KYHNAUACU5Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0330744616359747805=="

--===============0330744616359747805==
Content-Type: multipart/alternative; boundary="000000000000d248e405c7c349ae"

--000000000000d248e405c7c349ae
Content-Type: text/plain; charset="UTF-8"

We would like to announce the 11th annual NEWSDR on Friday August 20.  Due
to the on-going COVID-19 pandemic, as with last year, this year will be
fully virtual.  Registration is completely free.

Please see our website for more information about the event, and to
register.

https://newsdr.org/workshops/newsdr2021/

We are always interested in having poster presentations at the event. You
can register your poster submission at our website.

If you would be interested in being an exhibitor at the event, then please
get in touch with us, there is still space available for additional virtual
vendor exhibitor booths.

We look forward to seeing you at the event!

--Neel Pandeya

--000000000000d248e405c7c349ae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">We would like to announce the 11th annual NEWSDR on Friday Augu=
st 20.=C2=A0 Due to the on-going COVID-19 pandemic, as with last year, this=
 year will be fully virtual.=C2=A0 Registration is completely free.<br><br>=
Please see our website for more information about the event, and to registe=
r.</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-seri=
f"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans=
-serif"><a href=3D"https://newsdr.org/workshops/newsdr2021/">https://newsdr=
.org/workshops/newsdr2021/</a><br><br>We are always interested in having po=
ster presentations at the event. You can register your poster submission at=
 our website.<br><br>If you would be interested in being an exhibitor at th=
e event, then please get in touch with us, there is still space available f=
or additional virtual vendor exhibitor booths.<br><br>We look forward to se=
eing you at the event!<br><br>--Neel Pandeya<br></div><div class=3D"gmail_d=
efault" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gm=
ail_default" style=3D"font-family:verdana,sans-serif"><br></div></div>

--000000000000d248e405c7c349ae--

--===============0330744616359747805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0330744616359747805==--
