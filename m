Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 525EB5324FE
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 10:12:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4B6C238412E
	for <lists+usrp-users@lfdr.de>; Tue, 24 May 2022 04:12:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653379934; bh=RSlC6JZj9iaoj8DcWeW28/VHENZVCTrAkhkhtZl7Qoc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=M8CntdtubeBzbZzZocyHVshMojD8RHBjoUNBeikt4qYaewtdvBuHZ1Z6prNQQBGlX
	 5Hy36PqBe48nuO5nxjjIXdbr/Uyhu2+oIyhIqj89I9PXaYnQb6HC21DMgkGYVJ4qnw
	 cWkpYLHHmzJhFumRVcWyL3/HqJDpFdHBNm+exuf8KWovTLGjeGdXxxlxvdHSpeGmuY
	 aHDyVSP8D1C/maqHvXH1yaachuxYoqeN6Yqicm0EQ9d8ENk/tMGHeUMLsyNsLLa7JZ
	 jH2N9/vCOUuqO8OL5Lhjeg7Y11LWH9jmAfxj/BiRiRIxB3LO3VeGoox3HnYJwdf2EJ
	 HQhp94zQBuNqg==
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 95C54384238
	for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 04:11:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HjDNXnaa";
	dkim-atps=neutral
Received: by mail-yb1-f181.google.com with SMTP id s14so2213910ybc.10
        for <usrp-users@lists.ettus.com>; Tue, 24 May 2022 01:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=qAyHy9IpMMF3agzN7wJ35cGS38oJoYcxnmvcd9t810Y=;
        b=HjDNXnaaXzIRlL35yTJDIduSYm+/UAt7wFXimr17ENBOon3anYxePfZBUjyzvSEJZr
         5l3G8+5tdyba+zTelEw9eGhtfYrNZ3PYMfVq9knJiWQw4ZBpMUuvhcAmK0SoFbRFBuyG
         eLQopA7Eaq/FXrEFVZxMmX6uW7CPRIcSkdS/JNSNotTZGS3frbmRMSDExW5SVcIfuLRH
         2/RDBq1grLNGCkkNVbciwNvP+G4YAoKsUqIwjMyf/X3SWpE2ashbqG3Lfv/XpHY1xEX0
         WyDTihSqkeBLXPQv1A3Iqc3oOoXPW6VpNQqSWw23pD1qe4ZHcpbZMYDy/O21lJNUVPPn
         FPuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qAyHy9IpMMF3agzN7wJ35cGS38oJoYcxnmvcd9t810Y=;
        b=RSE2SB/9bEZ2VAKDfg/x9lHUDAHOWLlNeFaXqArtd+WtxdjqYrrmPy1SXZJNHiEop9
         05ltu0uQdF0Zb7eG0nmvzvw4wxhzUPx/h9JO9R+Ydy94cYCOzDFmLGKNioJ308Q3cToo
         rELuI0KEm1n/6mH99sJk4KVRJMh342geIdtbP8XDdy7GBGX8p9H1k5FtKmzd1zXDrAe+
         ira43Ok/H5WsJuhj7CSFYZHTpKDmW2i580I2KW6kwU0AL9UlPjdCw2li72Rax/I1TamY
         7Xq04zm7zvipGKpQNkx41Pxxx//zBKKqM0vH4eIwI57VpFumSCf5QnNTGNqgnPF4fg82
         8WNw==
X-Gm-Message-State: AOAM532I7KUAQo5ZSVWF0XFhsrjmnbDYeqn2amtjj25euHFiFGQervCH
	W19voJM0FvMUJzVsdg8WH40nyX0ikoLPJZVQ8cud8G2KXUgSVcgRJaQ=
X-Google-Smtp-Source: ABdhPJzQ+lJdxi31N5lHTRQQdecL5ZB4pz60y1JCkOq6elf9cHITsO9UFqI6R5TAChfJSw/txmCmdegDYFUHRJ1vpho=
X-Received: by 2002:a05:6902:114c:b0:641:87a7:da90 with SMTP id
 p12-20020a056902114c00b0064187a7da90mr26357589ybu.561.1653379860886; Tue, 24
 May 2022 01:11:00 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Tue, 24 May 2022 12:40:49 +0430
Message-ID: <CAA=S3Ps1TgQZsxQN7iu8d9seJDoPz4iUNusYcKQ5PvQHhhN5qQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 6GROHRSZRAJMMJRVMSMYRF4DT55ZP4UX
X-Message-ID-Hash: 6GROHRSZRAJMMJRVMSMYRF4DT55ZP4UX
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] What's means letters and numbers 0/RFNOCSection#X:X in SEP and RFNOC connections?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6GROHRSZRAJMMJRVMSMYRF4DT55ZP4UX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1196773051382472253=="

--===============1196773051382472253==
Content-Type: multipart/alternative; boundary="00000000000049781005dfbd7fee"

--00000000000049781005dfbd7fee
Content-Type: text/plain; charset="UTF-8"

when I used uhd_usrp_probe it returns the RFNOC block list and static
connections between them. my question is what's means numbers in them? can
anyone guide me? I know that #X should be the numeric id of the RFNOC
block... I think number two is the number port?  wich port is input wich is
output?
thanks in advance

|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|   |   * 0/Replay#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0==>0/DUC#0:0
|   |   * 0/DUC#0:0==>0/Radio#0:0
|   |   * 0/Radio#0:0==>0/DDC#0:0
|   |   * 0/DDC#0:0==>0/SEP#0:0
|   |   * 0/Radio#0:1==>0/DDC#0:1
|   |   * 0/DDC#0:1==>0/SEP#1:0
|   |   * 0/SEP#2:0==>0/DUC#1:0
|   |   * 0/DUC#1:0==>0/Radio#1:0
|   |   * 0/Radio#1:0==>0/DDC#1:0
|   |   * 0/DDC#1:0==>0/SEP#2:0
|   |   * 0/Radio#1:1==>0/DDC#1:1
|   |   * 0/DDC#1:1==>0/SEP#3:0
|   |   * 0/SEP#4:0==>0/Replay#0:0
|   |   * 0/Replay#0:0==>0/SEP#4:0
|   |   * 0/SEP#5:0==>0/Replay#0:1
|   |   * 0/Replay#0:1==>0/SEP#5:0

--00000000000049781005dfbd7fee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">when I used uhd_usrp_probe it returns the RFNOC block list=
 and static connections between them. my question is what&#39;s means numbe=
rs in them? can<div>anyone guide me? I know that #X should be the numeric i=
d of the RFNOC block... I think number two is the number port?=C2=A0 wich p=
ort is input wich is output?</div><div>thanks in advance</div><div><br></di=
v><div>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on =
this device:<br>| =C2=A0 |<br>| =C2=A0 | =C2=A0 * 0/DDC#0<br>| =C2=A0 | =C2=
=A0 * 0/DDC#1<br>| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DUC#1=
<br>| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 * 0/Radio#1<br>| =C2=
=A0 | =C2=A0 * 0/Replay#0<br>| =C2=A0 =C2=A0 ______________________________=
_______________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 Static connections on this device:<br>| =C2=A0 |<br>| =C2=A0 | =C2=A0 *=
 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/R=
adio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>| =C2=A0 =
| =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:1=
=3D=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>=
| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>| =C2=A0 | =C2=A0 * 0/D=
UC#1:0=3D=3D&gt;0/Radio#1:0<br>| =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&gt;0/D=
DC#1:0<br>| =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>| =C2=A0 | =
=C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=
=3D&gt;0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Replay#0:0<br>=
| =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 | =C2=A0 * =
0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>| =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D&g=
t;0/SEP#5:0<br></div></div>

--00000000000049781005dfbd7fee--

--===============1196773051382472253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1196773051382472253==--
