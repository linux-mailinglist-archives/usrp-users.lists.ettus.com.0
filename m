Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96556939E20
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 11:43:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6AA83858DB
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 05:43:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721727788; bh=Rhjkspw0z28Ii2LoVg2WuqY0Ucm6/xwUKZHEQXg4qkY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=N9LAP/OTJfCCJpwvSlNiNGCP6VxLzwua7MYAjD6IJLxorga46Tv87+UlfmImjBI1A
	 42BSSBv+MCmp79ZTPQ/UPfqLodmeV1tdWaAVjqHGpPV6rlhKjocTxmQIVHxwpPm/pZ
	 ZP1qv2rT9jK9QYh5GolBMCuIevekuNdiBKZrLfkzR9EpJCmw51h3PgH1S3TxO5PzdX
	 Bi/nyoDvCi8ms5Ly/4r7kIBy7fTZzL+hX1GNWMs46BVjlQAt0qaZSVqK59w9ut8DZo
	 g6VW+Oq9bxepV8wkDuVAbai71oz4bdQwS9KT/jdXzIFfKjyVg4/nksaRl76hDz6gbl
	 LWEi3LOw+gHdw==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B9EE385695
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 05:42:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="AWrKI1JG";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a7a8caef11fso80086266b.0
        for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 02:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1721727765; x=1722332565; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hpra5UUjTiP3pel7zyGakKSTvLEKV/ZDuI4JGTtDj2Q=;
        b=AWrKI1JGeJjgvRz6OPkdchwPm3A3rSjNrQh6dXteb+TDPwQFf7obwlPSBjaDkB4bCI
         FMfxjsZB/JlD+lQlS6owbmlNrYJK5+Z+eEMikv5uKIY+FUyP1hhaky7f3g9XEq7JdEvr
         waR9N0HawA+ZGWKANKjcpsq8LRcNhP+gf4oGZnxogadnQH8grnxPz7AK1+lY/7/QMQ2H
         +YPM08Z1PQMxXKQVJDrxkK7AOO/mJEjrYpe8fxVsMEN3wC+CdID2oabE8LsvPxNkNTjK
         SH8O8KaKO9YZVmWlGoEBiK7AFMWstVzeUujB+Ml0d1dc6vBPBVadv8r232iE4G13GNTd
         LZcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721727765; x=1722332565;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hpra5UUjTiP3pel7zyGakKSTvLEKV/ZDuI4JGTtDj2Q=;
        b=N7n3zaY9yHow+2YYuDf5s6ZF4mW3D2K5BjUH8Vf/waLDcgkC2VpMerxhkqXPG4Zm4i
         hYvqOFvaVv1FZzM3QiukioMfOfNoitxRl06fxPqucvvM123esXOrXSsxYbY5WLPSf+Gi
         gRH1skPaJWfy4vKkgQoEJo3MXFlslaV+/b6DzRWPDKQdhWzjpXmFd9ARt/TXhvs2CNHW
         +/tt+U6qEDz66IskxvuMsGw5uvwf2l2rUYbj41EmcigtrSrBvTvA5VG0hzq5RzK6md8u
         TqScyXcEDssC7+UhknA3kzn0jJ0pxyG4DFB4OK13zhN0gCu0ACdyjxq0YFEdMHBO6485
         2ohQ==
X-Gm-Message-State: AOJu0YwoWYCcQnaMbET3+76Mr/nqkzChN1WevZygaBuucGP2gSKd+YaR
	ym3mzMmJQ8JuOjb5VIJyEVQkJLJpjmxkZ58iyx8K/awCBU35H0/rKJi228RSJEV0UiUIHjl+6dp
	vVciVxuTBUMQSSX/LM7Q9kmRnRwU9mmiOtTSHlnjs
X-Google-Smtp-Source: AGHT+IFg5s6dEUcLn4u8xauEPwt1M1OvH6zxzqpc2LqG4qWN6+ceMdi9hxIYV6wnjt6A4U/Wp05H7mAff/UbugtuwYI=
X-Received: by 2002:a17:907:7d92:b0:a7a:a3f7:38a5 with SMTP id
 a640c23a62f3a-a7aa3f73ae9mr16460166b.33.1721727765318; Tue, 23 Jul 2024
 02:42:45 -0700 (PDT)
MIME-Version: 1.0
References: <488162280.16396629.1721723715565.JavaMail.zimbra@tubitak.gov.tr>
In-Reply-To: <488162280.16396629.1721723715565.JavaMail.zimbra@tubitak.gov.tr>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 23 Jul 2024 11:42:34 +0200
Message-ID: <CAFOi1A6tMhSrxXOkJimA1rxT8iHoysxp3Oo7cBnHAPau506Kqw@mail.gmail.com>
To: =?UTF-8?B?RW1yZSBZSUxESVogKELEsExHRU0gxLBMVEFSRU4p?= <emre.yildiz@tubitak.gov.tr>
Message-ID-Hash: AHGED2ND5CRCPOB2CSH75PFWQAWX72UW
X-Message-ID-Hash: AHGED2ND5CRCPOB2CSH75PFWQAWX72UW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E320_XG_ETH Vitis or SDK development
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHGED2ND5CRCPOB2CSH75PFWQAWX72UW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3646584923810326865=="

--===============3646584923810326865==
Content-Type: multipart/alternative; boundary="000000000000da2abf061de6fb8e"

--000000000000da2abf061de6fb8e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Emre,

you can skip Vitis and focus on Vivado for the FPGA builds. For software,
check out the examples in UHD. In fact, you should definitely get familiar
with UHD in general before trying to understand any of the lower-level
details. Check out kb.ettus.com as a place for better introduction
materials.

--M

On Tue, Jul 23, 2024 at 10:35=E2=80=AFAM Emre YILDIZ (B=C4=B0LGEM =C4=B0LTA=
REN) via
USRP-users <usrp-users@lists.ettus.com> wrote:

> Dear USRP users and Ettus support team ,
>
> I synthesized your Vivado project for XG Ethernet from the E320 FPGA
> folder. I noticed that the AXI crossbar connects the e320_core design wit=
h
> the e320_ps side. I understand that the e320_core design processes comman=
ds
> based on timestamps. However, I could not find an example project for Vit=
is
> that helps me understand how this is controlled on the SDK or Vitis side.
>
> Specifically, I observed that the e320_core part is connected to the
> m_axi_xbar which maps to the address range 0x4001_0000 to 0x4001_3FFF. I
> believe the timekeeper accesses this range with specific offsets, but
> please correct me if I am wrong.
>
> I am aiming to develop and deploy a design on the board using Vitis.
>
> Could you please assist me with this?
>
>
> Thank you.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000da2abf061de6fb8e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Emre,</div><div><br></div><div>you can skip Vitis =
and focus on Vivado for the FPGA builds. For software, check out the exampl=
es in UHD. In fact, you should definitely get familiar with UHD in general =
before trying to understand any of the lower-level details. Check out <a hr=
ef=3D"http://kb.ettus.com">kb.ettus.com</a> as a place for better introduct=
ion materials.</div><div><br></div><div>--M<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 23, 2024=
 at 10:35=E2=80=AFAM Emre YILDIZ (B=C4=B0LGEM =C4=B0LTAREN) via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div><div style=3D"font-family:arial,helvetica,sans-serif;font-size:12pt;c=
olor:rgb(0,0,0)"><div>Dear USRP users and Ettus support team ,</div><div><b=
r><p style=3D"margin:0px">I synthesized your Vivado project for XG Ethernet=
 from the E320 FPGA folder. I noticed that the AXI crossbar connects the e3=
20_core design with the e320_ps side. I understand that the e320_core desig=
n processes commands based on timestamps. However, I could not find an exam=
ple project for Vitis that helps me understand how this is controlled on th=
e SDK or Vitis side.</p><p style=3D"margin:0px">Specifically, I observed th=
at the e320_core part is connected to the m_axi_xbar which maps to the addr=
ess range 0x4001_0000 to 0x4001_3FFF. I believe the timekeeper accesses thi=
s range with specific offsets, but please correct me if I am wrong.</p><p s=
tyle=3D"margin:0px">I am aiming to develop and deploy a design on the board=
 using Vitis. <br><br>Could you please assist me with this?</p><p style=3D"=
margin:0px"><br>Thank you.</p></div></div></div>___________________________=
____________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000da2abf061de6fb8e--

--===============3646584923810326865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3646584923810326865==--
