Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F00AAD0FE
	for <lists+usrp-users@lfdr.de>; Wed,  7 May 2025 00:30:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1B011385F9F
	for <lists+usrp-users@lfdr.de>; Tue,  6 May 2025 18:30:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1746570651; bh=3QvnksPaUJdfGPPWDtS0OX37QAW7I+QEAT6b7z+Mcpc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=jODfqmpD7ZpldnALZNKvRQvrn7/HD2qwtXmR1Oa6avLaywIkFsRrfrkDcN5hd3+Ov
	 y7OOVHoYFsCIwLxL3cTifvnNIl/c84fg/3yTC3p7N0Vnu6f0KXSBMm+kV/V8KmVnrR
	 dvNrcprkxwPBzWRAmzWX8gU4JDGdVlnLszZPBrBIuJ9H60srj8V0mZcnt1/PcUZLmZ
	 1eR0oDoZ15otwVWqD/jF7//b2extdx5Dc4QaF2HKs8bixNU8A3Ydec7gK3g5Y1JqYJ
	 Jlh6MFJwuj5ukj2p0lm5UVCur+krtSVz53KxlvRYAroWjuogl/n/EHSC86svQUScXn
	 aR4ApnbMNWSQw==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id B67D8385F7A
	for <usrp-users@lists.ettus.com>; Tue,  6 May 2025 18:30:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UznlwqVU";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ac2ab99e16eso419775566b.0
        for <usrp-users@lists.ettus.com>; Tue, 06 May 2025 15:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746570641; x=1747175441; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7dRi3gy5h6gv0X76K5Ba4Ywxw+J65I+ATd9aNXJTbwk=;
        b=UznlwqVUFig/+0DCWhI3kBmwaCz/D0/XQxGAj5Xjm9sIeaukMDBjb9V5otRdJ2Zjqe
         8/h/ova7P+Bf1CIrD/Y7uXsxIjTLsOsYmMbdHBcxzo1BHbKGjZZiKi7Xb2RXCKt6zmWv
         bml9U++xlOJ4MRA033SVtFZRHovT0XrORpWRbuVdD4pTvWToBuvBbIcH/bo66l4ob1Y4
         uVLm5CrUzQgHgy+X9MmeKw/+xRZ7YdJmpgdG8tVzRUcqnh46q2jVfX+YTogITh7yN8sP
         HWl9C6A46+QKT/ptnGKTHuOugPrvsp8bhrxh0KVVSPsDtOmaKWVFSSjy3tAiENh9CPMO
         oEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746570641; x=1747175441;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7dRi3gy5h6gv0X76K5Ba4Ywxw+J65I+ATd9aNXJTbwk=;
        b=nuuFvWJuZQAp7jzk7UTj115QHjZnmj51A4t6Q+39NqVDfT57ofB45R9YbCTTZKJqR+
         pncUlS1IGADaZ1+xDE63mi2wfBBgZQUei8SDZDMIbNCGrHTU+hztiVUm+DUNcA5M7zKW
         aMRoje4Wcs0o5XnoWK00QduuBHaXV90X66GC8Uk8r9wGM9AuT1z0KOVLrY8I8dtItfE3
         agJTIrF5/MJK2uT0I3ohKZT9PjnVf7b0PBNEWm4mOv43PfzkES0Z9xfI+I6/3KWdqiTw
         Vz9+SbMPVDb9VHbXeOPaDTYb3Y5+m3EH5o9rhlniZ7Mw/EApoXdlZhrIT3VC8sUqGKoo
         CDBQ==
X-Gm-Message-State: AOJu0Yz/jCc55cwb0zF0LzaHD4B+DWw1EFDwrl0SweougCxTwEdzzo4O
	9rYRRw3e89AvU5yur4IGufSPK31u6bGilQVAg7sj8kNewIl0ALyP+Q25w/Dr1kk0WAI8wQZSjM+
	Y9FjSlouIsynHbU8ubWFcc1kDEAe4+Q==
X-Gm-Gg: ASbGncumkQreJwRUMpHgm805iYfz7PSai+5m+et+TyDcdlpwpI6gSIET7WHvujwbtDd
	XaI0qSYaH5uU4cuu1k1BZu3nvClO74sFWM38dlIMQBqVAW34dVKA6iJnyzzA99vFrE2jET9Irz8
	EHAdKmf7XlchHgpH4DwEnfpw==
X-Google-Smtp-Source: AGHT+IF6Rlt9REm/8DCGppG2S1BGISDtnSjinisq2FJT4WzEn2efhGI/JWKVzjpMcCb0SFImML2mkViYudt/GCXQ5c0=
X-Received: by 2002:a17:907:3e21:b0:ac7:f00d:52ec with SMTP id
 a640c23a62f3a-ad1e8d0db1bmr83102166b.58.1746570641117; Tue, 06 May 2025
 15:30:41 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 6 May 2025 18:30:30 -0400
X-Gm-Features: ATxdqUHOkaDYXbQL3m_LL1KcFT73ETA9jnbOFE7fdZDUfmcmtzD7OZV2bpziDsA
Message-ID: <CAEXYVK5i==BLmanuhjBCFd5tmTwSbK8sZ0se2p0xHbNkBoC3xQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: IZ7JOEYCVE2ZDR6IUDHJCPCHHOVLLWOA
X-Message-ID-Hash: IZ7JOEYCVE2ZDR6IUDHJCPCHHOVLLWOA
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 bus_clk
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IZ7JOEYCVE2ZDR6IUDHJCPCHHOVLLWOA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8322588031422073801=="

--===============8322588031422073801==
Content-Type: multipart/alternative; boundary="000000000000a397e906347f2a77"

--000000000000a397e906347f2a77
Content-Type: text/plain; charset="UTF-8"

I'm looking to save some RFNoC resources by slimming down the CHDR
interface to be 128-bits for my block and, possibly, universally.

I see the CHDR_W as well as the BLOCK_CHDR_W parameters, but I also see the
bus_clk is set to 200 MHz.

The current 200 MHz CHDR clock @ 128-bit wide interface is slightly too
slow for my sample rates, but 266 MHz (CE clk) could potentially work.

Is there anything I should be wary of if I want to change the bus_clk to be
the CE CLK instead of the 200 MHz clock using a 128-bit CHDR interface?

Thanks,
Brian

--000000000000a397e906347f2a77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m looking to save some RFNoC resources by slimming d=
own the CHDR interface to be 128-bits for my block and, possibly, universal=
ly.<div><br></div><div>I see the CHDR_W as well as the BLOCK_CHDR_W paramet=
ers, but I also see the bus_clk is set to 200 MHz.</div><div><br></div><div=
>The current 200 MHz CHDR clock=C2=A0@ 128-bit wide interface is slightly t=
oo slow for my sample rates, but 266 MHz (CE clk) could potentially work.</=
div><div><br></div><div>Is there anything I should be wary of if I want to =
change the bus_clk to be the CE CLK instead of the 200 MHz clock using a 12=
8-bit CHDR interface?</div><div><br></div><div>Thanks,</div><div>Brian</div=
></div>

--000000000000a397e906347f2a77--

--===============8322588031422073801==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8322588031422073801==--
