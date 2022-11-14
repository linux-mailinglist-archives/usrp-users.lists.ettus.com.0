Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30582628980
	for <lists+usrp-users@lfdr.de>; Mon, 14 Nov 2022 20:39:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F2E333838FC
	for <lists+usrp-users@lfdr.de>; Mon, 14 Nov 2022 14:38:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668454738; bh=wsRVgXt1JspLLc6qbbEX8gqTUAO+c7WXaqKCdlu6JhU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=QWlSvRZwoHMNuRcb+Iwfe6jz+HbUfB04sK3pXA34f/4vBWmA9OmccEmvP/mkXsgCE
	 FA4Kzau42B/F8FfrSEBrs9G+9cTvQrZMDFSX4KgemlN50meC4HGImOVRzXfiYLhK+c
	 xLtkShCnXmjG0yHQtW7wwqXXWpe1vfU9Sb0XJvn5BzFMiuvg4AoPpcKPesAArgk4kQ
	 DFRzza6s/1NTkocnNU9X9x9s9ImDRJd+n85V+3YROuM2ooYf5icrdj2btdnIQQp3v+
	 2zJDmB3wbS+O9QRhI0uKjxrp0nuLfdJMYXaohQNO45fi1c7Z63CDHSSAa5qDGAXnS8
	 L0OQjb5QCnf3A==
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 4830A383AD7
	for <usrp-users@lists.ettus.com>; Mon, 14 Nov 2022 14:37:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="J8EXXJZj";
	dkim-atps=neutral
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-13b6c1c89bdso13620306fac.13
        for <usrp-users@lists.ettus.com>; Mon, 14 Nov 2022 11:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CmDsBI5V7QXmZyLQipwJc5lggOQRqNT+OcQlB8DkarY=;
        b=J8EXXJZjRvBClmzBxRKF/AW4VYHaoWPEOq4uppF0Ttyj0B6NAxBSFnCQ3cyw5BEHCo
         7Mbvotc/WjBNOyg7FfmkOMPaYkuwHKtkdV2G6soh8OQSeob+ZKTvVuXAPEgnxcSdoLrK
         Jh43gXRYpp/1YjjOCE7Z4LaWd7c1QMOMIRdCQub4kJyqrQ0XAlJtkjyzDt2CaEJ1UgJL
         09nesmKkbMHPhZdlPe+c7KgcNnR+OWnkblG83RJOkpGcIgamCGN8B/apySzDfTC6x5cB
         37OtN+Ntg1sgG/+5G4tcq88UjYCaQuShQvdjB6suvcewjzaO1VpxoxrJs5FxU6sUaGNH
         N/2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CmDsBI5V7QXmZyLQipwJc5lggOQRqNT+OcQlB8DkarY=;
        b=Z9G+XwMyWPFqAZCGUand05Hk6n/Bm1evM9GB0acBxMX1ErZS2Vvh3+WYBSa8oA5c31
         fQ1ueVXL5tMwjXeDnGZ+HaGejHOvMCZ61udx9vLqPHigK+GQAnF7sA9/1s8Pf+HW0JpN
         iPrlzIJcExfxkSkh1hqWcLK82DhBi5j29Rq99EGEMRWWNGy9j7VvWUgd9C0iNSg4jPnC
         FzlE7q2pP/6LSR5oetBpazkO7vHvcG77Yl+hSRUB9cNs3464T0erSpgl/5ZSard8+tzm
         nEkMWRf4zGKW19y1xObASLFd7O9KWaKgd39KvgcZXWjeydOEocUR9zo5Bq9qeNsV/feU
         hW1w==
X-Gm-Message-State: ANoB5pmANuqNDmvfrZ8mf+F/oY3Sptn63EDUZjgjie2uQG2SFg7obJLa
	Jy7Gkt6JXi/0igCplUBb1F7Nl5ZPQukkIffwViMT7E5w
X-Google-Smtp-Source: AA0mqf627SGViOt6tNuYvs12VxH9p232Uza5CK91apuJkSfuWXx50LFpQq3KDzLUu7Qe4CLNHWamApWuaYGp67jdLDo=
X-Received: by 2002:a05:6870:bb11:b0:13b:d2ae:ee0e with SMTP id
 nw17-20020a056870bb1100b0013bd2aeee0emr7572237oab.19.1668454657077; Mon, 14
 Nov 2022 11:37:37 -0800 (PST)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 14 Nov 2022 14:37:26 -0500
Message-ID: <CAEXYVK4G26gEqZDm=Vup2O=umL+g7LnKYmseoHt4YL1mghG4xw@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: Q46H2ISFBP5DD7HYZNJKHP5L4TLSA2VY
X-Message-ID-Hash: Q46H2ISFBP5DD7HYZNJKHP5L4TLSA2VY
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410 Sample Rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q46H2ISFBP5DD7HYZNJKHP5L4TLSA2VY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5904036050113369840=="

--===============5904036050113369840==
Content-Type: multipart/alternative; boundary="00000000000028d0c105ed735fca"

--00000000000028d0c105ed735fca
Content-Type: text/plain; charset="UTF-8"

I understand Ettus will only support certain sample rates, and I am on my
own if I experience issues after changing them.  With that being said, I am
looking at the X410 sampling and from my understanding it looks like the
sample rates are fixed at 2949.12 MHz and generated externally.  I don't
know what devices generate the sample clock, but I believe it's an LMK04832
and is managed from x4xx_sample_pll.py in MPM?

I am interested in changing the ADC sample rate from 2949.12 MHz to 3686.4
MHz.  Both are integer multiples of 122.88 MHz, but I am unsure if the new
Nyquist frequency of 1843.2 MHz versus the old Nyquist frequency of 1474.56
MHz will be an issue.  I see the ZBX has the IF before the ADC set
somewhere between 860-2250 MHz?  Is that kind of being used as an upper or
lower sideband with the Nyquist frequency somewhat in the middle?

I couldn't find the schematics or a more detailed block diagram of the X410
online, so I figured I'd ask here.

Any insight here would be appreciated, especially when it comes to the
parts of software to add my new 3686.4 MHz sample rate.

Thanks,
Brian

--00000000000028d0c105ed735fca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I understand Ettus will only support certain sample rates,=
 and I am on my own if I experience issues after changing them.=C2=A0 With =
that being said, I am looking at the X410 sampling and from my understandin=
g it looks like the sample rates are fixed at 2949.12 MHz and generated ext=
ernally.=C2=A0 I don&#39;t know what devices generate the sample clock, but=
 I believe it&#39;s an LMK04832 and is managed from x4xx_sample_pll.py in M=
PM?<div><br></div><div>I am interested in changing the ADC sample rate from=
 2949.12 MHz to 3686.4 MHz.=C2=A0 Both are integer multiples of 122.88 MHz,=
 but I am unsure if the new Nyquist frequency of 1843.2 MHz versus the old =
Nyquist frequency of 1474.56 MHz will be an issue.=C2=A0 I see the ZBX has =
the IF before the ADC set somewhere between 860-2250 MHz?=C2=A0 Is that kin=
d of being used as an upper or lower sideband with the Nyquist frequency so=
mewhat in the middle?</div><div><br></div><div>I couldn&#39;t find the sche=
matics or a more detailed block diagram of the X410 online, so I figured I&=
#39;d ask here.</div><div><br></div><div>Any insight here would be apprecia=
ted, especially when it comes to the parts of software to add my new 3686.4=
 MHz sample rate.</div><div><br></div><div>Thanks,</div><div>Brian</div></d=
iv>

--00000000000028d0c105ed735fca--

--===============5904036050113369840==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5904036050113369840==--
