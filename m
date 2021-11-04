Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA6A4459B9
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 19:28:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C77E0384868
	for <lists+usrp-users@lfdr.de>; Thu,  4 Nov 2021 14:28:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="IchQEhNv";
	dkim-atps=neutral
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 7243B384564
	for <usrp-users@lists.ettus.com>; Thu,  4 Nov 2021 14:27:32 -0400 (EDT)
Received: by mail-oi1-f171.google.com with SMTP id o83so10663988oif.4
        for <usrp-users@lists.ettus.com>; Thu, 04 Nov 2021 11:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6u6zmh7ysFbsN4z8ogc9fJUTlXEpAF0k4mj8mmXHKKU=;
        b=IchQEhNvOUbk0ZYP9+L/Ghdlt+oaN+Cr49RcaaTeV5FUXrb3y2F0No9UDcfALIiBz3
         IPcMDjvgRGtwuBTZNT6QMnmuqB7ikMOo/oT4RfXPAYT6AzGvEClxcyrmlvTVw0gc2YO5
         O1fUg/8rhgCf58N3oily5VF4cXs3z9XGsxZQZXzxvH525+gySeTVcs9zOAGotzM/gw08
         xDKdufC3tdFUmyh/+Fba7QI1HRbvpkJjORLG4IUIPO01GliTcJpbQSTmEfRYk9dTixoP
         Mja1EcwxEhBPzsbQElM65uFDgU5pzGlWmkDiBW80ASu/ipAwCWIJNh4dUTSHjIwmav3+
         kArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6u6zmh7ysFbsN4z8ogc9fJUTlXEpAF0k4mj8mmXHKKU=;
        b=qUM9qSMCXsrFNVru8KX94iOdeLm3VQcMisf3dASmv9EdSXJv9wISYcN7gUZAukP+oI
         O6izZWSrmL0MUNZDnqDW2CjxBwYvdOOrnw5DSfZsQzTCmmB0tTSuM+lOTyZZUyXb4Q0d
         PgJ5qpFUTTgFegI5tGN6ean3QOwlDPq1dzPDKAZJg3IYg88OIs64a4zKIh7u2d61V2CO
         ehtOVhPF1Ys3O3oFDCbtwwNC9KNQY584oA6UTSYF1wQ1qu/oUksbLrGgdIR/tvt4SAS2
         voIjgDM8eyZtZVvIQh4ffBsx5fwyU70Gk/L76YebUcTJr5M3nZ6zx6D511BsCf35FmOi
         68fw==
X-Gm-Message-State: AOAM531T58T8oqLyIEV7nhJIfh3veVDIexjgL4ubxPu2I19PNzgfzKYP
	LQFHHx76o2GQe61VOeb2tWkf0wAV7TerYp+YMxMRO5FB6OM09w==
X-Google-Smtp-Source: ABdhPJyLWziYkO2p8fVqWsxn/92wxj3WeAVEedwq0J18nrW/VCAd4/hzAF+RRxM5qt+Rn8aaLFeH2Awxdag9QW15Mm0=
X-Received: by 2002:aca:5841:: with SMTP id m62mr17814986oib.150.1636050451618;
 Thu, 04 Nov 2021 11:27:31 -0700 (PDT)
MIME-Version: 1.0
References: <79b89ffb765545ba9023f3475db937a2@gmv.com> <76091DB1-CBD2-4365-A7F3-C1FFA2F59ECA@gmail.com>
 <CAB__hTQJ0tVGt9U-rdHNhCUsR3on26=JZCvJg5c0bhp1WKGWXA@mail.gmail.com>
 <31a4c3e34dba44aea5b8077c78be7fb3@gmv.com> <37284843-a7ea-fca4-9faa-9e91b4f96d98@gmail.com>
In-Reply-To: <37284843-a7ea-fca4-9faa-9e91b4f96d98@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 4 Nov 2021 14:27:20 -0400
Message-ID: <CAB__hTQtfiCo6iHWoD-_ee1-Hyi5X8Kmc7LgoqGV-hg5ke7krw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: WZJHZLPCFRECQSURSQMKRQOODFUMVOMX
X-Message-ID-Hash: WZJHZLPCFRECQSURSQMKRQOODFUMVOMX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Guillermo Ortas Delgado <g.ortas@gmv.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WZJHZLPCFRECQSURSQMKRQOODFUMVOMX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9175686062816081076=="

--===============9175686062816081076==
Content-Type: multipart/alternative; boundary="0000000000000114aa05cffaae6b"

--0000000000000114aa05cffaae6b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There are a number of emails/posts that may be of interest. Here is the one
within a long chain. You can search the subject line.
https://www.mail-archive.com/usrp-users@lists.ettus.com/msg11842.html


On Thu, Nov 4, 2021 at 1:56 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-04 13:40, Guillermo Ortas Delgado wrote:
>
> Thank you Rob and Marcus,
>
>
>
> Is there a specific page or resource that I should read for guidance?
> Anything in particular that I should keep in mind?
>
> I would really appreciate it, especially if there are so many gotchas as
> you say.
>
>
>
> Best,
>
> Guillermo
>
> I don't use it myself, so I have no experience to convey.
>
> DPDK wouldn't even be necessary if the OS kernel-layer network drivers
> were "up" to the task of
>   very-high rate continuous streaming.  They aren't.  Which is why DPDK
> was developed in the first
>   place.
>
>
>
>
> *De:* Rob Kossler [mailto:rkossler@nd.edu <rkossler@nd.edu>]
> *Enviado el:* 04 November 2021 17:13
> *Para:* Marcus D Leech <patchvonbraun@gmail.com> <patchvonbraun@gmail.com=
>
> *CC:* Guillermo Ortas Delgado <g.ortas@gmv.com> <g.ortas@gmv.com>;
> usrp-users@lists.ettus.com; Anabel Almodovar <anabel.almodovar@gmail.com>
> <anabel.almodovar@gmail.com>
> *Asunto:* Re: [USRP-users] Re: UHD 4.1 error
>
>
>
> I also recommend that you search the user's list archive regarding DPDK.
> There are lots of gotchas that are not well documented (or documented at
> all).
>
> Rob
>
>
>
> On Thu, Nov 4, 2021 at 9:43 AM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
> The consensus from Ettus R&D is to build the required version from source=
.
>
> Sent from my iPhone
>
>
>
> On Nov 4, 2021, at 5:45 AM, Guillermo Ortas Delgado <g.ortas@gmv.com>
> wrote:
>
> =EF=BB=BF
>
> Hi Marcus,
>
>
>
> I would also like to get DPDK running and I have tried in the past.
>
> Let me point out a problem: the latest release of UHD requires DPDK
> version 18.11, but in fact this version is not supported on Ubuntu 20.04.
> The oldest available version is 19.11, so what should I do to get it
> working?
> I tried editing the makefile when compiling UHD to accept DPDK version
> 19.11, but then the build fails mid-way. Could you provide a solution
> please?
>
>
>
> Best,
>
> Guillermo
>
>
>
> *De:* Marcus D. Leech [mailto:patchvonbraun@gmail.com]
> *Enviado el:* 03 November 2021 16:17
> *Para:* Anabel Almodovar <anabel.almodovar@gmail.com>
> *CC:* usrp-users@lists.ettus.com
> *Asunto:* [USRP-users] Re: UHD 4.1 error
>
>
>
> On 2021-11-03 03:04, Anabel Almodovar wrote:
>
> Thank you for your explanation. So is there any kind of solution for my
> problem with GNU Radio?
>
>
>
> Thanks in advance.
>
> Regards,
>
> Anabel
>
> I have suggested this in the past--look into using DPDK if you're running
> at high sample rates over 10GiGe:
>
> https://files.ettus.com/manual/page_dpdk.html
> <https://urldefense.com/v3/__https:/files.ettus.com/manual/page_dpdk.html=
__;!!MvyJQugb!Ug3KUJdelEBGny3uBLviYm_qf2FjZMI6Kd_bzmXKMBMc4asgXNo56mlkCx8$>
>
> https://kb.ettus.com/Getting_Started_with_DPDK_and_UHD
> <https://urldefense.com/v3/__https:/kb.ettus.com/Getting_Started_with_DPD=
K_and_UHD__;!!MvyJQugb!Ug3KUJdelEBGny3uBLviYm_qf2FjZMI6Kd_bzmXKMBMc4asgXNo5=
jyS_8IE$>
>
>
>
>
> El mi=C3=A9, 27 oct 2021 a las 17:48, Marcus D. Leech (<patchvonbraun@gma=
il.com>)
> escribi=C3=B3:
>
> On 2021-10-27 11:37, Anabel Almodovar wrote:
>
> Hello,
>
>
>
> When I run a benchmark_rate example it indicates that there are no sample
> losses even with 30s of acquisition.
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *rack_2021@rack-HP-Z4-G4-Workstation:~/workarea-uhd/uhd/host/examples/bui=
ld$
> sudo ./benchmark_rate
> --args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=
=3D900000000"
> --channels=3D"0,1" --rx_rate 200e6 --duration 30 --rx_subdev=3D"A:0 B:0" =
[INFO]
> [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.1.0.HEAD-0-gd21735d5 [00:00:00.000677] Creating the usrp device wit=
h:
> addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D900000000=
...
> [INFO] [X300] X300 initialization sequence... [INFO] [X300] Maximum frame
> size: 8000 bytes. [INFO] [X300] Maximum frame size: 8000 bytes. [INFO]
> [X300] Radio 1x clock: 200 MHz Using Device: Single USRP:   Device:
> X-Series Device   Mboard 0: X310   RX Channel: 0     RX DSP: 0     RX
> Dboard: A     RX Subdev: UBX RX   RX Channel: 1     RX DSP: 1     RX
> Dboard: B     RX Subdev: UBX RX   TX Channel: 0     TX DSP: 0     TX
> Dboard: A     TX Subdev: UBX TX   TX Channel: 1     TX DSP: 1     TX
> Dboard: B     TX Subdev: UBX TX [00:00:02.923799498] Setting device
> timestamp to 0... [INFO] [MULTI_USRP]     1) catch time transition at pps
> edge [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping. [WARNIN=
G]
> [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [00:00:04.262875535] Testing receive rate 200.000000 Msps on 2 channels
> [00:00:34.313774651] Benchmark complete. Benchmark rate summary:   Num
> received samples:     12000000380   Num dropped samples:      0   Num
> overruns detected:    0   Num transmitted samples:  0   Num sequence erro=
rs
> (Tx): 0   Num sequence errors (Rx): 0   Num underruns detected:   0   Num
> late commands:        0   Num timeouts (Tx):        0   Num timeouts (Rx)=
:
>        0 Done!*
>
>
>
> However, when I run rx_samples_to_file I get overflows from 8 sec for a
> single receiving channel.
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *sudo ./rx_samples_to_file
>  --file=3D"/home/rack_2021/Escritorio/pruebas_codigos_agosto/usrp_samples=
.dat"
> --duration 8
> --args=3D"addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=
=3D900000000"
> --channel=3D"0" --subdev=3D"A:0" --rate 200e6 --bw 200e6 --gain 5 --freq =
800e6
> Creating the usrp device with:
> addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D900000000=
...
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.1.0.HEAD-0-gd21735d5 [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes. [INFO] [X300] Maximum frame
> size: 8000 bytes. [INFO] [X300] Radio 1x clock: 200 MHz Using Device:
> Single USRP:   Device: X-Series Device   Mboard 0: X310   RX Channel: 0
> RX DSP: 0     RX Dboard: A     RX Subdev: UBX RX   TX Channel: 0     TX
> DSP: 0     TX Dboard: A     TX Subdev: UBX TX   TX Channel: 1     TX DSP:=
 1
>     TX Dboard: B     TX Subdev: UBX TX Setting RX Rate: 200.000000 Msps..=
.
> Actual RX Rate: 200.000000 Msps... Setting RX Freq: 800.000000 MHz...
> Setting RX LO Offset: 0.000000 MHz... Actual RX Freq: 800.000000 MHz...
> Setting RX Gain: 5.000000 dB... Actual RX Gain: 5.000000 dB... Setting RX
> Bandwidth: 200.000000 MHz... Actual RX Bandwidth: 200.000000 MHz... Waiti=
ng
> for "lo_locked": ++++++++++ locked. Press Ctrl + C to stop streaming... O
> Done!*
>
>
>
> I am using a native Ubuntu, not a VM and I have the CPU governor set to
> "performance".
>
>
>
> I have managed to patch the code that worked for me before updating the
> system to the new versions of Ubuntu and UHD, so I ask for more samples
> than I want since I have observed that the recv () reception buffer is no=
t
> always constant and it does not always acquire the maximum number of
> samples as I request (1996 samples), at least not at the beginning. But I
> would like to know the cause of this so that I can fix it and why GNU Rad=
io
> keeps giving me the same error.
>
>
>
> Thanks in advance.
>
> Regards,
>
> Anabel
>
>
>
> The recv() call doesn't necessarily guarantee that you'll get all the
> samples you asked for in that call, as far as I know. It isn't surprising
> that there would be slight differences
>   in behavior across different versions of UHD and OS versions in this
> regard.  You always have to be prepared to receive fewer samples than you
> asked for.
>
> If Gnu Radio applications are producing overruns, that is firmly in the
> territory of Gnu Radio, and NOT UHD.   Clearly, on your machine, UHD is
> able to sustain 200e6 SPS.
>   But as you add layers of application processing, the system is more
> heavily loaded.  Gnu Radio actually "does things" with the samples, which
> means the
>   instructions-per-sample is MUCH higher than your simple
> rx_samples_to_file test.
>
>
>
>
> P Please consider the environment before printing this e-mail.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> P Please consider the environment before printing this e-mail.
>
>
>

--0000000000000114aa05cffaae6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There are a number of emails/posts that may be of int=
erest. Here is the one within a long chain. You can search the=C2=A0subject=
 line.</div><div><a href=3D"https://www.mail-archive.com/usrp-users@lists.e=
ttus.com/msg11842.html">https://www.mail-archive.com/usrp-users@lists.ettus=
.com/msg11842.html</a><br></div><div><br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 4, 2021 at 1:56 PM Mar=
cus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-04 13:40, Guillermo Ortas
      Delgado wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">Thank you Rob and Mar=
cus,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">Is there a specific p=
age or resource that I
            should read for guidance? Anything in particular that I
            should keep in mind?<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">I would really apprec=
iate it, especially if
            there are so many gotchas as you say.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)">Best,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)">Guillermo</span></p>
      </div>
    </blockquote>
    I don&#39;t use it myself, so I have no experience to convey.<br>
    <br>
    DPDK wouldn&#39;t even be necessary if the OS kernel-layer network
    drivers were &quot;up&quot; to the task of<br>
    =C2=A0 very-high rate continuous streaming.=C2=A0 They aren&#39;t.=C2=
=A0 Which is why
    DPDK was developed in the first<br>
    =C2=A0 place.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)"><u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family=
:Calibri,sans-serif">De:</span></b><span style=3D"font-size:11pt;font-famil=
y:Calibri,sans-serif"> Rob
            Kossler [<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">m=
ailto:rkossler@nd.edu</a>]
            <br>
            <b>Enviado el:</b> 04 November 2021 17:13<br>
            <b>Para:</b> Marcus D Leech <a href=3D"mailto:patchvonbraun@gma=
il.com" target=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a><br>
            <b>CC:</b> Guillermo Ortas Delgado <a href=3D"mailto:g.ortas@gm=
v.com" target=3D"_blank">&lt;g.ortas@gmv.com&gt;</a>;
            <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>; Anabel Almodovar
            <a href=3D"mailto:anabel.almodovar@gmail.com" target=3D"_blank"=
>&lt;anabel.almodovar@gmail.com&gt;</a><br>
            <b>Asunto:</b> Re: [USRP-users] Re: UHD 4.1 error<u></u><u></u>=
</span></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <div>
          <div>
            <p class=3D"MsoNormal">I also recommend that you search the
              user&#39;s list archive regarding DPDK. There are lots of
              gotchas that are not well documented (or documented at
              all).<u></u><u></u></p>
            <div>
              <p class=3D"MsoNormal">Rob<u></u><u></u></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
          <div>
            <div>
              <p class=3D"MsoNormal">On Thu, Nov 4, 2021 at 9:43 AM Marcus
                D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" targ=
et=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                wrote:<u></u><u></u></p>
            </div>
            <blockquote style=3D"border-top:none;border-right:none;border-b=
ottom:none;border-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;m=
argin-left:4.8pt;margin-right:0cm">
              <div>
                <p class=3D"MsoNormal" style=3D"margin-bottom:12pt">The
                  consensus from Ettus R&amp;D is to build the required
                  version from source.=C2=A0<u></u><u></u></p>
                <div>
                  <p class=3D"MsoNormal">Sent from my iPhone<u></u><u></u><=
/p>
                </div>
                <div>
                  <p class=3D"MsoNormal"><br>
                    <br>
                    <u></u><u></u></p>
                  <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                    <p class=3D"MsoNormal" style=3D"margin-bottom:12pt">On
                      Nov 4, 2021, at 5:45 AM, Guillermo Ortas Delgado
                      &lt;<a href=3D"mailto:g.ortas@gmv.com" target=3D"_bla=
nk">g.ortas@gmv.com</a>&gt;
                      wrote:<u></u><u></u></p>
                  </blockquote>
                </div>
                <blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
                  <div>
                    <p class=3D"MsoNormal"><span style=3D"font-family:Tahom=
a,sans-serif">=EF=BB=BF</span>
                      <u></u>
                      <u></u></p>
                    <div>
                      <p class=3D"MsoNormal"><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)">Hi
                          Marcus,</span><u></u><u></u></p>
                      <p class=3D"MsoNormal"><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u=
></u></p>
                      <p class=3D"MsoNormal"><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">I would=
 also like to get DPDK
                          running and I have tried in the past.</span><u></=
u><u></u></p>
                      <p class=3D"MsoNormal"><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">Let me =
point out a problem: the
                          latest release of UHD requires DPDK version
                          18.11, but in fact this version is not
                          supported on Ubuntu 20.04. The oldest
                          available version is 19.11, so what should I
                          do to get it working?<br>
                          I tried editing the makefile when compiling
                          UHD to accept DPDK version 19.11, but then the
                          build fails mid-way. Could you provide a
                          solution please?</span><u></u><u></u></p>
                      <p class=3D"MsoNormal"><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0<=
/span><u></u><u></u></p>
                      <p class=3D"MsoNormal"><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">Best,</=
span><u></u><u></u></p>
                      <p class=3D"MsoNormal"><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">Guiller=
mo</span><u></u><u></u></p>
                      <p class=3D"MsoNormal"><span style=3D"font-size:11pt;=
font-family:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u=
></u></p>
                      <div>
                        <div style=3D"border-right:none;border-bottom:none;=
border-left:none;border-top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm"=
>
                          <p class=3D"MsoNormal"><b><span style=3D"font-siz=
e:11pt;font-family:Calibri,sans-serif">De:</span></b><span style=3D"font-si=
ze:11pt;font-family:Calibri,sans-serif">
                              Marcus D. Leech [mailto:<a href=3D"mailto:pat=
chvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>]
                              <br>
                              <b>Enviado el:</b> 03 November 2021 16:17<br>
                              <b>Para:</b> Anabel Almodovar &lt;<a href=3D"=
mailto:anabel.almodovar@gmail.com" target=3D"_blank">anabel.almodovar@gmail=
.com</a>&gt;<br>
                              <b>CC:</b> <a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                              <b>Asunto:</b> [USRP-users] Re: UHD 4.1
                              error</span><u></u><u></u></p>
                        </div>
                      </div>
                      <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                      <div>
                        <p class=3D"MsoNormal">On
                          2021-11-03 03:04, Anabel Almodovar wrote:<u></u><=
u></u></p>
                      </div>
                      <blockquote style=3D"margin-top:5pt;margin-bottom:5pt=
">
                        <div>
                          <p class=3D"MsoNormal">Thank
                            you for your explanation.=C2=A0So is there any
                            kind of solution for my problem with GNU
                            Radio?
                            <u></u><u></u></p>
                          <div>
                            <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal">Thanks
                              in=C2=A0advance.<u></u><u></u></p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal">Regards,<u></u><u></u></=
p>
                          </div>
                          <div>
                            <p class=3D"MsoNormal">Anabel<u></u><u></u></p>
                          </div>
                        </div>
                      </blockquote>
                      <p class=3D"MsoNormal" style=3D"margin-bottom:12pt">I
                        have suggested this in the past--look into using
                        DPDK if you&#39;re running at high sample rates ove=
r
                        10GiGe:<br>
                        <br>
                        <a href=3D"https://urldefense.com/v3/__https:/files=
.ettus.com/manual/page_dpdk.html__;!!MvyJQugb!Ug3KUJdelEBGny3uBLviYm_qf2FjZ=
MI6Kd_bzmXKMBMc4asgXNo56mlkCx8$" target=3D"_blank">https://files.ettus.com/=
manual/page_dpdk.html</a><br>
                        <br>
                        <a href=3D"https://urldefense.com/v3/__https:/kb.et=
tus.com/Getting_Started_with_DPDK_and_UHD__;!!MvyJQugb!Ug3KUJdelEBGny3uBLvi=
Ym_qf2FjZMI6Kd_bzmXKMBMc4asgXNo5jyS_8IE$" target=3D"_blank">https://kb.ettu=
s.com/Getting_Started_with_DPDK_and_UHD</a><br>
                        <br>
                        <br>
                        <u></u><u></u></p>
                      <blockquote style=3D"margin-top:5pt;margin-bottom:5pt=
">
                        <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                        <div>
                          <div>
                            <p class=3D"MsoNormal">El
                              mi=C3=A9, 27 oct 2021 a las 17:48, Marcus D.
                              Leech (&lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;)
                              escribi=C3=B3:<u></u><u></u></p>
                          </div>
                          <blockquote style=3D"border-top:none;border-right=
:none;border-bottom:none;border-left:1pt solid rgb(204,204,204);padding:0cm=
 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
                            <div>
                              <div>
                                <p class=3D"MsoNormal">On
                                  2021-10-27 11:37, Anabel Almodovar
                                  wrote:<u></u><u></u></p>
                              </div>
                              <blockquote style=3D"margin-top:5pt;margin-bo=
ttom:5pt">
                                <div>
                                  <div>
                                    <p class=3D"MsoNormal">Hello,<u></u><u>=
</u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">=C2=A0<u></u><u>=
</u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">When
                                      I run a benchmark_rate example it
                                      indicates that there are no sample
                                      losses even with 30s of
                                      acquisition.
                                      <u></u><u></u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">=C2=A0<u></u><u>=
</u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"><b><i>rack_2021@=
rack-HP-Z4-G4-Workstation:~/workarea-uhd/uhd/host/examples/build$
                                          sudo ./benchmark_rate
--args=3D&quot;addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_siz=
e=3D900000000&quot;
                                          --channels=3D&quot;0,1&quot; --rx=
_rate
                                          200e6 --duration 30
                                          --rx_subdev=3D&quot;A:0 B:0&quot;=
 <br>
                                          <br>
                                          [INFO] [UHD] linux; GNU C++
                                          version 9.3.0; Boost_107100;
                                          UHD_4.1.0.HEAD-0-gd21735d5<br>
                                          [00:00:00.000677] Creating the
                                          usrp device with:
                                          addr=3D192.168.40.2,second_addr=
=3D192.168.30.2,recv_buff_size=3D900000000...<br>
                                          [INFO] [X300] X300
                                          initialization sequence...<br>
                                          [INFO] [X300] Maximum frame
                                          size: 8000 bytes.<br>
                                          [INFO] [X300] Maximum frame
                                          size: 8000 bytes.<br>
                                          [INFO] [X300] Radio 1x clock:
                                          200 MHz<br>
                                          Using Device: Single USRP:<br>
                                          =C2=A0 Device: X-Series Device<br=
>
                                          =C2=A0 Mboard 0: X310<br>
                                          =C2=A0 RX Channel: 0<br>
                                          =C2=A0 =C2=A0 RX DSP: 0<br>
                                          =C2=A0 =C2=A0 RX Dboard: A<br>
                                          =C2=A0 =C2=A0 RX Subdev: UBX RX<b=
r>
                                          =C2=A0 RX Channel: 1<br>
                                          =C2=A0 =C2=A0 RX DSP: 1<br>
                                          =C2=A0 =C2=A0 RX Dboard: B<br>
                                          =C2=A0 =C2=A0 RX Subdev: UBX RX<b=
r>
                                          =C2=A0 TX Channel: 0<br>
                                          =C2=A0 =C2=A0 TX DSP: 0<br>
                                          =C2=A0 =C2=A0 TX Dboard: A<br>
                                          =C2=A0 =C2=A0 TX Subdev: UBX TX<b=
r>
                                          =C2=A0 TX Channel: 1<br>
                                          =C2=A0 =C2=A0 TX DSP: 1<br>
                                          =C2=A0 =C2=A0 TX Dboard: B<br>
                                          =C2=A0 =C2=A0 TX Subdev: UBX TX<b=
r>
                                          <br>
                                          [00:00:02.923799498] Setting
                                          device timestamp to 0...<br>
                                          [INFO] [MULTI_USRP] =C2=A0 =C2=A0=
 1)
                                          catch time transition at pps
                                          edge<br>
                                          [INFO] [MULTI_USRP] =C2=A0 =C2=A0=
 2) set
                                          times next pps (synchronously)<br=
>
                                          [WARNING] [0/Radio#0]
                                          Attempting to set tick rate to
                                          0. Skipping.<br>
                                          [WARNING] [0/Radio#1]
                                          Attempting to set tick rate to
                                          0. Skipping.<br>
                                          [00:00:04.262875535] Testing
                                          receive rate 200.000000 Msps
                                          on 2 channels<br>
                                          [00:00:34.313774651] Benchmark
                                          complete.<br>
                                          <br>
                                          Benchmark rate summary:<br>
                                          =C2=A0 Num received samples: =C2=
=A0 =C2=A0
                                          12000000380<br>
                                          =C2=A0 Num dropped samples: =C2=
=A0 =C2=A0 =C2=A00<br>
                                          =C2=A0 Num overruns detected: =C2=
=A0 =C2=A00<br>
                                          =C2=A0 Num transmitted samples: =
=C2=A00<br>
                                          =C2=A0 Num sequence errors (Tx): =
0<br>
                                          =C2=A0 Num sequence errors (Rx): =
0<br>
                                          =C2=A0 Num underruns detected: =
=C2=A0 0<br>
                                          =C2=A0 Num late commands: =C2=A0 =
=C2=A0 =C2=A0 =C2=A00<br>
                                          =C2=A0 Num timeouts (Tx): =C2=A0 =
=C2=A0 =C2=A0 =C2=A00<br>
                                          =C2=A0 Num timeouts (Rx): =C2=A0 =
=C2=A0 =C2=A0 =C2=A00<br>
                                          <br>
                                          Done!</i></b><u></u><u></u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">=C2=A0<u></u><u>=
</u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">However,
                                      when I run rx_samples_to_file I
                                      get overflows from 8 sec for a
                                      single receiving channel.<u></u><u></=
u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">=C2=A0<u></u><u>=
</u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal"><b><i>sudo
                                          ./rx_samples_to_file
=C2=A0--file=3D&quot;/home/rack_2021/Escritorio/pruebas_codigos_agosto/usrp=
_samples.dat&quot;
                                          --duration 8
--args=3D&quot;addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_siz=
e=3D900000000&quot;
                                          --channel=3D&quot;0&quot; --subde=
v=3D&quot;A:0&quot;
                                          --rate 200e6 --bw 200e6 --gain
                                          5 --freq 800e6<br>
                                          <br>
                                          Creating the usrp device with:
addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=3D900000000..=
.<br>
                                          [INFO] [UHD] linux; GNU C++
                                          version 9.3.0; Boost_107100;
                                          UHD_4.1.0.HEAD-0-gd21735d5<br>
                                          [INFO] [X300] X300
                                          initialization sequence...<br>
                                          [INFO] [X300] Maximum frame
                                          size: 8000 bytes.<br>
                                          [INFO] [X300] Maximum frame
                                          size: 8000 bytes.<br>
                                          [INFO] [X300] Radio 1x clock:
                                          200 MHz<br>
                                          Using Device: Single USRP:<br>
                                          =C2=A0 Device: X-Series Device<br=
>
                                          =C2=A0 Mboard 0: X310<br>
                                          =C2=A0 RX Channel: 0<br>
                                          =C2=A0 =C2=A0 RX DSP: 0<br>
                                          =C2=A0 =C2=A0 RX Dboard: A<br>
                                          =C2=A0 =C2=A0 RX Subdev: UBX RX<b=
r>
                                          =C2=A0 TX Channel: 0<br>
                                          =C2=A0 =C2=A0 TX DSP: 0<br>
                                          =C2=A0 =C2=A0 TX Dboard: A<br>
                                          =C2=A0 =C2=A0 TX Subdev: UBX TX<b=
r>
                                          =C2=A0 TX Channel: 1<br>
                                          =C2=A0 =C2=A0 TX DSP: 1<br>
                                          =C2=A0 =C2=A0 TX Dboard: B<br>
                                          =C2=A0 =C2=A0 TX Subdev: UBX TX<b=
r>
                                          <br>
                                          Setting RX Rate: 200.000000
                                          Msps...<br>
                                          Actual RX Rate: 200.000000
                                          Msps...<br>
                                          <br>
                                          Setting RX Freq: 800.000000
                                          MHz...<br>
                                          Setting RX LO Offset: 0.000000
                                          MHz...<br>
                                          Actual RX Freq: 800.000000
                                          MHz...<br>
                                          <br>
                                          Setting RX Gain: 5.000000
                                          dB...<br>
                                          Actual RX Gain: 5.000000 dB...<br=
>
                                          <br>
                                          Setting RX Bandwidth:
                                          200.000000 MHz...<br>
                                          Actual RX Bandwidth:
                                          200.000000 MHz...<br>
                                          <br>
                                          Waiting for &quot;lo_locked&quot;=
:
                                          ++++++++++ locked.<br>
                                          <br>
                                          Press Ctrl + C to stop
                                          streaming...<br>
                                          O<br>
                                          Done!</i></b><u></u><u></u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">=C2=A0<u></u><u>=
</u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">I
                                      am using a native Ubuntu, not a VM
                                      and I have the CPU governor set to
                                      &quot;performance&quot;.<u></u><u></u=
></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">=C2=A0<u></u><u>=
</u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">I
                                      have managed to patch the code
                                      that worked for me before updating
                                      the system to the new versions of
                                      Ubuntu and UHD, so I ask for more
                                      samples than I want since I have
                                      observed that the recv ()
                                      reception buffer is not always
                                      constant and it does not always
                                      acquire the maximum number of
                                      samples as I request (1996
                                      samples), at least not at the
                                      beginning. But I would like to
                                      know the cause of this so that I
                                      can fix it and why GNU Radio keeps
                                      giving me the same error.<u></u><u></=
u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">=C2=A0<u></u><u>=
</u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">Thanks
                                      in advance.<u></u><u></u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">Regards,
                                      <u></u><u></u></p>
                                  </div>
                                  <div>
                                    <p class=3D"MsoNormal">Anabel<u></u><u>=
</u></p>
                                  </div>
                                </div>
                                <p class=3D"MsoNormal">=C2=A0<u></u><u></u>=
</p>
                              </blockquote>
                              <p class=3D"MsoNormal" style=3D"margin-bottom=
:12pt">The
                                recv() call doesn&#39;t necessarily
                                guarantee that you&#39;ll get all the
                                samples you asked for in that call, as
                                far as I know. It isn&#39;t surprising that
                                there would be slight differences<br>
                                =C2=A0 in behavior across different version=
s
                                of UHD and OS versions in this regard.=C2=
=A0
                                You always have to be prepared to
                                receive fewer samples than you asked
                                for.<br>
                                <br>
                                If Gnu Radio applications are producing
                                overruns, that is firmly in the
                                territory of Gnu Radio, and NOT UHD.=C2=A0=
=C2=A0
                                Clearly, on your machine, UHD is able to
                                sustain 200e6 SPS.<br>
                                =C2=A0 But as you add layers of application
                                processing, the system is more heavily
                                loaded.=C2=A0 Gnu Radio actually &quot;does
                                things&quot; with the samples, which means
                                the<br>
                                =C2=A0 instructions-per-sample is MUCH high=
er
                                than your simple rx_samples_to_file
                                test.<u></u><u></u></p>
                            </div>
                          </blockquote>
                        </div>
                      </blockquote>
                      <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                    </div>
                    <p class=3D"MsoNormal"><br>
                      <span style=3D"font-size:18pt;font-family:Webdings;co=
lor:green">P
                      </span><span style=3D"font-size:7pt;font-family:Arial=
,sans-serif;color:green">Please
                        consider the environment before printing this
                        e-mail.</span>
                      <u></u><u></u></p>
                  </div>
                </blockquote>
              </div>
              <p class=3D"MsoNormal">______________________________________=
_________<br>
                USRP-users mailing list -- <a href=3D"mailto:usrp-users@lis=
ts.ettus.com" target=3D"_blank">
                  usrp-users@lists.ettus.com</a><br>
                To unsubscribe send an email to <a href=3D"mailto:usrp-user=
s-leave@lists.ettus.com" target=3D"_blank">
                  usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
            </blockquote>
          </div>
        </div>
      </div>
      <span><br>
      </span><span style=3D"font-size:18pt;line-height:125%;font-family:Web=
dings;color:green">P<span></span>
        <span style=3D"font-size:7pt;line-height:125%;font-family:Arial,&qu=
ot;sans-serif&quot;;color:green">
          Please consider the environment before printing this e-mail.</spa=
n></span><span></span>
    </blockquote>
    <br>
  </div>
</blockquote></div></div>

--0000000000000114aa05cffaae6b--

--===============9175686062816081076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9175686062816081076==--
