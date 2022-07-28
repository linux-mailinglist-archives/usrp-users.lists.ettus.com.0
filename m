Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D51A858462E
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 21:23:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9ABDB383C26
	for <lists+usrp-users@lfdr.de>; Thu, 28 Jul 2022 15:23:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659036228; bh=KE1jFEEZsYx3SAijo1Zmoh80pQhuzCBr9V/Kmor8JKk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=rPxMo6bRQS01OUiTdXGk1N+pe4NF1zxtKQMxzjWUBsuOKM0JjzaSmssCbufsuPTXQ
	 aJ63+RkSDOqRDDJVLYgqShTLnY3B5f9it6oXKUXrLDS5dz1FfQjf78itHjVdghrz/a
	 hiWnE0Th680k9MAeL44cc5E945dWpRWQHuMVnp38Q5A3TAzS9UwBVZmvug1mqUjSI1
	 FSetbPDR4kJ71miD/dlpFbZRlZVOuXW3ixIL2ok+OuKLToBkdiuTpqMUx63MTg7oBi
	 GUKJ1O4R/Bb5K+0mu7CzxkGZlM+AQsqUQ0CrG5vb2CNiKCmUC9SyaN4JTuNAs6N26W
	 Qe3pinwZWPMsA==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id DC1D6383F7D
	for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 15:22:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KMVGZM9L";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id a9so1841449qtw.10
        for <usrp-users@lists.ettus.com>; Thu, 28 Jul 2022 12:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=2rdFXEbEdk8V7x4COZoASCbzzBH/5SfDr4cRpXGEy/I=;
        b=KMVGZM9L/ywFot8yl4rjoZko6qTlUOhYQqEBEf1pcVtBCCUPX6kWtzGGkHBMAbEazf
         ivBMMnQL3l3AUWgBTG6hONKPd9VTDfIDJWLZmLUT4Vpy0YPHX93X2VpahJa8fSkCHtcM
         xr5bJCwcqHynj+EI+Ssme9JWzF7fKwAL3a2l/YdSc/Xf+l6pzx/Vnxf7W+0UOL073FKF
         ylOO4PTD5L5GipAHzYtXEs1Koi6a8DheYuhrrzHrzdAhA+OqEj1/MShitXAxYCSz5kqI
         nnLGgUmAGlLk7oavPdiYdZgYEtwtwsCQwTe68sEWrsBVSJwmkCyEeYtTqtoUZcKIQcpQ
         +glw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=2rdFXEbEdk8V7x4COZoASCbzzBH/5SfDr4cRpXGEy/I=;
        b=SkJHHBC/9gKTSduzjdf9JqizCuyL24US1Mp8djkSuy8wK+Pr/9weyYBzyq2f0H/JHD
         +lK7g520PZINHP62SFQpGWAMpLh6OkkILjcTl7DBXYmZ0c0MheI3Y5TCmCr+pv4BNwC7
         yqRK+e2yG/dbWdfKAbeNUMdSpdWXOFzm1iT7ot1k+7wYK18T7jgwliQMy9QAtxp62ego
         pWqsU+j40wmoVBKCnbCCYxlG6/ocjrWFWx4yEPsXSJJ+IzD6FyblbQE1oA6qxySuQJuB
         MqRA9wC6wOMaLj00REHv+cdbBzl/zEBEE7gza96UiXiPW1mIwlmzpT4MKuaRWwyZcz7y
         Mb2Q==
X-Gm-Message-State: AJIora+zb8GOF0kD9KXrigh5KYZMmTGJ8LRnhSQ5c+bV764K15Cmwvwg
	1b5zUfyTrowZk+A0XvuHyhmbWRd5FGo=
X-Google-Smtp-Source: AGRyM1sLd3VIHwAIpuqd9qTwGWLvrnlXOZkBhx+G2g8dagGxpw/lUXJjKs8/qLKqGQ7AJ4Ygdnff/w==
X-Received: by 2002:a05:622a:408:b0:31f:2a3b:96d5 with SMTP id n8-20020a05622a040800b0031f2a3b96d5mr390152qtx.655.1659036151982;
        Thu, 28 Jul 2022 12:22:31 -0700 (PDT)
Received: from [192.168.2.194] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id h10-20020a05620a284a00b006b5cb0c512asm1027126qkp.101.2022.07.28.12.22.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 12:22:31 -0700 (PDT)
Message-ID: <7b075b78-9c90-6c9f-6f4f-78736410a852@gmail.com>
Date: Thu, 28 Jul 2022 15:22:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
Message-ID-Hash: E23VIA5S2QJ7SHHNG6R3ISE2ZCEQWURS
X-Message-ID-Hash: E23VIA5S2QJ7SHHNG6R3ISE2ZCEQWURS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E23VIA5S2QJ7SHHNG6R3ISE2ZCEQWURS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2511961300052736110=="

This is a multi-part message in MIME format.
--===============2511961300052736110==
Content-Type: multipart/alternative;
 boundary="------------EkUznvoFGVAkdewqwuonSrwA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EkUznvoFGVAkdewqwuonSrwA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-07-27 11:06, Federico Civerchia wrote:
>
> Dear Community,
>
> I have recently bought two new Ettus N310 and I have started to verify=20
> the connection with the hosts. The NIC interfaces mounted in the hosts=20
> are Intel X520-DA2 and Broadcom BCM57414 NetXtreme-E 10Gb/25Gb.
>
> Unfortunately, the benchmark for both USRP fails or I have errors like=20
> "SSSSSSS" or "[D00:00:06.162407669] Detected Rx sequence error."
> I have also checked with ping but I have packet loss even with the=20
> ICMP protocol. I investigated a little bit and it seems that the=20
> problem may be related to the SFP+ I have mounted in the N310. The=20
> modules are 850nm from FS (here is the link=20
> https://www.fs.com/products/74668.html?attribute=3D106&id=3D287339) and=
=20
> the same are mounted in the NICs at the hosts side.
>
> Do you have some hints about this issue? Could you please suggest me=20
> SFP+ modules that can work without any issue? Ettus sends the N310=20
> with a SFP 1Gbps from Avago, I guess the 10Gb version from this=20
> provider (AFBR-710ISMZ=20
> <https://www.broadcom.com/products/fiber-optic-modules-components/netwo=
rking/optical-transceivers/sfpplus/afbr-710ismz>)=20
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
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
SOmethign I noitced is that your transceivers are designed for MMF=20
cable, and I think you said that you had single-mode cable.=C2=A0 I don't=
=20
know enough about fiber systems to know
 =C2=A0 whether this would be a problem or not.


--------------EkUznvoFGVAkdewqwuonSrwA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-07-27 11:06, Federico Civerchi=
a
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Dear Community,</p>
      <p>I have recently bought two new Ettus N310 and I have started to
        verify the connection with the hosts. The NIC interfaces mounted
        in the hosts are Intel X520-DA2 and Broadcom BCM57414
        NetXtreme-E 10Gb/25Gb.<br>
      </p>
      <p>Unfortunately, the benchmark for both USRP fails or I have
        errors like "SSSSSSS" or "[D00:00:06.162407669] Detected Rx
        sequence error." <br>
        I have also checked with ping but I have packet loss even with
        the ICMP protocol. I investigated a little bit and it seems that
        the problem may be related to the SFP+ I have mounted in the
        N310. The modules are 850nm from FS (here is the link <a
          class=3D"moz-txt-link-freetext"
href=3D"https://www.fs.com/products/74668.html?attribute=3D106&amp;id=3D2=
87339"
          moz-do-not-send=3D"true">https://www.fs.com/products/74668.html=
?attribute=3D106&amp;id=3D287339</a>)
        and the same are mounted in the NICs at the hosts side. <br>
      </p>
      <p>Do you have some hints about this issue? Could you please
        suggest me SFP+ modules that can work without any issue? Ettus
        sends the N310 with a SFP 1Gbps from Avago, I guess the 10Gb
        version from this provider (<a moz-do-not-send=3D"true"
href=3D"https://www.broadcom.com/products/fiber-optic-modules-components/=
networking/optical-transceivers/sfpplus/afbr-710ismz">AFBR-710ISMZ</a>)
        can work as well. Could you please confirm me this?</p>
      <p>Thank you.</p>
      <p>Best regards,</p>
      <p>Federico<br>
      </p>
      <p><br>
      </p>
      <p><br>
      </p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    SOmethign I noitced is that your transceivers are designed for MMF
    cable, and I think you said that you had single-mode cable.=C2=A0 I d=
on't
    know enough about fiber systems to know<br>
    =C2=A0 whether this would be a problem or not.<br>
    <br>
    <br>
  </body>
</html>

--------------EkUznvoFGVAkdewqwuonSrwA--

--===============2511961300052736110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2511961300052736110==--
