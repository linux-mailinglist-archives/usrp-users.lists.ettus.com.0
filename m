Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 138483F2452
	for <lists+usrp-users@lfdr.de>; Fri, 20 Aug 2021 03:18:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05B3A383C1F
	for <lists+usrp-users@lfdr.de>; Thu, 19 Aug 2021 21:18:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ae5SdeS4";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id C641538420A
	for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 21:17:31 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id e14so9294086qkg.3
        for <usrp-users@lists.ettus.com>; Thu, 19 Aug 2021 18:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=5tpy8wPdl9VSHd/BfSb6agsQZlNGCkYUYseGUE1j/E4=;
        b=ae5SdeS426FDg2+dgzW6H+z21hAyDh4/1MSxZzNmarVyEw1OTE52Mwa7GWews1yMj7
         mdxq5eQvc3S2If6wYoduMwl+SMimWzqf05K5zfZPhDW6sQCpaWOYb52QTwML8K3Ix2cd
         ro1uqQ4tpFBr3iySZSLlme5HJmiwDE5fQe/CnMOcvV6ptEDXgDRkPxKxhwp4LpWXYPhJ
         +mPG6UtZ3enXT9dYKmH8tw46Y+DNEHWqxNkhtPV3VnrKV4Mur8fqT5XyOoCXA2kmN/AA
         3hjSqZMZUWLQvlT4aliMpMsD0liY1h1jhe42xSkdFor+QdIpyHx9uD7EdHLvqoZfIRBb
         twkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=5tpy8wPdl9VSHd/BfSb6agsQZlNGCkYUYseGUE1j/E4=;
        b=CuwBSK9zkxGAN4RPNohlppWYLhVbpsQeits7B81nZLI5Rz8lQJXCEItspySIJpqsae
         n7TRJHTEYP8GYOR91SwS2t/+uMVO2SVTm+5a0Ks2o/KB4U67OxaV1RG6PMXiLkrIyKaa
         OZSkeNRfSC+fVfbjoxvCQvmRGFUMtjMdNtJo6B2HUEX7RwTXfWNlWtnnJpkBW/0fFkMq
         grUz/Km+ONL221r0fXmL52ZTnWQ+IuD2ovmGvMUYGR+56ls7zShlpTJLQkYCjHZ5r4JJ
         3uzBy9iE5TJMbVp6HD4MYG1yXdNbtwUAQwbDDCCXtUR8tOh3ziavQGbsTHWrluVBHYHm
         o6YQ==
X-Gm-Message-State: AOAM530Ahm+36UhDrsSvQFqRyazqIh6zqmi+I3TN+xm6+WRvOegpXcQt
	v9vf2AWoVxWbXBJRiCxSYj8B7Jx4ypCU7Q==
X-Google-Smtp-Source: ABdhPJxgUGgk0OlmPMWqX0x8WnGdVs+kZhukh6KDXPjoFiSjdKVs/6quk2mshVcCdffycRiFhSFUqg==
X-Received: by 2002:a05:620a:284b:: with SMTP id h11mr6481955qkp.438.1629422251212;
        Thu, 19 Aug 2021 18:17:31 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id g1sm2442487qkd.89.2021.08.19.18.17.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 18:17:30 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <kkqx77a9aqRuLNMeoRht7b0qga8MkEbkuiF36pZU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <2897d355-2daa-be7d-77bc-700ce34f8d17@gmail.com>
Date: Thu, 19 Aug 2021 21:17:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <kkqx77a9aqRuLNMeoRht7b0qga8MkEbkuiF36pZU@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: UHMK2OZNZULHXQDMLAMLUGDM2ONUM2GQ
X-Message-ID-Hash: UHMK2OZNZULHXQDMLAMLUGDM2ONUM2GQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Frequency synchronization with B205-mini and B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UHMK2OZNZULHXQDMLAMLUGDM2ONUM2GQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0517405526697837585=="

This is a multi-part message in MIME format.
--===============0517405526697837585==
Content-Type: multipart/alternative;
 boundary="------------BA7B49268A2668BBEF202512"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BA7B49268A2668BBEF202512
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-08-19 8:55 p.m., km5es@virginia.edu wrote:
>
> For my application I need to /frequency/ synchronize a B205-mini=20
> transmitter with a B210 receiver. Is this possible? I can=E2=80=99t see=
m to=20
> get it to work with the units I have. Can someone shed some light on=20
> why that might be the case?
>
> Note, that I am not asking about phase synchronization. I have been=20
> able to get 2x B210s to phase synchronize in post using higher order=20
> software calibration but the same does not work in the case of 1x=20
> B205-mini + 1x B210. In both cases I was using a common 10 MHz referenc=
e.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
The synchronization servo on the B205 is really not up to the task of=20
synchronizing with other devices--particularly not devices that use an=20
entirely
 =C2=A0 different synchronization architecture.

I'm curious about your use-case.=C2=A0 In the "real world", it's exceedin=
gly=20
rare for the TX and RX to be tightly frequency synchronized--instead the
 =C2=A0 RX demodulation/decoding chain uses a PLL synchronizer of some so=
rt=20
to assure proper symbol alignment as signals come in.



--------------BA7B49268A2668BBEF202512
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-08-19 8:55 p.m.,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:km5es@virginia=
.edu">km5es@virginia.edu</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:kkqx77a9aqRuLNMeoRht7b0qga8MkEbkuiF36pZU@lists.ettus.co=
m">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>For my application I need to <em>frequency</em> synchronize a
        B205-mini transmitter with a B210 receiver. Is this possible? I
        can=E2=80=99t seem to get it to work with the units I have. Can s=
omeone
        shed some light on why that might be the case?</p>
      <p>Note, that I am not asking about phase synchronization. I have
        been able to get 2x B210s to phase synchronize in post using
        higher order software calibration but the same does not work in
        the case of 1x B205-mini + 1x B210. In both cases I was using a
        common 10 MHz reference.</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    The synchronization servo on the B205 is really not up to the task
    of synchronizing with other devices--particularly not devices that
    use an entirely<br>
    =C2=A0 different synchronization architecture.<br>
    <br>
    I'm curious about your use-case.=C2=A0 In the "real world", it's
    exceedingly rare for the TX and RX to be tightly frequency
    synchronized--instead the<br>
    =C2=A0 RX demodulation/decoding chain uses a PLL synchronizer of some
    sort to assure proper symbol alignment as signals come in.<br>
    <br>
    <br>
  </body>
</html>

--------------BA7B49268A2668BBEF202512--

--===============0517405526697837585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0517405526697837585==--
