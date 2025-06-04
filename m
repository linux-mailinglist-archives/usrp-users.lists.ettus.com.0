Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB4AACE000
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 16:15:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 729FB385E81
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 10:15:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749046515; bh=+MlY7e2ccKrvFGlI2j5Mmr6y+910VVZJDpUzBr6mxBo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EUKtuPS+6G4PEle+8Hl0K2zK4ah07XZlbDqPFZg3Wi80jGi/X/gjvaW/9Ckut/EA5
	 8GtNjWMoEMFDACn9rRaEzp1LRtPiFBzig2u0ttq7uNqQ6wqtwIJ9sAYcf2s/JF5+KC
	 0yjs58zPlVxu4YXynBAqvyEnAUK/rl6ID37SlQ5PoxpLVjPoW1Nw+ryrL5Lr1QJ85x
	 zlcJ0wWcthjZvdWHO8YhENup7yn3E3quhEx+3cyC2eQpyi/OQ6qb9B0+9FXMVVTyR5
	 poL4Oc4gDvLYckKujUICPJN5b800N1PnedoGy+RQIXHETTo8DazYdrHtSc8tUNJD4h
	 ocjXDSn//Grxw==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 978473859EB
	for <usrp-users@lists.ettus.com>; Wed,  4 Jun 2025 10:14:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eR3GPKDn";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6facba680a1so72706976d6.3
        for <usrp-users@lists.ettus.com>; Wed, 04 Jun 2025 07:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749046465; x=1749651265; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ba0oshesKJ8XUU6V4kSt1aVDyYlnJMsTfpGCUXRwqD8=;
        b=eR3GPKDnr4oF1Pt7X23tkOSe3SCRXx2ww8W6yrPPk0cy5JAa3JM0dEP2SkT89cH7Ro
         MCtnb+BwQJDvIYa0MRNOMYqt7IL3/tApDAxk0K6y6Jozzn76KHf5BnFf6YNCIMesbY/W
         HekLbLJwphajiY23Yd6RzUt3YVi2qMTefIY2nFPQ6in6HM6SLU6HdwZy0UwGxwg2w42Y
         TKlHlAkmla0TN4As9O46XrVHSpjfmnILzTHSqapxps7E5523tKXQd4y64/6n97DQDLOv
         FKxgSpSPbqynAwPK1nJQoYd3u4S52ls3vj1v9wvGLw2TUV/v3onliT/vEoTg6xS5ajnm
         xrFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749046465; x=1749651265;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ba0oshesKJ8XUU6V4kSt1aVDyYlnJMsTfpGCUXRwqD8=;
        b=W5oVstonbKA6GsZh2zA1zQ5uKvF7LDkh41yfpWcE7hjNHTdB3TCPS9J3cMaosjxHwV
         pPtNVLrKXS9s5SwhAmoXz2AQnbn158zog+hQCwtceqRHDqBEhOEIu3/Z880Kc2o1EJIP
         uZ+XuWhUHHcMxv82Rr+T4D4THDe7xtglZUBcPRekuCdXlFoW4PdO1i6Y5TDK0BbTpOJ/
         NP5ll77jrF6rW1o6GZ6EGOEpaaggh0saGqcwNLeaDRZXZloZ8OW0+GkgrjtIXE03ktXk
         Ev2GPzero0TSuC3Nuka/EBtGG5ifxR6pNw0KrRKxXJzIzi8+8snsUOCCz8JaGf4z6hos
         0WpQ==
X-Gm-Message-State: AOJu0YzhoHbwJvG7CgqXYn7/hsas0jz/yyzTHwZgCx6NlCUxSWhym28e
	ctzQLhEIUK3/BpIHP+PoIAUVHrnWaN4TmnMK1ozeP4TGKThi2HBEDtUu2qxeIsyb
X-Gm-Gg: ASbGncu1S7euSpVvvbVWvRYtxm+icNRNLbSAjveemXgXyDEVPyqRPGGODDpXTi7j/i8
	3mo+q0HrvS4oAe5scAsxWEhTuzUKMPS3WBUUamrVNFpQOoWtpFytF5AoTWahNMznS+FwuAcrFVp
	dVBdN4e8j8UVX4FOPxMR8xKmhsXjPhcfZgpbkyNuevlH3s/fyJjca9lIFhgfjcsODPrwnWlGD5f
	1j2hTScvc4MqVhvdj+guSeolSHaWf3mY74s7zD3kgq6ArnOEGkgdBsyOrlfRne7Yw14x9NnzuV0
	/3FVa6lJ9m/3Z4/ZzwKxPG/64eQ9m2oyEXN77YD0jqRYv9e5S/12HtLxgAcDW+PycOV3tDg=
X-Google-Smtp-Source: AGHT+IE+uQLtfjcO0yOU0moJYUBNb5dyBmrKp9/TtIWda2f+9wK65YZC6Ph8RHClABYwqq06PjjqFg==
X-Received: by 2002:a05:6214:20a3:b0:6fa:c55e:86a with SMTP id 6a1803df08f44-6faf7017083mr41874556d6.28.1749046464354;
        Wed, 04 Jun 2025 07:14:24 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.0.120])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6fac6d5b3f2sm99345246d6.63.2025.06.04.07.14.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 07:14:23 -0700 (PDT)
Message-ID: <d6cc7ac4-c3fe-4c2f-a09a-634d39c2b8ca@gmail.com>
Date: Wed, 4 Jun 2025 10:14:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <E4C41E70-C109-4196-A8EF-19E669AF1551@iis.ee.ethz.ch>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <E4C41E70-C109-4196-A8EF-19E669AF1551@iis.ee.ethz.ch>
Message-ID-Hash: 7JSKBRIFFCCABMXOJCGO6DD6GWN7Q527
X-Message-ID-Hash: 7JSKBRIFFCCABMXOJCGO6DD6GWN7Q527
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410: sampling phase alignment - phase calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7JSKBRIFFCCABMXOJCGO6DD6GWN7Q527/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7089057866784818556=="

This is a multi-part message in MIME format.
--===============7089057866784818556==
Content-Type: multipart/alternative;
 boundary="------------t5URuJvx0V9uydoLeATqcE0r"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------t5URuJvx0V9uydoLeATqcE0r
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2025-06-04 09:12, Frederik Zumegen wrote:
> Dear usrp-users,
>
> I am working with a USRP X410 model to receive OFDM signals on all=20
> four channels. I am also using a ULA as my radiating elements=20
> (antennas). From the received signal, I wish to acquire AoA=20
> information based on the phase of the channel estimates that I compute=20
> from the received known OFDM symbols.
>
> My first question is: must I set up a phase calibration procedure=20
> manually, like this application note=20
> <https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USRP_Dev=
ices>=C2=A0suggests,=20
> to calibrate the phase offsets between all four Rx channels? Or does=20
> the X410 have a built-in procedure that can calibrate the phase=20
> offsets between channels?
>
> Second: can someone explain to me which parts of the RF frontend cause=20
> the phase offset between channels? I have so far tried to understand=20
> the frontend based on the ZBX circuit diagram=20
> <https://files.ettus.com/manual/page_zbx.html>.
>
> Third: can someone point me to resources that present an=20
> implementation for a manual phase calibration procedure for the X410,=20
> if needed?
>
> I appreciate any help or shared experiences on this matter.
>
> Best regards,
> Frederik
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Phase offsets can be introduced by both the synthesizers and mixers and=20
the internal path-lengths in the design of the ZBX.

In *addition* the RFSOC itself CAN introduce phase-offsets, due to=20
clocking of the ADC.

I don't know to what extent this has all been taken care of at this=20
point -- my recollection is that early UHD for X410 did not provide for=20
multi-channel
 =C2=A0 phase coherence, but I believe that has all been implemented now,=
=20
BUT, that may not include phase-offset guarantees.=C2=A0=C2=A0 The design=
 has multiple
 =C2=A0 conversion stages (the ZBX and ultimately the RFSoC), and making =
sure=20
that phase offsets are zero becomes quite a bit more complicated when you
 =C2=A0 add more stages of mixers and synthesizers.

I have a query in internally on this.

Cheers

--------------t5URuJvx0V9uydoLeATqcE0r
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2025-06-04 09:12, Frederik Zumegen
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:E4C41E70-C109-4196-A8EF-19E669AF1551@iis.ee.ethz.ch">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      Dear usrp-users,
      <div><br>
      </div>
      <div>I am working with a USRP X410 model to receive OFDM signals
        on all four channels. I am also using a ULA as my radiating
        elements (antennas). From the received signal, I wish to acquire
        AoA information based on the phase of the channel estimates that
        I compute from the received known OFDM symbols.</div>
      <div><br>
      </div>
      <div>My first question is: must I set up a phase calibration
        procedure manually, like=C2=A0<a
href=3D"https://kb.ettus.com/Synchronization_and_MIMO_Capability_with_USR=
P_Devices"
          moz-do-not-send=3D"true">this application note</a>=C2=A0suggest=
s, to
        calibrate the phase offsets between all four Rx channels? Or
        does the X410 have a built-in procedure that can calibrate the
        phase offsets between channels?</div>
      <div><br>
      </div>
      <div>Second: can someone explain to me which parts of the RF
        frontend cause the phase offset between channels? I have so far
        tried to understand the frontend based on the=C2=A0<a
          href=3D"https://files.ettus.com/manual/page_zbx.html"
          moz-do-not-send=3D"true">ZBX circuit diagram</a>.</div>
      <div><br>
      </div>
      <div>Third: can someone point me to resources that present an
        implementation for a manual phase calibration procedure for the
        X410, if needed?</div>
      <div><br>
      </div>
      <div>I appreciate any help or shared experiences on this matter.</d=
iv>
      <div><br>
      </div>
      <div>Best regards,</div>
      <div>Frederik</div>
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
    Phase offsets can be introduced by both the synthesizers and mixers
    and the internal path-lengths in the design of the ZBX.<br>
    <br>
    In *addition* the RFSOC itself CAN introduce phase-offsets, due to
    clocking of the ADC.<br>
    <br>
    I don't know to what extent this has all been taken care of at this
    point -- my recollection is that early UHD for X410 did not provide
    for multi-channel<br>
    =C2=A0 phase coherence, but I believe that has all been implemented n=
ow,
    BUT, that may not include phase-offset guarantees.=C2=A0=C2=A0 The de=
sign has
    multiple<br>
    =C2=A0 conversion stages (the ZBX and ultimately the RFSoC), and maki=
ng
    sure that phase offsets are zero becomes quite a bit more
    complicated when you<br>
    =C2=A0 add more stages of mixers and synthesizers.<br>
    <br>
    I have a query in internally on this.<br>
    <br>
    Cheers<br>
    <br>
  </body>
</html>

--------------t5URuJvx0V9uydoLeATqcE0r--

--===============7089057866784818556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7089057866784818556==--
