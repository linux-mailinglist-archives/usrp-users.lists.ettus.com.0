Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9F452330A
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 14:24:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1028F384515
	for <lists+usrp-users@lfdr.de>; Wed, 11 May 2022 08:24:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1652271845; bh=85dSZe5oxyEzFTY6GZmBiSC5rlG30d2I1ga8ruhohhg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Jh7QN4ZjVZqo4lb8Gk43aWgAFO88vvW7QVtD+/ZxTP8ibHW7ywakmZsQIfUconSI6
	 Rx1/jIeJ+0AlQ7gkV7TYJgXtZGC2uwiJStlnaXejXkPQTXwIxiSY9Dus7O9pohtiZR
	 zeG3DX+t0+rhapFuFv7hFlhKwJMxfDLbvi0xwOWn+DyNzHRWHpZb6xWORUQv2NuhNx
	 dQMHI7GE2D+MVFG+fkntcL+yB6g6tHW4oV7OqdD/isvqi2BVvTVr3DoeZJ1LNDwWmr
	 MXWdjjAM7ZvyjB4piivHjxIc5kt0ubhZXOHhw6mLHI3vE+JRpNdOe9WohKrlv+CA2c
	 hksoWSwSMmnTA==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id ABB073844E1
	for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 08:22:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TSb+eOYm";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id a76so2082303qkg.12
        for <usrp-users@lists.ettus.com>; Wed, 11 May 2022 05:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=6PYdrvvEFC88el3u+Kn4WOFCWYGxFeaCrE90vqc+/dc=;
        b=TSb+eOYmwNI/tm5mWgm3SujChhmdMp6PB4+PMhIKGozmw+nnxmYyjTc4trAumcPY60
         +PETBaxvCDe8cUr2HtQuOuZeZaYBHfeGnDGuZRX7fCxPiLrcDX26R6wzEv6vAPJF9hLV
         WwVbsjl76YOmw7P7KYQO8TvxhBNI6l4JopotB9rOTMsjRZiM9+u7aasS/ellbyuRKvuY
         N6gtKnCxZO3JaEtlgY7/0cskMxcbesjcSnxHRG+6y/m1vCdX5GkR/J+coCbWOXwfeLfD
         I6yMdis4kBo/iNeZUgS/aIuDyALnhqK1pDRxtQmWmtuRmbdfS61nWmOojcLZPe5trPya
         yOrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=6PYdrvvEFC88el3u+Kn4WOFCWYGxFeaCrE90vqc+/dc=;
        b=eVhUgtJVU1c2ogZrfXt5IFVEQtV+s1fHtAXVCmoyu2VZxhDLVWE1k6HgD0zJ7rlQ9o
         csY1XpKZDN41fGvd3uZUtVTVkVtrEnEkBP9GfeRJvnjNKVNWR26ecu95QpAKbm4fq6qH
         H9LPuqWrfh1CwxP1djIi8IaVQCUt4tR0D1LJUGxKCZtnLUEhpkhD0tUDsTwvVWq2aIwq
         WNT4JNymkHBII/eIcPcAzniZS+A8Ndia0O0zPGKz4jzMLPRzbLPHz7FC+QTMtqltJVxP
         uZBY36lYg7F97AeCbyNDIwPSHtjpEQp3Y7i4xcs5kvYsmBaNiwWGJEwZQjctNqKN6OR9
         bvow==
X-Gm-Message-State: AOAM533bisGcUDTLhJB8T9qOTUGoek9y/VMmUQbg5M1d+UtfmQmlxdF/
	tOuKdjoF1Ox89PFcpD0bUbPMoospuwY=
X-Google-Smtp-Source: ABdhPJwEcFSyfRsMIc9vVpZPI1dQI3mMaKKcv08nM0Rkt2cUYKgjhR7twVOCIDSGWFACtJQcUzAVFw==
X-Received: by 2002:a05:620a:468a:b0:6a0:39a1:942b with SMTP id bq10-20020a05620a468a00b006a039a1942bmr18813207qkb.288.1652271777906;
        Wed, 11 May 2022 05:22:57 -0700 (PDT)
Received: from [192.168.2.184] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id ay14-20020a05622a228e00b002f3d23cf87esm1018730qtb.27.2022.05.11.05.22.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 05:22:57 -0700 (PDT)
Message-ID: <714d6b41-a910-175c-b25f-e30e6154fcb0@gmail.com>
Date: Wed, 11 May 2022 08:22:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAFghhNOMn+uGS5hNck9bAuhM9+_oiv1yjq494=saGc7-M7Begw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAFghhNOMn+uGS5hNck9bAuhM9+_oiv1yjq494=saGc7-M7Begw@mail.gmail.com>
Message-ID-Hash: EXH556ATSTSFRF4LIVWLIQVIKTRWUUVE
X-Message-ID-Hash: EXH556ATSTSFRF4LIVWLIQVIKTRWUUVE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why do we need 1 PPS and 10 MHz signal to synchronize
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EXH556ATSTSFRF4LIVWLIQVIKTRWUUVE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3939301653928642457=="

This is a multi-part message in MIME format.
--===============3939301653928642457==
Content-Type: multipart/alternative;
 boundary="------------MfYFCnuyVh0cgCZp1rUC1ouJ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MfYFCnuyVh0cgCZp1rUC1ouJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-05-11 06:17, Marcin Puchlik wrote:
> Hello Community,
> Like in the topic, I know that a stable 10 MHz source is needed as a=20
> clock signal but why do we need=C2=A01 PPS signal? How is it used by th=
e=20
> USRP hardware? Can someone explain that to me?
> Thanks
> Marcin
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
1PPS is used to provide timestamp-clock synchronization across multiple=20
devices, typically.=C2=A0 This is important when your application require=
s=20
this, such as in MIMO or
 =C2=A0 multi-receiver TDOA schemes, etc.

Basically, when you have multiple devices you use set_time_unknown_pps()=20
or set_time_next_pps() to signal to all devices in your multi_usrp=20
object=C2=A0 that at the next
 =C2=A0 1PPS, to set the timestamp clock to the value given in the the AP=
I call.

This turns out to be useful even in single devices that are "bicameral",=20
such as B210 and X310, where there are (for historic and architectural=20
reasons)
 =C2=A0 TWO timestamp clocks.=C2=A0 Use the 1PPS synchronization primitiv=
es causes=20
the internal timestamp clocks to become synchronized.


--------------MfYFCnuyVh0cgCZp1rUC1ouJ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-05-11 06:17, Marcin Puchlik
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAFghhNOMn+uGS5hNck9bAuhM9+_oiv1yjq494=3DsaGc7-M7Begw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hello Community,
        <div>Like in the topic, I know that a stable 10 MHz source is
          needed as a clock signal but why do we need=C2=A01 PPS signal? =
How
          is it used by the USRP hardware? Can someone explain that to
          me?</div>
        <div>Thanks</div>
        <div>
          <div dir=3D"ltr" class=3D"gmail_signature"
            data-smartmail=3D"gmail_signature">
            <div dir=3D"ltr">
              <div>Marcin</div>
            </div>
          </div>
        </div>
      </div>
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
    1PPS is used to provide timestamp-clock synchronization across
    multiple devices, typically.=C2=A0 This is important when your
    application requires this, such as in MIMO or<br>
    =C2=A0 multi-receiver TDOA schemes, etc.<br>
    <br>
    Basically, when you have multiple devices you use
    set_time_unknown_pps() or set_time_next_pps() to signal to all
    devices in your multi_usrp object=C2=A0 that at the next<br>
    =C2=A0 1PPS, to set the timestamp clock to the value given in the the=
 API
    call.<br>
    <br>
    This turns out to be useful even in single devices that are
    "bicameral", such as B210 and X310, where there are (for historic
    and architectural reasons)<br>
    =C2=A0 TWO timestamp clocks.=C2=A0 Use the 1PPS synchronization primi=
tives
    causes the internal timestamp clocks to become synchronized.<br>
    <br>
    <br>
  </body>
</html>

--------------MfYFCnuyVh0cgCZp1rUC1ouJ--

--===============3939301653928642457==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3939301653928642457==--
