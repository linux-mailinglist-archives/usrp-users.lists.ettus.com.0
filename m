Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0352C5A439C
	for <lists+usrp-users@lfdr.de>; Mon, 29 Aug 2022 09:14:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6FDEE385AEA
	for <lists+usrp-users@lfdr.de>; Mon, 29 Aug 2022 03:14:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1661757291; bh=44Ul/IQHekxKjb0BYeRm5R78mDIM+9o0RLBM4XRpdHY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=RTsLMKu11kQ4flOP0YRwxyt8ajkdMIu+v9kbvqVbBj1bYknWQeGzo8uGSJ35/0tif
	 LoQZgqzIJaYdRa9UrPEHU27GesoUZBAZUeCBJzBHuNTORiEcwLbYetyP2ntSkLbY1k
	 GxvAVmGbltu+iG2sh8aQk6CdDxZn6t1Ln3xbYSuxfLxxtDq6U6sjGytIA11tqy0oEj
	 r7MuS2JzeQYYXwx7kuW2kURrYgwQX0rD3bF/gaeV/H8SXSVFcz9mlWIl1wIVaL3ckk
	 L/hav0pJYW+3AEgQ3mJhb7by0+r3ODzA3BikO0DheI2bXn4A8EI3QRBzZDngqKgEgo
	 3PXAleMSEN9ww==
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 01FBB384284
	for <usrp-users@lists.ettus.com>; Mon, 29 Aug 2022 03:12:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mRXFl7Di";
	dkim-atps=neutral
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-33dba2693d0so173104057b3.12
        for <usrp-users@lists.ettus.com>; Mon, 29 Aug 2022 00:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=Hp7nzjwxZed78BzHvHs0BmjNz7DjQy0aj+aDTZxpO20=;
        b=mRXFl7Di89esNQ1Pl7Xu1MUT4NqWImvb/nelLmIDek0EQ4SiSm+C+IvcIYLlNK1tmA
         z29tZSm+Upj7Z7GPh/GVTwEJGiPr7cIMxHguv2LkGXuiObuS9OWhUWWT8ilqu4T6WEAd
         mDAkrnZgm/aabbd/3jH+gzx/e8VS7bTb2DWdROIM0Jq2zeUr4utOxDd5dq67S60WIRCy
         ZHuBWBVeKbR6Wqiitaw2A91epbfpyi8yc7vvyywwdLUZyrKJNv9PfGl7qiOsfJD8Y1Mn
         LKPexKiL796Sd1G6Wae7bQje3nm16D9CZQ8ndcrQILx95ha2SX0i4DM4fL0GbxteW3k2
         upuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=Hp7nzjwxZed78BzHvHs0BmjNz7DjQy0aj+aDTZxpO20=;
        b=AyRf54gASCfC/PRbSMTC+UQLVhvOB3cuOwfBZG5AhhQ726O1LIwAVDYP6wyWXAViJh
         Qk3YHNg98U8HxE+i4PsJOSGBMkAkRVWwneo6ZK1LveC2r5At9KJLBqEgYH1jDGOs/TiN
         IcOHBre0HY1h1Rt2CHTV5Lwr3Yfeo8euHplqZyaQFE4CrlMBJrxzwcImW53f8QbxwV1A
         NsRFUBkSSdy3QQj4VJCwhUkNG4IXN5a72cbBOxUet9frlba1bAKxye5rFcm2XTlKtVJh
         ExUdGlKd9zVriY95Qhl5Mp1CXFiBT4qG2N1KcnpE69XjSi35dDcDZh+flVV1T41ni0Bm
         M/Qg==
X-Gm-Message-State: ACgBeo1JhpeHyXtYllWgBb27EGF27ugR1R//OBPSq+JGSvG2EwCdCgoT
	ijxQplovZhpViaURVNmpqDpnKZ5FPJbnJZ2bdXroSEuns1t6H8F1QXI=
X-Google-Smtp-Source: AA6agR72PHpfvLM4jY73UwNDZXQIJRbRmLyGY+8c+aKCIJ6iANEPK7ao39eUHJYK3V75Kwu+Ilr78kN0rr9D9rl1zXQ=
X-Received: by 2002:a0d:e3c7:0:b0:335:8707:4390 with SMTP id
 m190-20020a0de3c7000000b0033587074390mr8674307ywe.262.1661757169640; Mon, 29
 Aug 2022 00:12:49 -0700 (PDT)
MIME-Version: 1.0
From: sp <stackprogramer@gmail.com>
Date: Mon, 29 Aug 2022 11:42:38 +0430
Message-ID: <CAA=S3PupWnTfTXCfZ5ENm5ixSQbgqh+SgRpA4-7hsrXLvA5thQ@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: C5FLXL7CTHJWGEPLDA6HIOSMNXDAVHFY
X-Message-ID-Hash: C5FLXL7CTHJWGEPLDA6HIOSMNXDAVHFY
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x2cd7049b, 0xffff
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C5FLXL7CTHJWGEPLDA6HIOSMNXDAVHFY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1429781940677365272=="

--===============1429781940677365272==
Content-Type: multipart/alternative; boundary="000000000000cca7b505e75bfddd"

--000000000000cca7b505e75bfddd
Content-Type: text/plain; charset="UTF-8"

When I built FPGA for RFNOC block I faced with strange error...I check the
FPGA source and RFNOC CPP source every id is ok but my code doesn't work
correctly...
????
Can any help me?
uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
UHD_4.2.0.0-0-unknown
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 1472 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[WARNING] [UDP] The recv buffer could not be resized sufficiently.
Target sock buff size: 2453333 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.rmem_max=2453333
[WARNING] [UDP] The send buffer could not be resized sufficiently.
Target sock buff size: 2453333 bytes.
Actual sock buff size: 212992 bytes.
See the transport application notes on buffer resizing.
Please run: sudo sysctl -w net.core.wmem_max=2453333
[WARNING] [UDP] The current recv_buff_size of 212992 is less than the
minimum recommended size of 816000 and may result in dropped packets on
some NICs
[WARNING] [UDP] The current send_buff_size of 212992 is less than the
minimum recommended size of 307200 and may result in dropped packets on
some NICs
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
0x2cd7049b, 0xffff
[INFO] [0/Block#0] Setting default MTU forward policy.
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
0xf0c66ff1, 0xffff
[INFO] [0/Block#1] Setting default MTU forward policy.

--000000000000cca7b505e75bfddd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When I built FPGA for RFNOC block I faced with strange err=
or...I check=C2=A0the FPGA source and RFNOC CPP source every id is ok but m=
y code doesn&#39;t work correctly...<div>????</div><div>Can any help me?<di=
v>uhd_usrp_probe<br>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100=
; UHD_4.2.0.0-0-unknown<br>[INFO] [X300] X300 initialization sequence...<br=
>[INFO] [X300] Maximum frame size: 1472 bytes.<br>[INFO] [X300] Radio 1x cl=
ock: 200 MHz<br>[WARNING] [UDP] The recv buffer could not be resized suffic=
iently.<br>Target sock buff size: 2453333 bytes.<br>Actual sock buff size: =
212992 bytes.<br>See the transport application notes on buffer resizing.<br=
>Please run: sudo sysctl -w net.core.rmem_max=3D2453333<br>[WARNING] [UDP] =
The send buffer could not be resized sufficiently.<br>Target sock buff size=
: 2453333 bytes.<br>Actual sock buff size: 212992 bytes.<br>See the transpo=
rt application notes on buffer resizing.<br>Please run: sudo sysctl -w net.=
core.wmem_max=3D2453333<br>[WARNING] [UDP] The current recv_buff_size of 21=
2992 is less than the minimum recommended size of 816000 and may result in =
dropped packets on some NICs<br>[WARNING] [UDP] The current send_buff_size =
of 212992 is less than the minimum recommended size of 307200 and may resul=
t in dropped packets on some NICs<br>[WARNING] [RFNOC::BLOCK_FACTORY] Could=
 not find block with Noc-ID 0x2cd7049b, 0xffff<br>[INFO] [0/Block#0] Settin=
g default MTU forward policy.<br>[WARNING] [RFNOC::BLOCK_FACTORY] Could not=
 find block with Noc-ID 0xf0c66ff1, 0xffff<br>[INFO] [0/Block#1] Setting de=
fault MTU forward policy.<br></div></div></div>

--000000000000cca7b505e75bfddd--

--===============1429781940677365272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1429781940677365272==--
