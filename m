Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5C34651A4
	for <lists+usrp-users@lfdr.de>; Wed,  1 Dec 2021 16:28:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 435A2385395
	for <lists+usrp-users@lfdr.de>; Wed,  1 Dec 2021 10:28:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a4fW2CgT";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 7AAAD3852C9
	for <usrp-users@lists.ettus.com>; Wed,  1 Dec 2021 10:27:17 -0500 (EST)
Received: by mail-qt1-f180.google.com with SMTP id t34so24363364qtc.7
        for <usrp-users@lists.ettus.com>; Wed, 01 Dec 2021 07:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=2gwBKGZRT4myTO+7eI+M6Fo/iSax7BIcSOGk8thRG4s=;
        b=a4fW2CgTbaNY93FiqEPPFBc1oQPpOHeCVnx3Ra4kqgAXUKsMIQfx69n6RiFHWLW2kr
         e+2C4/5IKTD4lnvFUaHf3KIfb39xSXxOCDaoNhydh0rJ0Y1+IO8Bq6HdvZHRr9P/a3/D
         861tkyGYVQK/NInZjmBcEL1rxY1Ijiq8fLmxPz2yqepuvzUaRGAHWJPjhlMLdySaEkQ0
         ltdUYIKXHIi7QiNtQEjduIdW6T9adu8vy1UEHR5TArJduFVCJIMyzTgg+MXF8pcEHNh+
         kCPAlzcp2LvWesjyiAs5wYgbA0Zfwo3KEmG1plQ96RoCkVoaeT++m4osTsAuQxtro2Tw
         7psw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=2gwBKGZRT4myTO+7eI+M6Fo/iSax7BIcSOGk8thRG4s=;
        b=x3SVet8NEVW2mccuFs7yTbhYOAOwoq/vJx8lpvaApiWUzoh8Aixq5BWZNNSd4WSe+F
         OPR7s6ROqCeoxjjKkIGGkBqa/Zl6XwwwSOkdL7/c+L6I1ATuvJq3ugEOFpekyNlv0SbO
         NlcN6Sq9wms39AdnUyMQxdJXDLW1Dtia2+GL2jZd9M23IwRll/vu3kCX7uMpbXqJic+a
         OK1v0RGfoLqKsCeH1uoKfZ0LxLgxo5qiz0ECbDjPXxF+1x38hiNCAwvkfDQjgj3RKKvd
         2WWW3i3KtJXYSozdrg80PDQuITU8zt6nI5+KwvH3M9oe/RKQ8PyC3EDNvyedS8XR3+gy
         byXA==
X-Gm-Message-State: AOAM531wjb+IXoOSI1vPEVNdUmBvEJ6mf8BlCP/smhaIyDW3UKkhH9q3
	c31wysUDB84DiC5a40wvBUyeUVvN7MM=
X-Google-Smtp-Source: ABdhPJxXmL2Es4B+Cxe+FcElLC1w0UUHffZwrKP3Flox+ugxtYURG7qCCJiqTnVknmCRmkdOiIDRWw==
X-Received: by 2002:a05:622a:1055:: with SMTP id f21mr7459814qte.421.1638372436983;
        Wed, 01 Dec 2021 07:27:16 -0800 (PST)
Received: from [192.168.2.221] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id bk39sm65246qkb.35.2021.12.01.07.27.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Dec 2021 07:27:16 -0800 (PST)
Message-ID: <70d46994-4381-0304-cd4e-758738cf83ec@gmail.com>
Date: Wed, 1 Dec 2021 10:27:15 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <MN2PR16MB350290C9B8C095A24BB79358B9669@MN2PR16MB3502.namprd16.prod.outlook.com>
 <c0883989-44e1-feab-c59b-f069c032c12c@gmail.com>
 <MN2PR16MB35020798AC36662AA6CA506CB9689@MN2PR16MB3502.namprd16.prod.outlook.com>
 <34902af7-c4cf-8aa3-1b00-62c6573116ec@gmail.com>
 <CAB__hTTDAxTLDcUKemJYPWvtT0HRQSTdRydHyBftF=fiBtTUag@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTTDAxTLDcUKemJYPWvtT0HRQSTdRydHyBftF=fiBtTUag@mail.gmail.com>
Message-ID-Hash: 4BNNXZ3CNNY3AS6XI6DAQATIEFZA3FOA
X-Message-ID-Hash: 4BNNXZ3CNNY3AS6XI6DAQATIEFZA3FOA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP streaming data performance
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4BNNXZ3CNNY3AS6XI6DAQATIEFZA3FOA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7960654758108328791=="

This is a multi-part message in MIME format.
--===============7960654758108328791==
Content-Type: multipart/alternative;
 boundary="------------cVk5AjjU3BC3ln5G8GYuH7oK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------cVk5AjjU3BC3ln5G8GYuH7oK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-01 10:22, Rob Kossler wrote:
> Perhaps post your actual command line and errors? Are you running 1 or=20
> 2 channels?
>
> It is my understanding (not necessarily correct) that a "D" is an=20
> error generated on the CPU side (not an error message from the FPGA).=20
> So, I think that the FPGA does not know anything bad is happening as=20
> it sends all of the sequential packets.=C2=A0 The CPU verifies the sequ=
ence=20
> index in each received packet and generates the "D" error when it=20
> detects an out-of-sequence packet (indicating that packets got dropped=20
> or swapped along the way).=C2=A0 This differs from an "O" error which c=
omes=20
> from the FPGA (radio block) when the radio has data ready to stuff in=20
> a FIFO but the FIFO is full because a downstream component (likely UHD=20
> running on the CPU) is not consuming fast enough and backpressures the=20
> stream.
>
There are USB-based 1GiG adapters that notoriously re-order packets.=C2=A0=
=20
This is soundly fatal for UDP-based transports, and severely performance=20
limiting for TCP transports.

This may be the situation here, but we need to hear back from Jonathan.



>
> On Tue, Nov 30, 2021 at 7:19 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2021-11-30 19:14, Jonathan Pratt wrote:
>>
>>     Have looked into the benchmark rate utility
>>     (uhd/host/build/examples/) which shows dropouts at any sample
>>     rate above 2MSPS. Have also run the same thing from a PC laptop
>>     running ubuntu 20.04 in a virtual machine with the same gnuradio
>>     (3.8), same uhd (4.0.0) and same gr-ettus (RFNoC 4). It also
>>     flags dropouts consistently at any sample rate above 2MSPS.=C2=A0 =
The
>>     fpga image for the X310 was downloaded and installed according to
>>     the instructions in the hardware manual
>>     (https://files.ettus.com/manual/page_usrp_x3x0.html). It appears
>>     to us that the issue lies with something to do with the X310 or
>>     software that is communicating with it, or the fpga image.
>>
>>     Is there any setup item we can change to get net traffic without
>>     dropouts? Will there be a problem if we don=E2=80=99t drain data f=
rom the
>>     other receives at the same time since there are four of them?
>>
>>     Thanks
>>
>>     Jonathan Pratt
>>
>     LOTS of people on this list *routinely* stream data out of their
>     X310s even over 1Gbit links at MUCH MUCH higher sample rates.=C2=A0
>     What kind of 1Gbit or 10Gbit interface do you
>     =C2=A0 have?=C2=A0 Are you using the SFP+ ports or the RJ-45 port?
>
>     What kind of computer is this on?=C2=A0 We generally DO NOT recomme=
nd
>     virtual machine implementations because the performance tends to
>     suffer, PARTICULARLY
>     =C2=A0 the Network and USB performance.
>
>
>>     *From:*Marcus D. Leech <patchvonbraun@gmail.com>
>>     <mailto:patchvonbraun@gmail.com>
>>     *Sent:* Tuesday, 30 November 2021 10:35 AM
>>     *To:* usrp-users@lists.ettus.com
>>     *Subject:* [USRP-users] Re: USRP streaming data performance
>>
>>     *WARNING:***This message has originated from an untrusted source.
>>     Be mindful of attachments and embedded links.
>>
>>     On 2021-11-29 18:22, Jonathan Pratt wrote:
>>
>>         We are looking to develop a standalone sdr platform
>>         connecting an nVidia Jetson AGX Xavier to a USRP X310. The
>>         X310 has two dual receiver boards installed but we are only
>>         trying to stream data from one core at this time.
>>
>>         The Xavier is an octacore ARM platform with all cores enabled
>>         and running close to 1.5GHz.
>>
>>         The connection between the two devices is via ethernet
>>         running at 1Gbit. The xavier has a x16 PCIe interface
>>         connector and we are using a NIC with 1Gbps SFP module =E2=80=93=
 we
>>         intend to run the link at 10Gbit in the future. The onboard
>>         1Gbps ethernet is connected to our LAN
>>
>>         The Xavier is running ubuntu 18.04 for arm. This is the
>>         development platform that nVidia provides. uhd 4.0.0,
>>         gnuradio 3.8 and RfNoC 4 have been installed on the Xavier.
>>
>>         The Xavier is given a simple flow to run under
>>         gnuradio-companion which consists of a USRP Source connected
>>         directly to =C2=A0the QT GUI Frequency sink (or Null Sink)
>>
>>         The network buffers and mtu on the xavier are increased to at
>>         least those recommended.
>>
>>         The result we get is a whole lot of =E2=80=98D=E2=80=99s outpu=
t if we
>>         increase the sample rate beyond 2MSPS. =C2=A0The same result i=
s
>>         found if we run the flow from the command line (without the gu=
i).
>>
>>         For comparison we have done a similar setup with a USRP E312
>>         =E2=80=93 connected to a xavier, a ubuntu 20 virtual machine a=
nd
>>         directly to a computer running ubuntu 20.04. In each case
>>         when we increase the sample rate beyond 2MSPS we get =E2=80=98=
O=E2=80=99s output.
>>
>>         Can anyone please indicate what setup is required to achieve
>>         the 25MSPS that should be possible across this link?
>>
>>         Thanks in advance
>>
>>
>>
>>         _______________________________________________
>>
>>         USRP-users mailing list --usrp-users@lists.ettus.com
>>
>>         To unsubscribe send an email tousrp-users-leave@lists.ettus.co=
m
>>
>>     You might want to run "benchmark_rate" from the UHD examples code
>>     to eliminate GR entirely at first--just to get a feel for what
>>     your machine is capable of.
>>
>>     I'll note that the "network mode" in E312 (where it streams to a
>>     regular PC) has *considerable* performance constraints, and
>>     achieving even 2Msps is a bit of a
>>     =C2=A0 miracle.
>>
>>     The X310, on the other hand, is Niagara Falls. Any
>>     streaming-performance issues are your host. The FPGA on the X310
>>     can stream to the xGIGe interfaces as fast as
>>     =C2=A0 physics allows, pretty much.
>>
>>     For a "order of magnitude" benchmark, I can achieve 10Msps from a
>>     B2xx into an Odroid XU4Q with 8-bit samples (there's a USB
>>     bandwidth issue there).=C2=A0 I can even
>>     =C2=A0 "do stuff" at 10Msps, including several different radio
>>     astronomy signal processing chains.=C2=A0 I would expect your Xavi=
er
>>     to be similar.
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

--------------cVk5AjjU3BC3ln5G8GYuH7oK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-01 10:22, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTDAxTLDcUKemJYPWvtT0HRQSTdRydHyBftF=3DfiBtTUag@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Perhaps post your actual command line and errors?
        Are you running 1 or 2 channels?=C2=A0=C2=A0
        <div><br>
        </div>
        <div>It is my understanding (not necessarily correct) that a "D"
          is an error generated on the CPU side (not an error message
          from the FPGA). So, I think that the FPGA does not know
          anything bad is happening as it sends all of the sequential
          packets.=C2=A0 The CPU verifies the sequence index in each rece=
ived
          packet and generates the "D" error when it detects an
          out-of-sequence packet (indicating that packets got dropped or
          swapped along the way).=C2=A0 This differs from an "O" error wh=
ich
          comes from the FPGA (radio block) when the radio has data
          ready to stuff in a FIFO but the FIFO is full because a
          downstream component (likely UHD running on the CPU) is not
          consuming fast enough and backpressures the stream.</div>
        <div><br>
        </div>
      </div>
    </blockquote>
    There are USB-based 1GiG adapters that notoriously re-order
    packets.=C2=A0 This is soundly fatal for UDP-based transports, and
    severely performance limiting for TCP transports.<br>
    <br>
    This may be the situation here, but we need to hear back from
    Jonathan.<br>
    <br>
    <br>
    =C2=A0 <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTTDAxTLDcUKemJYPWvtT0HRQSTdRydHyBftF=3DfiBtTUag@mail.gm=
ail.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 30, 2021 at 7:1=
9
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-11-30 19:14, Jonathan Pratt wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div>
                <p class=3D"MsoNormal">Have looked into the benchmark rat=
e
                  utility (uhd/host/build/examples/) which shows
                  dropouts at any sample rate above 2MSPS. Have also run
                  the same thing from a PC laptop running ubuntu 20.04
                  in a virtual machine with the same gnuradio (3.8),
                  same uhd (4.0.0) and same gr-ettus (RFNoC 4). It also
                  flags dropouts consistently at any sample rate above
                  2MSPS.=C2=A0 The fpga image for the X310 was downloaded=
 and
                  installed according to the instructions in the
                  hardware manual (<a
                    href=3D"https://files.ettus.com/manual/page_usrp_x3x0=
.html"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">https://files.ettus.c=
om/manual/page_usrp_x3x0.html</a>).
                  It appears to us that the issue lies with something to
                  do with the X310 or software that is communicating
                  with it, or the fpga image. </p>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal">Is there any setup item we can
                  change to get net traffic without dropouts? Will there
                  be a problem if we don=E2=80=99t drain data from the ot=
her
                  receives at the same time since there are four of
                  them?</p>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal">Thanks</p>
                <p class=3D"MsoNormal">Jonathan Pratt</p>
              </div>
            </blockquote>
            LOTS of people on this list *routinely* stream data out of
            their X310s even over 1Gbit links at MUCH MUCH higher sample
            rates.=C2=A0 What kind of 1Gbit or 10Gbit interface do you<br=
>
            =C2=A0 have?=C2=A0 Are you using the SFP+ ports or the RJ-45 =
port?<br>
            <br>
            What kind of computer is this on?=C2=A0 We generally DO NOT
            recommend virtual machine implementations because the
            performance tends to suffer, PARTICULARLY<br>
            =C2=A0 the Network and USB performance.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal">=C2=A0</p>
                <div>
                  <div
style=3D"border-right:none;border-bottom:none;border-left:none;border-top=
:1pt
                    solid rgb(225,225,225);padding:3pt 0cm 0cm">
                    <p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:<=
/span></b><span
                        lang=3D"EN-US"> Marcus D. Leech <a
                          href=3D"mailto:patchvonbraun@gmail.com"
                          target=3D"_blank" moz-do-not-send=3D"true">&lt;=
patchvonbraun@gmail.com&gt;</a>
                        <br>
                        <b>Sent:</b> Tuesday, 30 November 2021 10:35 AM<b=
r>
                        <b>To:</b> <a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">usrp-users@list=
s.ettus.com</a><br>
                        <b>Subject:</b> [USRP-users] Re: USRP streaming
                        data performance</span></p>
                  </div>
                </div>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p><strong><span
style=3D"font-family:Calibri,sans-serif;color:black;background:rgb(223,25=
5,0)">WARNING:</span></strong><strong><span
                      style=3D"font-family:Calibri,sans-serif"> </span></=
strong>This
                  message has originated from an untrusted source. Be
                  mindful of attachments and embedded links.<span></span>=
</p>
                <div>
                  <div>
                    <p class=3D"MsoNormal">On 2021-11-29 18:22, Jonathan
                      Pratt wrote:</p>
                  </div>
                  <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                    <p class=3D"MsoNormal">We are looking to develop a
                      standalone sdr platform connecting an nVidia
                      Jetson AGX Xavier to a USRP X310. The X310 has two
                      dual receiver boards installed but we are only
                      trying to stream data from one core at this time.</=
p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">The Xavier is an octacore ARM
                      platform with all cores enabled and running close
                      to 1.5GHz.</p>
                    <p class=3D"MsoNormal">The connection between the two
                      devices is via ethernet running at 1Gbit. The
                      xavier has a x16 PCIe interface connector and we
                      are using a NIC with 1Gbps SFP module =E2=80=93 we =
intend
                      to run the link at 10Gbit in the future. The
                      onboard 1Gbps ethernet is connected to our LAN </p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">The Xavier is running ubuntu
                      18.04 for arm. This is the development platform
                      that nVidia provides. uhd 4.0.0, gnuradio 3.8 and
                      RfNoC 4 have been installed on the Xavier.</p>
                    <p class=3D"MsoNormal">The Xavier is given a simple
                      flow to run under gnuradio-companion which
                      consists of a USRP Source connected directly to
                      =C2=A0the QT GUI Frequency sink (or Null Sink)</p>
                    <p class=3D"MsoNormal">The network buffers and mtu on
                      the xavier are increased to at least those
                      recommended.</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">The result we get is a whole
                      lot of =E2=80=98D=E2=80=99s output if we increase t=
he sample rate
                      beyond 2MSPS. =C2=A0The same result is found if we =
run
                      the flow from the command line (without the gui).</=
p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">For comparison we have done a
                      similar setup with a USRP E312 =E2=80=93 connected =
to a
                      xavier, a ubuntu 20 virtual machine and directly
                      to a computer running ubuntu 20.04. In each case
                      when we increase the sample rate beyond 2MSPS we
                      get =E2=80=98O=E2=80=99s output.</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">Can anyone please indicate wha=
t
                      setup is required to achieve the 25MSPS that
                      should be possible across this link?</p>
                    <p class=3D"MsoNormal">=C2=A0</p>
                    <p class=3D"MsoNormal">Thanks in advance</p>
                    <p class=3D"MsoNormal"><span><br>
                        <br>
                      </span></p>
                    <pre>_______________________________________________<=
/pre>
                    <pre>USRP-users mailing list -- <a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=
=3D"moz-txt-link-freetext">usrp-users@lists.ettus.com</a></pre>
                    <pre>To unsubscribe send an email to <a href=3D"mailt=
o:usrp-users-leave@lists.ettus.com" target=3D"_blank" moz-do-not-send=3D"=
true" class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.com</a=
></pre>
                  </blockquote>
                  <p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><sp=
an>You
                      might want to run "benchmark_rate" from the UHD
                      examples code to eliminate GR entirely at
                      first--just to get a feel for what your machine is
                      capable of.<br>
                      <br>
                      I'll note that the "network mode" in E312 (where
                      it streams to a regular PC) has *considerable*
                      performance constraints, and achieving even 2Msps
                      is a bit of a<br>
                      =C2=A0 miracle.<br>
                      <br>
                      The X310, on the other hand, is Niagara Falls.=C2=A0
                      Any streaming-performance issues are your host.=C2=A0
                      The FPGA on the X310 can stream to the xGIGe
                      interfaces as fast as<br>
                      =C2=A0 physics allows, pretty much.<br>
                      <br>
                      For a "order of magnitude" benchmark, I can
                      achieve 10Msps from a B2xx into an Odroid XU4Q
                      with 8-bit samples (there's a USB bandwidth issue
                      there).=C2=A0 I can even<br>
                      =C2=A0 "do stuff" at 10Msps, including several
                      different radio astronomy signal processing
                      chains.=C2=A0 I would expect your Xavier to be
                      similar.=C2=A0 <br>
                      <br>
                    </span></p>
                </div>
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
--------------cVk5AjjU3BC3ln5G8GYuH7oK--

--===============7960654758108328791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7960654758108328791==--
