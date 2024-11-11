Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0A59C4197
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2024 16:10:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 781A0386610
	for <lists+usrp-users@lfdr.de>; Mon, 11 Nov 2024 10:10:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731337857; bh=xGTn7Xu70OG8lRbqa2jsxJ6QQiHNE9ncmjVl53/LV4o=;
	h=Date:To:References:From:In-Reply-To:Reply-To:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=idEJvX89xOr2FtoS9FV3oulfeBCGmhABjjl1t1KiP3QdzgZFEC8cTAslTiWLwko9V
	 2fekY2zvx9s1qEKUHXOtQkoeu9DhwB3y195Xmahh2PTBP2EMX69oQaUEbncaavosM8
	 GY3cUY3Ik77hvk65+7nlg1wXpjzFQGyPt/2vPJ3eHJQhvIC/RXKHanPA1C5woVXmKv
	 zLpywRfnkiir3N2hGbpkcKB7IPoFN8FYptV+PLAoIoOigIqrX+y7piWuupqQ5Yl/Dp
	 vSYwfK+qMsye7j47CWCyDFiokoyuNJQeGVVdEBFSjqbdFrcsZn4c2vLsli1yTO5uQe
	 phRvaD5O/PJXA==
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 2287C38655C
	for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2024 10:10:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="TPEBuEEE";
	dkim-atps=neutral
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4315e62afe0so43991945e9.1
        for <usrp-users@lists.ettus.com>; Mon, 11 Nov 2024 07:10:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1731337843; x=1731942643; darn=lists.ettus.com;
        h=in-reply-to:from:reply-to:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PwQc1GWrVqx8VzfdqAlV/P6ZgLCRhezXa6yu9BwwghI=;
        b=TPEBuEEEgJ6BX8xV48luk+EsWP+lRw1sYLZxHBq4YhahR7KymDMEyXAHbNdNQqjbmW
         Jo8paeksrRL2fYJDQ/sxiPMBtOAtfIeqZitmbCK1ZQpwmARd2z1PlSoAAa9qpK0rlcj2
         Nr++tfmA3aHZUgWGN7LbhVhNirIxp4btHeklJEMEjEqVRmLzUkymO8nsdAjSzyuO35oc
         sIwL5ABlg6EV98aNIsU1mkniBkFwDmhK2r+41QJADEWzhETvXHSv0nl1QtEu/949xlgd
         3aA1nxTRvbHr6kicLqhhHoW65wh+gZ9kHPNL9vUsebUIIXA2oIGqnxZWUANTj0upWl7e
         8mHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731337843; x=1731942643;
        h=in-reply-to:from:reply-to:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PwQc1GWrVqx8VzfdqAlV/P6ZgLCRhezXa6yu9BwwghI=;
        b=w3tTJ6Avf9+ska+jUi53OfeavgKrrk6UZRehLF4mkhsPz4sh0JBz8QOb9shPKoiTBE
         7XBeY41ay5oOJSxJ2N86QDcjjN6+OiCG+warIC8ITjeWrnuPQqHvjWTaNVvu1wSX9L78
         oP2y51VD1srqotLR5/Wu0sLFy8w5YNhD8+5FO1oT2R3/X8HOcP16AK2eU2tgd5Fz3u8E
         bvAoy3N1fl1BBZNjfYPx3/yt/VGNb5MqAosU4cpO8MppDk6g5N3gw+EnHBETfbkiuyuT
         Op4doojaqbiawEgSBQBcK0bpGHx+XTGpLLRqXco+TMrQgBQWr0jLJJoNEybboP+C9c6s
         XPaA==
X-Gm-Message-State: AOJu0YwLKrsY2jdrhqEKVHcCQs1EDsOCxSBo3GS50NSXdfB4IQzpoSRY
	iujQ7DwypZlgwrIG5NIwOoPcT2UeD4CdlwjMzCUCK4RIHgXiFKCAlHOPRUQmU4/8diWHkfKAA76
	K01Y=
X-Google-Smtp-Source: AGHT+IGGi/aRS/TrQUffiLsQpiclTs9NM7Tz/5siShfBts4qvrKriIta11wFtsPLhK9H6VXguh2pyA==
X-Received: by 2002:a05:6000:1449:b0:37d:452b:478f with SMTP id ffacd0b85a97d-381f1867330mr11128374f8f.4.1731337843300;
        Mon, 11 Nov 2024 07:10:43 -0800 (PST)
Received: from ?IPV6:2001:16b8:cc79:3700:10fc:1619:bea3:90d1? ([2001:16b8:cc79:3700:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed987d95sm13245244f8f.44.2024.11.11.07.10.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2024 07:10:42 -0800 (PST)
Message-ID: <332b6345-7db9-487b-acad-cba161de0bd9@ettus.com>
Date: Mon, 11 Nov 2024 16:10:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com, yibindeng66@outlook.com
References: <epNrry0rqxfry59kLwmGVbtWQqjomWNmPiMCUmbXJh8@lists.ettus.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <epNrry0rqxfry59kLwmGVbtWQqjomWNmPiMCUmbXJh8@lists.ettus.com>
Message-ID-Hash: 7IZTBO7UWLL74UVS37OZORJGOB3Y7SOO
X-Message-ID-Hash: 7IZTBO7UWLL74UVS37OZORJGOB3Y7SOO
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Reply-To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Signal Distortion and Phase Issues with USRP B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7IZTBO7UWLL74UVS37OZORJGOB3Y7SOO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8536227614593422691=="

This is a multi-part message in MIME format.
--===============8536227614593422691==
Content-Type: multipart/alternative;
 boundary="------------trUGQs3yLrhfe3tWOpyl85vT"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------trUGQs3yLrhfe3tWOpyl85vT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello!

Regarding what you see in trailing, my guess is that this is the step res=
ponse of the=20
built-in DC offset cancellation filter; "DC offset cancellation" is high-=
pass filter=20
behaviour. This affects only frequencies in your signal that are very low=
. It is meant to=20
remove imperfections that happen on every quadrature mixer&ADC device. So=
, unless you=20
really see a problem with the signal itself, this is probably fine! You s=
ay you have an=20
issue with this, but don't explain the actual issue.

The phase in that trailing part can remain constant, that's OK. The step =
response of a=20
real-valued filter is real, and you should simply see the phase of the la=
st output sample=20
at the moment of "input switchoff".

Regarding "Amplitude and Signal length": I can't really tell what you're =
showing us here.=20
What kind of signal did you feed into the USRP? Where does it come from? =
At which=20
frequency? What is the USRP tuned to? What's its sample rate? Most import=
antly: What is it=20
that worries you about this? As far as I can tell, this might seem normal=
, and not an issue!


Best regards,
Marcus

On 11.11.24 14:18, yibindeng66@outlook.com wrote:
>
> Hi everyone,
>
> I'm working on a project where I generate a signal and simultaneously r=
eceive it using=20
> both the Pluto SDR and the USRP B210. However, I=E2=80=99m running into=
 some unexpected issues=20
> with the B210's reception, and I=E2=80=99m hoping for some guidance.
>
> Here are the main problems I=E2=80=99m encountering:
>
> *Signal Trailing*: As shown in the figures, The signal received by the =
Pluto has clear=20
> boundaries, while the signal received by the B210 has noticeable traili=
ng compared to=20
> the Pluto.
>
> *Strange Phase Characteristics*: The phase behavior of the B210-receive=
d signal is=20
> unusual. Specifically=EF=BC=8Cduring the trailing phase of the signal, =
the phase remains=20
> constant, which is unexpected. When there is no signal, the phase appea=
rs to be chaotic.
>
> *Amplitude and Signal Length*: As shown in the figure, when the signal =
length is=20
> relatively short, both the maximum and the average amplitude increase a=
s the signal=20
> length grows.
>
> I suspect that each sample might be significantly broadened in the time=
 domain, but=20
> since I am not entirely familiar with the USRP B210's hardware processi=
ng, I am unsure=20
> if this is the root cause. I am wondering if these issues could potenti=
ally be improved=20
> by modifying the hardware configuration, such as adjusting the filter s=
ettings or other=20
> parameters. The code I=E2=80=99m using for the B210 receiver is attache=
d.
>
> Has anyone experienced similar issues or have suggestions on adjusting =
the B210's=20
> configuration or setup to address these distortions? Any insights would=
 be greatly=20
> appreciated.
>
> Thanks in advance for your help!
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------trUGQs3yLrhfe3tWOpyl85vT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hello!<br>
    </p>
    <p>Regarding what you see in trailing, my guess is that this is the
      step response of the built-in DC offset cancellation filter; "DC
      offset cancellation" is high-pass filter behaviour. This affects
      only frequencies in your signal that are very low. It is meant to
      remove imperfections that happen on every quadrature mixer&amp;ADC
      device. So, unless you really see a problem with the signal
      itself, this is probably fine! You say you have an issue with
      this, but don't explain the actual issue.<br>
    </p>
    <p>The phase in that trailing part can remain constant, that's OK.
      The step response of a real-valued filter is real, and you should
      simply see the phase of the last output sample at the moment of
      "input switchoff".</p>
    <p>Regarding "Amplitude and Signal length": I can't really tell what
      you're showing us here. What kind of signal did you feed into the
      USRP? Where does it come from? At which frequency? What is the
      USRP tuned to? What's its sample rate? Most importantly: What is
      it that worries you about this? As far as I can tell, this might
      seem normal, and not an issue!</p>
    <p><br>
    </p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
    <div class=3D"moz-cite-prefix">On 11.11.24 14:18,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yibindeng66@ou=
tlook.com">yibindeng66@outlook.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:epNrry0rqxfry59kLwmGVbtWQqjomWNmPiMCUmbXJh8@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi everyone,</p>
      <p>I'm working on a project where I generate a signal and
        simultaneously receive it using both the Pluto SDR and the USRP
        B210. However, I=E2=80=99m running into some unexpected issues wi=
th the
        B210's reception, and I=E2=80=99m hoping for some guidance.</p>
      <p>Here are the main problems I=E2=80=99m encountering:</p>
      <p><strong>Signal Trailing</strong>: As shown in the figures, The
        signal received by the Pluto has clear boundaries, while the
        signal received by the B210 has noticeable trailing compared to
        the Pluto.</p>
      <p><strong>Strange Phase Characteristics</strong>: The phase
        behavior of the B210-received signal is unusual.
        Specifically=EF=BC=8Cduring the trailing phase of the signal, the=
 phase
        remains constant, which is unexpected. When there is no signal,
        the phase appears to be chaotic.</p>
      <p><strong>Amplitude and Signal Length</strong>: As shown in the
        figure, when the signal length is relatively short, both the
        maximum and the average amplitude increase as the signal length
        grows. </p>
      <p>I suspect that each sample might be significantly broadened in
        the time domain, but since I am not entirely familiar with the
        USRP B210's hardware processing, I am unsure if this is the root
        cause. I am wondering if these issues could potentially be
        improved by modifying the hardware configuration, such as
        adjusting the filter settings or other parameters. The code I=E2=80=
=99m
        using for the B210 receiver is attached.</p>
      <p>Has anyone experienced similar issues or have suggestions on
        adjusting the B210's configuration or setup to address these
        distortions? Any insights would be greatly appreciated.</p>
      <p>Thanks in advance for your help!</p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">____________________________=
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

--------------trUGQs3yLrhfe3tWOpyl85vT--

--===============8536227614593422691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8536227614593422691==--
