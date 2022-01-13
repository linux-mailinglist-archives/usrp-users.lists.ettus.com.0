Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADE348DC8A
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 18:04:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C6F71384E40
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 12:04:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="XKbpUeNP";
	dkim-atps=neutral
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 802BA384A0F
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 12:03:10 -0500 (EST)
Received: by mail-ed1-f41.google.com with SMTP id o6so25521420edc.4
        for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 09:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=j0wWaKvgiaOuWEHBoc2EOqW8iDaeP+G3U9iH8mObF30=;
        b=XKbpUeNPTbqEj16OQewPQAqH0xzWh+1LeYcq4RWtwh0i6rrKLib0PNJp110t9zl3jh
         yUXwoPknNFHggSrkZX7MDwwju5pMhuscpZKQGQtbG/dDcW4o+Bn3mteitw5Q1hxCk9ll
         SqiuIW5YjkIvUYWLDstzKgUOWWJrFJO2OPT3mfIgq9TTyc2Aauaihfit+qeDp8aMHAcG
         4lfzvBYVf/mrCdK77BxIrrCUZ7xwyZlnJYNRdzKAa7FYPmOkkyJNfD0t+sKJz6DCHl4g
         1shrk/b3n00/JUPKR/gWvd8ahRhaB7UpWj8wCStkyebJOjG7Hln6fb7uLysIgc8SUhTx
         7u3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=j0wWaKvgiaOuWEHBoc2EOqW8iDaeP+G3U9iH8mObF30=;
        b=2XeCGReB/yMllunRLGQkNzX5Id+ZV5b2GaTvWw29Sp8hquYV4Dn9dFHlOlWL9B3dNw
         QJonQpYBAacQYqlgvQrnPJAit1FB19nFhW4e8kI7uYUTZIo6kDp2qXqndOH5ojQcjcMg
         C3v4TCkXN5ILc/+orPd7wOKWG5w5qsTeeMdFksV2rSZlKUnRsDba+v4RQR6xzGmhcHkM
         0pgjaN67l0Lp3tJGI+b4suGVIZ16TN9z3bIsjYWXer0iihT8AbCgchR8+PUyPmGieUTB
         unfauzUAz1A+tg95VhIqgZBdyVhwMHJmzmuNOynA1uSWxmwtSrkxjU9tgR5qZ60S+Zp+
         FsRw==
X-Gm-Message-State: AOAM5319DzNffMW4Ywzuoz8TX+dhi82dIZsAmfOdF3n1aavtAgbwKzBo
	/pV2UdTSffgjrYLJT0KPNww7nsDbahgQsptQx/Xmrs1uLeS5mQIw
X-Google-Smtp-Source: ABdhPJxp7tGFnjSMNLL+SoQicGm/0B+TKos14Tg06NOVFxU8X/lIYFp04EDwR2MNy4sm9HnSbSUwjUo3kWtGJd/6+sQ=
X-Received: by 2002:a05:6402:11ca:: with SMTP id j10mr5167196edw.169.1642093389402;
 Thu, 13 Jan 2022 09:03:09 -0800 (PST)
MIME-Version: 1.0
From: Aaron Rossetto <aaron.rossetto@ettus.com>
Date: Thu, 13 Jan 2022 11:02:58 -0600
Message-ID: <CAAg5+MzFFt-xWUNPYuPrddF_fFbgpXO_=mkp3KXaP2PtMJVPXw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: NK6SJ4TWJLHGAYWXWLXW7BQ73K33SHX2
X-Message-ID-Hash: NK6SJ4TWJLHGAYWXWLXW7BQ73K33SHX2
X-MailFrom: aaron.rossetto@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1.0.5 released - clarification
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NK6SJ4TWJLHGAYWXWLXW7BQ73K33SHX2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1229791864330227925=="

--===============1229791864330227925==
Content-Type: multipart/alternative; boundary="00000000000029ecf305d579a9dc"

--00000000000029ecf305d579a9dc
Content-Type: text/plain; charset="UTF-8"

Hello USRP community,

A few weeks ago, I announced that UHD 4.1.0.5 had been released. I wish to
issue a minor clarification to some of the text in the release announcement
message.

I said, 'UHD 4.1.0.5 adds support for the NI Ettus USRP X410 Rev G, which
uses a different CPLD on the motherboard than previous revisions.' That
should have read '...adds support for the NI Ettus USRP X410 **module
revision E with motherboard Rev G**...'. Despite the minor clarification,
we continue to strongly recommend that **all** USRP X410 users regardless
of module revision upgrade their devices with the filesystem that ships
with 4.1.0.5, the instructions for which can be found under 'Updating
Filesystems' in the USRP X4xx section of the UHD manual at
https://files.ettus.com/manual/page_usrp_x4xx.html.

Thank you, and happy New Year!

Best regards,
Aaron

--00000000000029ecf305d579a9dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,sa=
ns-serif">Hello USRP community,<br></div><div class=3D"gmail_default" style=
=3D"font-family:arial,sans-serif"><div class=3D"gmail_default" style=3D"fon=
t-family:arial,sans-serif"><br></div><div class=3D"gmail_default" style=3D"=
font-family:arial,sans-serif">A
 few weeks ago, I announced that UHD 4.1.0.5 had been released. I wish=20
to issue a minor clarification to some of the text in the release=20
announcement message.</div><div class=3D"gmail_default" style=3D"font-famil=
y:arial,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:arial,sans-serif">I
 said, &#39;UHD 4.1.0.5 adds support for the NI Ettus USRP X410 Rev G, whic=
h
 uses a=20
different CPLD on the motherboard than previous revisions.&#39; That should=
=20
have read &#39;...adds support for the NI Ettus USRP X410 **module revision=
 E
 with motherboard Rev G**...&#39;. Despite the minor clarification, we=20
continue to strongly recommend that=20
**all** USRP X410 users regardless of module revision upgrade their=20
devices with the filesystem that=20
ships with 4.1.0.5, the instructions for which can be found under=20
&#39;Updating=20
Filesystems&#39; in the USRP X4xx section of the UHD manual at <a href=3D"h=
ttps://files.ettus.com/manual/page_usrp_x4xx.html" target=3D"_blank">https:=
//files.ettus.com/manual/page_usrp_x4xx.html</a>.</div><div class=3D"gmail_=
default" style=3D"font-family:arial,sans-serif"><br></div><div class=3D"gma=
il_default" style=3D"font-family:arial,sans-serif">Thank you, and happy New=
 Year!</div><div class=3D"gmail_default" style=3D"font-family:arial,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,sans=
-serif">Best regards,</div><div class=3D"gmail_default" style=3D"font-famil=
y:arial,sans-serif">Aaron</div>

</div></div>

--00000000000029ecf305d579a9dc--

--===============1229791864330227925==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1229791864330227925==--
