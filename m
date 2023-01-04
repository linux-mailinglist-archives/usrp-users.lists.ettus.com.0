Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D6865DCC0
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jan 2023 20:30:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54F0538414B
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jan 2023 14:30:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672860627; bh=aJNQF69h3e4dJWVE28oYUlLnXUGlMrMTwrqLxYPIKTc=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BMRo7nGj9BS68x4RpzOSqBLcLf/9QN8QIg9NFEio03y3ULn23tN0F3EgYm6CNZyGv
	 fesN+bKJxK2kSfz7yu8Ytmc1y46La8ZKUno8/YTxO7BAlBaXEQku0uYHle8Vw5n7+n
	 1uOgrRa56jFOkvCg+CCtIqfoU1sJWbodvi+h9MS3ufsKSIzsoWS6S2gOG1+PeO7rL/
	 t2TYX9wXU/2aSlvnkUHKKAdRc58NVxSDNH6Ear5Davs1F/r4kqaitR5F9G2rt627N4
	 iybPIB7LsQDHbqPMU7SReNLhs/hUueBTav5vRnqkNhqJzsdLiT0Z9n1/3+q9DPuIW7
	 JEytPA6CZdyfA==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 0298D383F88
	for <usrp-users@lists.ettus.com>; Wed,  4 Jan 2023 14:30:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fhp4b8G1";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id a16so28043783qtw.10
        for <usrp-users@lists.ettus.com>; Wed, 04 Jan 2023 11:30:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m5leAmBj0qzJSRLwcEZjxVOvMjjb4Tkezc0HEqagC7Q=;
        b=Fhp4b8G1Vv687g0mAphMUUVLS/5iPl92ysGxVduoCeP2zsYfhrEy53sxgFE9dzLpZ5
         iuy+8GOtWhM9lhFut9QHrg2KDNfK10ZiB2Cbi3nevgDpoGepswQH1162zDTZWJONDVDX
         IVyfSkJHP1Qa+/w7ZvoaOreX1a9FhsXHu+MN+AoQcHgvjFodYrnN/RkCKQpNoT+ASkd1
         Y928xu4+RvVFV9XZWd7QtJxPvuBOhOBVT9gf7cErBjXteOgXU4WNFhA1f6LPKQ+w35Sh
         ZKSq953NGtpU8DX0kSY5OJcWrhgs986C4pwcAZP4FmMuNnq5zbivn+AahgAufwOh3leY
         0+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m5leAmBj0qzJSRLwcEZjxVOvMjjb4Tkezc0HEqagC7Q=;
        b=b+SZ/oFAnP7iWxmqkt1ebECgwC85bchnQpTcS9FUWaF9OEou41HAg735/DbWhCSLS2
         iSBjk47f4pgYNVS+X17SNvpWB0rouyJVu+tawNxHV0Dn5v6hqEaMyXEJOqOQWkiZAgX0
         MoHMbMoW1lzf2m+gHZgdQms72xlHk2MGWG4JHPa08iqEbpsDDV+b6BtPSgTvBzJiGgfz
         bYropc7mus6q0QXYRa9edZfj2ptD2vn51/5s6HNmZkAVyFKG3qE6MO7v1CjoOztPFZam
         OBgV+/eP7yiDB+1cluHi9JOcKcB8fb/HMxe5/BBUseTXyqU0G+4yYvOmHu5PiY8Z6XLl
         WM3w==
X-Gm-Message-State: AFqh2ko9LTp6YIKynPDl4muS5GSD4LCBSPtCRFfoZEFoIf99JS8Dmfdz
	4ne5Tc8KltmCxXg3zPSszuA=
X-Google-Smtp-Source: AMrXdXvooXbQ4RNg/MegC5L+VjREslT/sgKSNBWUP6Ri/h9xYiivv4/Yfnu7xNxr6iuY/yLZF0oZ9Q==
X-Received: by 2002:ac8:1247:0:b0:3a7:efe3:47c8 with SMTP id g7-20020ac81247000000b003a7efe347c8mr71402983qtj.6.1672860618370;
        Wed, 04 Jan 2023 11:30:18 -0800 (PST)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id q26-20020a05620a2a5a00b00704df12317esm21773547qkp.24.2023.01.04.11.30.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 11:30:17 -0800 (PST)
Message-ID: <fa245182-e5a4-d1d9-3e6f-c7dc4e0d169c@gmail.com>
Date: Wed, 4 Jan 2023 14:30:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Pedro Pereira <pedro60132@gmail.com>
References: <CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=RN2T-zYCxY2nZxbTyw@mail.gmail.com>
 <e55e5607-13e2-d6a9-6819-9a60c17540b5@ettus.com>
 <5c1a56c3-cf76-4ee9-c3ed-40411a5e0f3b@ettus.com>
 <CAD_5BAKmuyaAk2e8kExT1razs3gj31SVmhAm1ijm6dDroTmfGw@mail.gmail.com>
 <e0200c7a-b5a2-3466-a995-1c82394de282@gmail.com>
 <CAD_5BALryiGS7JBX04WADkLt_55J+eqjvodiBmsq97puX-ZTxQ@mail.gmail.com>
 <CAD_5BA+n2Q=SWkvufe+FXVwoS=vQsk5qt7_LozZ4pJqMmyvuHQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAD_5BA+n2Q=SWkvufe+FXVwoS=vQsk5qt7_LozZ4pJqMmyvuHQ@mail.gmail.com>
Message-ID-Hash: YF7TI7WMRIVH66H33RKZ242EUQV4VQLY
X-Message-ID-Hash: YF7TI7WMRIVH66H33RKZ242EUQV4VQLY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SDR environment with USRP & external FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YF7TI7WMRIVH66H33RKZ242EUQV4VQLY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2779204919065824685=="

This is a multi-part message in MIME format.
--===============2779204919065824685==
Content-Type: multipart/alternative;
 boundary="------------v3wsapdoO9oH9I3dOcxlShbd"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------v3wsapdoO9oH9I3dOcxlShbd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/01/2023 14:27, Pedro Pereira wrote:
>
>     it seems likely that you could port UHD to the Linux ARM CPU on
>     the ZCU102, and then you could talk to either the N210 or N310 via
>     the network ports from your ZCU102.
>
>
> As I said, I have an SW-only version of my receiver running on the=20
> ZCU102 and communicating with the USRP successfully. But the problem=20
> is I get the samples from the application level.
> In the Hybrid version of my receiver, I don't want to receive samples=20
> at the application level. As I said, I want to read directly in my=20
> hardware block design, in the ZCU102.
Ah, now it is becoming clearer.=C2=A0 You effectively want to implement w=
hat=20
UHD does, but in FPGA code on your ZCU102.

There's no *simple* path to doing that.=C2=A0 Certainly not a use-case th=
at=20
Ettus/NI have contemplated, and it's only marginally-likely
 =C2=A0 that anyone on this list has done so.


>
>         If you're asking "can I make my ZCU102 acquire samples from
>         either N310 or N210?" -- given that your ZCU102 has some SFP+
>         =C2=A0 ports that could be configured for 1GiGe (or even 10GiGe=
 in
>         the case of N310) -- it seems likely that you could port UHD to
>         =C2=A0 the Linux ARM CPU on the ZCU102, and then you could talk=
 to
>         either the N210 or N310 via the network ports from your ZCU102.
>
>
>>         On Tue, 3 Jan 2023 at 15:15, Marcus M=C3=BCller
>>         <marcus.mueller@ettus.com> wrote:
>>
>>             Note that the N310's FPGA might actually be large enough
>>             to fit in (parts of) a GNSS receiver, especially if you
>>             remove the DUC chain of the TX path, in case you don't
>>             need that. RFNoC is Ettus' framework for extending the
>>             FPGA functionality, especially made for such use cases.
>>
>>             Note that even in RFNoC you get a stream of samples from
>>             the radio frontend, which you basically paid NI/Ettus for
>>             to design it for you, so that you don't have to worry
>>             about how to talk to the physical hardware and can care
>>             about signal processing :)
>>
>>             Cheers,
>>             Marcus
>>
>>
>>             On 03.01.23 16:11, Marcus M=C3=BCller wrote:
>>>
>>>             Hi Mr Pereira,
>>>
>>>             the directest access you get to samples in the N210 is
>>>             the ethernet connection =E2=80=93 and that has no downsid=
e for
>>>             GNSS applications, as the VITA49 samples fully represent
>>>             the RF signal, thanks to Shannon-Nyquist.
>>>
>>>             That is, of course, unless you start modifying the FPGA
>>>             image of the N210, and make it a completely different
>>>             product. It's kind of unlikely you want to do that.
>>>
>>>             Greetings,
>>>             Marcus
>>>
>>>             On 03.01.23 14:25, Pedro Pereira wrote:
>>>
>>>>             Greetings,
>>>>
>>>>             I have 2 USRP front-ends - N210 and N310. I want to
>>>>             develop a GNSS Receiver inside my FGPA - xilinx ZCU102
>>>>             - and use one of the USRP devices only as the
>>>>             front-end. The receiver is quite large so I need an
>>>>             external board for all the signal processing chain. The
>>>>             receiver has two implementations - software-only &
>>>>             hybrid. In hybrid mode some tasks of the processing
>>>>             chain are accelerated in hardware.
>>>>
>>>>             The software-only version of the receiver running on my
>>>>             ZCU102 is able to configure the N210 and read packets
>>>>             over ethernet correctly. However, with the hybrid
>>>>             version of the receiver, I want to read the digital IQ
>>>>             samples from the front end directly in hardware.
>>>>
>>>>             For example, I am able to do this with the ZCU102
>>>>             connected to FMComm2/3 using the FMC connection on the
>>>>             FPGA. AD provides HDL reference designs to support
>>>>             communication between multiple front-ends and multiple
>>>>             FPGAs.
>>>>
>>>>             Is there a similar way to read the digital samples
>>>>             directly in hardware using the N210? The N210 only has
>>>>             the ethernet and a MIMO port.
>>>>
>>>>             Thanks in advance.
>>>>
>>>>
>>>>
>>>>             _______________________________________________
>>>>             USRP-users mailing list --usrp-users@lists.ettus.com
>>>>             To unsubscribe send an email tousrp-users-leave@lists.et=
tus.com
>>             _______________________________________________
>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>             To unsubscribe send an email to
>>             usrp-users-leave@lists.ettus.com
>>
>>
>>         _______________________________________________
>>         USRP-users mailing list --usrp-users@lists.ettus.com
>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.co=
m
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>

--------------v3wsapdoO9oH9I3dOcxlShbd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/01/2023 14:27, Pedro Pereira
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAD_5BA+n2Q=3DSWkvufe+FXVwoS=3DvQsk5qt7_LozZ4pJqMmyvuHQ@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
it
          seems likely that you could port UHD to the Linux ARM CPU on
          the ZCU102, and then you could talk to either the N210 or N310
          via the network ports from your ZCU102.<br>
        </blockquote>
        <div><br>
        </div>
        <div>As I said, I have an SW-only version of my receiver running
          on the ZCU102 and communicating with the USRP successfully.
          But the problem is I get the samples from the application
          level.=C2=A0</div>
        <div>In the Hybrid version of my receiver, I don't want to
          receive samples at the application level. As I said, I want to
          read directly in my hardware block design, in the ZCU102.</div>
      </div>
    </blockquote>
    Ah, now it is becoming clearer.=C2=A0 You effectively want to impleme=
nt
    what UHD does, but in FPGA code on your ZCU102.<br>
    <br>
    There's no *simple* path to doing that.=C2=A0 Certainly not a use-cas=
e
    that Ettus/NI have contemplated, and it's only marginally-likely<br>
    =C2=A0 that anyone on this list has done so.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAD_5BA+n2Q=3DSWkvufe+FXVwoS=3DvQsk5qt7_LozZ4pJqMmyvuHQ@mail.=
gmail.com"><br>
      <div class=3D"gmail_quote">
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div class=3D"gmail_quote">
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div> If you're asking "can I make my ZCU102 acquire
                samples from either N310 or N210?" -- given that your
                ZCU102 has some SFP+<br>
                =C2=A0 ports that could be configured for 1GiGe (or even
                10GiGe in the case of N310) -- it seems likely that you
                could port UHD to<br>
                =C2=A0 the Linux ARM CPU on the ZCU102, and then you coul=
d
                talk to either the N210 or N310 via the network ports
                from your ZCU102.<br>
                <br>
                <br>
                <blockquote type=3D"cite">
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Jan 2=
023
                      at 15:15, Marcus M=C3=BCller &lt;<a
                        href=3D"mailto:marcus.mueller@ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">marcus.mueller@et=
tus.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div>
                        <p>Note that the N310's FPGA might actually be
                          large enough to fit in (parts of) a GNSS
                          receiver, especially if you remove the DUC
                          chain of the TX path, in case you don't need
                          that. RFNoC is Ettus' framework for extending
                          the FPGA functionality, especially made for
                          such use cases.</p>
                        <p>Note that even in RFNoC you get a stream of
                          samples from the radio frontend, which you
                          basically paid NI/Ettus for to design it for
                          you, so that you don't have to worry about how
                          to talk to the physical hardware and can care
                          about signal processing :)</p>
                        <p>Cheers,<br>
                          Marcus<br>
                        </p>
                        <br>
                        <div>On 03.01.23 16:11, Marcus M=C3=BCller wrote:=
<br>
                        </div>
                        <blockquote type=3D"cite">
                          <p>Hi Mr Pereira,</p>
                          <p>the directest access you get to samples in
                            the N210 is the ethernet connection =E2=80=93=
 and
                            that has no downside for GNSS applications,
                            as the VITA49 samples fully represent the RF
                            signal, thanks to Shannon-Nyquist.</p>
                          <p>That is, of course, unless you start
                            modifying the FPGA image of the N210, and
                            make it a completely different product. It's
                            kind of unlikely you want to do that.</p>
                          <p>Greetings,<br>
                            Marcus<br>
                          </p>
                          <p>On 03.01.23 14:25, Pedro Pereira wrote:</p>
                          <blockquote type=3D"cite">
                            <div dir=3D"ltr">Greetings,
                              <div><br>
                              </div>
                              <div>I have 2 USRP front-ends - N210 and
                                N310. I want to develop a GNSS Receiver
                                inside my FGPA - xilinx ZCU102 - and use
                                one of the USRP devices only as the
                                front-end. The receiver is quite large
                                so I need an external board for all the
                                signal processing chain. The receiver
                                has two implementations - software-only
                                &amp; hybrid. In hybrid mode some tasks
                                of the processing chain are accelerated
                                in hardware.</div>
                              <div><br>
                              </div>
                              <div>The software-only version of the
                                receiver running on my ZCU102 is able to
                                configure the N210 and read packets over
                                ethernet correctly. However, with the
                                hybrid version of the receiver, I want
                                to read the digital IQ samples from the
                                front end directly in hardware.=C2=A0</di=
v>
                              <div><br>
                              </div>
                              <div>For example, I am able to do this
                                with the ZCU102 connected to=C2=A0<span>F=
MComm2/3
                                  using the FMC connection on the FPGA.
                                  AD provides HDL reference designs to
                                  support communication between multiple
                                  front-ends and multiple FPGAs.=C2=A0</s=
pan></div>
                              <div><span><br>
                                </span></div>
                              <div><span>Is there a similar way to read
                                  the digital samples directly in
                                  hardware using the N210? The N210 only
                                  has the ethernet and a MIMO port.</span=
></div>
                              <div><span><br>
                                </span></div>
                              <div><font face=3D"Barlow, Helvetica Neue,
                                  Helvetica, Arial, Lucida Grande,
                                  sans-serif" color=3D"#11171a"><span
                                    style=3D"font-size:14px">Thanks in
                                    advance.</span></font></div>
                              <div><span><br>
                                </span></div>
                              <div><span><br>
                                </span></div>
                            </div>
                            <br>
                            <fieldset></fieldset>
                            <pre>________________________________________=
_______
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
                          </blockquote>
                        </blockquote>
                      </div>
                      _______________________________________________<br>
                      USRP-users mailing list -- <a
                        href=3D"mailto:usrp-users@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">usrp-users@lists.=
ettus.com</a><br>
                      To unsubscribe send an email to <a
                        href=3D"mailto:usrp-users-leave@lists.ettus.com"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">usrp-users-leave@=
lists.ettus.com</a><br>
                    </blockquote>
                  </div>
                  <br>
                  <fieldset></fieldset>
                  <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
                </blockquote>
                <br>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
usrp-users@lists.ettus.com</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------v3wsapdoO9oH9I3dOcxlShbd--

--===============2779204919065824685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2779204919065824685==--
