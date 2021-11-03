Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F24D443D8D
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 08:04:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 002CE3841A1
	for <lists+usrp-users@lfdr.de>; Wed,  3 Nov 2021 03:04:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B2jL8gbd";
	dkim-atps=neutral
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 45612381394
	for <usrp-users@lists.ettus.com>; Wed,  3 Nov 2021 03:04:14 -0400 (EDT)
Received: by mail-lf1-f42.google.com with SMTP id p16so3308651lfa.2
        for <usrp-users@lists.ettus.com>; Wed, 03 Nov 2021 00:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CBg35u/iufh/w8vg0gaKcVDOr8gdFw5h8bVPNYLMr/Q=;
        b=B2jL8gbdvjDv4lQ/uVY+9/2pIBpicuzy8vxPddz2+lKLN9eEssbd1wZmwYlEE87pHd
         ymMyJDjsLU37sz5ICdh0GkbaD+SIeWPcIxTkIGnr3y6+hJEquEjCO5haIY15hS5ppYiW
         RqquxaXo3ePuZVz07n2VPpKeTieGu8y9hBPgOmnt5UlUf/UCBWozqLQ9AOCf4UzyaZLL
         oTXzfjyKM2I6gaYxva1ZkLKeR1wq4Dii+NiPcpcTb1vMZ4vdBC6HEl1f3jgoqWrgGAg9
         nuf41xRdjdkiX2Ehp8M/N5PxC4aW+BgXmdjr7YoPPBhuUzOu8UziB8JbUMhDYEPvbdem
         dNeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CBg35u/iufh/w8vg0gaKcVDOr8gdFw5h8bVPNYLMr/Q=;
        b=Mz37s5VNIf7orGBrBgXXQcmp1EGQjEziyEnoPRkjeiU1nT3UAV4qfq6C4aoCtIVsIN
         a0yfxZinmriLmSK6fXcDeTkZ5PlUGA9dXyqWsuBH+fLnb1kR4e6NzVTnFAgbz2IhuqvL
         YxWqMgsw6HUFKdtxmv5Mn+W0cpwnmB/a6Bk8oxX+n1NzvMVHxwhLpHZIZwLOMaURaWXn
         9+jyRrIcN4aznxgnPWA4QOx4kMi6ebqtPXoMvqx/VvlxxC/Obfa+76l0fDzdte3h3fPH
         bj6IkE95oGDQ2KqIrc/zCj9AMEivIaBgHf2L9B4KJ5cwIIy157k75BHdVtWCeyBvoytM
         gLkw==
X-Gm-Message-State: AOAM533VBhK5Y+4RDFJAcTNiDQGLDwTXuyL70MLQgH15Y+BnkfywQ3YP
	w3arujHyyi3Tn+JJQO2de7+uINgJrXJnlOxCvg+r9WJuf2I=
X-Google-Smtp-Source: ABdhPJx2rAPi4svt+guCC42WllTHmQUpM98GNzpat4Jn+8fdtSTI4Zv65ogo5jrrXZRFHJElbVKpV638trhI7rocyi4=
X-Received: by 2002:a05:6512:304b:: with SMTP id b11mr39292776lfb.259.1635923052720;
 Wed, 03 Nov 2021 00:04:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAFPzw1nzRMv8TE646YevYzp_74m2yUPvaYBGFkbf6R6ms=Hgdg@mail.gmail.com>
 <16d36d0a-dc21-073c-e1d1-050998893b6c@gmail.com> <CAFPzw1maXKTKHiCWkCnAuS+gSttU5fM-hFumAZjYwmXvTrAHNg@mail.gmail.com>
 <744837fd-07f2-fe23-6db6-7083981e21cb@gmail.com> <CAFPzw1kVBK7s=EtZ5gsx=4ZRLedTagLMHB_+ccURRvYJtzDZow@mail.gmail.com>
 <a14e631c-338d-1d29-c905-51fff4584f5d@gmail.com> <CAFPzw1=msL8DRnJ52tPNyx6QqJxxU3MXTWsCSJbQ53ap2WxJ_g@mail.gmail.com>
 <a937c74e-a7a2-ac21-f0bb-2ce70661dff6@gmail.com>
In-Reply-To: <a937c74e-a7a2-ac21-f0bb-2ce70661dff6@gmail.com>
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Wed, 3 Nov 2021 08:04:01 +0100
Message-ID: <CAFPzw1ky-RHs7kxDG-y1BKS9CwHHgpxeqK+=xDH5TkrUHLgnVA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: S24ARIHDLAKO4WTIJXXJTBUD3W4UAWAA
X-Message-ID-Hash: S24ARIHDLAKO4WTIJXXJTBUD3W4UAWAA
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S24ARIHDLAKO4WTIJXXJTBUD3W4UAWAA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5869153283115392254=="

--===============5869153283115392254==
Content-Type: multipart/alternative; boundary="0000000000006ff89a05cfdd043b"

--0000000000006ff89a05cfdd043b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your explanation. So is there any kind of solution for my
problem with GNU Radio?

Thanks in advance.
Regards,
Anabel

El mi=C3=A9, 27 oct 2021 a las 17:48, Marcus D. Leech (<patchvonbraun@gmail=
.com>)
escribi=C3=B3:

> On 2021-10-27 11:37, Anabel Almodovar wrote:
>
> Hello,
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
> I am using a native Ubuntu, not a VM and I have the CPU governor set to
> "performance".
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
> Thanks in advance.
> Regards,
> Anabel
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

--0000000000006ff89a05cfdd043b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you for your explanation.=C2=A0So is there any kind =
of solution for my problem with GNU Radio?<div><br></div><div>Thanks in=C2=
=A0advance.</div><div>Regards,</div><div>Anabel</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 27 oct =
2021 a las 17:48, Marcus D. Leech (&lt;<a href=3D"mailto:patchvonbraun@gmai=
l.com">patchvonbraun@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-10-27 11:37, Anabel Almodovar
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hello,</div>
        <div><br>
        </div>
        <div>When I run a benchmark_rate example it indicates that there
          are no sample losses even with 30s of acquisition. <br>
        </div>
        <div><i><b><br>
            </b></i></div>
        <div><i><b>rack_2021@rack-HP-Z4-G4-Workstation:~/workarea-uhd/uhd/h=
ost/examples/build$
              sudo ./benchmark_rate
--args=3D&quot;addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_siz=
e=3D900000000&quot;
              --channels=3D&quot;0,1&quot; --rx_rate 200e6 --duration 30
              --rx_subdev=3D&quot;A:0 B:0&quot; <br>
              <br>
              [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
              UHD_4.1.0.HEAD-0-gd21735d5<br>
              [00:00:00.000677] Creating the usrp device with:
              addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=
=3D900000000...<br>
              [INFO] [X300] X300 initialization sequence...<br>
              [INFO] [X300] Maximum frame size: 8000 bytes.<br>
              [INFO] [X300] Maximum frame size: 8000 bytes.<br>
              [INFO] [X300] Radio 1x clock: 200 MHz<br>
              Using Device: Single USRP:<br>
              =C2=A0 Device: X-Series Device<br>
              =C2=A0 Mboard 0: X310<br>
              =C2=A0 RX Channel: 0<br>
              =C2=A0 =C2=A0 RX DSP: 0<br>
              =C2=A0 =C2=A0 RX Dboard: A<br>
              =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
              =C2=A0 RX Channel: 1<br>
              =C2=A0 =C2=A0 RX DSP: 1<br>
              =C2=A0 =C2=A0 RX Dboard: B<br>
              =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
              =C2=A0 TX Channel: 0<br>
              =C2=A0 =C2=A0 TX DSP: 0<br>
              =C2=A0 =C2=A0 TX Dboard: A<br>
              =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
              =C2=A0 TX Channel: 1<br>
              =C2=A0 =C2=A0 TX DSP: 1<br>
              =C2=A0 =C2=A0 TX Dboard: B<br>
              =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
              <br>
              [00:00:02.923799498] Setting device timestamp to 0...<br>
              [INFO] [MULTI_USRP] =C2=A0 =C2=A0 1) catch time transition at=
 pps
              edge<br>
              [INFO] [MULTI_USRP] =C2=A0 =C2=A0 2) set times next pps
              (synchronously)<br>
              [WARNING] [0/Radio#0] Attempting to set tick rate to 0.
              Skipping.<br>
              [WARNING] [0/Radio#1] Attempting to set tick rate to 0.
              Skipping.<br>
              [00:00:04.262875535] Testing receive rate 200.000000 Msps
              on 2 channels<br>
              [00:00:34.313774651] Benchmark complete.<br>
              <br>
              Benchmark rate summary:<br>
              =C2=A0 Num received samples: =C2=A0 =C2=A0 12000000380<br>
              =C2=A0 Num dropped samples: =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num overruns detected: =C2=A0 =C2=A00<br>
              =C2=A0 Num transmitted samples: =C2=A00<br>
              =C2=A0 Num sequence errors (Tx): 0<br>
              =C2=A0 Num sequence errors (Rx): 0<br>
              =C2=A0 Num underruns detected: =C2=A0 0<br>
              =C2=A0 Num late commands: =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num timeouts (Tx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              =C2=A0 Num timeouts (Rx): =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
              <br>
              Done!</b></i><br>
        </div>
        <div><br>
        </div>
        <div>However, when I run rx_samples_to_file I get overflows from
          8 sec for a single receiving channel.</div>
        <div><br>
        </div>
        <div><i><b>sudo ./rx_samples_to_file
=C2=A0--file=3D&quot;/home/rack_2021/Escritorio/pruebas_codigos_agosto/usrp=
_samples.dat&quot;
              --duration 8
--args=3D&quot;addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_siz=
e=3D900000000&quot;
              --channel=3D&quot;0&quot; --subdev=3D&quot;A:0&quot; --rate 2=
00e6 --bw 200e6
              --gain 5 --freq 800e6<br>
              <br>
              Creating the usrp device with:
              addr=3D192.168.40.2,second_addr=3D192.168.30.2,recv_buff_size=
=3D900000000...<br>
              [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
              UHD_4.1.0.HEAD-0-gd21735d5<br>
              [INFO] [X300] X300 initialization sequence...<br>
              [INFO] [X300] Maximum frame size: 8000 bytes.<br>
              [INFO] [X300] Maximum frame size: 8000 bytes.<br>
              [INFO] [X300] Radio 1x clock: 200 MHz<br>
              Using Device: Single USRP:<br>
              =C2=A0 Device: X-Series Device<br>
              =C2=A0 Mboard 0: X310<br>
              =C2=A0 RX Channel: 0<br>
              =C2=A0 =C2=A0 RX DSP: 0<br>
              =C2=A0 =C2=A0 RX Dboard: A<br>
              =C2=A0 =C2=A0 RX Subdev: UBX RX<br>
              =C2=A0 TX Channel: 0<br>
              =C2=A0 =C2=A0 TX DSP: 0<br>
              =C2=A0 =C2=A0 TX Dboard: A<br>
              =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
              =C2=A0 TX Channel: 1<br>
              =C2=A0 =C2=A0 TX DSP: 1<br>
              =C2=A0 =C2=A0 TX Dboard: B<br>
              =C2=A0 =C2=A0 TX Subdev: UBX TX<br>
              <br>
              Setting RX Rate: 200.000000 Msps...<br>
              Actual RX Rate: 200.000000 Msps...<br>
              <br>
              Setting RX Freq: 800.000000 MHz...<br>
              Setting RX LO Offset: 0.000000 MHz...<br>
              Actual RX Freq: 800.000000 MHz...<br>
              <br>
              Setting RX Gain: 5.000000 dB...<br>
              Actual RX Gain: 5.000000 dB...<br>
              <br>
              Setting RX Bandwidth: 200.000000 MHz...<br>
              Actual RX Bandwidth: 200.000000 MHz...<br>
              <br>
              Waiting for &quot;lo_locked&quot;: ++++++++++ locked.<br>
              <br>
              Press Ctrl + C to stop streaming...<br>
              O<br>
              Done!</b></i><br>
        </div>
        <div><br>
        </div>
        <div>I am using a native Ubuntu, not a VM and I have the CPU
          governor set to &quot;performance&quot;.</div>
        <div><br>
        </div>
        <div>I have managed to patch the code that worked for me before
          updating the system to the new versions of Ubuntu and UHD, so
          I ask for more samples than I want since I have observed that
          the recv () reception buffer is not always constant and it
          does not always acquire the maximum number of samples as I
          request (1996 samples), at least not at the beginning. But I
          would like to know the cause of this so that I can fix it and
          why GNU Radio keeps giving me the same error.</div>
        <div><br>
        </div>
        <div>Thanks in advance.<br>
        </div>
        <div>Regards, <br>
        </div>
        <div>Anabel<br>
        </div>
      </div>
      <br>
    </blockquote>
    The recv() call doesn&#39;t necessarily guarantee that you&#39;ll get a=
ll
    the samples you asked for in that call, as far as I know. It isn&#39;t
    surprising that there would be slight differences<br>
    =C2=A0 in behavior across different versions of UHD and OS versions in
    this regard.=C2=A0 You always have to be prepared to receive fewer
    samples than you asked for.<br>
    <br>
    If Gnu Radio applications are producing overruns, that is firmly in
    the territory of Gnu Radio, and NOT UHD.=C2=A0=C2=A0 Clearly, on your m=
achine,
    UHD is able to sustain 200e6 SPS.<br>
    =C2=A0 But as you add layers of application processing, the system is
    more heavily loaded.=C2=A0 Gnu Radio actually &quot;does things&quot; w=
ith the
    samples, which means the<br>
    =C2=A0 instructions-per-sample is MUCH higher than your simple
    rx_samples_to_file test.<br>
    <br>
    <br>
  </div>
</blockquote></div>

--0000000000006ff89a05cfdd043b--

--===============5869153283115392254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5869153283115392254==--
