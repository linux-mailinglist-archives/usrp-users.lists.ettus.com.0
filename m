Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DC465DCB4
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jan 2023 20:26:12 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 778073842C0
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jan 2023 14:26:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672860371; bh=1rZ6xytKFMqVKPMR4YeEt7x0Ss5FsrgnwqZSvCYcrqc=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=whRozW3AhoOOAOgTCpjRGe2x3mUPrU0kD5AEiG6qCs34mKX/XvCI8i4ytbECwtQjJ
	 jDi9MqQ/sM0TwYKUVCYgU7KJ6Cpf0v1UVhLKjI23f5q3qK720aecAsZNBVZnxCzPEo
	 5jeN6t2WSefMaXQHOtZhkLMwfcoJ7MeVgZLZUScMtZylbHJcP1prnZDW9xJr48C3WZ
	 trXhlBUvdNKGCXDrnbJ/yB5QFiq8KdA3UfqCod+E9ujzPODVmjimN07Dvuy0GJRyGv
	 XX6uyZ5oc5xOc4ixvA2q6lbz5qlkDEHXr8fZ1baUYj63tpIQ8RGqwqFEYGVb8GxG8u
	 UKRtxZIDIb7lw==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id E3C0438408E
	for <usrp-users@lists.ettus.com>; Wed,  4 Jan 2023 14:26:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oKxmn9KM";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id bp44so25425812qtb.0
        for <usrp-users@lists.ettus.com>; Wed, 04 Jan 2023 11:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p9zaUdP5tDQQCd5xNSDsfFB3P691qPioMmHEqMX7+ks=;
        b=oKxmn9KMAtolQMzodjVYxU9zKjFjSkLhHYwWpLeqSguMHoZFMtuXIUFYQUMU2731AW
         0J+dnvnlxarisboSG8UWdwPZyhb11pE7Me6jntx9442tAJ+2bERMs9Zbuu9CE2G868GD
         oJf4l+csTVZOVtvT08Joija4ENFKSKrFlIW8Tm6tjl7BeCK+uQkXbCL0WbVGTRjGPmS1
         1Tc0chhhxt8PCSIx6O3DLsI0KOnZmQbXGBryIgm1TETS1ybhV6Y6CVtgWeLFHGoY8EGP
         /0j7iLXdz5QYPQf4vu4cmtcLD2lwWn/I9OZpaAg28m+ok1us4V4mzS/dmzuCThTnaGTo
         yj2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p9zaUdP5tDQQCd5xNSDsfFB3P691qPioMmHEqMX7+ks=;
        b=O2vySHFjtXshm91zF6wSuXTbE9neRZwFA3O0EJon5p+oAa0epFmGahPAytBGnm0lAJ
         YvWu2VWrSB0+ujqI6VnO9kzj5C6ER62RrSO0As5hxuPnLhDYIYZJ26KvUf7wyhR3A3WN
         6IGvke4mgSIfp2cZR7tMLLazW0fCHf1emFd8gj66chT6PXzJmf1rmydhIAhmwCHUHod7
         pHxdIMSgj7Q+AeFNfSyhMu2FNaDWmr+Fb43j6Avlr7+KvT4Tdhm+V37sAczAot+RwpDp
         nHSM833DZcjgtpytvsW0371/DS7azAcEXjMyTp6hV5hAvcqrY3iSip5N+oWyNL6u0nsp
         JCOA==
X-Gm-Message-State: AFqh2krTzMlnNPVhtAh0PSHqdTnfzElvEBtQbNzlU7vpXgH2VxiBKNB4
	V2Bfz3GwbPhv9/6KyAknP/9+0Mj6ve0=
X-Google-Smtp-Source: AMrXdXtMm64st2xFWt5dR2ytvPdilkoB7ifTEKu/3U1OpKH51UjtzyPGct2LEOMRDUZBUOwGsXBawQ==
X-Received: by 2002:ac8:4f16:0:b0:3a7:ec99:56e4 with SMTP id b22-20020ac84f16000000b003a7ec9956e4mr79630801qte.39.1672860363389;
        Wed, 04 Jan 2023 11:26:03 -0800 (PST)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id j18-20020ac86652000000b003a50248b89esm20480233qtp.26.2023.01.04.11.26.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 11:26:03 -0800 (PST)
Message-ID: <d9c39cdd-73fb-2d4a-99b0-df5fd45d9057@gmail.com>
Date: Wed, 4 Jan 2023 14:26:02 -0500
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
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAD_5BALryiGS7JBX04WADkLt_55J+eqjvodiBmsq97puX-ZTxQ@mail.gmail.com>
Message-ID-Hash: OOUZF4ONJU6UQKLW2HEP7OEBORYQ5K3A
X-Message-ID-Hash: OOUZF4ONJU6UQKLW2HEP7OEBORYQ5K3A
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SDR environment with USRP & external FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OOUZF4ONJU6UQKLW2HEP7OEBORYQ5K3A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1407006493169146093=="

This is a multi-part message in MIME format.
--===============1407006493169146093==
Content-Type: multipart/alternative;
 boundary="------------h3KtzW1TMhuayXnV091eHRiY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------h3KtzW1TMhuayXnV091eHRiY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/01/2023 14:06, Pedro Pereira wrote:
>
>     If you're asking "can you make your ZCU102 code run on the N310?"
>     possibly.=C2=A0 There's a dual-core ARM CPU running Linux, and
>     =C2=A0 a large FPGA fabric.
>
>
> Is there any documentation for doing this? My receiver is implemented=20
> in c++, I think I would have to implement device drivers to read data=20
> from the hardware to the software application.
> I only found documentation for importing standard/custom hardware IP=20
> blocks to gnuradio.
I'm still confused.=C2=A0 You still want to use the ZCU102 hardware? What=
=20
role, then, would the N310 play?=C2=A0 This is a use-case that
 =C2=A0 nobody at Ettus/NI has addressed, and, indeed, it's unlikely that=
=20
anyone on this list has tried to address this (confusing)
 =C2=A0 use case.


>
> On Tue, 3 Jan 2023 at 16:36, Marcus D. Leech <patchvonbraun@gmail.com>=20
> wrote:
>
>     On 03/01/2023 10:54, Pedro Pereira wrote:
>>     Thanks for the response.
>>
>>     I don=C2=B4t want to run the software component of the GNSS receiv=
er
>>     on my computer, while connected to the N310 for heterogeneous
>>     processing - if that's what you're saying.
>>     I want an edge device running embedded linux, like I already have
>>     on my zcu102, to run both sw and hw components.
>>
>>     The first stages of the processing chain are in hardware so I
>>     don=C2=B4t want to read samples from the front-end at the applicat=
ion
>>     level. I want to read samples directly from my hardware block
>>     design, do some heavy processing and deliver the results to the
>>     software application.
>>     I can do all of this using AD front-ends and their HDL reference
>>     designs. Is there any support to do this using N210 or N310?
>>
>>     Thanks again.
>>
>     It's still not entirely clear what it is you're asking.
>
>     The N310 has a Zynq FPGA + 2 AD9371 radios + 2 SFP+ network ports.
>
>     This makes it somewhat similar to your ZCU102, but with radios
>     already built-in.
>
>     If you're asking "can you make your ZCU102 code run on the N310?"
>     possibly.=C2=A0 There's a dual-core ARM CPU running Linux, and
>     =C2=A0 a large FPGA fabric.
>
>     If you're asking "can I make my ZCU102 acquire samples from either
>     N310 or N210?" -- given that your ZCU102 has some SFP+
>     =C2=A0 ports that could be configured for 1GiGe (or even 10GiGe in =
the
>     case of N310) -- it seems likely that you could port UHD to
>     =C2=A0 the Linux ARM CPU on the ZCU102, and then you could talk to
>     either the N210 or N310 via the network ports from your ZCU102.
>
>
>>     On Tue, 3 Jan 2023 at 15:15, Marcus M=C3=BCller
>>     <marcus.mueller@ettus.com> wrote:
>>
>>         Note that the N310's FPGA might actually be large enough to
>>         fit in (parts of) a GNSS receiver, especially if you remove
>>         the DUC chain of the TX path, in case you don't need that.
>>         RFNoC is Ettus' framework for extending the FPGA
>>         functionality, especially made for such use cases.
>>
>>         Note that even in RFNoC you get a stream of samples from the
>>         radio frontend, which you basically paid NI/Ettus for to
>>         design it for you, so that you don't have to worry about how
>>         to talk to the physical hardware and can care about signal
>>         processing :)
>>
>>         Cheers,
>>         Marcus
>>
>>
>>         On 03.01.23 16:11, Marcus M=C3=BCller wrote:
>>>
>>>         Hi Mr Pereira,
>>>
>>>         the directest access you get to samples in the N210 is the
>>>         ethernet connection =E2=80=93 and that has no downside for GN=
SS
>>>         applications, as the VITA49 samples fully represent the RF
>>>         signal, thanks to Shannon-Nyquist.
>>>
>>>         That is, of course, unless you start modifying the FPGA
>>>         image of the N210, and make it a completely different
>>>         product. It's kind of unlikely you want to do that.
>>>
>>>         Greetings,
>>>         Marcus
>>>
>>>         On 03.01.23 14:25, Pedro Pereira wrote:
>>>
>>>>         Greetings,
>>>>
>>>>         I have 2 USRP front-ends - N210 and N310. I want to develop
>>>>         a GNSS Receiver inside my FGPA - xilinx ZCU102 - and use
>>>>         one of the USRP devices only as the front-end. The receiver
>>>>         is quite large so I need an external board for all the
>>>>         signal processing chain. The receiver has two
>>>>         implementations - software-only & hybrid. In hybrid mode
>>>>         some tasks of the processing chain are accelerated in hardwa=
re.
>>>>
>>>>         The software-only version of the receiver running on my
>>>>         ZCU102 is able to configure the N210 and read packets over
>>>>         ethernet correctly. However, with the hybrid version of the
>>>>         receiver, I want to read the digital IQ samples from the
>>>>         front end directly in hardware.
>>>>
>>>>         For example, I am able to do this with the ZCU102 connected
>>>>         to FMComm2/3 using the FMC connection on the FPGA. AD
>>>>         provides HDL reference designs to support communication
>>>>         between multiple front-ends and multiple FPGAs.
>>>>
>>>>         Is there a similar way to read the digital samples directly
>>>>         in hardware using the N210? The N210 only has the ethernet
>>>>         and a MIMO port.
>>>>
>>>>         Thanks in advance.
>>>>
>>>>
>>>>
>>>>         _______________________________________________
>>>>         USRP-users mailing list --usrp-users@lists.ettus.com
>>>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.=
com
>>         _______________________________________________
>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>         To unsubscribe send an email to usrp-users-leave@lists.ettus.c=
om
>>
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------h3KtzW1TMhuayXnV091eHRiY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 04/01/2023 14:06, Pedro Pereira
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAD_5BALryiGS7JBX04WADkLt_55J+eqjvodiBmsq97puX-ZTxQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
If
          you're asking "can you make your ZCU102 code run on the N310?"
          possibly.=C2=A0 There's a dual-core ARM CPU running Linux, and<=
br>
          =C2=A0 a large FPGA fabric.<br>
        </blockquote>
        <div><br>
        </div>
        <div>Is there any documentation for doing this? My receiver is
          implemented in c++, I think I would have to implement device
          drivers to read data from the hardware to the software
          application.</div>
        <div>I only found documentation for importing standard/custom
          hardware IP blocks to gnuradio. <br>
        </div>
      </div>
    </blockquote>
    I'm still confused.=C2=A0 You still want to use the ZCU102 hardware?=C2=
=A0
    What role, then, would the N310 play?=C2=A0 This is a use-case that<b=
r>
    =C2=A0 nobody at Ettus/NI has addressed, and, indeed, it's unlikely t=
hat
    anyone on this list has tried to address this (confusing)<br>
    =C2=A0 use case.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAD_5BALryiGS7JBX04WADkLt_55J+eqjvodiBmsq97puX-ZTxQ@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Jan 2023 at 16:36=
,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">patc=
hvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 03/01/2023 10:54, Pedro Pereira wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thanks for the response.
                <div><br>
                </div>
                <div>I don=C2=B4t want to run the software component of t=
he
                  GNSS receiver on my computer, while connected to the
                  N310 for heterogeneous processing - if that's what
                  you're saying.=C2=A0</div>
                <div>I want an edge device running embedded linux, like
                  I already have on my zcu102, to run both sw and hw
                  components.</div>
                <div><br>
                </div>
                <div>The first stages of the processing chain are in
                  hardware so I don=C2=B4t want to read samples from the
                  front-end at the application level. I want to read
                  samples directly from my hardware block design, do
                  some heavy processing and deliver the results to the
                  software application.=C2=A0</div>
                <div>I can do all of this using AD front-ends and their
                  HDL reference designs. Is there any support to do this
                  using N210 or N310?</div>
                <div><br>
                </div>
                <div>Thanks again.</div>
              </div>
              <br>
            </blockquote>
            It's still not entirely clear what it is you're asking.<br>
            <br>
            The N310 has a Zynq FPGA + 2 AD9371 radios + 2 SFP+ network
            ports.<br>
            <br>
            This makes it somewhat similar to your ZCU102, but with
            radios already built-in.<br>
            <br>
            If you're asking "can you make your ZCU102 code run on the
            N310?" possibly.=C2=A0 There's a dual-core ARM CPU running Li=
nux,
            and<br>
            =C2=A0 a large FPGA fabric.<br>
            <br>
            If you're asking "can I make my ZCU102 acquire samples from
            either N310 or N210?" -- given that your ZCU102 has some
            SFP+<br>
            =C2=A0 ports that could be configured for 1GiGe (or even 10Gi=
Ge
            in the case of N310) -- it seems likely that you could port
            UHD to<br>
            =C2=A0 the Linux ARM CPU on the ZCU102, and then you could ta=
lk
            to either the N210 or N310 via the network ports from your
            ZCU102.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Jan 2023 =
at
                  15:15, Marcus M=C3=BCller &lt;<a
                    href=3D"mailto:marcus.mueller@ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">marcus.mueller@ettus.=
com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div>
                    <p>Note that the N310's FPGA might actually be large
                      enough to fit in (parts of) a GNSS receiver,
                      especially if you remove the DUC chain of the TX
                      path, in case you don't need that. RFNoC is Ettus'
                      framework for extending the FPGA functionality,
                      especially made for such use cases.</p>
                    <p>Note that even in RFNoC you get a stream of
                      samples from the radio frontend, which you
                      basically paid NI/Ettus for to design it for you,
                      so that you don't have to worry about how to talk
                      to the physical hardware and can care about signal
                      processing :)</p>
                    <p>Cheers,<br>
                      Marcus<br>
                    </p>
                    <br>
                    <div>On 03.01.23 16:11, Marcus M=C3=BCller wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <p>Hi Mr Pereira,</p>
                      <p>the directest access you get to samples in the
                        N210 is the ethernet connection =E2=80=93 and tha=
t has
                        no downside for GNSS applications, as the VITA49
                        samples fully represent the RF signal, thanks to
                        Shannon-Nyquist.</p>
                      <p>That is, of course, unless you start modifying
                        the FPGA image of the N210, and make it a
                        completely different product. It's kind of
                        unlikely you want to do that.</p>
                      <p>Greetings,<br>
                        Marcus<br>
                      </p>
                      <p>On 03.01.23 14:25, Pedro Pereira wrote:</p>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">Greetings,
                          <div><br>
                          </div>
                          <div>I have 2 USRP front-ends - N210 and N310.
                            I want to develop a GNSS Receiver inside my
                            FGPA - xilinx ZCU102 - and use one of the
                            USRP devices only as the front-end. The
                            receiver is quite large so I need an
                            external board for all the signal processing
                            chain. The receiver has two implementations
                            - software-only &amp; hybrid. In hybrid mode
                            some tasks of the processing chain are
                            accelerated in hardware.</div>
                          <div><br>
                          </div>
                          <div>The software-only version of the receiver
                            running on my ZCU102 is able to configure
                            the N210 and read packets over ethernet
                            correctly. However, with the hybrid version
                            of the receiver, I want to read the digital
                            IQ samples from the front end directly in
                            hardware.=C2=A0</div>
                          <div><br>
                          </div>
                          <div>For example, I am able to do this with
                            the ZCU102 connected to=C2=A0<span>FMComm2/3
                              using the FMC connection on the FPGA. AD
                              provides HDL reference designs to support
                              communication between multiple front-ends
                              and multiple FPGAs.=C2=A0</span></div>
                          <div><span><br>
                            </span></div>
                          <div><span>Is there a similar way to read the
                              digital samples directly in hardware using
                              the N210? The N210 only has the ethernet
                              and a MIMO port.</span></div>
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
                        <pre>____________________________________________=
___
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
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users-leave@list=
s.ettus.com</a><br>
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
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------h3KtzW1TMhuayXnV091eHRiY--

--===============1407006493169146093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1407006493169146093==--
