Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D94584FC8
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 13:57:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 55367383F7A
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 07:57:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659095865; bh=PIJj67phhK9x0RHWzQSjzOPS7rQYScysK3zt2sMP+uI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=I/vB96PK3KXrCAR268SXn6l83K/UmSR4Rvqj8CgwbxNOyBTF+2rH9JKT6PCt+BLGB
	 3NvksoKaFl9SrxqbPkQkJVBaVStfG9Voc9tc+hH92csAwsEAyUH70kbGy/aPQCWab2
	 /5sr9JGvgCwqz5/qS92sdTLkiKajtjjjZIU+CVIzhWM6XfF8UzduO91J+8ibrGf2P2
	 yTw3487fg0YiUl7dZwMtGbXE6yVRY8t8PJ8SK4QSR6ul50r0HDmRSbiU8ihrxRjfJP
	 3f9h8PW9dhwKWiA70s1QSYCpyLTK8xXLB4g/6+YiJtlHgRE88hhAAAuIa76kmbQawB
	 4GBbylnQyeHNg==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 13C39383BF8
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 07:55:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=sma-rty-com.20210112.gappssmtp.com header.i=@sma-rty-com.20210112.gappssmtp.com header.b="YpcbxPSm";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id ss3so8065484ejc.11
        for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 04:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sma-rty-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=7BoP/6G3EakBvdPIlPjD3rjw25pIcfeyXuCHhOcHHTc=;
        b=YpcbxPSmqkAs+oyZl/OE9qzbQbxQd0+yUp18sOwWKXeVqLEnRrLkFM1X98Us3d1a4i
         pDhYARhYleqdFvg1d7FIrFsPOd74m6B+wYdu75psE9Cu6l0WzcMOi2mu8xnMv942wZ9L
         gq7aFpkjaNUBmt30qAX9W4qq4dKy8wE19PefjsXbUFshVirocFbRrt7ZmvvT1bKd1ldv
         jh3EreavemvNItPlNmCCar9ZYSbzqhRvE9YkzNzyapFHZOTKDyPGwU6IWP44rqbNey66
         XfhQ1BOyNrcn4a4/Fd93G21V17e+G4GSVfPyejPxL/KBV/FgHE7MpEsHnZUFcOE1FZdx
         zcRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=7BoP/6G3EakBvdPIlPjD3rjw25pIcfeyXuCHhOcHHTc=;
        b=odYK+z9OIx+1DvZKGGZf+TwIthHrxvgxfIv1r+HiS5PKfFKtLgBmDp5ZYS/7rDqnko
         rofNrcY/oH7oAyEU8LYUYsNo9RjSqQ0nOdLIXMGLLGA5UDb04yx/pcS6kC6Uqhv5XhjT
         cA3YrTVwMfF/MXiZcLWoqVFEqd8+1UurhTifWBX2UJh4+a9Qzi0X1aw5sMlYOgaqkS77
         BCfuxBZ8NnAoAITBmLcXRvlYOtoyrtWUBqjaL+TLc4afTg9pc0Ko1gMuZHenyzCLiRgQ
         FWqKJK9TsHMqhq7uTyat9MhH988GJ7gqlQxLxTrChekNYonhAjz4WQHWwxDXRR9ntgzJ
         ctqg==
X-Gm-Message-State: AJIora8ATMa+BGer5zV/dBvOgdhTgg+heK/zWPCQ/hMUAsDsxJM4VpFS
	nAHopBj1A+fVdT+3cK3z0Wtqmg==
X-Google-Smtp-Source: AGRyM1sOHj3AaJ8+wjYEEV2bWLt0zTSNpVvu9rgjlOLEMPi8edAMXhMIdOOjBnVrZnEjJTLonVnhag==
X-Received: by 2002:a17:907:720a:b0:72b:549e:305a with SMTP id dr10-20020a170907720a00b0072b549e305amr2580080ejc.691.1659095734849;
        Fri, 29 Jul 2022 04:55:34 -0700 (PDT)
Received: from [192.168.1.21] ([151.30.128.219])
        by smtp.gmail.com with ESMTPSA id f7-20020a056402068700b0043adc6552d6sm2240370edy.20.2022.07.29.04.55.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jul 2022 04:55:33 -0700 (PDT)
Message-ID: <bebe69c5-d819-4b2d-62dd-d3cd68ea98d4@sma-rty.com>
Date: Fri, 29 Jul 2022 13:55:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com>
 <7b075b78-9c90-6c9f-6f4f-78736410a852@gmail.com>
From: Federico Civerchia <federico.civerchia@sma-rty.com>
In-Reply-To: <7b075b78-9c90-6c9f-6f4f-78736410a852@gmail.com>
Message-ID-Hash: TXPHDDAZR3LIDZNLKQG6ZQM7SSDFJ33O
X-Message-ID-Hash: TXPHDDAZR3LIDZNLKQG6ZQM7SSDFJ33O
X-MailFrom: federico.civerchia@sma-rty.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suggested SFP+ for Ettus N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TXPHDDAZR3LIDZNLKQG6ZQM7SSDFJ33O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5217639586597575909=="

This is a multi-part message in MIME format.
--===============5217639586597575909==
Content-Type: multipart/alternative;
 boundary="------------5uUqmLigKpWCGGLT0IHk60NK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5uUqmLigKpWCGGLT0IHk60NK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Yes, the issue was related to the optical cables in single mode. Using=20
MMF cables resolved the problem.

Thank you for your support.

Federico

On 28/07/22 21:22, Marcus D. Leech wrote:
> On 2022-07-27 11:06, Federico Civerchia wrote:
>>
>> Dear Community,
>>
>> I have recently bought two new Ettus N310 and I have started to=20
>> verify the connection with the hosts. The NIC interfaces mounted in=20
>> the hosts are Intel X520-DA2 and Broadcom BCM57414 NetXtreme-E 10Gb/25=
Gb.
>>
>> Unfortunately, the benchmark for both USRP fails or I have errors=20
>> like "SSSSSSS" or "[D00:00:06.162407669] Detected Rx sequence error."
>> I have also checked with ping but I have packet loss even with the=20
>> ICMP protocol. I investigated a little bit and it seems that the=20
>> problem may be related to the SFP+ I have mounted in the N310. The=20
>> modules are 850nm from FS (here is the link=20
>> https://www.fs.com/products/74668.html?attribute=3D106&id=3D287339) an=
d=20
>> the same are mounted in the NICs at the hosts side.
>>
>> Do you have some hints about this issue? Could you please suggest me=20
>> SFP+ modules that can work without any issue? Ettus sends the N310=20
>> with a SFP 1Gbps from Avago, I guess the 10Gb version from this=20
>> provider (AFBR-710ISMZ=20
>> <https://www.broadcom.com/products/fiber-optic-modules-components/netw=
orking/optical-transceivers/sfpplus/afbr-710ismz>)=20
>> can work as well. Could you please confirm me this?
>>
>> Thank you.
>>
>> Best regards,
>>
>> Federico
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list --usrp-users@lists.ettus.com
>> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
> SOmethign I noitced is that your transceivers are designed for MMF=20
> cable, and I think you said that you had single-mode cable.=C2=A0 I don=
't=20
> know enough about fiber systems to know
> =C2=A0 whether this would be a problem or not.
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------5uUqmLigKpWCGGLT0IHk60NK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Yes, the issue was related to the optical cables in single mode.
      Using MMF cables resolved the problem.</p>
    <p>Thank you for your support.</p>
    <p>Federico</p>
    <div class=3D"moz-cite-prefix">On 28/07/22 21:22, Marcus D. Leech
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:7b075b78-9c90-6c9f-6f4f-78736410a852@gmail.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 2022-07-27 11:06, Federico
        Civerchia wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:3ee43cde-ca0f-074e-57a6-5b041cd1cc8e@sma-rty.com">
        <meta http-equiv=3D"content-type" content=3D"text/html;
          charset=3DUTF-8">
        <p>Dear Community,</p>
        <p>I have recently bought two new Ettus N310 and I have started
          to verify the connection with the hosts. The NIC interfaces
          mounted in the hosts are Intel X520-DA2 and Broadcom BCM57414
          NetXtreme-E 10Gb/25Gb.<br>
        </p>
        <p>Unfortunately, the benchmark for both USRP fails or I have
          errors like "SSSSSSS" or "[D00:00:06.162407669] Detected Rx
          sequence error." <br>
          I have also checked with ping but I have packet loss even with
          the ICMP protocol. I investigated a little bit and it seems
          that the problem may be related to the SFP+ I have mounted in
          the N310. The modules are 850nm from FS (here is the link <a
            class=3D"moz-txt-link-freetext"
href=3D"https://www.fs.com/products/74668.html?attribute=3D106&amp;id=3D2=
87339"
            moz-do-not-send=3D"true">https://www.fs.com/products/74668.ht=
ml?attribute=3D106&amp;id=3D287339</a>)
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
        <pre class=3D"moz-quote-pre" wrap=3D"">__________________________=
_____________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated moz-txt-l=
ink-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D=
"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated moz-=
txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-d=
o-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
      </blockquote>
      SOmethign I noitced is that your transceivers are designed for MMF
      cable, and I think you said that you had single-mode cable.=C2=A0 I
      don't know enough about fiber systems to know<br>
      =C2=A0 whether this would be a problem or not.<br>
      <br>
      <br>
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
  </body>
</html>

--------------5uUqmLigKpWCGGLT0IHk60NK--

--===============5217639586597575909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5217639586597575909==--
