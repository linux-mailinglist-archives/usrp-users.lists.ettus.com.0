Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F716660508
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 17:45:56 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25F1538457C
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 11:45:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673023555; bh=t+iiR/g2rFelfDl9j89C2t71WVB5eYgnXHPtBfA2gBc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=oycC2JNaYmP50vC/31/+Bj6o7VYbNZRQdgl2mNu9gqjZ/T4mA9+URcli83ugyBPKZ
	 ROSpsUiR8eGGBat3y0BDd0EI1S9JBs3YqJBraCMPXYxrM79s3Ock5leTYaQ6bWx7kZ
	 obFCFcb4On4IJUgFPkxec2C1SuL4s1nsmRt6t2V7SHoKAxSEmm6lGIhCUEUYGDXdVC
	 B+P0ouSOCccGk8uXpV8WtQ5vbzDlmQ32M29gDXJsn8Ipax8W4O2Ww9ONVwzDbQerQX
	 KFtS8QaGJfkIK1lW+YBboV4XKw/wvW8EhumZAcPOQ1qyfJZ2CXMdg8MSQD88Oh+N44
	 WeOEPHn/QuXqw==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 10B2A384580
	for <usrp-users@lists.ettus.com>; Fri,  6 Jan 2023 11:44:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="SBKzUGcK";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id u19so4617925ejm.8
        for <usrp-users@lists.ettus.com>; Fri, 06 Jan 2023 08:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=doGTtrV58SdgLEO92JY7qViUHkMOqo7ymLJXVTgYDu4=;
        b=SBKzUGcKMf2wFJmpCJgt3jkfzNvskU8B/C9x5Ugkdw8AlhfHaWKM861BFTILT16QCX
         hs0oAtvl92qoSubeNQK0HPsN9V5+UUVWJOeuB/C7m3GtlFET3F4ARW5D+XsYmX7kQb87
         ET1E7mceMc17lEubu3qZiv8khii2FiFISQS6Q0F1NmoOo50JXwO/z9iUKUID0rZNJkMT
         Q8llpnpYpSi5yqM/EmdM8imEXCUfAW7b0HRLFyzrDEIojur/e85jUx7+POC5wk8Dpr/R
         Dx0yidDC++FhvLajVNnCUh447ca/KR8xStz8hY+EqSa4oMIRRX4Pny2Dk+o7HrrEZV3r
         CxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=doGTtrV58SdgLEO92JY7qViUHkMOqo7ymLJXVTgYDu4=;
        b=uYbweQEaZ/BRT4Iy4FhHJ6Ltv4vGvRJBMQugwi6XUwVYZYqQFh348oSZ0LTAKAEl/s
         wl2Kh7Q1NzXCh8SHr9PumkrEjSu0nU3VqgdnMIUEgrHchwdP3FpVPjIqWBtFRYvoBopM
         yY2E3ls9yzNch/aIm5fLkd0LLGIg1k1+uzR8CRzR34hh2C8sYoisnNt1IKP2OvStYadG
         uykN6IMCfx4e8GWtE0VzHIsS3+gRqmlGi22Kw6n8sR38jCyXBbgYgAvf/eD00U1Rt0nx
         Zf2QlN96prWD+Fj3Q+/VJz25hUL+LKPYRjrr3u/hMWyzJYLOGF+kuFHobT2ngF/5/ea+
         GDyA==
X-Gm-Message-State: AFqh2kq6uZjZc6s3bM7UUInIIkrYFqDGTC818asWq+fONWuajLerTezu
	MY4w/clq9sDHVIUSPVJ6fd3/78mphI/DCzssO1c=
X-Google-Smtp-Source: AMrXdXsQ9JyLfpSAGCV4F0LSEpXsN+2D5pvpcc7LXdtQFjSbuZlWAKTCNVq8bPYFG2Kvsxv6ZSWDTg==
X-Received: by 2002:a17:907:bb8b:b0:84d:1f41:1177 with SMTP id xo11-20020a170907bb8b00b0084d1f411177mr2495851ejc.68.1673023496789;
        Fri, 06 Jan 2023 08:44:56 -0800 (PST)
Received: from ?IPV6:2001:9e8:385c:b000:998f:ca6a:6065:3212? ([2001:9e8:385c:b000:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id nd38-20020a17090762a600b0084d1b34973dsm554312ejc.61.2023.01.06.08.44.56
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 08:44:56 -0800 (PST)
Message-ID: <83b896ed-a7fb-29a6-ff12-dd1d1b3c7348@ettus.com>
Date: Fri, 6 Jan 2023 17:44:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: usrp-users@lists.ettus.com
References: <CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=RN2T-zYCxY2nZxbTyw@mail.gmail.com>
 <e55e5607-13e2-d6a9-6819-9a60c17540b5@ettus.com>
 <5c1a56c3-cf76-4ee9-c3ed-40411a5e0f3b@ettus.com>
 <CAD_5BAKmuyaAk2e8kExT1razs3gj31SVmhAm1ijm6dDroTmfGw@mail.gmail.com>
 <e0200c7a-b5a2-3466-a995-1c82394de282@gmail.com>
 <CAD_5BALryiGS7JBX04WADkLt_55J+eqjvodiBmsq97puX-ZTxQ@mail.gmail.com>
 <CAD_5BA+n2Q=SWkvufe+FXVwoS=vQsk5qt7_LozZ4pJqMmyvuHQ@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAD_5BA+n2Q=SWkvufe+FXVwoS=vQsk5qt7_LozZ4pJqMmyvuHQ@mail.gmail.com>
Message-ID-Hash: UP4XUZFGRI5H2BFUXOQCIHYDKXX7XZOJ
X-Message-ID-Hash: UP4XUZFGRI5H2BFUXOQCIHYDKXX7XZOJ
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SDR environment with USRP & external FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UP4XUZFGRI5H2BFUXOQCIHYDKXX7XZOJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7346451425606785788=="

This is a multi-part message in MIME format.
--===============7346451425606785788==
Content-Type: multipart/alternative;
 boundary="------------FlNuHgLm7A4GywCF0aGp5vYo"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FlNuHgLm7A4GywCF0aGp5vYo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

With recent versions of UHD, you can use the normal CPU UHD code and tell=
 the USRP to=20
stream samples to a different IP address. That would be the address of yo=
ur PL-connected=20
10GBase ports on the ZCU102.



On 04.01.23 20:27, Pedro Pereira wrote:
>
>     it seems likely that you could port UHD to the Linux ARM CPU on the=
 ZCU102, and then
>     you could talk to either the N210 or N310 via the network ports fro=
m your ZCU102.
>
>
> As I said, I have an SW-only version of my receiver running on the ZCU1=
02 and=20
> communicating with the USRP successfully. But the problem is I get the =
samples from the=20
> application level.
> In the Hybrid version of my receiver, I don't want to receive samples a=
t the application=20
> level. As I said, I want to read directly in my hardware block design, =
in the ZCU102.
>
> On Wed, 4 Jan 2023 at 19:06, Pedro Pereira <pedro60132@gmail.com> wrote=
:
>
>         If you're asking "can you make your ZCU102 code run on the N310=
?" possibly.
>         There's a dual-core ARM CPU running Linux, and
>         =C2=A0 a large FPGA fabric.
>
>
>     Is there any documentation for doing this? My receiver is implement=
ed in c++, I
>     think I would have to implement device drivers to read data from th=
e hardware to the
>     software application.
>     I only found documentation for importing standard/custom hardware I=
P blocks to
>     gnuradio.
>
>     On Tue, 3 Jan 2023 at 16:36, Marcus D. Leech <patchvonbraun@gmail.c=
om> wrote:
>
>         On 03/01/2023 10:54, Pedro Pereira wrote:
>>         Thanks for the response.
>>
>>         I don=C2=B4t want to run the software component of the GNSS re=
ceiver on my computer,
>>         while connected to the N310 for heterogeneous processing - if =
that's what
>>         you're saying.
>>         I want an edge device running embedded linux, like I already h=
ave on my zcu102,
>>         to run both sw and hw components.
>>
>>         The first stages of the processing chain are in hardware so I =
don=C2=B4t want to
>>         read samples from the front-end at the application level. I wa=
nt to read
>>         samples directly from my hardware block design, do some heavy =
processing and
>>         deliver the results to the software application.
>>         I can do all of this using AD front-ends and their HDL referen=
ce designs. Is
>>         there any support to do this using N210 or N310?
>>
>>         Thanks again.
>>
>         It's still not entirely clear what it is you're asking.
>
>         The N310 has a Zynq FPGA + 2 AD9371 radios + 2 SFP+ network por=
ts.
>
>         This makes it somewhat similar to your ZCU102, but with radios =
already built-in.
>
>         If you're asking "can you make your ZCU102 code run on the N310=
?" possibly.=C2=A0
>         There's a dual-core ARM CPU running Linux, and
>         =C2=A0 a large FPGA fabric.
>
>         If you're asking "can I make my ZCU102 acquire samples from eit=
her N310 or
>         N210?" -- given that your ZCU102 has some SFP+
>         =C2=A0 ports that could be configured for 1GiGe (or even 10GiGe=
 in the case of N310)
>         -- it seems likely that you could port UHD to
>         =C2=A0 the Linux ARM CPU on the ZCU102, and then you could talk=
 to either the N210 or
>         N310 via the network ports from your ZCU102.
>
>
>>         On Tue, 3 Jan 2023 at 15:15, Marcus M=C3=BCller <marcus.muelle=
r@ettus.com> wrote:
>>
>>             Note that the N310's FPGA might actually be large enough t=
o fit in (parts
>>             of) a GNSS receiver, especially if you remove the DUC chai=
n of the TX path,
>>             in case you don't need that. RFNoC is Ettus' framework for=
 extending the
>>             FPGA functionality, especially made for such use cases.
>>
>>             Note that even in RFNoC you get a stream of samples from t=
he radio
>>             frontend, which you basically paid NI/Ettus for to design =
it for you, so
>>             that you don't have to worry about how to talk to the phys=
ical hardware and
>>             can care about signal processing :)
>>
>>             Cheers,
>>             Marcus
>>
>>
>>             On 03.01.23 16:11, Marcus M=C3=BCller wrote:
>>>
>>>             Hi Mr Pereira,
>>>
>>>             the directest access you get to samples in the N210 is th=
e ethernet
>>>             connection =E2=80=93 and that has no downside for GNSS ap=
plications, as the VITA49
>>>             samples fully represent the RF signal, thanks to Shannon-=
Nyquist.
>>>
>>>             That is, of course, unless you start modifying the FPGA i=
mage of the N210,
>>>             and make it a completely different product. It's kind of =
unlikely you want
>>>             to do that.
>>>
>>>             Greetings,
>>>             Marcus
>>>
>>>             On 03.01.23 14:25, Pedro Pereira wrote:
>>>
>>>>             Greetings,
>>>>
>>>>             I have 2 USRP front-ends - N210 and N310. I want to deve=
lop a GNSS
>>>>             Receiver inside my FGPA - xilinx ZCU102 - and use one of=
 the USRP devices
>>>>             only as the front-end. The receiver is quite large so I =
need an external
>>>>             board for all the signal processing chain. The receiver =
has two
>>>>             implementations - software-only & hybrid. In hybrid mode=
 some tasks of
>>>>             the processing chain are accelerated in hardware.
>>>>
>>>>             The software-only version of the receiver running on my =
ZCU102 is able to
>>>>             configure the N210 and read packets over ethernet correc=
tly. However,
>>>>             with the hybrid version of the receiver, I want to read =
the digital IQ
>>>>             samples from the front end directly in hardware.
>>>>
>>>>             For example, I am able to do this with the ZCU102 connec=
ted to FMComm2/3
>>>>             using the FMC connection on the FPGA. AD provides HDL re=
ference designs
>>>>             to support communication between multiple front-ends and=
 multiple FPGAs.
>>>>
>>>>             Is there a similar way to read the digital samples direc=
tly in hardware
>>>>             using the N210? The N210 only has the ethernet and a MIM=
O port.
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
>>             To unsubscribe send an email to usrp-users-leave@lists.ett=
us.com
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
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------FlNuHgLm7A4GywCF0aGp5vYo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>With recent versions of UHD, you can use the normal CPU UHD code
      and tell the USRP to stream samples to a different IP address.
      That would be the address of your PL-connected 10GBase ports on
      the ZCU102.</p>
    <p><br>
    </p>
    <br>
    <div class=3D"moz-cite-prefix">On 04.01.23 20:27, Pedro Pereira wrote=
:<br>
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
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, 4 Jan 2023 at 19:06=
,
          Pedro Pereira &lt;<a href=3D"mailto:pedro60132@gmail.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pedr=
o60132@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">If you're asking "can
              you make your ZCU102 code run on the N310?" possibly.=C2=A0
              There's a dual-core ARM CPU running Linux, and<br>
              =C2=A0 a large FPGA fabric.<br>
            </blockquote>
            <div><br>
            </div>
            <div>Is there any documentation for doing this? My receiver
              is implemented in c++, I think I would have to implement
              device drivers to read data from the hardware to the
              software application.</div>
            <div>I only found documentation for importing
              standard/custom hardware IP blocks to gnuradio.=C2=A0</div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Jan 2023 at
              16:36, Marcus D. Leech &lt;<a
                href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
patchvonbraun@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div>
                <div>On 03/01/2023 10:54, Pedro Pereira wrote:<br>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">Thanks for the response.
                    <div><br>
                    </div>
                    <div>I don=C2=B4t want to run the software component =
of
                      the GNSS receiver on my computer, while connected
                      to the N310 for heterogeneous processing - if
                      that's what you're saying.=C2=A0</div>
                    <div>I want an edge device running embedded linux,
                      like I already have on my zcu102, to run both sw
                      and hw components.</div>
                    <div><br>
                    </div>
                    <div>The first stages of the processing chain are in
                      hardware so I don=C2=B4t want to read samples from =
the
                      front-end at the application level. I want to read
                      samples directly from my hardware block design, do
                      some heavy processing and deliver the results to
                      the software application.=C2=A0</div>
                    <div>I can do all of this using AD front-ends and
                      their HDL reference designs. Is there any support
                      to do this using N210 or N310?</div>
                    <div><br>
                    </div>
                    <div>Thanks again.</div>
                  </div>
                  <br>
                </blockquote>
                It's still not entirely clear what it is you're asking.<b=
r>
                <br>
                The N310 has a Zynq FPGA + 2 AD9371 radios + 2 SFP+
                network ports.<br>
                <br>
                This makes it somewhat similar to your ZCU102, but with
                radios already built-in.<br>
                <br>
                If you're asking "can you make your ZCU102 code run on
                the N310?" possibly.=C2=A0 There's a dual-core ARM CPU
                running Linux, and<br>
                =C2=A0 a large FPGA fabric.<br>
                <br>
                If you're asking "can I make my ZCU102 acquire samples
                from either N310 or N210?" -- given that your ZCU102 has
                some SFP+<br>
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
  </body>
</html>

--------------FlNuHgLm7A4GywCF0aGp5vYo--

--===============7346451425606785788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7346451425606785788==--
