Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCA4244F0C
	for <lists+usrp-users@lfdr.de>; Fri, 14 Aug 2020 22:07:22 +0200 (CEST)
Received: from [::1] (port=56196 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k6fyx-0005Lt-4W; Fri, 14 Aug 2020 16:07:19 -0400
Received: from mail-yb1-f177.google.com ([209.85.219.177]:40334)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cherif.chibane@gmail.com>)
 id 1k6fyt-0005FU-GU
 for USRP-users@lists.ettus.com; Fri, 14 Aug 2020 16:07:15 -0400
Received: by mail-yb1-f177.google.com with SMTP id q3so5817439ybp.7
 for <USRP-users@lists.ettus.com>; Fri, 14 Aug 2020 13:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Kllrk5WfOP6FGP832pL804MWi6inWr0wXAnhXrnBonI=;
 b=qr/deJfa/XAy/wBIH9wyencH0UwHyqgyunRYOB8ffdkOiGklwdPkmHJg/qXY35TtAm
 jjSeArNw3slH8j5fmMNVTDy16kmDQjqFu1Zfs9pTtQSetLavo9BqFfTqanN4XBVU1P5L
 RDyyxgNn8ZZUURzWaYT/QAwNTsPez3RBr25UJVNuxsvl29qxcT8lkMIV04IhyoAx99V9
 EhVwSbhZJ9vmHEAj3sb/zJqK7o5L8t1/RfeQMyfshFrIAe9+GGDrtoJ4F8GedbIP0iQ1
 sC3tydX9LhjZgSExVW2LHK1ox35knKUPIcQ/lJYAS3ahiU/t/PNebCZi1MMOu8ORNyuz
 rhwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Kllrk5WfOP6FGP832pL804MWi6inWr0wXAnhXrnBonI=;
 b=EjQtWq0Y2NsT7VFwsSb4DsOQy2ecyFeI/Nuaa+7Ml2gBBZTimG/Xq6LDFVUsiAwjtU
 erj97ck/Gr2o2T2bIB6lfbF/X1BjrhUisTxCqDFravlwIiJmV4gKkth+5xIGGXbE7vjc
 QwfFc+jYI4+B9xBCCylLg1wVqnxOe8qi79mvv0mcbUkFrpJK4421ick9XvcdnmCQKIit
 8AwBZdnkdOAUw+9wAJzCAyE9P3ia/shh0BCacMJS9Yxa+GLdY+PgL04MEBgUJtgxM6sd
 /Fi6SWMlZqE0XhvoeWe47trbLc5CgSXODIGQ2ORUuHS2UwdQg9BwAWO+6vBdLi+k+k/Y
 cKhA==
X-Gm-Message-State: AOAM532o0lKgbqSwa0JIKh0tj07QJiyC64j2Nqh6PsxXglacJEm998VB
 Z/JomwgAHvcaL6B2ADCa8SGZqu41cksyhpLqHWKvJZIM2iUZXA==
X-Google-Smtp-Source: ABdhPJzcwmZ0FINea6cfs7TFW4NawQJBZu9z7b493HuByxxq6hIqEXGlZCySy49DOA2t+ynVcom+OtaYB7M7VGRr48E=
X-Received: by 2002:a25:c743:: with SMTP id w64mr5756840ybe.127.1597435594598; 
 Fri, 14 Aug 2020 13:06:34 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 14 Aug 2020 16:06:23 -0400
Message-ID: <CAN6+RzmEiJ0ouDEW+bBw55KZRrF2n21O6YdbXJzEYHOP8aU4HA@mail.gmail.com>
To: usrp-users <USRP-users@lists.ettus.com>
Subject: [USRP-users] usrp_x310_fpga_RFNOC_HG.bit
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: cherif chibane via USRP-users <usrp-users@lists.ettus.com>
Reply-To: cherif chibane <cherif.chibane@gmail.com>
Content-Type: multipart/mixed; boundary="===============9209894113081475481=="
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

--===============9209894113081475481==
Content-Type: multipart/alternative; boundary="0000000000002aec5405acdbf5aa"

--0000000000002aec5405acdbf5aa
Content-Type: text/plain; charset="UTF-8"

Hello,

I would like to use teh X300 bit file:   usrp_x310_fpga_RFNOC_XG.bit.
Does it exist somewhere or do I need to re-create it? I used
uhd_images_downloader
to download the bitfiles but it did not come with the files downloaded.

Thanks,

Cherif



Does it exist somewhere or do I need to re-create it. I used
uhd_images_downloader
but it did not come with the files downloaded.


Thanks,

Cherif


____________
Cherif Chibane

--0000000000002aec5405acdbf5aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello,</div><div><b=
r></div><div>I would like to use teh X300 bit file:<code>=C2=A0=C2=A0 usrp_=
x310_fpga_RFNOC_XG.bit.</code></div><div><code>Does it exist somewhere or d=
o I need to re-create it? I used=C2=A0=C2=A0</code>uhd_images_downloader to=
 download=C2=A0the bitfiles but it did not come with the files downloaded.<=
/div><div><pre style=3D"white-space:pre-wrap">Thanks,<br></pre><pre style=
=3D"white-space:pre-wrap">Cherif<br></pre></div><div><br></div><div><code><=
br></code></div><div><code>Does it exist somewhere or do I need to re-creat=
e it. I used=C2=A0=C2=A0</code>uhd_images_downloader but it did not come wi=
th the files downloaded.<br><code></code><pre style=3D"white-space:pre-wrap=
"><br></pre><pre style=3D"white-space:pre-wrap">Thanks,<br></pre><pre style=
=3D"white-space:pre-wrap">Cherif<br></pre></div><div><br></div><div><div di=
r=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div>____________</div=
>Cherif Chibane</div></div></div></div></div></div>

--0000000000002aec5405acdbf5aa--


--===============9209894113081475481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9209894113081475481==--

