Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1739CF20C
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2024 17:49:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D4EC385A50
	for <lists+usrp-users@lfdr.de>; Fri, 15 Nov 2024 11:48:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1731689324; bh=eaus0ONxY5N0IY4uEKFuV78v/LdoEUUp46k9I5LmBNk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zIMimJB4PZlrP/XOYZfDuC23/lHNmw4XUwGytzhyInNbpGu1dLqXvhmQGaWmGiUno
	 J2GUYzys9UcHIr6gLFf25+SiMHRLN/eZKR+bkNumy1tsSX4cjsKE63k3P2fLtiSr3Q
	 DuqF8tRKi2x2oQQtI91lZJmlCYxeg0V3fK/I08TqLhPcXXERzN4MUtLstBPyOgCTcm
	 RSGZIJeK8mWHa0uHfrQO6zYiwkYeJ8usAlAFAll7wTcWh3O8Yl5x0iToWb7u23FD60
	 dlFNLVwJnk44u9Btp9B5gIvd3CQ2l0XK9GHvJro6LzuUwt15Pbxo0Wsw2LlAUXUGSO
	 b0du0MaVZhnEw==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 63CAE3857C9
	for <usrp-users@lists.ettus.com>; Fri, 15 Nov 2024 11:48:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bDfySB/y";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7b1505ef7e3so114551885a.0
        for <usrp-users@lists.ettus.com>; Fri, 15 Nov 2024 08:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731689297; x=1732294097; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VnTLUYaoJJcVxqkWizcnnB2ELh7mkZ6iG3Z+VdCJJLg=;
        b=bDfySB/ycg1DeZtg9G+HT5sTl66BU6S2gMQB3VsRcIZqs+2O6Kk7Io9EXT5sDojPmR
         e7c2od8w9d1gYQ/krrw4vLnc4Pj8ZzfzS0U3XUlKvVhVjNAXvxaahsWKE6kY0mtbw+uO
         PM81AC6nNxrVtIgNsShwKRlW/aR08DKv7Cze4H8FyPE1qKnTb/qEPkU7Ju2kliyIOASY
         6Sv35lK44JmZDP/Z6cw/yV9vH4VbR9Y7wRl0VeLHuxoHIcya4iKkBSR32QAZEmoDVUUp
         h2AzL1xkqF5fx2hz7XnBq1hu6CRANDwWcXRIz+9fbAlc04FAhUCNwrfZAahxFapMJUqv
         4F7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731689297; x=1732294097;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VnTLUYaoJJcVxqkWizcnnB2ELh7mkZ6iG3Z+VdCJJLg=;
        b=PQmsHc6jyYbBiN5sIe6Np0Fwfy/4XHbKnt6trclyix5oIA7TZGTRPLzm7UOV886bpg
         KJzJIvlz/oCHAzQJCgeLtJGhxom6AlSDAVbbcXwXCTWQRz0xNnf2Z/WvLypckJIkpqXh
         rS2bmk8A5uXZH5LRhKof2hnI86H8+snXSahF8Jq3M4qH6wWQZzUbd958CndsEZ9ke0KQ
         g2ZWSePM8KJnyMGelDtoF2NpEPlbEdGuMAhewpVMq3g8MmxsGk8Ft8qvtghwsEwlwesh
         hFPRdhR7/GLYbHPapH+89Je4/kMCs0ZS9zYF8cxADZoBvho4yhekjuCnVANf0bcvlGDB
         YPUg==
X-Gm-Message-State: AOJu0Yz6UzNl1DBBqWD7wi6j0aCvCjkq5CVK2SuJnLroU5Pp+eCq6WfF
	/FToVYPR8OX8uYvyAdvSNHJwo4D5gOjqwg8uzzGME+ysaqYJraQYS9THfw==
X-Google-Smtp-Source: AGHT+IEvlAiS1uZTzteBgX7fDxTmU9Ft4bZdZcOUyQNV6OKuyzQhIreWYNUbzakByGaL2EzPBcpBbg==
X-Received: by 2002:a05:620a:4450:b0:7b3:5cf4:b82d with SMTP id af79cd13be357-7b362365cb5mr395900485a.52.1731689297256;
        Fri, 15 Nov 2024 08:48:17 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-7b35c99c492sm174592385a.28.2024.11.15.08.48.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 08:48:16 -0800 (PST)
Message-ID: <38edf3d1-8e5f-4747-88b7-71dbac43dd03@gmail.com>
Date: Fri, 15 Nov 2024 11:48:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <7yvZCxLlv3pM4c8LihtT3N8jgl1S69Mlv2M8UXNk@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <7yvZCxLlv3pM4c8LihtT3N8jgl1S69Mlv2M8UXNk@lists.ettus.com>
Message-ID-Hash: AUHUUU4RKG3G2WJXJDEJOTC7TMMHK2PI
X-Message-ID-Hash: AUHUUU4RKG3G2WJXJDEJOTC7TMMHK2PI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal Distortion and Phase Issues with USRP B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AUHUUU4RKG3G2WJXJDEJOTC7TMMHK2PI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7212685986384732416=="

This is a multi-part message in MIME format.
--===============7212685986384732416==
Content-Type: multipart/alternative;
 boundary="------------40sOocrorCU49bB1Ql4ucM0j"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------40sOocrorCU49bB1Ql4ucM0j
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 15/11/2024 08:19, yibindeng66@outlook.com wrote:
>
> Hi M=C3=BCller and Leech,
>
> Thanks for your help, and sorry for the ambiguity in my description.=20
> The signal I used in my first figure was a rectangular wave. In the=20
> other two figures, I used QAM-modulated data packets filtered with a=20
> root-raised cosine filter. As you mentioned, the tailing issue was=20
> indeed resolved after DSP tuning.
>
> However, I seem to have encountered a new problem. I tried to send a=20
> QAM data packet filtered with a root-raised cosine filter. According=20
> to theoretical analysis, it should be a band-limited signal. However,=20
> even after DSP tuning, the received signal at the receiving end has=20
> its energy distributed across the entire operating band, and it is=20
> difficult to demodulate correctly. Interestingly, this issue does not=20
> occur when I use Pluto to send the same signal. I have attached the=20
> code I used for sending.
>
> Additionally, I have a curiosity-driven question: do I need to=20
> constrain the input within the 0-1 range or any specific range?
>
Baseband signals using the default floating-point host-side=20
representation must be constrained to {-1.0,+1.0}, and
 =C2=A0 generally smaller than that to prevent saturation -- {-0.85,+0.85=
} is=20
often what I've used in the past.

You could also try backing your TX gain off by about 10dB -- you may be=20
getting a bit of clipping on the receive
 =C2=A0 side -- I think you'd mentioned a direct connection through a 30d=
B=20
attenuator.

Check that your signal in your .mat file doesn't exceed the required=20
baseband magnitude, as described above.


> Marcus D. Leech wrote:
>
>     On 11/11/2024 10:10, Marcus M=C3=BCller wrote:
>
>         Hello!
>
>         Regarding what you see in trailing, my guess is that this is
>         the step response of the built-in DC offset cancellation
>         filter; "DC offset cancellation" is high-pass filter
>         behaviour. This affects only frequencies in your signal that
>         are very low. It is meant to remove imperfections that happen
>         on every quadrature mixer&ADC device. So, unless you really
>         see a problem with the signal itself, this is probably fine!
>         You say you have an issue with this, but don't explain the
>         actual issue.
>
>         The phase in that trailing part can remain constant, that's
>         OK. The step response of a real-valued filter is real, and you
>         should simply see the phase of the last output sample at the
>         moment of "input switchoff".
>
>         Regarding "Amplitude and Signal length": I can't really tell
>         what you're showing us here. What kind of signal did you feed
>         into the USRP? Where does it come from? At which frequency?
>         What is the USRP tuned to? What's its sample rate? Most
>         importantly: What is it that worries you about this? As far as
>         I can tell, this might seem normal, and not an issue!
>
>         Best regards, Marcus
>
>     What type of signal?=C2=A0 Narrowband signals can be considerably m=
ore
>     affected by DC-offset correction than wideband =C2=A0 signals.=C2=A0=
 One can
>     use offset-tuning to move the signal outside the "view" of the
>     DC-offset correction.=C2=A0 The second =C2=A0 argument to "tune_req=
uest"
>     allows you to specify an offset.
>
>     Also, how are these devices connected?=C2=A0 "Over the air" or with=
 a
>     cable. If with a cable, please ensure that there's =C2=A0 adequate
>     attenuation in the cable to prevent overload or even damage to the
>     B210 front-end.
>
>         On 11.11.24 14:18, yibindeng66@outlook.com wrote:
>
>             Hi everyone,
>
>             I'm working on a project where I generate a signal and
>             simultaneously receive it using both the Pluto SDR and the
>             USRP B210. However, I=E2=80=99m running into some unexpecte=
d
>             issues with the B210's reception, and I=E2=80=99m hoping fo=
r some
>             guidance.
>
>             Here are the main problems I=E2=80=99m encountering:
>
>             /Signal Trailing/: As shown in the figures, The signal
>             received by the Pluto has clear boundaries, while the
>             signal received by the B210 has noticeable trailing
>             compared to the Pluto.
>
>             /Strange Phase Characteristics/: The phase behavior of the
>             B210-received signal is unusual. Specifically=EF=BC=8Cdurin=
g the
>             trailing phase of the signal, the phase remains constant,
>             which is unexpected. When there is no signal, the phase
>             appears to be chaotic.
>
>             /Amplitude and Signal Length/: As shown in the figure,
>             when the signal length is relatively short, both the
>             maximum and the average amplitude increase as the signal
>             length grows.
>
>             I suspect that each sample might be significantly
>             broadened in the time domain, but since I am not entirely
>             familiar with the USRP B210's hardware processing, I am
>             unsure if this is the root cause. I am wondering if these
>             issues could potentially be improved by modifying the
>             hardware configuration, such as adjusting the filter
>             settings or other parameters. The code I=E2=80=99m using fo=
r the
>             B210 receiver is attached.
>
>             Has anyone experienced similar issues or have suggestions
>             on adjusting the B210's configuration or setup to address
>             these distortions? Any insights would be greatly appreciate=
d.
>
>             Thanks in advance for your help!
>
>             -----------------------------------------------------------=
-------------
>
>             USRP-users mailing list --usrp-users@lists.ettus.com To
>             unsubscribe send an email tousrp-users-leave@lists.ettus.co=
m
>
>         ---------------------------------------------------------------=
---------
>
>         USRP-users mailing list --usrp-users@lists.ettus.com To
>         unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------40sOocrorCU49bB1Ql4ucM0j
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 15/11/2024 08:19,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yibindeng66@ou=
tlook.com">yibindeng66@outlook.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:7yvZCxLlv3pM4c8LihtT3N8jgl1S69Mlv2M8UXNk@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi M=C3=BCller and Leech,</p>
      <p>Thanks for your help, and sorry for the ambiguity in my
        description. The signal I used in my first figure was a
        rectangular wave. In the other two figures, I used QAM-modulated
        data packets filtered with a root-raised cosine filter. As you
        mentioned, the tailing issue was indeed resolved after DSP
        tuning.</p>
      <p>However, I seem to have encountered a new problem. I tried to
        send a QAM data packet filtered with a root-raised cosine
        filter. According to theoretical analysis, it should be a
        band-limited signal. However, even after DSP tuning, the
        received signal at the receiving end has its energy distributed
        across the entire operating band, and it is difficult to
        demodulate correctly. Interestingly, this issue does not occur
        when I use Pluto to send the same signal. I have attached the
        code I used for sending.</p>
      <p>Additionally, I have a curiosity-driven question: do I need to
        constrain the input within the 0-1 range or any specific range?</=
p>
    </blockquote>
    Baseband signals using the default floating-point host-side
    representation must be constrained to {-1.0,+1.0}, and<br>
    =C2=A0 generally smaller than that to prevent saturation -- {-0.85,+0=
.85}
    is often what I've used in the past.<br>
    <br>
    You could also try backing your TX gain off by about 10dB -- you may
    be getting a bit of clipping on the receive<br>
    =C2=A0 side -- I think you'd mentioned a direct connection through a =
30dB
    attenuator.<br>
    <br>
    Check that your signal in your .mat file doesn't exceed the required
    baseband magnitude, as described above.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:7yvZCxLlv3pM4c8LihtT3N8jgl1S69Mlv2M8UXNk@lists.ettus.com">
      <p>Marcus D. Leech wrote:</p>
      <blockquote>
        <p>On 11/11/2024 10:10, Marcus M=C3=BCller wrote:</p>
        <blockquote>
          <p>Hello!</p>
          <p>Regarding what you see in trailing, my guess is that this
            is the step
            response of the built-in DC offset cancellation filter; "DC
            offset
            cancellation" is high-pass filter behaviour. This affects
            only
            frequencies in your signal that are very low. It is meant to
            remove
            imperfections that happen on every quadrature mixer&amp;ADC
            device. So,
            unless you really see a problem with the signal itself, this
            is
            probably fine! You say you have an issue with this, but
            don't explain
            the actual issue.</p>
          <p>The phase in that trailing part can remain constant, that's
            OK. The
            step response of a real-valued filter is real, and you
            should simply
            see the phase of the last output sample at the moment of
            "input
            switchoff".</p>
          <p>Regarding "Amplitude and Signal length": I can't really
            tell what
            you're showing us here. What kind of signal did you feed
            into the
            USRP? Where does it come from? At which frequency? What is
            the USRP
            tuned to? What's its sample rate? Most importantly: What is
            it that
            worries you about this? As far as I can tell, this might
            seem normal,
            and not an issue!</p>
          <p>Best regards,
            Marcus</p>
        </blockquote>
        <p>What type of signal?=C2=A0 Narrowband signals can be considera=
bly
          more
          affected by DC-offset correction than wideband
          =C2=A0 signals.=C2=A0 One can use offset-tuning to move the sig=
nal
          outside the
          "view" of the DC-offset correction.=C2=A0 The second
          =C2=A0 argument to "tune_request" allows you to specify an offs=
et.</p>
        <p>Also, how are these devices connected?=C2=A0 "Over the air" or
          with a cable.=C2=A0
          If with a cable, please ensure that there's
          =C2=A0 adequate attenuation in the cable to prevent overload or
          even damage
          to the B210 front-end.</p>
        <blockquote>
          <p>On 11.11.24 14:18, <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:yibindeng66@outlook.com">yibindeng66@outlook.com</a> wrote:</=
p>
          <blockquote>
            <p>Hi everyone,</p>
            <p>I'm working on a project where I generate a signal and
              simultaneously
              receive it using both the Pluto SDR and the USRP B210.
              However, I=E2=80=99m
              running into some unexpected issues with the B210's
              reception, and
              I=E2=80=99m hoping for some guidance.</p>
            <p>Here are the main problems I=E2=80=99m encountering:</p>
            <p><em>Signal Trailing</em>: As shown in the figures, The
              signal received by
              the Pluto has clear boundaries, while the signal received
              by the B210
              has noticeable trailing compared to the Pluto.</p>
            <p><em>Strange Phase Characteristics</em>: The phase
              behavior of the
              B210-received signal is unusual. Specifically=EF=BC=8Cdurin=
g the
              trailing
              phase of the signal, the phase remains constant, which is
              unexpected.
              When there is no signal, the phase appears to be chaotic.</=
p>
            <p><em>Amplitude and Signal Length</em>: As shown in the
              figure, when the
              signal length is relatively short, both the maximum and
              the average
              amplitude increase as the signal length grows.</p>
            <p>I suspect that each sample might be significantly
              broadened in the
              time domain, but since I am not entirely familiar with the
              USRP
              B210's hardware processing, I am unsure if this is the
              root cause. I
              am wondering if these issues could potentially be improved
              by
              modifying the hardware configuration, such as adjusting
              the filter
              settings or other parameters. The code I=E2=80=99m using fo=
r the
              B210
              receiver is attached.</p>
            <p>Has anyone experienced similar issues or have suggestions
              on
              adjusting the B210's configuration or setup to address
              these
              distortions? Any insights would be greatly appreciated.</p>
            <p>Thanks in advance for your help!</p>
            <div contenteditable=3D"false">
              <hr></div>
            <p>USRP-users mailing list --usrp-users@lists.ettus.com
              To unsubscribe send an email
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:tousrp=
-users-leave@lists.ettus.com">tousrp-users-leave@lists.ettus.com</a></p>
          </blockquote>
          <div contenteditable=3D"false">
            <hr></div>
          <p>USRP-users mailing list --usrp-users@lists.ettus.com
            To unsubscribe send an email
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:tousrp-u=
sers-leave@lists.ettus.com">tousrp-users-leave@lists.ettus.com</a></p>
        </blockquote>
      </blockquote>
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
    <br>
  </body>
</html>

--------------40sOocrorCU49bB1Ql4ucM0j--

--===============7212685986384732416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7212685986384732416==--
