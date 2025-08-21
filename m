Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEFCB2F6ED
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 13:42:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6F2C386513
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 07:42:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755776537; bh=V380dtUoLj+AvN7zvZkPOr7oHHfLBmnijWSbSmnAUtg=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ddneR+obe6xacwmEWq93fXNfRUxh9ByFM6HQRvMvXGqoN9iJA51G5b8C+zz+Xo2xy
	 icQRkMKfjYDGhtM6T/KQXZAu8GQJADGhkgd8QnKaCtNoMIOcYAoVjj2jXrvdqM0Rsn
	 LQX0Sj13SqeiLDrhl8adMjhlJQwUlLFFOtsdlNksqWbOjlV5bOhLQ3SXeSJVjurwdi
	 Im0r9Sh/klrksj5NRTbLP+mL3L87vd8wPOV/4s+1409fkKC9dzvsLRjYfXLhBkm7DY
	 la7uAEe8H3tf0TFksFrcHObHZTCd73Es2RaIlFhboAKPkqVLIbfQtLeqxaZVEIrGiY
	 JcC/u9AaY1/yQ==
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 651903864A6
	for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 07:41:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HU5L6iaZ";
	dkim-atps=neutral
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-333f8d1cbcdso7432081fa.0
        for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 04:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755776498; x=1756381298; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pZ3dw8sj7AQzrb0o2OimUqi+ePrHaifLpA/jZrnDeDA=;
        b=HU5L6iaZMelTTV7H5wl8Jo5K5nADlaDyb3aXjR1w5XV8wDIAoMRHSMOK7+dxiqaRWp
         LzsdEdf+SHSy60Z+CBlew6U1DI+SQKhT9ry6911UoAYs/JMK9Qyt5Y8Q0njcDzGhSSmi
         9R19bWyB0HLoCBFrcSJLiYDMIOhln9D6f1bE74kvJTNrlgVr9lcSsHKnGYl9j9tXvB3l
         92gg0KQTUhTA/Opn3U+cs3jU86uT0HcSOYjDLhgUsuK29rVOSHKrQWJsePx92gkLucN2
         dFhRKl1o3DiPyEx9q/d+nxOA/sdMuJ0PgNgTsdeZt/GrD3BC7vYlGt6dt60YCmOxAtKL
         fj/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755776498; x=1756381298;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pZ3dw8sj7AQzrb0o2OimUqi+ePrHaifLpA/jZrnDeDA=;
        b=tuXYSjwYf6m+QGoXGq29JEaxdgDYIhOI9/6XfrB5NGPxhO/epC/rKW7lWiNIbP/q+x
         S026uHVM2KqunxilDhYzZCOR+9zezfQv0YthmqRV85RKEZUKWae/PMta05GzXjQdKy/m
         e3/3LXb2UWr2BdZlK+g+SUM+VeICSWvf+owLdEJ3xUTtjlVIkAA1Emfapfcb+R5lzQnb
         kCWjYSOx/jJkRsR5CGd80xVPWIvxVdfdrkhk24TC7xrip663y9EwmO6tAHbKiaJimkXW
         v6rPvJyBw0pW7GF+xvdl+y073z22ZqKphjIx4a6VJoEDn/DEWO9+w3bXSsCd5Q1RxhEP
         xkpw==
X-Gm-Message-State: AOJu0Yz4d0sTMhNfITknctGN8sJV7oe7jXudGFSPZECmdR2+lyBnS/wP
	LSxaVvve4ASC/tZHMOgxalOzZqxSlp1p9x5uoUJuLjUkxnRwoKnY7ZDGuRKROR9htQgbDKIDRw+
	uOEx8W8mylM/5T3hM6CSjmrIqXRqCWdYBYhO+ybw=
X-Gm-Gg: ASbGncsnDUFVqXliv50dpmKYI9GYI+PIVeh8uAnEps1E46fKpzmxg2dBoxbxG3IuE8m
	B0dEHzlFQA6Hqm5a4/fnB7nPd4FuP1jU98au3IF6zdI7DA3b7die741hcx03mGuBhVxih7R/b08
	8cqCIudVzks7nPxHHYUOkkmiu1mU7sG+apAueW9tUuwXL78BDO7OjybU+/u4kkh9u6wGnW5agmG
	sJ5vo/U
X-Google-Smtp-Source: AGHT+IHXPw8YzMMa5O+33ddWr9lFZJgwXNCeUU8/h5xjUZG5R0Pncd/3azxKP93SlddjZOhm6X/PatRm7cTbyX28gLo=
X-Received: by 2002:a2e:8a91:0:b0:32b:2e45:c403 with SMTP id
 38308e7fff4ca-33549fde437mr4240401fa.39.1755776497414; Thu, 21 Aug 2025
 04:41:37 -0700 (PDT)
MIME-Version: 1.0
From: Jons <jonsdeburn@gmail.com>
Date: Thu, 21 Aug 2025 13:41:25 +0200
X-Gm-Features: Ac12FXx9jsh-FtRSTx15pOZMQL1JZFUX5ykxauB4buFEOHn7GDWAjWyLGrIQenk
Message-ID: <CAB-=5jZoAVoMmtiZ76esaQy2806vrUhg0kB0Bmvh_E_bWODX8g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: WDK7OSJI7JYAHCX2GYGKY67H2MOLDQGT
X-Message-ID-Hash: WDK7OSJI7JYAHCX2GYGKY67H2MOLDQGT
X-MailFrom: jonsdeburn@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] tlast in the CHDR packet
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WDK7OSJI7JYAHCX2GYGKY67H2MOLDQGT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8639434267640203375=="

--===============8639434267640203375==
Content-Type: multipart/alternative; boundary="0000000000006ef8fa063cde92a5"

--0000000000006ef8fa063cde92a5
Content-Type: text/plain; charset="UTF-8"

Hi all,
I am configuring the data stream as *AXI-Stream Data* for the RFNoC
framework and I couldn't understand exactly when TLAST bit would be set.
The IP that I am planning to add will be in between 2 GNU radio blocks and,
the input to TX streamer is a stream of vectors of 32 elements (type sc16).
The IP depends on the TLAST to initiate processing. So simply put, IP will
wait for till all 32 sc16 elements are received by waiting till TLAST and
then start processing, after this it will start reading the AXIS data, and
the cycle continues.

GNU Radio block A --> TX streamer --> custom RFNoC block --> TX streamer
--> GNU Radio block B

So my doubt is in RFNoC, what is considered as a CHDR packet? as I
understand TLAST is set at the end of a packet. Is it a sample/item in GNU
Radio or is there a configuration available to change the amount of data
that goes in a CHDR packet?
Thanks in advance :)
-J

--0000000000006ef8fa063cde92a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div>I am configuring the data stream as=
 <i>AXI-Stream Data</i> for the RFNoC framework and I couldn&#39;t understa=
nd exactly when TLAST bit would be set. The IP that I am planning to add wi=
ll be in between 2 GNU radio blocks and, the input to TX streamer is a stre=
am of vectors of 32 elements (type sc16). The IP depends on the TLAST to in=
itiate processing. So simply put, IP will wait for till all 32 sc16 element=
s are received by waiting till TLAST and then start processing, after this =
it will start reading the AXIS data, and the cycle continues.<br><br></div>=
<div>GNU Radio block A --&gt; TX streamer --&gt; custom RFNoC block --&gt; =
TX streamer --&gt; GNU Radio block B</div><div><br></div><div>So my doubt i=
s in RFNoC, what is considered as a CHDR packet? as I understand TLAST is s=
et at the end of a packet. Is it a sample/item in GNU Radio or is there a c=
onfiguration available to change the amount of data that goes in a CHDR pac=
ket?=C2=A0</div><div>Thanks in advance :)</div><div>-J</div></div>

--0000000000006ef8fa063cde92a5--

--===============8639434267640203375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8639434267640203375==--
