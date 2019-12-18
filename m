Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4AB123BBC
	for <lists+usrp-users@lfdr.de>; Wed, 18 Dec 2019 01:45:09 +0100 (CET)
Received: from [::1] (port=51810 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ihNSd-00035i-Sq; Tue, 17 Dec 2019 19:45:07 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:34116)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ihNSa-0002yS-BU
 for usrp-users@lists.ettus.com; Tue, 17 Dec 2019 19:45:04 -0500
Received: by mail-oi1-f177.google.com with SMTP id l136so212231oig.1
 for <usrp-users@lists.ettus.com>; Tue, 17 Dec 2019 16:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=69eVTFKeGnhZcTj2dXwJuPvy7tRG2goKjvSCDta36Uw=;
 b=zQWhwefQcRkz1xjPMScjEk4tsIMfDpjVXzMrkxLOfWAtZO19u+uRYJSPTtII0Y4xbu
 VOjHu4iuPuUqyPEfXB6E0cUefujl9QAAGGMMbJFeUmvfK2ZFnzqapVsNz3QKh7AeG+yV
 rLEqSCzmOVTdArcKABUHJKaqnd4M2mgk0MTAM2awywYfT8ooU7RWk/Mpenh7QHUkrOKv
 tE0Fxf+/ygfxiOBqZVP3L5nzpItg2c0Tz7q+/kEp8Gm6lWOKVy/FrmAOxpic/b+qnaTH
 JDSDoNhUpl8QdrMhJJug6iNILigqQmvuF29p1RGeaBQdbKxicRyRceGcKKzZNfUYEbKb
 Qz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=69eVTFKeGnhZcTj2dXwJuPvy7tRG2goKjvSCDta36Uw=;
 b=hOSXLXmpp9PCTG8szXWQjcQ/SWRsH0FTd38w3y1OrVNINFeVYBxYhR/tHZ6wl0subq
 8jb1pZ+/qhjn/vHZ8wrgdD8A4uhirrYrz8SyFAF4VUyfh5ptayXsNHP6k9jVIkpIQ9Zg
 Om5g3vZwncUPit8Im2iP4yeVg2M412f2l1AhMLRh+Q6J39Bwmk12snstDjkPsbI4EfGG
 HbAixw0LwryuBr/UNEIdjwqJ8ChWX8A5v6amTiV42zegjut6iBakn7enEAoo18p6TBOP
 aFjvnNE6UkLnpE0jzCQ0uoh2uuIPn2iqSsTxJ4nBsmD3TRQMaluVuULk5agPG4zTVSmK
 xJYw==
X-Gm-Message-State: APjAAAWn2qCJb+aYUOwV2BbS8MIwkWAFfM+2bdVL+HXC3FLvmhbBseYI
 gQlVeIX061Kl9jwl/52JdalCEpGx7FDOrA2BWwagLj/fT7z3jg==
X-Google-Smtp-Source: APXvYqx4HmuQoTAIYaZIBFAvAiXVfZaKOP3h5GuGN1zWLzTIE0n6kqzApgVVPw6ur+O9D5ZFrfIxckqr3313bCxsbHw=
X-Received: by 2002:a05:6808:152:: with SMTP id
 h18mr99493oie.154.1576629863475; 
 Tue, 17 Dec 2019 16:44:23 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 17 Dec 2019 16:45:10 -0800
Message-ID: <CAL263iy_WrfALCLtHJOOnAFAv-XgM29kZD6=atjCDwfYETa2=Q@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] UHD Manual Archive now online
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Content-Type: multipart/mixed; boundary="===============1453128201529858507=="
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

--===============1453128201529858507==
Content-Type: multipart/alternative; boundary="000000000000f48bed0599efbe42"

--000000000000f48bed0599efbe42
Content-Type: text/plain; charset="UTF-8"

Hi,

Just wanted to send the list a quick note that we have added an archive of
UHD manuals for all previous UHD versions, which can be found here [0].
These can be useful for reference if you're using an older version of UHD,
as the main manual [1] is built off of the master branch.

[0] - https://files.ettus.com/manual_archive/
[1] - https://files.ettus.com/manual/

Regards,
Nate Temple

--000000000000f48bed0599efbe42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi,<br><br>Just wanted to send the list a quick note th=
at we have added an archive of UHD manuals for all previous UHD versions, w=
hich can be found here [0]. These can be useful for reference if you&#39;re=
 using an older version of UHD, as the main manual [1] is built off of the =
master branch. <br><br>[0] - <a href=3D"https://files.ettus.com/manual_arch=
ive/">https://files.ettus.com/manual_archive/</a><br>[1] - <a href=3D"https=
://files.ettus.com/manual/">https://files.ettus.com/manual/</a><br><br>Rega=
rds,<br>Nate Temple</div></div>

--000000000000f48bed0599efbe42--


--===============1453128201529858507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1453128201529858507==--

