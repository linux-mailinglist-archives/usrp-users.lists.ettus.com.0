Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0949A7376C
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 17:56:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D934138554F
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 12:56:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743094575; bh=bBQhuMErTr2AXS++Nx5TrwbDhV2RLqzjDD+Q1CUc5E0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=AM4eBkKs3p0HgSQIKN+wE0vaFF61W7m6inv/6AD5wt8wFBk3dDVBkSUus+7Dvrgnt
	 dwLOlyJXohuLVeMu/HW5ijS9zq0+PdVghPe0/A4Tg+Uege5plyh3bBuJ5BY6KYbmbL
	 ruIbMI73U2+5W6+5z+68+hMjdXsKr3BXax07Mkj+Mc8Ah/rtgwqwP2cjr80xHIdzHT
	 /sDzBiirKVLLHNnVzob8JDza0ecCUK9P2QD1k02CPJ+FBk26zrRjVxxH8du7vQ+K+C
	 uv0bd4i21m+thnqlMXaz8eawYf7gIE8LNp5E9C45tEfYXs9YRZKZG2lofJk9B3iqGu
	 k07e9An2dSioQ==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 637BF383891
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 12:55:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hbHFB6Rh";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-476a304a8edso12171131cf.3
        for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 09:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743094512; x=1743699312; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SwDQl+wMaZFGDX/qROqMYzGFKovGHPwye9gnIuDJj9s=;
        b=hbHFB6RhLfqhJC8ttFXzmn418QEQO+Bk9WuhM+SxUb35ZJbm/FmxKTh4E89SVl8r1A
         hDgJ9cPDUDCprEJRD4cnFqR/QvXWcSrTq8cMq/+tYxkAgsyUwPIqRpH3HAKxsmcbwT3K
         izBVx0xGYvrZatYHDRm6A2Fi1oc6Xe3JRxUkBBKMjDM8gnGxx6wg5GAWzu1uMeTnquCJ
         2CER5fpj9JqCtT99RLifES1sL81HpFkH3LlB13wiw8RlYwez5YwZHIeTDH0XNkZKOxzZ
         Tl2fXuzzfWMytrserwVTmy5fQCw6+S3vqywZ1q9JwjfEpD0ONvxANeBw/7o0UiMnZdA0
         rgZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743094512; x=1743699312;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SwDQl+wMaZFGDX/qROqMYzGFKovGHPwye9gnIuDJj9s=;
        b=QrPdokO8ukpY8DELzynadOL8mNSKpFzQp7rDCjwTc3/ay1Pna0875oiFa6RfBgKWGN
         caZ1qNtkFobtTYWMXBYmRDMSy2BVgV24u/DiHJjO0PsZOYwNNPa7yRHgjWBDuN5X3IbD
         RKDK7Lt6J4BHen95Hlg5bNQHTFhcP5k9s+SeVrBaAB9Ey4c/1xVxlEZzqPky0dexJdjI
         /kFpKDEfsQkCVes9SMxATtn6dJMKNiOMvEzUUDsfYYM/VL8ZORTHVbacN5yREHE0gveG
         E6lLT6BNn3SDKq93Um77XTiGMO5WwUE961gd3KlCY6JgVXCepst8khg/I8ER6PUezruE
         AbZg==
X-Gm-Message-State: AOJu0YwDI+L+z3UQ/EOtVTgRr4Wk5npqWT/7LKdgmoSEwRWNLvEROwI8
	6zYIQyuYnsZibEK89R2jO+XUJmQd+K51PhY0uc5orsWtojiqv6Vs+iAHLg==
X-Gm-Gg: ASbGncty/ifyZl/rLOejfRnOIl/ulSpRw5Pokkx+mx6K2SAWog8RKZ4voRRYElG6fRi
	h0tObDcNN1rJzTyxoiw4m2fnLRwjWdgsCWzxXZiOYLCQYwnuCBpq5o9ujQwqTMZkLr/xmtrmEGL
	JHTpCQdLEIIry0qHrqUcFrUc4GfGdqAIy+rQhS26eYOKXtQi3TQh3HsbY4aKX9mcn0nW++JDbtn
	41lKPOPjo3OaYavaNtf4QXdxnCkhMs9ukMUq+tHujR89Lfek+jq+TvyL7B1DVnbf+/YI89zr1ka
	D4LyaZPGgT7R81mxkQS+mrp9HkZwYy2r40/eQEm82VL1LC5W7r1fYHI=
X-Google-Smtp-Source: AGHT+IF/w8srlKWPVd8XjPrNSCJHfYAa7TMPj/Avob2gsyLyl9KmhmcQ/7z9W09KufHrDAol1fIrhA==
X-Received: by 2002:a05:622a:1f9b:b0:476:7112:4add with SMTP id d75a77b69052e-4776e0df63bmr84579921cf.18.1743094512249;
        Thu, 27 Mar 2025 09:55:12 -0700 (PDT)
Received: from [192.168.2.170] ([76.67.104.188])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-47782a829basm186251cf.46.2025.03.27.09.55.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 09:55:11 -0700 (PDT)
Message-ID: <b577024e-902c-4eed-8a32-409d7ba8335a@gmail.com>
Date: Thu, 27 Mar 2025 12:55:00 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CALM_BfYZML=gn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gmail.com>
Message-ID-Hash: KD5RLARPEHMLLH3ZT4AJRWTI6ZBGSSIN
X-Message-ID-Hash: KD5RLARPEHMLLH3ZT4AJRWTI6ZBGSSIN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KD5RLARPEHMLLH3ZT4AJRWTI6ZBGSSIN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8242522875000343686=="

This is a multi-part message in MIME format.
--===============8242522875000343686==
Content-Type: multipart/alternative;
 boundary="------------Lk200dqJq41MrIQTdwWEPn40"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Lk200dqJq41MrIQTdwWEPn40
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/03/2025 12:46, Heath Stamm wrote:
>
> Hi, I have an X440 loaded with the X4_200 FPGA image running UHD 4.6.=20
> Using the RFNoC API, I am streaming the same 1 MHz tone into two=20
> channels at the same time (timed command) using a TX streamer going=20
> through the DUC (upsampling from 10.24MSPS to 245.76MSPS) through the=20
> same Radio block (same daughtercard) going out two TX ports connected=20
> to a scope.
>
>
> While the two channels appear to be phase coherent - that is, their=20
> phase offset from each other doesn=E2=80=99t drift over time - they are=
 not=20
> phase aligned. Furthermore, the phase misalignment changes every time=20
> I rerun the script I am using to run this test.
>
>
> Is this expected behavior on the X440?
>
>
My understanding is that this is currently-expected behavior.=C2=A0 I thi=
nk=20
R&D have it on their "plate" to address this.

I'll point out that in many phase-coherent systems, like phased-array=20
antenna systems, interferometers, etc, it is
 =C2=A0 common to have to calibrate the phase offsets at system start-up,=
 and=20
from time-time while it is running.

An example that I'm fairly familiar with is the 7-antenna synthesis=20
array at DRAO in Penticton, BC.=C2=A0 They have a system
 =C2=A0 to actively measure and compensate the phase offsets caused by=20
different cable-system heating.
--------------Lk200dqJq41MrIQTdwWEPn40
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/03/2025 12:46, Heath Stamm wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALM_BfYZML=3Dgn1qcQEDVCc5W+DdeojAVxiFmKdmDESFuA1Ep6Q@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <p
style=3D"font-size:13px;margin:0px;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;font-size-adjust:none=
;font-kerning:auto;font-feature-settings:normal;font-stretch:normal;line-=
height:normal;font-family:&quot;Helvetica Neue&quot;">Hi,
          I have an X440 loaded with the X4_200 FPGA image running UHD
          4.6. Using the RFNoC API, I am streaming the same 1 MHz tone
          into two channels at the same time (timed command) using a TX
          streamer going through the DUC (upsampling from 10.24MSPS to
          245.76MSPS) through the same Radio block (same daughtercard)
          going out two TX ports connected to a scope.</p>
        <p
style=3D"font-size:13px;margin:0px;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;font-size-adjust:none=
;font-kerning:auto;font-feature-settings:normal;font-stretch:normal;line-=
height:normal;font-family:&quot;Helvetica Neue&quot;"><br>
        </p>
        <p
style=3D"font-size:13px;margin:0px;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;font-size-adjust:none=
;font-kerning:auto;font-feature-settings:normal;font-stretch:normal;line-=
height:normal;font-family:&quot;Helvetica Neue&quot;">While
          the two channels appear to be phase coherent - that is, their
          phase offset from each other doesn=E2=80=99t drift over time - =
they
          are not phase aligned. Furthermore, the phase misalignment
          changes every time I rerun the script I am using to run this
          test.=C2=A0</p>
        <p
style=3D"font-size:13px;margin:0px;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;font-size-adjust:none=
;font-kerning:auto;font-feature-settings:normal;font-stretch:normal;line-=
height:normal;font-family:&quot;Helvetica Neue&quot;"><br>
        </p>
        <p
style=3D"font-size:13px;margin:0px;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;font-variant-alternates:normal;font-size-adjust:none=
;font-kerning:auto;font-feature-settings:normal;font-stretch:normal;line-=
height:normal;font-family:&quot;Helvetica Neue&quot;">Is
          this expected behavior on the X440?</p>
      </div>
      <br>
    </blockquote>
    My understanding is that this is currently-expected behavior.=C2=A0 I
    think R&amp;D have it on their "plate" to address this.<br>
    <br>
    I'll point out that in many phase-coherent systems, like
    phased-array antenna systems, interferometers, etc, it is<br>
    =C2=A0 common to have to calibrate the phase offsets at system start-=
up,
    and from time-time while it is running.<br>
    <br>
    An example that I'm fairly familiar with is the 7-antenna synthesis
    array at DRAO in Penticton, BC.=C2=A0 They have a system<br>
    =C2=A0 to actively measure and compensate the phase offsets caused by
    different cable-system heating.=C2=A0 <br>
  </body>
</html>

--------------Lk200dqJq41MrIQTdwWEPn40--

--===============8242522875000343686==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8242522875000343686==--
