Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 143BC8011EB
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 18:42:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5D231385B67
	for <lists+usrp-users@lfdr.de>; Fri,  1 Dec 2023 12:42:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701452533; bh=Hc3SGtRkCWpmnS28vrWAlSeMJUNBv+CdhshbO030QPY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FYFvCI6Oqq7IufIvI+u/+5hA34uZ6GzA0EtRxREsu/SIaIUS1rmgNumDyAFxvpMl1
	 anp35DvLvPDZEwmEahEdRp1QhmwGXslOAeabATZKoMVliTKdCg6CvV5mVvCe7Fl/1p
	 mpDg1MmRbDdn/s0g0ckFRq8WNT94YLHMZjOIJ+99ifjxN7zMis9CFshO5nLfQf04e1
	 F2pG8NHlcnmVF1mG0jJ5ADxRibK1j6EqTFzgo6aKr9dTWmVVgCHXHJ/rNEVm8+72DN
	 jKcgD7spM1rxVoHJsQX6Hur8I/za2VoXvVmJl6TkTz5+bUrUmGmLYl3eJYWPWgsoAy
	 VjI8e6JL2w4aw==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id EEF30384C21
	for <usrp-users@lists.ettus.com>; Fri,  1 Dec 2023 12:41:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YoTf7AOt";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-423dccefb68so29038221cf.0
        for <usrp-users@lists.ettus.com>; Fri, 01 Dec 2023 09:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701452481; x=1702057281; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4EYg+KpiR8+wQ+TYwxAd7drFHB0gL9zYTdYLZA3Pq8w=;
        b=YoTf7AOtlmcqWQQuMeUdE+A3Q9x0q4wrmPMSn1kqrEskwWssm6A7yqV1xoUPtyLg8D
         HgAm+ZLPA9ddtC96gtNdZlojmVYOaXnZLxO4ReZbTO6Qadi6FeYafovHc/Y0Ii2PVx0p
         /4Yuwm+VYdOjH0vHvjQpCysH/ODd0+84SKuW4IxqRo5fbrsPGhOBNFb1f8J298ntPlwi
         V9tu1c70gSzlYPhNSkTGxozi1Gmm1wOnBxO218mvVzwq6wPBrMW/yhr7eh0vq6/nMNVN
         bkK1nlmmosB1jOLiSmWbrR9i0yNcT+YyaUr6S/QqFOIGWMHuT9EB6a00kYNJkQzHKiBF
         MPNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701452481; x=1702057281;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4EYg+KpiR8+wQ+TYwxAd7drFHB0gL9zYTdYLZA3Pq8w=;
        b=TOJgrL9x1Fo8HSWctzUc+hAOzBFndgNwnW3V9wG9a776wUpRe/BceB3RXYK0ZxbIbQ
         jYDlIPvE+p1Ygvn8wsy6SDvPeg9A8fi2a80GlQ6CHCVDdAnDFrYjJK7W+wlmP7sIwV1n
         U8gjGKdfBSdu9gQfCt/Lrrjvee1JSVchWn0C72H0L2GaGo4SInP8JSVfMwk7ppMgh5VF
         6VwUf7oq/9eFVmLiLPBwurKkzU56PAWn6EyT6Fkno9iz2QwD2fyvmh2n9DFELB2GRsLz
         qiHMrCH3eJSFExXelM4vCWYa8xynPS8dWBedNzsidlY8scKtzMQL61zM/+fX4lIup4k/
         sAGg==
X-Gm-Message-State: AOJu0YyWgGOeUxCAMAFdts7kJIM1dAOfyLDyU8xG3wyLmkIPmOXEo4Ka
	jtN6vFmomoCw5bSqpecqftX5hhY+cPE=
X-Google-Smtp-Source: AGHT+IFJIygLqLm3bvqntrYMFyoE2R6W4cNL2yCpSDBXxBz6DQRSmj4zHe2gOy/YLCK2ZsqzhJXXxQ==
X-Received: by 2002:ac8:5c90:0:b0:423:a4f0:382 with SMTP id r16-20020ac85c90000000b00423a4f00382mr39824797qta.21.1701452481144;
        Fri, 01 Dec 2023 09:41:21 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-146.dsl.bell.ca. [174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id a1-20020ac87201000000b0041aff9339a2sm1660015qtp.22.2023.12.01.09.41.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Dec 2023 09:41:20 -0800 (PST)
Message-ID: <7eeb0b9f-d753-4271-a90f-9557db59f052@gmail.com>
Date: Fri, 1 Dec 2023 12:41:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ZiObs8gKcVL781slr5wqS0mwe9z9d3UApxHyaVqGBgs@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ZiObs8gKcVL781slr5wqS0mwe9z9d3UApxHyaVqGBgs@lists.ettus.com>
Message-ID-Hash: PRAZKXFEZ4XD66DLUN27KDMO7W32MO36
X-Message-ID-Hash: PRAZKXFEZ4XD66DLUN27KDMO7W32MO36
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 no device found
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PRAZKXFEZ4XD66DLUN27KDMO7W32MO36/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2473430031134138642=="

This is a multi-part message in MIME format.
--===============2473430031134138642==
Content-Type: multipart/alternative;
 boundary="------------PKBeHBJlQQJkdCj1FLqil1lS"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PKBeHBJlQQJkdCj1FLqil1lS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 01/12/2023 12:31, purva.joshi@phd.unipi.it wrote:
>
> Dear All,
>
> My name is Purva Joshi. I am using USRP N310 from Ettus Research. I am=20
> not able to find my device. I am using Ubuntu 18.04 with UHD version=20
> 4.0. From physical set up, I have everything ready. If I ping for the=20
> USRP IP it gives me positive response and from "ifconfig" command, I=20
> can see that my wired connection is okay. However, when I asked for=20
> "uhd_find_devices" this command gives me " no device found". Kindly=20
> help me in this matter.
>
>
>
> Thanks in advance.
>
>
>
> Regards,
>
> Purva
>
What does:

uhd_usrp_probe --args "addr=3D<theaddress>,type=3Dn3xx,product=3Dn310"

Produce?

Also, on a tangential note, you really should consider upgrading your OS=20
to something more modern.=C2=A0 Ubuntu 18.04 is
 =C2=A0 *5* major revs out-of-date.



--------------PKBeHBJlQQJkdCj1FLqil1lS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 01/12/2023 12:31,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:purva.joshi@ph=
d.unipi.it">purva.joshi@phd.unipi.it</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:ZiObs8gKcVL781slr5wqS0mwe9z9d3UApxHyaVqGBgs@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Dear All,</p>
      <p>My name is Purva Joshi. I am using USRP N310 from Ettus
        Research. I am not able to find my device. I am using Ubuntu
        18.04 with UHD version 4.0. From physical set up, I have
        everything ready. If I ping for the USRP IP it gives me positive
        response and from "ifconfig" command, I can see that my wired
        connection is okay. However, when I asked for "uhd_find_devices"
        this command gives me " no device found". Kindly help me in this
        matter.</p>
      <p><br>
        <br>
      </p>
      <p>Thanks in advance.</p>
      <p><br>
        <br>
      </p>
      <p>Regards,</p>
      <p>Purva</p>
    </blockquote>
    What does:<br>
    <br>
    uhd_usrp_probe --args
    "addr=3D&lt;theaddress&gt;,type=3Dn3xx,product=3Dn310"<br>
    <br>
    Produce?<br>
    <br>
    Also, on a tangential note, you really should consider upgrading
    your OS to something more modern.=C2=A0 Ubuntu 18.04 is<br>
    =C2=A0 *5* major revs out-of-date.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:ZiObs8gKcVL781slr5wqS0mwe9z9d3UApxHyaVqGBgs@lists.ettus.com">=
<span
      style=3D"white-space: pre-wrap">
</span></blockquote>
    <br>
  </body>
</html>

--------------PKBeHBJlQQJkdCj1FLqil1lS--

--===============2473430031134138642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2473430031134138642==--
