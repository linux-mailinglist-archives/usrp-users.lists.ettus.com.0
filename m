Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AF87DC97C
	for <lists+usrp-users@lfdr.de>; Tue, 31 Oct 2023 10:28:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 591AF38547C
	for <lists+usrp-users@lfdr.de>; Tue, 31 Oct 2023 05:28:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1698744520; bh=zJniKc5aYobh5SZAphIesqjx7X//lPxhokX8/SWkKDA=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=A0OUMT5AW+ImZ7DOABBImuBR+/zlUgYMojZoZQOymPBlLLR+26WiWQ7npgzbqSIF9
	 yUnkkg+91LXjA3Y6M8FDZ5u+4CrPK5GlA0oevtT9xQuMt6JeRlwprA/RlMU0alWzfs
	 vB+YIG4HKXD2VpgBeHp8y/ypQU/1xysfGPv1cNX1UTh5FytClIVHqw+kmP3kptmFDt
	 gWF9ECLQSy/GfQQT7wT5kUbMknj45FAyAQ6ciDY45bmQ2ZNu1tAWhgTWzHHejRYN5W
	 vnfLVZWzXmcKSl7YCstU73pmldXVyC7Nlx61RMCS+rHTcFIfEOY8OAsJmdPJzg2Dt1
	 7yoePZz2iafdg==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 73EC538541D
	for <usrp-users@lists.ettus.com>; Tue, 31 Oct 2023 05:28:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nHGvWy72";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-9d0b4dfd60dso553450166b.1
        for <usrp-users@lists.ettus.com>; Tue, 31 Oct 2023 02:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698744495; x=1699349295; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=08f21jl5SUR97Gn5ZsY5bRdeE2I7Wa8Elf04h2wDau8=;
        b=nHGvWy72k7FGxLf07lR67AnYQ55VmV6j5TlzH04oiOr6yw5cDMZUKkWJOFHzewzK20
         faAYrYNiAQnp6ycukJEyhA6tL3mfQKp0ZndvbhV197LM7Y3eYfiYM+nttIqI7y4pKVru
         67qiAULhKNUBVkWidEJcPhKKOA04LNQDesWUR+Vg2FyA1gIJSS2yVVPUiLgYLRi4JBpH
         8veclRCskuG8pPGHsw9Qqm3t2yZdAGBAwjrMoGchtXw7ww5vQ8P99vPcrSXKI/q/V53O
         lJzujLUOV1cSs/+6iSrTDrTy03gywEG+gr3hN9SXXa1W+eZig+CM/O007111YEc0ZGOg
         ywzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698744495; x=1699349295;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=08f21jl5SUR97Gn5ZsY5bRdeE2I7Wa8Elf04h2wDau8=;
        b=eaNR8Cq7YqRdbY91lIJIXLx/F+AKFszc3C8k3vtTBrCF5zUUVrSy1FAUGSPPIh+GLW
         O6m0tSgIlO3qxJGfxsdeam75DaW0sJ4YSc0U+WACiJA+5Ciq+qzjXaUA4RpapE93Z31o
         75syENAUeKk2A79D5GdsWg3GGx/W69cbDp7Uo/0ckDaKgIgNhjtDHLLrEuBfF66Cxs7W
         7dTo8mB/sOZnxZZ4aj9FNWRt/sQ+uoPTbnwF7/6y4iReRGRRdTIXX1jJwBh+MVxnMfpO
         /CGI2NmwXq93aRjlDepnT4wX3C6C4wX6QitROJIeRCkfuxGHSL7z7TXg1hIbuGzT2YgL
         o8kg==
X-Gm-Message-State: AOJu0Yxm9aihx/w/pRWxniHP7zB/TnUxAXg2GyVNUktnBMD/mzE/DQ3F
	ljxP+aSN0jzwGPjdM3PjOl0isX+iVDRG0RYRP5qX8I41
X-Google-Smtp-Source: AGHT+IFwz3T2qj8bew8fWEnGLBc/BWJAK9V96/uvmmwmEYKEMV4h+lHdIOXlGIOEweQxrHFKfT0Uw0XjNgcPg+G0HfY=
X-Received: by 2002:a17:906:7146:b0:9d3:afe1:b3e5 with SMTP id
 z6-20020a170906714600b009d3afe1b3e5mr3907359ejj.75.1698744494933; Tue, 31 Oct
 2023 02:28:14 -0700 (PDT)
MIME-Version: 1.0
From: cyberphox <cyberphox@gmail.com>
Date: Tue, 31 Oct 2023 09:28:04 +0000
Message-ID: <CAOkUcSvJhKr-==9CN_P4yNibExh1rgHxifHM697-4Utewb0Hqg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: CHEXKNFMBIVUYOOHHNGY4MZP6RKQXR37
X-Message-ID-Hash: CHEXKNFMBIVUYOOHHNGY4MZP6RKQXR37
X-MailFrom: cyberphox@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] FPGA bit file binary differences with GIT commit (X300)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CHEXKNFMBIVUYOOHHNGY4MZP6RKQXR37/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9111715595524784810=="

--===============9111715595524784810==
Content-Type: multipart/alternative; boundary="0000000000002f4d220608ffc69b"

--0000000000002f4d220608ffc69b
Content-Type: text/plain; charset="UTF-8"

Hi all,

We have built our own RFNOC block and are trying to do a clean build and
compare the generated bit file against the original files from the FPGA
developer.

I would like to know if the bitfile generated has some dependency with the
GIT commit in some way.

Basically if I take the file changes from my colleague and build the FPGA
starting from the same reference branch, create my own working branch off
this and copy them in, build the FPGA I get the same bitfile binary with
only the date/time stamp difference.  Once I commit the changes and then
build it once again, the bitfile has a lot of differences.

Thanks for taking time to read this.

All the best
marino

--0000000000002f4d220608ffc69b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>We have built our own RFNOC blo=
ck and are trying to do a clean build and compare the generated bit file ag=
ainst the original files from the FPGA developer.=C2=A0=C2=A0</div><div><br=
></div><div>I would like to know if the bitfile generated has some dependen=
cy with the GIT commit in some way.</div><div><br></div><div>Basically if I=
 take the file changes from my colleague=C2=A0and build the FPGA starting f=
rom the same reference branch, create my own working branch off this and co=
py them in, build the FPGA I get the same bitfile binary with only the date=
/time stamp difference.=C2=A0 Once I commit the changes and then build it o=
nce again, the bitfile has a lot of differences.</div><div><br></div><div>T=
hanks for taking time to read this.</div><div><br></div><div>All the=C2=A0b=
est</div><div>marino</div></div>

--0000000000002f4d220608ffc69b--

--===============9111715595524784810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9111715595524784810==--
