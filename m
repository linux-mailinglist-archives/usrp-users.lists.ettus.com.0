Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F8C7417C0
	for <lists+usrp-users@lfdr.de>; Wed, 28 Jun 2023 20:02:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42536384181
	for <lists+usrp-users@lfdr.de>; Wed, 28 Jun 2023 14:02:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687975343; bh=ZAbK13cDj6rkTGTrS8hl1qG7T1U8zsMw1/kl9uDVpV4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ljdmLOLgX2OkJU2HlOQLMCg5ArIwiRZmfWn33hlXCPLYNh5LPMpCX2DG5w7FFimYv
	 YEh/fERDbe7GWCNGwQYGfx33azHwpXLkehRku/0DZJZfqoi/zlzabbuJoadihxxlgl
	 nLvI74hr4Ews1toLAVGer0beMraGCJFxeQAV8tt3WkuTtgIsE7kaABIGh4HjJApST2
	 AigFu4cfqJxWe1jZEMKc3FHPXpM7LrZFQJKY9xYhxJS74cr4vddrZWafJQ/k45u7G7
	 3JHkEarAFRSyOsUz2/XZFh1HYbKGOxv++Gf+cR9oplokZpj6kDcygCLIDeAVqX/qMa
	 qnmQoCcB6GwUQ==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id D19EE380BDC
	for <usrp-users@lists.ettus.com>; Wed, 28 Jun 2023 14:01:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="m3IMeplO";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4007e2598f5so1259281cf.0
        for <usrp-users@lists.ettus.com>; Wed, 28 Jun 2023 11:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687975319; x=1690567319;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g5zi54+cPxJVrEGxr2wDKivSJOUQsfzTz5z+Eb4RWGQ=;
        b=m3IMeplOLkDL5lCCqjM4QG5LpPALiYdIs1LxCm3TpsSduuZi/3exPAvZ4H6YwkAqGY
         5ZydqlR8qB8CMRZPzXKL8REoMvERtGR4W0OmXvT3yN4e0E6DXMDHYKlQHIsm9eXNTpjV
         SOOqXvKjRKA4wGvIkOoyPaUm6x+vzOjmGu15RnI3y9AbFZhtozlia6ERhPOcJ14zjFwY
         FYj6L6pUQB3k9drfPGK64OSd/Gi46KMIQdmXBZ4I2IkYvKu8EIWwTeMzejk+FN0VbBv5
         5N2Jy/2pCKcz8gshFqhNwsaOSO0saC0JC/livAPgmcaOT2dbk5s5R3ZYcpe7FfuUD6kf
         PY0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687975319; x=1690567319;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=g5zi54+cPxJVrEGxr2wDKivSJOUQsfzTz5z+Eb4RWGQ=;
        b=d0C+6GcWIxOG4GB026L726XrfK90dedDjdYysXu57LBeg6lO+i3HaI1CF8eyniEk6R
         bPqkqWDk5dWPeRzLyxs4Xq1LwstCTiwYKLtjvxmFgEZwatEVY/hohz/N8dJYt1Z137h1
         FyU0OuNnyGwkMtCkCCuAuJFW/u3Qx/mEkv54iUXjG+Iti4xuTaMjCkppqHg7PalZcBx2
         Q2jQQbe+nJDQejZJaPoPCxNl2ixOkmdbboX3MyZUKN3J2gTiBalAiQthypKlnTKxDLr6
         Hy0Jm8gjEgBpXgSyrH00dELqoZL/zVp9S+BFJBzbe5biUYIxKr75666KSrf8ruU19tQV
         3d8Q==
X-Gm-Message-State: AC+VfDytl59AVQ4kqx4Q0nY2QvFY9KLex4kuBvsD0idvsUjvocbQYwwY
	U9iaq+yGsyJYOscqzkR5bmRo0ngtpHE=
X-Google-Smtp-Source: ACHHUZ5ASoe/8SO1KcSWJad/+ZR04UD/df5wJp3Fr+uOhncr6J7sVm9aDaHUHNemIU1aGkqqN9EcpQ==
X-Received: by 2002:ac8:57d0:0:b0:400:8639:bbdc with SMTP id w16-20020ac857d0000000b004008639bbdcmr22833149qta.2.1687975318708;
        Wed, 28 Jun 2023 11:01:58 -0700 (PDT)
Received: from [192.168.210.91] ([142.183.237.79])
        by smtp.googlemail.com with ESMTPSA id fb6-20020a05622a480600b003ff1f891206sm1611134qtb.61.2023.06.28.11.01.57
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jun 2023 11:01:58 -0700 (PDT)
Message-ID: <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com>
Date: Wed, 28 Jun 2023 14:01:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
Message-ID-Hash: LOCDSPRJ3XATXWK2RCZCXHOXUYV27DAB
X-Message-ID-Hash: LOCDSPRJ3XATXWK2RCZCXHOXUYV27DAB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRx Spectrum shape
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LOCDSPRJ3XATXWK2RCZCXHOXUYV27DAB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7295101603723857778=="

This is a multi-part message in MIME format.
--===============7295101603723857778==
Content-Type: multipart/alternative;
 boundary="------------pX6oVL1eNAdwx8d91XeSin75"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------pX6oVL1eNAdwx8d91XeSin75
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 22/06/2023 05:48, Carlo Venier wrote:
> Good morning,
>
> I have some questions regarding the TwinRX daughterboard.
>
> 1) With the following settings:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Master Clock Rate =3D 200 MH=
z
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Tuning Frequency =3D 2450 MH=
z
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Sample rate =3D 100 Msps
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Gain =3D 93
> =C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0 Every RF connector is 50 Ohm terminate=
d
> =C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 LO_OFFSET disabled
>
> I get a non-flat spectrum. In particular, the center portion of it is=20
> up to 5 dB higher than at +/- 40 MHz from the tuning frequency. You=20
> can see this behaviour in the attached figures.
>
> 2) The two channels have a different behaviour below 1.8 GHz (for=20
> example at 450 MHz). The spectrum of channel :1 is a lot more wavy=20
> than the spectrum of the channel :0. You can see this behaviour in the=20
> attached figures.
> In any case, also below 1.8 GHz the delta between min and max level is=20
> about 5 dBs.
>
> 3) Sometimes, the DC component pops up. As the TwinRX channels are a=20
> superheterodyne receivers, I don't expect that the DC component=20
> appears, but it happens.
>
> Is it possible that the TwinRX I'm using is not working properly? Or=20
> am I missing some settings?
>
> 4) Can somebody provide a screenshot of the spectrum of the TwinRx=20
> channels with the same settings at 1) for the tuning frequencies of=20
> 450 MHz and 2450 MHz?
>
> Thank you.
>
>
> Best regards,
>
> Carlo Venier
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Here is my test, with the input terminated, and the gain at 80dB:

http://www.ccera.ca/files/2450.png

That's for 2450MHz, 100Msps

http://www.ccera.ca/files/450.png

That's for 450MHz, 100Msps, again 80dB gain


--------------pX6oVL1eNAdwx8d91XeSin75
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 22/06/2023 05:48, Carlo Venier
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto"><span style=3D"font-size:12.8px">Good morning,</s=
pan><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I have some questions regarding
          the TwinRX daughterboard.</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">1) With the following settings:<=
/span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Master Clock Rate =3D 200
          MHz</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Tuning Frequency =3D 2450
          MHz</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Sample rate =3D 100 Msps</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Gain =3D 93</span><br
          style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0=
 Every RF connector is 50
          Ohm terminated</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0 LO_OFFSET disabled</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">I get a non-flat spectrum. In
          particular, the center portion of it is up to 5 dB higher than
          at +/- 40 MHz from the tuning frequency. You can see this
          behaviour in the attached figures.</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">2) The two channels have a
          different behaviour below 1.8 GHz (for example at 450 MHz).
          The spectrum of channel :1 is a lot more wavy than the
          spectrum of the channel :0. You can see this behaviour in the
          attached figures.</span><br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">In any case, also below 1.8 GHz
          the delta between min and max level is about 5 dBs.</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">3) Sometimes, the DC component
          pops up. As the TwinRX channels are a superheterodyne
          receivers, I don't expect that the DC component appears, but
          it happens.</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Is it possible that the TwinRX
          I'm using is not working properly? Or am I missing some
          settings?</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">4) Can somebody provide a
          screenshot of the spectrum of the TwinRx channels with the
          same settings at 1) for the tuning frequencies of 450 MHz and
          2450 MHz?</span><br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Thank you.</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Best regards,</span><br
          style=3D"font-size:12.8px">
        <br style=3D"font-size:12.8px">
        <span style=3D"font-size:12.8px">Carlo Venier</span></div>
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
    Here is my test, with the input terminated, and the gain at 80dB:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"http://www.ccera.ca/files/=
2450.png">http://www.ccera.ca/files/2450.png</a><br>
    <br>
    That's for 2450MHz, 100Msps<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"http://www.ccera.ca/files/=
450.png">http://www.ccera.ca/files/450.png</a><br>
    <br>
    That's for 450MHz, 100Msps, again 80dB gain<br>
    <br>
    <br>
  </body>
</html>

--------------pX6oVL1eNAdwx8d91XeSin75--

--===============7295101603723857778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7295101603723857778==--
