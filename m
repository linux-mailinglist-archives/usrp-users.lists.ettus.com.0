Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8395751599F
	for <lists+usrp-users@lfdr.de>; Sat, 30 Apr 2022 03:37:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 59B393847B1
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 21:37:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651282678; bh=N4sR0/6Z4ClgA7ABW6sPyMnkWY33n17vRcViMa4XbfY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=xfj+mCbx3SYZpZ5WWwaUmsTfYJuJzeX19W+RfvaLOhl02hXqV6gXqiN2G8kqN9euQ
	 iiMaBUOHRPMdXLt8w0liy5U95Rg9FoyJWF9B/FPeGebd/3JjrVnBjxP3AiqKt+UJct
	 9jCTjWJlvATDHEQUagSAw8SLENUd7hdU2OGSUIjjYAvUREYcryRoTtm0au8xOq2Suy
	 wXXAtSycCPaT2r/1JXUgduz4SopTdudE+PwCvpI9uiksehVej6mI+ExBPL+WJv9LWY
	 enyoczfCdL6sGRjqJ8YB+ikxOlkT4Lqemd6o9qN6bMUevjvGqCndYJtST/VBAxlWyy
	 Ite/PmixM44wg==
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 0415E384706
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 21:36:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="U5NuJj/6";
	dkim-atps=neutral
Received: by mail-io1-f54.google.com with SMTP id c125so11422123iof.9
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 18:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=96iaE4kV680A8+AfT8tEc4Ey8Ev6lVrVAX58666v+kQ=;
        b=U5NuJj/60sfxpzAOXG7WLc+9AQj4q5qvYYtyYWfiOLACeCnE5Swyot8X5pW3CssS85
         Urjgf4qJSp41Y/uOH3jvmuArjYjqB1fB3hVlhFkD/w7RvjJB5pfh5kQwdsH9Sa+45DTh
         p+atBvAdxLMHCkoDUCNwvvDM4Xtsp0iJrx+MkfE73fJFCfCFc7pZvrC+I1Z7JUwR00a7
         30vDvwTx3QGV1fZXaNvXTlWPUHYAWVcv5I7p+91gA/7+g7TtpLgc1Rj9wh4n9OwrmC2T
         Slk/+tM28ssYjGvpGnk8Jbla5+9cF1SEFG0RdtuiOpHtg1HnyHXrMxcwZHN8rI5EB7k5
         coHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=96iaE4kV680A8+AfT8tEc4Ey8Ev6lVrVAX58666v+kQ=;
        b=y5hJA56GIBv4jNp4m5dMQf3ueIykQRrK824A/4HWkCS3Zqt/Kl7+eUN2uGfNvWLN9g
         dkqpyFxH0d1ytueRVF9tcV3bEsNkV9zsAADxu6qv3l+eRFxPgmLJTBDK+a3Dp1sHxK5z
         3730F63Q2CbmnydWTvSH30YDr2tHfc8kr7yuPNNre2f8ttvWuUL4wNRkkuqiEIxdl6uh
         3WiIs9snMLp7BDQrzwR/sjOuhFkKG354uh4UvvtSTe7MnnqfyTbDdEukyYLopYq1KqxF
         2XPw9NQySybyiVJ5aCYrkdn3j+2njA2UaOYwfpwDkChbsIPtZbcGrAsMjOqXQ/mbjFGU
         OuhQ==
X-Gm-Message-State: AOAM532aB+gjk1wx1SeCxz761pyrM4964hmHX0YeN/q8HWg2Lik4T0W9
	8kvAtH6pt70TuebQp7kSFAzsKFDfcJ42OTMqzWEGwb9dn6Gz8edI
X-Google-Smtp-Source: ABdhPJwt0Xy9RZDYYRZaPC1sp3YpqEpe2NdilC1ri1R4mMMG1AcF6Q3exdIjD+N99TYB7EKQDvUax+3ssJ2Drzt5nK0=
X-Received: by 2002:a02:666b:0:b0:31a:104a:c484 with SMTP id
 l43-20020a02666b000000b0031a104ac484mr832799jaf.172.1651282609889; Fri, 29
 Apr 2022 18:36:49 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Fri, 29 Apr 2022 20:36:14 -0500
Message-ID: <CACaXmv-RY9_BfxBdgEwmMzH7GnwdZK1-0ebLiUBb0+710d4DKg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: GWGOIRZFZWFDYIOHDQJN5YOCY4PJYTPE
X-Message-ID-Hash: GWGOIRZFZWFDYIOHDQJN5YOCY4PJYTPE
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SI-SDR-UG Event-3 on Saturday April 30
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GWGOIRZFZWFDYIOHDQJN5YOCY4PJYTPE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3968173422320579528=="

--===============3968173422320579528==
Content-Type: multipart/alternative; boundary="00000000000062f7e805ddd53177"

--00000000000062f7e805ddd53177
Content-Type: text/plain; charset="UTF-8"

The 3rd event of the South Indian SDR User Group (SI-SDR-UG) will be held
tomorrow on Saturday April 30 at 19:00 (India time).

https://www.softwaredefinedradio.in/

The event is free and is fully virtual.

19:00 - 19:15 -- Opening Remarks, Introductions, Community Announcements

19:15 - 20:45 -- "Open Silicon Radio Design for Satellite Communication" by
Thomas Parry

20:45 - 21:30 -- "Introduction to Astrophotonics" by Yashodan Vivek

21:30 - 22:15 -- "Wyners Wiretap Model for Physical Layer Security" by
Tilak Marupila

22:15 - 23:45 -- "CaribouLite - Edge-SDR, the Low-Cost SDR for Edge
Devices" by David Michaeli

23:45 - 00:00 -- Closing Remarks

--00000000000062f7e805ddd53177
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif"></font><font face=3D"monospace">The 3rd event of the South=
 Indian SDR User Group (SI-SDR-UG) will be held tomorrow on Saturday April =
30 at 19:00 (India time).</font></div><div class=3D"gmail_default" style=3D=
""><font face=3D"monospace"><br></font></div><div class=3D"gmail_default" s=
tyle=3D""><font face=3D"monospace"><span class=3D"gmail_default" style=3D""=
></span><a href=3D"https://www.softwaredefinedradio.in/">https://www.softwa=
redefinedradio.in/</a><br></font></div><font face=3D"monospace"><br>The eve=
nt is free and is fully virtual.<br><br>19:00 - 19:15 -- Opening Remarks, I=
ntroductions, Community Announcements<br><br>19:15 - 20:45 -- &quot;Open Si=
licon Radio Design for Satellite Communication&quot; by Thomas Parry<br><br=
>20:45 - 21:30 -- &quot;Introduction to Astrophotonics&quot; by Yashodan Vi=
vek<br><br>21:30 - 22:15 -- &quot;Wyners Wiretap Model for Physical Layer S=
ecurity&quot; by Tilak Marupila<br><br>22:15 - 23:45 -- &quot;CaribouLite -=
 Edge-SDR, the Low-Cost SDR for Edge Devices&quot; by David Michaeli<br><br=
>23:45 - 00:00 -- Closing Remarks<br></font><div><font face=3D"monospace"><=
br></font></div></div>

--00000000000062f7e805ddd53177--

--===============3968173422320579528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3968173422320579528==--
