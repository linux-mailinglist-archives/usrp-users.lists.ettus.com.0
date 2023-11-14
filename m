Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C99287EB406
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 16:45:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23B4E385487
	for <lists+usrp-users@lfdr.de>; Tue, 14 Nov 2023 10:45:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699976749; bh=tG50KqEqkrMTmEZ/iDK1X/+2I9HQ+v3zrCYe3NMGC/Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fZQIVpsx1X8Oo8NX8vLiYatw6zzW+Pyx/jTWZT5A4UeSQTd4sRMePqMuGJxyQxj7w
	 N10cZW1qtAm1tu0RNGiu6cskbKuBzL6DSN09mRFuki1izzFFegm653GuDT3AvlI4vJ
	 cY9a/ISdWAxFGWLvyHfZnoQoQkcG7Pz95ldI/BLT+L6hcXvw94+vCo1eHk2S8S73RL
	 6ymUsFmZ6kWRrBDGNEV/GiWTttuh7VJ1y3D2l8LCZhSqCbYhw2kRjVpQz9jS0XCvAi
	 4C3x+xFX9EAtprw2oaB1nIDVdtKBpY5UXIYhS/0XLuCRy6Zs186niFGGXQBAwRItHf
	 nXP2vsK3GMMVg==
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 99F363852C7
	for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 10:42:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jqs+eZJ9";
	dkim-atps=neutral
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-778a92c06d6so350552985a.2
        for <usrp-users@lists.ettus.com>; Tue, 14 Nov 2023 07:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699976545; x=1700581345; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XeChEjYESDTtme+Hzt5xRfIScKvt7fvU3rBxOYdmjg4=;
        b=jqs+eZJ9Y31FfTyN185JIvwR3RFP9uRRPiMvOoByAJUZn2Xa/h9gGNgd7PthddAFDz
         oXRC73sj4lC92ROuyDpZY1Qbrh7LnC3AJXnV9Z79yC64HH9RpklC0l0x2NjJ8okbFcgk
         Jrvg1XECqCS+C9vcJ6Dr6Jqf1ngN0ANkUUYyW4RPZsq+ix8GwEwo3eyKmm7dmsTDbNhk
         djxAL0htE1T5q+1U7BeLyRMMzJgizPQE9ASnzceQpwCdtBK0CmJiMD7J6SEw/j+rD73g
         3IJOYHeGmzrnBlt6bo21IytiUrO8zJDik/zUVOEXsF1ZUR8Q4G/3a7aaZTpHex3dtAnj
         stYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699976545; x=1700581345;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XeChEjYESDTtme+Hzt5xRfIScKvt7fvU3rBxOYdmjg4=;
        b=eAnA02MAUvXersmDHPFK8IGdJjwUVz8V7FrXUax3FIHYdecVdt5O5uajBMpCF/gVes
         +WJzN53bp676+yl92sjd+6G+2JtDD1Uj4V3RRlJVSgMEoGbHNCjIOfdRckJ7qamD6X3o
         nAgRtzjBMwSadncpwpNh3UUfqf43d0hzqVM5g847iICl95Tv98t6ETvAwjYXiu/HlOeM
         hhzgWpwLXUspEA8HUcjaUaCVvQN2JgbpTzPfVLfG38nUmPJDdT4kdLfRfb8J/QM0OoN2
         plKui82ob0kDIkpnMeksFUiuvu1gyDoP5mXUqux7YoZ9UBn/YP7sH1dBygTAq18TAl7T
         dQsg==
X-Gm-Message-State: AOJu0YwFJtxuUIRGZHSWitQyAFKDaeP6xdQDJVpvpqpYA7NDVj3g9P2Q
	LvnlZAqBh+5umLFM13etLnpkni/L+bg=
X-Google-Smtp-Source: AGHT+IEBU3a50yn9PFHnC4gBXhVIsie7AsFnegdJdIllNEKtnriMk1gVIp9vjRuS0/Y/9N0/kYqvxQ==
X-Received: by 2002:a05:620a:2482:b0:77a:4462:1026 with SMTP id i2-20020a05620a248200b0077a44621026mr2828779qkn.60.1699976544938;
        Tue, 14 Nov 2023 07:42:24 -0800 (PST)
Received: from [192.168.2.175] ([174.88.54.173])
        by smtp.googlemail.com with ESMTPSA id f14-20020a05620a20ce00b0076dae4753efsm2729404qka.14.2023.11.14.07.42.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Nov 2023 07:42:24 -0800 (PST)
Message-ID: <d3e4747b-49d9-49af-a00a-9f46909d3ac5@gmail.com>
Date: Tue, 14 Nov 2023 10:42:15 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAB__hTQ0pt7MMKUQjQwZCej_k6LBjVLenGDHJwrqTZ_8eP=iQw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQ0pt7MMKUQjQwZCej_k6LBjVLenGDHJwrqTZ_8eP=iQw@mail.gmail.com>
Message-ID-Hash: 6IV6RYELH4VE6HZIEDN67RCFGNTL3JDJ
X-Message-ID-Hash: 6IV6RYELH4VE6HZIEDN67RCFGNTL3JDJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310/UBX Tx tuning issue introduced UHD 4.4?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6IV6RYELH4VE6HZIEDN67RCFGNTL3JDJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3602807315205044152=="

This is a multi-part message in MIME format.
--===============3602807315205044152==
Content-Type: multipart/alternative;
 boundary="------------MymmgbkZacX7B7vCAZ2eHFXh"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------MymmgbkZacX7B7vCAZ2eHFXh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/11/2023 22:29, Rob Kossler via USRP-users wrote:
> Hi,
> I am having an issue with successfully tuning the frequency for the Tx=20
> side of an X310/UBX and it appears to me that a bug was introduced in=20
> UHD 4.4 (I haven't checked more recent versions, but I expect that=20
> they are also affected).=C2=A0 The issue is that when you request a=20
> frequency such as 2450 MHz, the tune result returns with an=C2=A0actual=
=20
> frequency around 450 MHz, and there does not appear to be an RF signal=20
> at the requested frequency.
>
> I submitted an issue with Ettus' issue tracker. But, given the=20
> severity of this issue, I wanted to check with other users to find out=20
> if anyone is using the X310/UBX with UHD 4.4 or above and having=20
> success with Tx tuning.=C2=A0 If so, then it seems I am wrong.=C2=A0 Ca=
n anyone=20
> confirm one way or the other?
> Thanks.
> Rob
I haven't tried this myself.=C2=A0 There may be others in the support org=
.=20
who can try to reproduce and I've rattled their cage.
 =C2=A0 If this is real (and it hasn't been fixed in subsequent releases)=
=20
it's bad.



--------------MymmgbkZacX7B7vCAZ2eHFXh
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/11/2023 22:29, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQ0pt7MMKUQjQwZCej_k6LBjVLenGDHJwrqTZ_8eP=3DiQw@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi,
        <div>I am having an issue with successfully tuning the frequency
          for the Tx side of an X310/UBX and it appears to me that a bug
          was introduced in UHD 4.4 (I haven't checked more recent
          versions, but I expect that they are also affected).=C2=A0 The
          issue is that when you request a frequency such as 2450 MHz,
          the tune result returns with an=C2=A0actual frequency around 45=
0
          MHz, and there does not appear to be an RF signal at the
          requested frequency.</div>
        <div><br>
        </div>
        <div>I submitted an issue with Ettus' issue tracker. But, given
          the severity of this issue, I wanted to check with other users
          to find out if anyone is using the X310/UBX with UHD 4.4 or
          above and having success with Tx tuning.=C2=A0 If so, then it s=
eems
          I am wrong.=C2=A0 Can anyone confirm one way or the other?</div=
>
        <div>Thanks.</div>
        <div>Rob</div>
      </div>
    </blockquote>
    I haven't tried this myself.=C2=A0 There may be others in the support
    org. who can try to reproduce and I've rattled their cage.<br>
    =C2=A0 If this is real (and it hasn't been fixed in subsequent releas=
es)
    it's bad.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQ0pt7MMKUQjQwZCej_k6LBjVLenGDHJwrqTZ_8eP=3DiQw@mail.gm=
ail.com"><span
      style=3D"white-space: pre-wrap">
</span></blockquote>
    <br>
  </body>
</html>

--------------MymmgbkZacX7B7vCAZ2eHFXh--

--===============3602807315205044152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3602807315205044152==--
