Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEDA5829A9
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 17:32:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EEF9A383BB1
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jul 2022 11:32:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658935965; bh=z0uPJpIoWNtlAZSYLvM7PT3ai/3ngc/uxxWBZLoKzr4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wetqJwtSL9mJllGm1plBVz5iMdbAYs8cMWR2TlfnE969b+kkUv2sdqE1nC4n5Y9Uq
	 hs2oO3SAJCX2eAr9tiNFk4d/4dGFSmOZ0W63oBUs0a6o3IXOjnwDoFUn06FcwaE23t
	 MTNHQ86NceMkUc+HbVc+dhzD9yJom8+rPEbLfzkrnYMI1dLXk6yjoJ8PZX5hv3iGMG
	 XfqPXa/EN7LnGC6xCzRmZs/U4Xrsy0S9GEetNucojEuIaGP8Oo9bL0JzIBDSQ5cEHa
	 /L3+/C9VsFEdtHR6Wli4kd6yBgL7JhssA4tMX1LClbgihq15OgI63lUzdxt+aT4eI4
	 p7rw0o7AQGgbQ==
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 26874383B29
	for <usrp-users@lists.ettus.com>; Wed, 27 Jul 2022 11:30:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="RvMd8Xkb";
	dkim-atps=neutral
Received: by mail-yb1-f173.google.com with SMTP id o15so2697145yba.10
        for <usrp-users@lists.ettus.com>; Wed, 27 Jul 2022 08:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=x6ukbGL1I0Ac4Qz/JtUwc1CobOe2RZHIDtZkBhbX6Pk=;
        b=RvMd8Xkbqhe/vZJwROXn4dlT1eZMgfXbNfaGedibM03XlmWWnWyWeWdEPng7EJy7MS
         M2HaqoMSYaqLRc1G/zGZJudAJxieGNK8HgxSuCNeHBFXVSQ5D0zI1QoFk+0++42Axe9m
         UvB5/qxslpVYDf++B5OJJul+Ls+xARy5DkI8z3jwo0NUn1PTY6t/sh9F/r1638CqxiVZ
         d9euxVIGcruO+tf3yTANOj2okp1Yourfa5XlsBgJuCzV4pd5s25rxfaATvxH4kBaNHhE
         LADpwGIeI6LNnMWf3wCHghgz6+r3zc+PkPGBFrB2LiUKHNT4ogt5erbAaQgZ/g1Pyw/4
         u0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=x6ukbGL1I0Ac4Qz/JtUwc1CobOe2RZHIDtZkBhbX6Pk=;
        b=oKSru+WsxEu6qYI7VT/OmTQJw+vp29GkgzGU+yyTL4qAQg7SziAxBtN1Vzo4YOJ+3K
         KkKGsT2sSdRVwshkO2bbYvX3YLE7/OFmEpM/0zZvUcd8RdpY79OrWFTf4r+6ZaJvyrLw
         jpWoVn2uXKw0yiV6msaLPZVBkZIZqyTsQrlPxp1uNcP6bTkaOGdR9Wvyu628IfyGao+K
         oNlMeqIiHmYU5xLm7sCeblza/d7Etm9mAyb3yiPDQZXsjJww4Q3i8X417Mxe41TDgkQn
         t3e+a0mqColTcYMLPLCA4/PexVk6X1cCCNEkFdUu9VHcHuL5V/qM+uyN77FTi6QdrTxJ
         80Kg==
X-Gm-Message-State: AJIora/7MDY+YIQLW5Db5EU+cFjcylccaFx08dojYlYEUxi6dDM86vCX
	MJRExtzVqG+BmdbiuEtMMEGpjOzOJoc4VC/E32knWCvB8eU=
X-Google-Smtp-Source: AGRyM1sVjKbGZKASO7YN4c3RZl1uWAGCI24FwBB2sYiqz5qcpBV2zApIQoaO9fsXZml3e14k8/s2FgWusFS5ttxy+ds=
X-Received: by 2002:a25:9b88:0:b0:66d:b166:a430 with SMTP id
 v8-20020a259b88000000b0066db166a430mr17634919ybo.80.1658935832208; Wed, 27
 Jul 2022 08:30:32 -0700 (PDT)
MIME-Version: 1.0
References: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
In-Reply-To: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 27 Jul 2022 11:30:21 -0400
Message-ID: <CAB__hTR2t4CRv_MrEH5ioTBoSC=77F4AhAuPDwyLaBc3vouStw@mail.gmail.com>
To: Federico Civerchia <federico.civerchia@sma-rty.com>
Message-ID-Hash: SYOR2P6XOYEMN7OT4STCRLJGMEEHAYNC
X-Message-ID-Hash: SYOR2P6XOYEMN7OT4STCRLJGMEEHAYNC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SYOR2P6XOYEMN7OT4STCRLJGMEEHAYNC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6927980644554343684=="

--===============6927980644554343684==
Content-Type: multipart/alternative; boundary="000000000000fc350105e4cb188d"

--000000000000fc350105e4cb188d
Content-Type: text/plain; charset="UTF-8"

Hi Federico,
I have several N310s and different types of 10Gb links: direct attach
copper, multi-mode (850nm), single mode (1310nm).  All have worked well
including the transceivers from lower cost vendors such as FS and GTek. I
have also used the X520-DA2.  So, while it is possible that your
transceivers are causing the problem, I want to point out that there are
other causes for sequence errors related to the optimization of networking
on the host. Do your sequence errors happen at all transfer rates or only
at very high rates?

Rob


On Wed, Jul 27, 2022 at 11:07 AM Federico Civerchia <
federico.civerchia@sma-rty.com> wrote:

> Dear Community,
>
> I have recently bought two new Ettus N310 and I have started to verify the
> connection with the hosts. The NIC interfaces mounted in the hosts are
> Intel X520-DA2 and Broadcom BCM57414 NetXtreme-E 10Gb/25Gb.
>
> Unfortunately, the benchmark for both USRP fails or I have errors like
> "SSSSSSS" or "[D00:00:06.162407669] Detected Rx sequence error."
> I have also checked with ping but I have packet loss even with the ICMP
> protocol. I investigated a little bit and it seems that the problem may be
> related to the SFP+ I have mounted in the N310. The modules are 850nm from
> FS (here is the link
> https://www.fs.com/products/74668.html?attribute=106&id=287339) and the
> same are mounted in the NICs at the hosts side.
>
> Do you have some hints about this issue? Could you please suggest me SFP+
> modules that can work without any issue? Ettus sends the N310 with a SFP
> 1Gbps from Avago, I guess the 10Gb version from this provider (
> AFBR-710ISMZ
> <https://www.broadcom.com/products/fiber-optic-modules-components/networking/optical-transceivers/sfpplus/afbr-710ismz>)
> can work as well. Could you please confirm me this?
>
> Thank you.
>
> Best regards,
>
> Federico
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fc350105e4cb188d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Federico,<div>I have several N310s and different types =
of 10Gb links: direct attach copper, multi-mode (850nm), single mode (1310n=
m).=C2=A0 All have worked well including the transceivers from lower cost v=
endors such as FS and GTek. I have also used the X520-DA2.=C2=A0 So, while =
it is possible that your transceivers are causing the problem, I want to po=
int out that there are other causes for sequence errors related to the opti=
mization of networking on the host. Do your sequence errors happen at all t=
ransfer rates or only at very high rates?</div><div><br></div><div>Rob</div=
><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jul 27, 2022 at 11:07 AM Federico Civerchia &lt;<a =
href=3D"mailto:federico.civerchia@sma-rty.com">federico.civerchia@sma-rty.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
 =20

   =20
 =20
  <div>
    <p>Dear Community,</p>
    <p>I have recently bought two new Ettus N310 and I have started to
      verify the connection with the hosts. The NIC interfaces mounted
      in the hosts are Intel X520-DA2 and Broadcom BCM57414 NetXtreme-E
      10Gb/25Gb.<br>
    </p>
    <p>Unfortunately, the benchmark for both USRP fails or I have errors
      like &quot;SSSSSSS&quot; or &quot;[D00:00:06.162407669] Detected Rx s=
equence
      error.&quot; <br>
      I have also checked with ping but I have packet loss even with the
      ICMP protocol. I investigated a little bit and it seems that the
      problem may be related to the SFP+ I have mounted in the N310. The
      modules are 850nm from FS (here is the link
      <a href=3D"https://www.fs.com/products/74668.html?attribute=3D106&amp=
;id=3D287339" target=3D"_blank">https://www.fs.com/products/74668.html?attr=
ibute=3D106&amp;id=3D287339</a>)
      and the same are mounted in the NICs at the hosts side. <br>
    </p>
    <p>Do you have some hints about this issue? Could you please suggest
      me SFP+ modules that can work without any issue? Ettus sends the
      N310 with a SFP 1Gbps from Avago, I guess the 10Gb version from
      this provider (<a href=3D"https://www.broadcom.com/products/fiber-opt=
ic-modules-components/networking/optical-transceivers/sfpplus/afbr-710ismz"=
 target=3D"_blank">AFBR-710ISMZ</a>)
      can work as well. Could you please confirm me this?</p>
    <p>Thank you.</p>
    <p>Best regards,</p>
    <p>Federico<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fc350105e4cb188d--

--===============6927980644554343684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6927980644554343684==--
