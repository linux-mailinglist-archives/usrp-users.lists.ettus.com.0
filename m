Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC263C929B
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jul 2021 22:55:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D858A383E9D
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jul 2021 16:55:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="ASg4kwOr";
	dkim-atps=neutral
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id D6E97383DC1
	for <usrp-users@lists.ettus.com>; Wed, 14 Jul 2021 16:54:20 -0400 (EDT)
Received: by mail-ed1-f53.google.com with SMTP id h8so5024245eds.4
        for <usrp-users@lists.ettus.com>; Wed, 14 Jul 2021 13:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=P16zaqygjSC4c2rJcE9Y95GxooDUFrFA56G8WKTHYHk=;
        b=ASg4kwOrXDFlF7UWoYLsaoHVmkJdZQn7uiaNE4cii69hHvndVX0CrE5o+EhuFqQkQ8
         jv9tJkBvta+QOQ6jRKKbDfxHlqSfkpPEtxqmWb4pUTF9Cac8Folb+TSJWElSUIkUxwFT
         vB02nWuaK2V3yQ5AL3pG/1rPrx8B/4tT2Xom+bo0uTBe28oF1CA5U5jupZWZ9yyaNqR+
         Hqg+xgORiYs8VH656aT7qz1qbiqUiXBKCkWfMcfVi4+I56t05RwSpymb5zKoaBrFBbeM
         ojr1CS5ivgbp/COwcrOERpsOU+orFwY9CFr+32eXl+dG5y7wqXoIexkjxSCzIucKb+AU
         61OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=P16zaqygjSC4c2rJcE9Y95GxooDUFrFA56G8WKTHYHk=;
        b=EvR9wqCEzV+yby/2ls1sxi+sUvT+udsuyH+LQhNn1mdeO4OnAd3nFTrR/keGd2udif
         K1fVWG4h90ICRmSVgBag/p1PSP47cATuhisXbYYZ3NgdK5pCIcy+0uBdU6JRNPUjeRQd
         BfOWWb4u3Z/YsjDubgGNvvZv0sIh92fXt/mUzCSvlIug6qvWig9JYlHcStg3BuX7SNrd
         kDD+AlHCbvO7pCdwwS5/rGVEfjV0MVENeepxj/Q5jvMfrul4YkSWAJeCIVMFsbEYRINv
         GL0IMn3MHoco0Ogj/A9GzC8bXqQjNdqZB+Zf2yAqrup73e6qHI6XT2HrBWT39puQIZdA
         f1SQ==
X-Gm-Message-State: AOAM532igvJULXmuoEQrVt8gkD7Ga15e9znMnLAzq11gy76+tWtfwkWf
	VlaC2Ebr3rqXRw2ctjLw/x/BjLFBXUI71y5q1pr00U+ZaD8NTeDP
X-Google-Smtp-Source: ABdhPJyoxOf4ckPl9WU/m4YSJlLe5CufMZjbMl17wJlDpsB3JAE4pLDw/kIXoWsnHbF/CcbpaU+kN2OIcrt9zEfG1No=
X-Received: by 2002:aa7:d5c8:: with SMTP id d8mr289196eds.165.1626296059853;
 Wed, 14 Jul 2021 13:54:19 -0700 (PDT)
MIME-Version: 1.0
From: Aaron Rossetto <aaron.rossetto@ettus.com>
Date: Wed, 14 Jul 2021 15:54:08 -0500
Message-ID: <CAAg5+Mzw=NzifEu-61GyzsX2gaCGbJ1njM=n1R93CT1wPaK97Q@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 2OD2GN5WMMDYN3MD646KRWY7YM56Q5RQ
X-Message-ID-Hash: 2OD2GN5WMMDYN3MD646KRWY7YM56Q5RQ
X-MailFrom: aaron.rossetto@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1.0.1 released!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2OD2GN5WMMDYN3MD646KRWY7YM56Q5RQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2214608801252068286=="

--===============2214608801252068286==
Content-Type: multipart/alternative; boundary="000000000000f28f9f05c71b8edc"

--000000000000f28f9f05c71b8edc
Content-Type: text/plain; charset="UTF-8"

 Hello USRP community,

Well, as Scottish poet Robbie Burns wrote in "To a Mouse"[1], "The best
laid schemes o' mice an' men/ Gang aft a-gley". Or, as we might more
colloquially say today, "Stuff happens". Unfortunately, that stuff was that
a couple of bugs slipped their way into UHD v4.1.0.0:

- The revision compatibility check for ZBX hardware (the X410
daughterboard) was broken, causing MPM to fail to start with ZBX release
revisions.
- A missing include caused compilation failures on certain compilers when
testing is enabled.
- UHD 4.1 would fail to build with using Boost 1.76.0.

These issues have been addressed in the UHD v4.1.0.1 release.

Be sure to see the changelog associated with the v4.1.0.1 tag[2] for the
full list, and consult the updates to the X410 page in the UHD manual[3]
for improved instructions on updating the filesystem and CPLD on the NI
Ettus USRP X410.

With best regards,
Aaron

[1] https://www.poetryfoundation.org/poems/43816/to-a-mouse-56d222ab36e33
[2] https://github.com/EttusResearch/uhd/releases/tag/v4.1.0.1
[3] https://files.ettus.com/manual/page_usrp_x4xx.html

--000000000000f28f9f05c71b8edc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,sa=
ns-serif">
<div class=3D"gmail_default" style=3D"font-family:arial,sans-serif">Hello U=
SRP community,<br><br>Well,
 as Scottish poet Robbie Burns wrote in &quot;To a Mouse&quot;[1], &quot;Th=
e best laid=20
schemes o&#39; mice an&#39; men/ Gang aft a-gley&quot;. Or, as we might mor=
e=20
colloquially say today, &quot;Stuff happens&quot;. Unfortunately, that stuf=
f was=20
that a couple of bugs slipped their way into UHD v4.1.0.0:<br><br>- The=20
revision compatibility check for ZBX hardware (the X410 daughterboard)=20
was broken, causing MPM to fail to start with ZBX release revisions.<br>- A=
 missing include caused compilation failures on certain compilers when test=
ing is enabled.<br>- UHD 4.1 would fail to build with using Boost 1.76.0.<b=
r><br>These issues have been addressed in the UHD v4.1.0.1 release. <br><br=
>Be
 sure to see the changelog associated with the v4.1.0.1 tag[2] for the=20
full list, and consult the updates to the X410 page in the UHD manual[3]
 for improved instructions on updating the filesystem and CPLD on the NI
 Ettus USRP X410.<br><br>With best regards,</div><div class=3D"gmail_defaul=
t" style=3D"font-family:arial,sans-serif">Aaron</div><div class=3D"gmail_de=
fault" style=3D"font-family:arial,sans-serif"><br></div><div class=3D"gmail=
_default" style=3D"font-family:arial,sans-serif">[1] <a href=3D"https://www=
.poetryfoundation.org/poems/43816/to-a-mouse-56d222ab36e33">https://www.poe=
tryfoundation.org/poems/43816/to-a-mouse-56d222ab36e33</a><br>[2] <a href=
=3D"https://github.com/EttusResearch/uhd/releases/tag/v4.1.0.1">https://git=
hub.com/EttusResearch/uhd/releases/tag/v4.1.0.1</a><br>[3] <a href=3D"https=
://files.ettus.com/manual/page_usrp_x4xx.html">https://files.ettus.com/manu=
al/page_usrp_x4xx.html</a></div>

</div></div>

--000000000000f28f9f05c71b8edc--

--===============2214608801252068286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2214608801252068286==--
