Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E89A0A65F48
	for <lists+usrp-users@lfdr.de>; Mon, 17 Mar 2025 21:38:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEAB6385B37
	for <lists+usrp-users@lfdr.de>; Mon, 17 Mar 2025 16:38:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742243910; bh=sD2FlG5aRCG2FSjAVolesNMWwFh0lQeNUaMVxJo966A=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=pnvJa3z+uvBaMYU+OQcoSJTSK7Gztv/4TrIcCOhdfjbkr+OO8y2TAXtGzwP6nx5ZF
	 Fg17GN8OJD2LPdvsE5ykDVihf+BnHFmNqjv4BX9oGpS31c8HKzJ49LHoiKMKIOvEaT
	 R4KSC0GJX93X9zEP//CELYpj/BOej1/VbVRjea/8Zk3hwfanQDku5ISmTIDPWsCjyT
	 lb5u5I1hXDWjSYeX+qb6C+YGT7Bezq4K8bYvliwZW7yMAHcH1sl+66JOVDpJtQaaS8
	 yh8TaGtM2Gd2psNwQ2f/Ed3rIIdIWPNOmLfP5oZj9W5e1fPo9bgyYvbJk/0B9I3Vlq
	 PjRUqXIWtdbMw==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 1E61E385AEB
	for <usrp-users@lists.ettus.com>; Mon, 17 Mar 2025 16:37:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HpaGewfp";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ac2bfcd2a70so679693066b.0
        for <usrp-users@lists.ettus.com>; Mon, 17 Mar 2025 13:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742243871; x=1742848671; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qAyKV7//eOAXc/cMAjzj9EVM5nLlwkvQyBvX2ezCjd4=;
        b=HpaGewfp9OgkthmhJ3453uEMYCHGSxZc6IsFAtcbYbhfqczb2S0oxiOEf6CYihscbB
         DcD4cfUO0gm7DCighW2Lfmtpq0oidvEZNF2HTSs3sLS45XOssbsRFJCZemW4zDfFuJ1k
         zm0sBf9x6hfBfGClsz7OGGjHDSJO5m558FDouGpk1xIhHNgVHYkIAfLVWGxJJvEolSH2
         gmEOJZmr44gyupRQkfWhCVLaE2qvkZMru08Rg11IQl+4ZkOZekG8QF8l3qIy9As2a5OQ
         ZfujK1XKAgKFXbmGdqnA2dv7nPIajHM4ULJGUiU0+1iVzijw3oojY2dqvod0j70T09Qh
         M0JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742243871; x=1742848671;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qAyKV7//eOAXc/cMAjzj9EVM5nLlwkvQyBvX2ezCjd4=;
        b=qhDDN6OqJfRobjSBUWweCGeP5G1nBdVN36xmJrgd1Fx8SLreCg/buZ4LPwaklSgjVd
         wphaulI/tEnzZ+Mn0qqqSsi7ravowc0WYoVzeguyFK26pba4zVBRRMYmZBLxLoKlV8b9
         ADYNFTNejuwxNnr9xX1+NNfLtykaGrwDOxOWGZU4cJ2CecHCI4Dyg+xax/GgUiWa6hGd
         lQ5SHLfwcPagfZ59kDiwnEY5LRQmf6fIDUJhrj9phae2oDxcOT8IVl04+U8CVmIU4uSK
         Gje8L4bC/gv3kF/C3gYl7WVAB66yctSc8A7098JL2AHGgaMIRjERIWCVN6PSj/um+Y/z
         TI2w==
X-Gm-Message-State: AOJu0YwgAEIspTTvoF2l9OUZzg6sR7tC+y3y4CTo9U9q+con/6mQKzHa
	t3k+bZsWHsNG3EHEDCNxyqd2TTFOQyPBSJXx+Oa+zAeCBzdpqV3EPEqBEHERhqs0XxrUS/r8XLT
	1buEJ2tfk0qHQvlhAXMUVmdTtzTHuZw==
X-Gm-Gg: ASbGnctT0DWwaDgnFAsCj+q/PDwrHRsyT9f6n8a3rH7U3KqViqJc074BmLKAAY5zziT
	m9vgGKxp5skqmTqhw4mSWM9CZwyLckmMjrE8lWu92cRLuaEBNOIPmaAVTocO6NI0YG6JxdJj4jw
	mCTnngcxXwzNJcADhhMeBt3lm2CA==
X-Google-Smtp-Source: AGHT+IE74R6JX0czf2dJXr2/0GtZUBkxfjZ4QgcF5/dCQSueYP/elVOfM/Dg+zYVuCGfMZxH+tGVVAKZf54BhD1/F3w=
X-Received: by 2002:a17:907:2cc5:b0:ac1:f19a:c0a0 with SMTP id
 a640c23a62f3a-ac33026d107mr1299337966b.20.1742243871257; Mon, 17 Mar 2025
 13:37:51 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 17 Mar 2025 16:37:39 -0400
X-Gm-Features: AQ5f1JoutuMCwnMfuAiXIWymvMrEMmLQtqqJT4pnKrZ488om_C-sAu9GYL5Qb98
Message-ID: <CAEXYVK4u-jMUbq2zw-ckyFREnyFeZMXjyLP4GiG709HGMcYPbw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: XZBZNPM6Z2OVONOMZKHILRKGEBTABMNC
X-Message-ID-Hash: XZBZNPM6Z2OVONOMZKHILRKGEBTABMNC
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] New X440 with fsck issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XZBZNPM6Z2OVONOMZKHILRKGEBTABMNC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4733144338213233933=="

--===============4733144338213233933==
Content-Type: multipart/alternative; boundary="0000000000000efde506308fc300"

--0000000000000efde506308fc300
Content-Type: text/plain; charset="UTF-8"

I received an X440 and it didn't respond to being ssh'd into, so I looked
at the console. It tells me that /dev/mmcblk0p2 fails fsck.

Should I try loading an FS onto /dev/mmcblk0p3? What should I follow to try
and recover this brand new radio?

Thanks,
Brian

--0000000000000efde506308fc300
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I received an X440 and it didn&#39;t respond to being ssh&=
#39;d into, so I looked at the console. It tells me that /dev/mmcblk0p2 fai=
ls fsck.<div><br></div><div>Should I try loading an FS onto /dev/mmcblk0p3?=
 What should I follow to try and recover this brand new radio?</div><div><b=
r></div><div>Thanks,<br>Brian</div></div>

--0000000000000efde506308fc300--

--===============4733144338213233933==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4733144338213233933==--
