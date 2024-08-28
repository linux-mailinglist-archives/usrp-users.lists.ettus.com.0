Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6729634ED
	for <lists+usrp-users@lfdr.de>; Thu, 29 Aug 2024 00:40:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 369343857CF
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2024 18:40:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724884851; bh=8dbh/OzJpggUhJYbkZWqCv0jTkPcIja98UlLTqTg2d4=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=axLYr9MEIVIPya7RZhaOTCIDo6rBu2nmD3CRRJluZUpVtNERu9n1jDyEf1ZAfZWaP
	 dz5s6P1iZYZTGyNlUWprdEVnJqSh6Czmekw3W6s8QOCD3qq2qgKe/GlrMCtZCj6DPe
	 9vuiFw5C8YXiKrDcJAvEhnI/c3Dv7N4Xxbhxm8DYPzud1idnEUZSmFg/QOhy5WC5hh
	 w3q/EPTz//CT63BA+xDON6lAhurerhhXJJwGvbyeSzaGmTBfXU0prnwJ2b8WMPkxSh
	 d9rxIZCRa3mF8Ixj7fNq+54bYdDfEdPFK+IZDaQq8p4CI/neq/QF+LItRiMQS0VHFs
	 MJTB18UR6h2aw==
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mm2.emwd.com (Postfix) with ESMTPS id AB9093855DE
	for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 18:40:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="d3dh0lfO";
	dkim-atps=neutral
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3db2315d7ceso9198b6e.1
        for <usrp-users@lists.ettus.com>; Wed, 28 Aug 2024 15:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724884807; x=1725489607; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9GS/K8NKRsMjNV/Gboi4cpcvqnZOMAJzwIqRMiTYJaY=;
        b=d3dh0lfOCFXiMVlVwzY39FIUcspnQFeQxQ50k6MpK7Z9+28LURazCguawt7gEK+GnW
         NkYZx87IZ3RRK9HVyLy8NiBTyiRYVnUODuD0DLgPwl/jDtkAKzoXhQi3fuLE95f5kBvw
         A4PS1YXPBQaT62Dzs7xkpeM/EQ8Cbg8sT6M7GAOoNz7Yw6CCYcYjIPMiKmjEWRrHM6cA
         rq3XOn+Wcw6Wlgt/koQDtUIRASIDhW+k0EceJDOnlDWpnJS0TWdQTdwypy0m9xQY9tnq
         Q6w+JfH4dkrUCSyM5Fid+l2QXRxs+x4Yo8Jqps4z5YvgXQt/OvDYnA84tTkWCwcOM1n1
         HYkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724884807; x=1725489607;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9GS/K8NKRsMjNV/Gboi4cpcvqnZOMAJzwIqRMiTYJaY=;
        b=a9HiE/LDj8OXvCSVxbPSTpAM1QrI9IOjQcZnNG6p6qo9/Vv9PKuX21G76qfs3YeI9x
         ywHKMnJGVTJ9Ce0a/gqL9A/wcHASI7yF2wAWbCLMMG1V54nZ0mVfXrj7RL1eGx0sylx8
         SULnjO3rkOwbGo8pMwx3OBvYcjfsonZ0W+jQlHkXtV6/lDkCOET72h9l5lfQSe89+jef
         J9MHDy9QatMg2Wh+ObY9lYeYj92OxcqoC8ONVeQxeYObXc8bJtzuXaM5tdpEDXnZV9fA
         0Wr+OARc83mCeosnP1JfpR9ldms4AbgWr10HZiCINgphNoJQPjz7OBZ23qUttaKSUA1P
         Cp4A==
X-Gm-Message-State: AOJu0YxlK2AXUu6caPknEKATx9SELDB5bVw/fRq1ug+nDdhbgDgLr3XQ
	5cHATFBXInmtzoTUabu5PK6qSLFL+pHrRH/VNaRF584/qOnjuJXa
X-Google-Smtp-Source: AGHT+IHo5fm+ih3d28sScMQ2k8FDQ3PXkMJ6xucaqtNC7efk+QiAlG9ZcEgF3CwaG9IkXmm2+/+Naw==
X-Received: by 2002:a05:6808:2004:b0:3d9:dcbc:6b8d with SMTP id 5614622812f47-3df05ed59f0mr948478b6e.34.1724884806901;
        Wed, 28 Aug 2024 15:40:06 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-454fe196798sm65748051cf.73.2024.08.28.15.40.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2024 15:40:06 -0700 (PDT)
Message-ID: <f439a7f1-dc34-4f9e-8d10-b5502c0040d1@gmail.com>
Date: Wed, 28 Aug 2024 18:39:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steve Hamn <stevehamn311@gmail.com>
References: <CAOYGa72XPJnAFtD40sKpLFPnJf+627G49SgRmMPRPt9a79+U2Q@mail.gmail.com>
 <0bd53570-3d91-497f-ba4e-6c1df0ce87f1@gmail.com>
 <CAOYGa70FL9bHH6UR8u7WVZVoN4Nb8DA3KnsmHJrbJ2f2RCovPQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOYGa70FL9bHH6UR8u7WVZVoN4Nb8DA3KnsmHJrbJ2f2RCovPQ@mail.gmail.com>
Message-ID-Hash: M4OKQLCO6Y6RYS4U7WRQM7PHU3MVLXSP
X-Message-ID-Hash: M4OKQLCO6Y6RYS4U7WRQM7PHU3MVLXSP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Noise Figure
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M4OKQLCO6Y6RYS4U7WRQM7PHU3MVLXSP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3920667667577916579=="

This is a multi-part message in MIME format.
--===============3920667667577916579==
Content-Type: multipart/alternative;
 boundary="------------TE5f06ctOd9DhVm7YUZcVMaz"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------TE5f06ctOd9DhVm7YUZcVMaz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 28/08/2024 18:36, Steve Hamn wrote:
> Hi Marcus,
>
> Thanks. Understood, that all makes sense to me. Part of this is I'm=20
> trying to understand the base Noise Figure as a starting point so I=20
> can design my filtered low noise front end as you suggest.
>
> I guess you're confirming that 36.5dB is expected from the X440 and=20
> there's nothing crazy wrong about my math.
Might be a *bit* high, but like I said, ADCs have notoriously-high=20
equivalent noise figure.=C2=A0 I don't think anyone at NI/Emerson
 =C2=A0 has done a "hard characterization" of the equivalent noise figure=
,=20
because, well, it's always going to be "somewhere around
 =C2=A0 horrific".=C2=A0 Nobody would likely expect to connect this direc=
tly to an=20
antenna (except maybe on HF) and expect good results...


>
> Thanks,
>
> Steve
>
> On Wed, Aug 28, 2024, 3:15 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 28/08/2024 18:04, Steve Hamn wrote:
>     > Hello,
>     >
>     > I have been trying to estimate the Noise Figure of the X440. I
>     looked
>     > through all the documentation I could find and couldn't find it
>     > anywhere, so I tried to calculate it myself.
>     >
>     > It looks like the ZU2xDR RFSoC has a NSD of -146dBFS/Hz @ 2.4GHz
>     >
>     (https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-A=
DC-Performance-Characteristics)
>
>     > and the Full Scale Input is 1Vppd (0.707Vrms) @ 100ohms
>     >
>     (https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-A=
DC-Electrical-Characteristics)
>
>     > .
>     >
>     > Based on this information I calculate NSD of -139dBm/Hz
>     [-146dBFS/Hz +
>     > 10log10(0.707^2/100=CE=A9*1000)], so -139dBm/Hz - -174dBm/Hz give=
s Noise
>     > Figure of 35dB? Add the 1.5 insertion loss of the TCM2-63WX+ on t=
he
>     > Daughterboard (https://files.ettus.com/manual/page_fbx.html),
>     gives an
>     > approximate noise figure of the X440 at 36.5dB for 2.4GHz.
>     >
>     > Is this correct? Seems high, I don't have much experience
>     calculating
>     > noise figure from ADC's so I'm wondering if I'm missing something=
.
>     >
>     > Thanks,
>     >
>     > Steve
>     >
>     >
>     "Naked" ADCs are inherently very very noisy devices. Since the
>     X440 has
>     no RF pre-processing of any importance, you'd at
>     =C2=A0=C2=A0 least need a low-noise filtered front-end to beat the =
inherent ADC
>     noise into insignificance.=C2=A0=C2=A0=C2=A0 For other USRP radios,=
 mostly,
>     =C2=A0=C2=A0 that's already taken care of, and the receiver noise-f=
igure is
>     much
>     more "respectable"=C2=A0 (not, radio astronomy respectable,
>     =C2=A0=C2=A0 but adequate to put onto an over-the-air antenna).
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------TE5f06ctOd9DhVm7YUZcVMaz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 28/08/2024 18:36, Steve Hamn wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOYGa70FL9bHH6UR8u7WVZVoN4Nb8DA3KnsmHJrbJ2f2RCovPQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">
        <div>Hi Marcus,</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks. Understood, that all makes sense to me.
          Part of this is I'm trying to understand the base Noise Figure
          as a starting point so I can design my filtered low noise
          front end as you suggest.</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">I guess you're confirming that 36.5dB is
          expected from the X440 and there's nothing crazy wrong about
          my math.</div>
      </div>
    </blockquote>
    Might be a *bit* high, but like I said, ADCs have notoriously-high
    equivalent noise figure.=C2=A0 I don't think anyone at NI/Emerson<br>
    =C2=A0 has done a "hard characterization" of the equivalent noise fig=
ure,
    because, well, it's always going to be "somewhere around<br>
    =C2=A0 horrific".=C2=A0 Nobody would likely expect to connect this di=
rectly to
    an antenna (except maybe on HF) and expect good results...<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAOYGa70FL9bHH6UR8u7WVZVoN4Nb8DA3KnsmHJrbJ2f2RCovPQ@mail.gmai=
l.com">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks,</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Steve</div>
        <div dir=3D"auto"><br>
          <div class=3D"gmail_quote" dir=3D"auto">
            <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 28, 2024, 3=
:15
              PM Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote"
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">O=
n
              28/08/2024 18:04, Steve Hamn wrote:<br>
              &gt; Hello,<br>
              &gt;<br>
              &gt; I have been trying to estimate the Noise Figure of
              the X440. I looked <br>
              &gt; through all the documentation I could find and
              couldn't find it <br>
              &gt; anywhere, so I tried to calculate it myself.<br>
              &gt;<br>
              &gt; It looks like the ZU2xDR RFSoC has a NSD of
              -146dBFS/Hz @ 2.4GHz <br>
              &gt; (<a
href=3D"https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-=
ADC-Performance-Characteristics"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-Perf=
ormance-Characteristics</a>)
              <br>
              &gt; and the Full Scale Input is 1Vppd (0.707Vrms) @
              100ohms <br>
              &gt; (<a
href=3D"https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-=
ADC-Electrical-Characteristics"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://docs.amd.com/r/en-US/ds926-zynq-ultrascale-plus-rfsoc/RF-ADC-Elec=
trical-Characteristics</a>)
              <br>
              &gt; .<br>
              &gt;<br>
              &gt; Based on this information I calculate NSD of
              -139dBm/Hz [-146dBFS/Hz + <br>
              &gt; 10log10(0.707^2/100=CE=A9*1000)], so -139dBm/Hz -
              -174dBm/Hz gives Noise <br>
              &gt; Figure of 35dB? Add the 1.5 insertion loss of the
              TCM2-63WX+ on the <br>
              &gt; Daughterboard (<a
                href=3D"https://files.ettus.com/manual/page_fbx.html"
                rel=3D"noreferrer noreferrer" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://files.ettus.com/manual/page_fbx.html</a>),
              gives an <br>
              &gt; approximate noise figure of the X440 at 36.5dB for
              2.4GHz.<br>
              &gt;<br>
              &gt; Is this correct? Seems high, I don't have much
              experience calculating <br>
              &gt; noise figure from ADC's so I'm wondering if I'm
              missing something.<br>
              &gt;<br>
              &gt; Thanks,<br>
              &gt;<br>
              &gt; Steve<br>
              &gt;<br>
              &gt;<br>
              "Naked" ADCs are inherently very very noisy devices.=C2=A0
              Since the X440 has <br>
              no RF pre-processing of any importance, you'd at<br>
              =C2=A0=C2=A0 least need a low-noise filtered front-end to b=
eat the
              inherent ADC <br>
              noise into insignificance.=C2=A0=C2=A0=C2=A0 For other USRP=
 radios,
              mostly,<br>
              =C2=A0=C2=A0 that's already taken care of, and the receiver
              noise-figure is much <br>
              more "respectable"=C2=A0 (not, radio astronomy respectable,=
<br>
              =C2=A0=C2=A0 but adequate to put onto an over-the-air anten=
na).<br>
              <br>
              <br>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                rel=3D"noreferrer" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" rel=3D"noreferrer" moz-do-not-send=3D"t=
rue"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------TE5f06ctOd9DhVm7YUZcVMaz--

--===============3920667667577916579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3920667667577916579==--
