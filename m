Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FF946517E
	for <lists+usrp-users@lfdr.de>; Wed,  1 Dec 2021 16:23:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 278483851E2
	for <lists+usrp-users@lfdr.de>; Wed,  1 Dec 2021 10:23:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="GVofcBlx";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id CFD98385083
	for <usrp-users@lists.ettus.com>; Wed,  1 Dec 2021 10:22:50 -0500 (EST)
Received: by mail-yb1-f178.google.com with SMTP id j2so64378109ybg.9
        for <usrp-users@lists.ettus.com>; Wed, 01 Dec 2021 07:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=afFmJ2tld6Iox7o+eNvo8e0nwDqDxPF7fXszsMqPaog=;
        b=GVofcBlxapUPnISwnpF1jstdAevfNh8rFErIl0peMmEFxybanvHzhRqD8lQ/8Xshtv
         4lDq2QW6FxAp+zvMLvafSWkHhQ4RM6p8nwflxhttGwi1oRsgn31++C32EvnVDgb4eqGe
         WSjVTDnxcvJk5DCm7+mrG2AYfCj1ZuAZLUnDKaDa4+fMOudHSGOFBJPMcEMDRkvi92Qc
         RW7pcqw96B0lKVImm5YOzAmmC/zErSXXiYqPVZWNMsKbHEsCnXT1FCU1qHO6J1FDQeBl
         2o2n9A3bEdC3Z+KPBZxKzF7mgAl7sc9/cF/AtQ2oLjTJ3fDh+o0vpevb2uiiKIYU/L/8
         FI+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=afFmJ2tld6Iox7o+eNvo8e0nwDqDxPF7fXszsMqPaog=;
        b=aClF4Zp+RNpvFwnUor8efrbvVZ8kahRd16Ef6k1KtUr6S29vz84XHnjA9pZGg9TYFe
         OYkcAGCJ6UoTAPTDbSLzKhQdDkh1cTKjJ9G/woUvAXbxlNfPX85+BVmO65mqdkMV+Vj/
         ljeBDcVAeJSvOWEc0dVktXbeIZgejm8Wy7dJQgUSL+hSczPJMr3LHZ+EmWcQ1S97hUji
         X25b0QvjCwTSJOh4/w8Ji2kqDkmTDl+Isr0VBk9OWSd5qBrpSpfxloZbFlJAJmsbJ0Mn
         DcempSwMedMErWkW0BA5GkZusZRrVSAe+/LjQoXi80w/fPNGOdnXBdaoaLtPU9R4usQb
         efrQ==
X-Gm-Message-State: AOAM533egSRp/DgogcBgm+wwDbQCSaDFEoR1ACKXgBlLKK2y52uHrv/s
	x6ACOfCGaaHj4Uw9N+HwLmQDju/gUbNOE4HtYfpDRQLxun0=
X-Google-Smtp-Source: ABdhPJwEgK903gMSMFnERqsLRYYKikFx5zJfVu97QsXXNNAYgprgy7TJV3D+IqpHKvaBJQnfHQQCF4ofac5k62LGmWY=
X-Received: by 2002:a25:e755:: with SMTP id e82mr7791687ybh.389.1638372169811;
 Wed, 01 Dec 2021 07:22:49 -0800 (PST)
MIME-Version: 1.0
References: <MN2PR16MB350290C9B8C095A24BB79358B9669@MN2PR16MB3502.namprd16.prod.outlook.com>
 <c0883989-44e1-feab-c59b-f069c032c12c@gmail.com> <MN2PR16MB35020798AC36662AA6CA506CB9689@MN2PR16MB3502.namprd16.prod.outlook.com>
 <34902af7-c4cf-8aa3-1b00-62c6573116ec@gmail.com>
In-Reply-To: <34902af7-c4cf-8aa3-1b00-62c6573116ec@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 1 Dec 2021 10:22:39 -0500
Message-ID: <CAB__hTTDAxTLDcUKemJYPWvtT0HRQSTdRydHyBftF=fiBtTUag@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 3XQRNBYMMCGSKKKIYYXBCV2CSFA7D26Q
X-Message-ID-Hash: 3XQRNBYMMCGSKKKIYYXBCV2CSFA7D26Q
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP streaming data performance
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3XQRNBYMMCGSKKKIYYXBCV2CSFA7D26Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7009231827713500102=="

--===============7009231827713500102==
Content-Type: multipart/alternative; boundary="00000000000031533205d2173f35"

--00000000000031533205d2173f35
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Perhaps post your actual command line and errors? Are you running 1 or 2
channels?

It is my understanding (not necessarily correct) that a "D" is an error
generated on the CPU side (not an error message from the FPGA). So, I think
that the FPGA does not know anything bad is happening as it sends all of
the sequential packets.  The CPU verifies the sequence index in each
received packet and generates the "D" error when it detects an
out-of-sequence packet (indicating that packets got dropped or swapped
along the way).  This differs from an "O" error which comes from the FPGA
(radio block) when the radio has data ready to stuff in a FIFO but the FIFO
is full because a downstream component (likely UHD running on the CPU) is
not consuming fast enough and backpressures the stream.


On Tue, Nov 30, 2021 at 7:19 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-30 19:14, Jonathan Pratt wrote:
>
> Have looked into the benchmark rate utility (uhd/host/build/examples/)
> which shows dropouts at any sample rate above 2MSPS. Have also run the sa=
me
> thing from a PC laptop running ubuntu 20.04 in a virtual machine with the
> same gnuradio (3.8), same uhd (4.0.0) and same gr-ettus (RFNoC 4). It als=
o
> flags dropouts consistently at any sample rate above 2MSPS.  The fpga ima=
ge
> for the X310 was downloaded and installed according to the instructions i=
n
> the hardware manual (https://files.ettus.com/manual/page_usrp_x3x0.html).
> It appears to us that the issue lies with something to do with the X310 o=
r
> software that is communicating with it, or the fpga image.
>
>
>
> Is there any setup item we can change to get net traffic without dropouts=
?
> Will there be a problem if we don=E2=80=99t drain data from the other rec=
eives at
> the same time since there are four of them?
>
>
>
> Thanks
>
> Jonathan Pratt
>
> LOTS of people on this list *routinely* stream data out of their X310s
> even over 1Gbit links at MUCH MUCH higher sample rates.  What kind of 1Gb=
it
> or 10Gbit interface do you
>   have?  Are you using the SFP+ ports or the RJ-45 port?
>
> What kind of computer is this on?  We generally DO NOT recommend virtual
> machine implementations because the performance tends to suffer,
> PARTICULARLY
>   the Network and USB performance.
>
>
>
>
>
>
> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
> <patchvonbraun@gmail.com>
> *Sent:* Tuesday, 30 November 2021 10:35 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] Re: USRP streaming data performance
>
>
>
> *WARNING:* This message has originated from an untrusted source. Be
> mindful of attachments and embedded links.
>
> On 2021-11-29 18:22, Jonathan Pratt wrote:
>
> We are looking to develop a standalone sdr platform connecting an nVidia
> Jetson AGX Xavier to a USRP X310. The X310 has two dual receiver boards
> installed but we are only trying to stream data from one core at this tim=
e.
>
>
>
> The Xavier is an octacore ARM platform with all cores enabled and running
> close to 1.5GHz.
>
> The connection between the two devices is via ethernet running at 1Gbit.
> The xavier has a x16 PCIe interface connector and we are using a NIC with
> 1Gbps SFP module =E2=80=93 we intend to run the link at 10Gbit in the fut=
ure. The
> onboard 1Gbps ethernet is connected to our LAN
>
>
>
> The Xavier is running ubuntu 18.04 for arm. This is the development
> platform that nVidia provides. uhd 4.0.0, gnuradio 3.8 and RfNoC 4 have
> been installed on the Xavier.
>
> The Xavier is given a simple flow to run under gnuradio-companion which
> consists of a USRP Source connected directly to  the QT GUI Frequency sin=
k
> (or Null Sink)
>
> The network buffers and mtu on the xavier are increased to at least those
> recommended.
>
>
>
> The result we get is a whole lot of =E2=80=98D=E2=80=99s output if we inc=
rease the sample
> rate beyond 2MSPS.  The same result is found if we run the flow from the
> command line (without the gui).
>
>
>
> For comparison we have done a similar setup with a USRP E312 =E2=80=93 co=
nnected
> to a xavier, a ubuntu 20 virtual machine and directly to a computer runni=
ng
> ubuntu 20.04. In each case when we increase the sample rate beyond 2MSPS =
we
> get =E2=80=98O=E2=80=99s output.
>
>
>
> Can anyone please indicate what setup is required to achieve the 25MSPS
> that should be possible across this link?
>
>
>
> Thanks in advance
>
>
>
> _______________________________________________
>
> USRP-users mailing list -- usrp-users@lists.ettus.com
>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> You might want to run "benchmark_rate" from the UHD examples code to
> eliminate GR entirely at first--just to get a feel for what your machine =
is
> capable of.
>
> I'll note that the "network mode" in E312 (where it streams to a regular
> PC) has *considerable* performance constraints, and achieving even 2Msps =
is
> a bit of a
>   miracle.
>
> The X310, on the other hand, is Niagara Falls.  Any streaming-performance
> issues are your host.  The FPGA on the X310 can stream to the xGIGe
> interfaces as fast as
>   physics allows, pretty much.
>
> For a "order of magnitude" benchmark, I can achieve 10Msps from a B2xx
> into an Odroid XU4Q with 8-bit samples (there's a USB bandwidth issue
> there).  I can even
>   "do stuff" at 10Msps, including several different radio astronomy signa=
l
> processing chains.  I would expect your Xavier to be similar.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000031533205d2173f35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Perhaps post your actual command line and errors? Are you =
running 1 or 2 channels?=C2=A0=C2=A0<div><br></div><div>It is my understand=
ing (not necessarily correct) that a &quot;D&quot; is an error generated on=
 the CPU side (not an error message from the FPGA). So, I think that the FP=
GA does not know anything bad is happening as it sends all of the sequentia=
l packets.=C2=A0 The CPU verifies the sequence index in each received packe=
t and generates the &quot;D&quot; error when it detects an out-of-sequence =
packet (indicating that packets got dropped or swapped along the way).=C2=
=A0 This differs from an &quot;O&quot; error which comes from the FPGA (rad=
io block) when the radio has data ready to stuff in a FIFO but the FIFO is =
full because a downstream component (likely UHD running on the CPU) is not =
consuming fast enough and backpressures the stream.</div><div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Tue, Nov 30, 2021 at 7:19 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvon=
braun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-30 19:14, Jonathan Pratt
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal">Have looked into the benchmark rate utility
          (uhd/host/build/examples/) which shows dropouts at any sample
          rate above 2MSPS. Have also run the same thing from a PC
          laptop running ubuntu 20.04 in a virtual machine with the same
          gnuradio (3.8), same uhd (4.0.0) and same gr-ettus (RFNoC 4).
          It also flags dropouts consistently at any sample rate above
          2MSPS.=C2=A0 The fpga image for the X310 was downloaded and
          installed according to the instructions in the hardware manual
          (<a href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html" t=
arget=3D"_blank">https://files.ettus.com/manual/page_usrp_x3x0.html</a>).
          It appears to us that the issue lies with something to do with
          the X310 or software that is communicating with it, or the
          fpga image.
          <u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Is there any setup item we can change to
          get net traffic without dropouts? Will there be a problem if
          we don=E2=80=99t drain data from the other receives at the same t=
ime
          since there are four of them?<u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal">Thanks<u></u><u></u></p>
        <p class=3D"MsoNormal">Jonathan Pratt</p>
      </div>
    </blockquote>
    LOTS of people on this list *routinely* stream data out of their
    X310s even over 1Gbit links at MUCH MUCH higher sample rates.=C2=A0 Wha=
t
    kind of 1Gbit or 10Gbit interface do you<br>
    =C2=A0 have?=C2=A0 Are you using the SFP+ ports or the RJ-45 port?<br>
    <br>
    What kind of computer is this on?=C2=A0 We generally DO NOT recommend
    virtual machine implementations because the performance tends to
    suffer, PARTICULARLY<br>
    =C2=A0 the Network and USB performance.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <p class=3D"MsoNormal"><u></u><u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <div>
          <div style=3D"border-right:none;border-bottom:none;border-left:no=
ne;border-top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
            <p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b>=
<span lang=3D"EN-US"> Marcus
                D. Leech <a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> Tuesday, 30 November 2021 10:35 AM<br>
                <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> [USRP-users] Re: USRP streaming data
                performance<u></u><u></u></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p><strong><span style=3D"font-family:Calibri,sans-serif;color:blac=
k;background:rgb(223,255,0)">WARNING:</span></strong><strong><span style=3D=
"font-family:Calibri,sans-serif">
            </span></strong>This message has originated from an
          untrusted source. Be mindful of attachments and embedded
          links.<span><u></u><u></u></span></p>
        <div>
          <div>
            <p class=3D"MsoNormal">On 2021-11-29 18:22, Jonathan Pratt
              wrote:<u></u><u></u></p>
          </div>
          <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
            <p class=3D"MsoNormal">We are looking to develop a standalone
              sdr platform connecting an nVidia Jetson AGX Xavier to a
              USRP X310. The X310 has two dual receiver boards installed
              but we are only trying to stream data from one core at
              this time.<u></u><u></u></p>
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <p class=3D"MsoNormal">The Xavier is an octacore ARM platform
              with all cores enabled and running close to 1.5GHz.<u></u><u>=
</u></p>
            <p class=3D"MsoNormal">The connection between the two devices
              is via ethernet running at 1Gbit. The xavier has a x16
              PCIe interface connector and we are using a NIC with 1Gbps
              SFP module =E2=80=93 we intend to run the link at 10Gbit in t=
he
              future. The onboard 1Gbps ethernet is connected to our LAN
              <u></u><u></u></p>
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <p class=3D"MsoNormal">The Xavier is running ubuntu 18.04 for
              arm. This is the development platform that nVidia
              provides. uhd 4.0.0, gnuradio 3.8 and RfNoC 4 have been
              installed on the Xavier.<u></u><u></u></p>
            <p class=3D"MsoNormal">The Xavier is given a simple flow to
              run under gnuradio-companion which consists of a USRP
              Source connected directly to =C2=A0the QT GUI Frequency sink
              (or Null Sink)<u></u><u></u></p>
            <p class=3D"MsoNormal">The network buffers and mtu on the
              xavier are increased to at least those recommended.<u></u><u>=
</u></p>
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <p class=3D"MsoNormal">The result we get is a whole lot of
              =E2=80=98D=E2=80=99s output if we increase the sample rate be=
yond 2MSPS.
              =C2=A0The same result is found if we run the flow from the
              command line (without the gui).<u></u><u></u></p>
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <p class=3D"MsoNormal">For comparison we have done a similar
              setup with a USRP E312 =E2=80=93 connected to a xavier, a ubu=
ntu
              20 virtual machine and directly to a computer running
              ubuntu 20.04. In each case when we increase the sample
              rate beyond 2MSPS we get =E2=80=98O=E2=80=99s output.<u></u><=
u></u></p>
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <p class=3D"MsoNormal">Can anyone please indicate what setup
              is required to achieve the 25MSPS that should be possible
              across this link?<u></u><u></u></p>
            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
            <p class=3D"MsoNormal">Thanks in advance<u></u><u></u></p>
            <p class=3D"MsoNormal"><span><br>
                <br>
                <u></u><u></u></span></p>
            <pre>_______________________________________________<u></u><u><=
/u></pre>
            <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><u></u><u></=
u></pre>
            <pre>To unsubscribe send an email to <a href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.co=
m</a><u></u><u></u></pre>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span>You mig=
ht want to run
              &quot;benchmark_rate&quot; from the UHD examples code to elim=
inate
              GR entirely at first--just to get a feel for what your
              machine is capable of.<br>
              <br>
              I&#39;ll note that the &quot;network mode&quot; in E312 (wher=
e it
              streams to a regular PC) has *considerable* performance
              constraints, and achieving even 2Msps is a bit of a<br>
              =C2=A0 miracle.<br>
              <br>
              The X310, on the other hand, is Niagara Falls.=C2=A0 Any
              streaming-performance issues are your host.=C2=A0 The FPGA on
              the X310 can stream to the xGIGe interfaces as fast as<br>
              =C2=A0 physics allows, pretty much.<br>
              <br>
              For a &quot;order of magnitude&quot; benchmark, I can achieve=
 10Msps
              from a B2xx into an Odroid XU4Q with 8-bit samples
              (there&#39;s a USB bandwidth issue there).=C2=A0 I can even<b=
r>
              =C2=A0 &quot;do stuff&quot; at 10Msps, including several diff=
erent radio
              astronomy signal processing chains.=C2=A0 I would expect your
              Xavier to be similar.=C2=A0
              <br>
              <br>
              <u></u><u></u></span></p>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000031533205d2173f35--

--===============7009231827713500102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7009231827713500102==--
