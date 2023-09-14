Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C99D47A0FF8
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 23:41:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 20715380AE5
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 17:41:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694727719; bh=gk3oJCF/kBBvhajANpiNcGMg2gjSgEZfMV9+ylxVJ/I=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=eKr9VrWIiA8mQLQU/OuMJavClxg9JTaXtzUlY3f0wROM9FueeswmQEgP3nvKL3FOY
	 Jw2SaPOOzvOmR/m+x2v68ObYb+AvEWaXYMdldNv+x7barxDULbgaUgkjOCPimAWjY5
	 8MWnvqme1N2DytjG72YSYj/Pvz0NKTkVxXA1RjL1CAUbPcI+IK8TqpvqZc4T3tTRhW
	 VxKzJmHbEMFhZhgjFVjyE33DnCWB/E25lDeBi0Bp4DXlPZE/I3P5U3Nu1yHL9CnaXN
	 80qdXJHFrpiJk67a2tgWaYdGQ0x4K9eRQmhkt0WLogb+tN/yuX/xAduWl/GBNR7QYE
	 dYvo+cOBJl01g==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 794433810E5
	for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 17:40:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Dv636vXt";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-52f31fb26e2so1787499a12.3
        for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 14:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1694727654; x=1695332454; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=If/Lm0vXHBlt/5FVIBacXyGTGVExvgQYZVMan+o6dOI=;
        b=Dv636vXt4EAsgqvLEvz/dWg4HS1wsl4FBHnJVe5JirWNtMuPos4lhvbqeBB9gKCrNO
         JRHQlYlSJVrRNG9mcsPNR9IvuqY40zAZ2woaKp0EK0PL+WZcNXLHQ8pvwlQYR+Z4F65E
         fzJXrcf5xPZtsnYJPugkAFpzV6PHV7KKM0u3EslESbaaY06sp0rtAsZ/TjMJXh6PMg4S
         pmYxXQTVuBChggkGWsocVyIq23VYa6lWdPJROGvwDA/om/LsViVD0x9J9HaFKE2kdM5d
         FDLlkhVnqpMcbUFxs9jONGqQ2QQDNflpkXREARFdARkOULCLxvqKG3tgksNu1Jn3REp6
         MWYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694727654; x=1695332454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=If/Lm0vXHBlt/5FVIBacXyGTGVExvgQYZVMan+o6dOI=;
        b=o/gKzglMV2J+bKSLVJalAjoVZ2a1Eja+UrNytpE98z/RJbtTPLU3UHn7cBUi6idGO+
         +IYxvmc5wYx96R8Q1+TgE6CBhGiwlUQSZiuTy4kV1K8bzvthYYr2Nfoj40Vd0fRAfKon
         Du8bTpCC6Cy06TF4V+0qv/SVZ6MRKr8sjVeS2b1c+BQc4dyX4dxO97SD/C2APAvH2AgG
         ntxIDJ+kX1WfPXbi7yhy6UmmJus0ZvIaMSoZj5omZN7KLZ9JEdtDFmSjprRFHlwF6PsM
         QVvxal8GztCYgLbDnoUjE+x7iQR6f96AumsqxGsAFC+vHvBt9hvOQyDhNq80VM1keNiD
         GXrA==
X-Gm-Message-State: AOJu0Yy7FP9ijarh7ScTnFIPkON7msqdvcIIrokukpdlkw55OMh5I4yV
	I883t/7vimapVxyK0tr4UsqXuommBeoSQ5FV06C4PQ==
X-Google-Smtp-Source: AGHT+IH/V+2W1Us9A12IW5S3NQPg++trTbaz66QlcDytRdKrYkO6oPYqJcp2Mwrp3lz/O0Njte05SKIUoxbpAHPlx9A=
X-Received: by 2002:aa7:cd1a:0:b0:52f:3b4c:d06e with SMTP id
 b26-20020aa7cd1a000000b0052f3b4cd06emr5193058edw.12.1694727654169; Thu, 14
 Sep 2023 14:40:54 -0700 (PDT)
MIME-Version: 1.0
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de>
 <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com> <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com>
 <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de> <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com>
 <786ad148287d46a8bdffd792914dbd73@iis.fraunhofer.de> <acd9439d-9d9d-d538-12c5-3a5c80cce611@gmail.com>
In-Reply-To: <acd9439d-9d9d-d538-12c5-3a5c80cce611@gmail.com>
Date: Thu, 14 Sep 2023 17:40:42 -0400
Message-ID: <CAB__hTT8-dmWsY=15xvjYYLLq+Pa2f+8c1dJ-A7N4Ydd1S6dEg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: FHZYGXYQAXLZKZ5UW73WGXYXNNDWJAXS
X-Message-ID-Hash: FHZYGXYQAXLZKZ5UW73WGXYXNNDWJAXS
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FHZYGXYQAXLZKZ5UW73WGXYXNNDWJAXS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2926333119962713721=="

--===============2926333119962713721==
Content-Type: multipart/alternative; boundary="000000000000d19351060558876b"

--000000000000d19351060558876b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Luca,
The problem with FFT lengths > 256 is an Ettus bug in
"rfnoc_rx_streamer.cpp" (also an issue in "rfnoc_tx_streamer.cpp").  The
following snippet from the atomic_item_size property resolver shows the
issue.  The problem is that "spp" has units of "samples" whereas
"ais.get()" has units of bytes.  If you modify this code to use "spp*4" and
recompile UHD, you can run with fft length 1024.
Rob

                if (spp < ais.get()) {
                    throw uhd::value_error("samples per package must not be
smaller than atomic item size");
                }


On Tue, Sep 12, 2023 at 9:55=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 12/09/2023 07:35, Bachmaier, Luca wrote:
>
> Hi Rob,
>
>
>
> your tip about =E2=80=9Crfnox_rx_to_file=E2=80=9D is great, I=E2=80=99ve =
been searching for
> examples for the UHD Python/C++ API for a while now anyway. Unfortunately
> it seems like the error is not due to GNU Radio. Even when trying to crea=
te
> a simple =E2=80=9CRadio -> FFT -> RX Streamer=E2=80=9D chain by calling `=
./rfnoc_rx_to_file
> --spp=3D1024 --block-id FFT --block-props length=3D512` the flowgraph can=
=E2=80=99t
> even start, I get the same error about the atomic item size. Looking at t=
he
> output, everything should be set correctly:
>
>              [=E2=80=A6] Requesting samples per packet of: 1024
>
> Actual samples per packet =3D 1024
>
> [=E2=80=A6] Setting block properties to: length=3D512
>
> Error: ValueError: samples per package must not be smaller than atomic
> item size
>
>
>
> Additionally, I=E2=80=99m very much interesting in how you created your o=
wn FFT IP
> in Xilinx and separated the parameters. I would be happy to get some
> information from you.
>
> Have you tried spp=3Dfft_length?   I think the last time I did this (year=
s
> ago), that was the requirement...
>
>
>
>
> *Von:* Rob Kossler <rkossler@nd.edu> <rkossler@nd.edu>
> *Gesendet:* Montag, 11. September 2023 16:54
> *An:* Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.de>
> <luca.bachmaier@iis.fraunhofer.de>
> *Cc:* Marcus D. Leech <patchvonbraun@gmail.com> <patchvonbraun@gmail.com>=
;
> usrp-users@lists.ettus.com; Nieland, Michael
> <michael.nieland@iis.fraunhofer.de> <michael.nieland@iis.fraunhofer.de>
> *Betreff:* Re: [USRP-users] Re: RFNoC: strange behavior of FFT block
>
>
>
> Hi Luca,
>
> I haven't used a recent UHD version with an FFT RFNoC block (probably 4.2
> is the latest that I have used), but I have successfully used FFT lengths
> up to 4096.  In order to do this, I had to create my own Xilinx FFT IP an=
d
> I also had to separate the concepts of streaming packet length from the F=
FT
> length.  If you want to do this, I can provide additional info.  However,
> using the "stock" FFT block provided by Ettus, I believe that you should =
be
> able to stream with FFT length up to 1024 using the N310.
>
>
>
> You mentioned in a previous post that your SPP is 2048.  I think that thi=
s
> is an invalid SPP for the radio because of the need for the radio to inse=
rt
> "packet header" bytes which reduces the max num samples per packet to
> <=3D2000 (or about that).  So, my suggestion is to use SPP=3D1024.
>
>
>
> Another suggestion is to try the Ettus example "rfnoc_rx_to_file" which
> will allow you to specify an arbitrary block - in this case the FFT block=
 -
> to create an RFNoC graph that looks like "rx_radio =3D> DDC =3D> FFT =3D>
> rx_streamer".  This eliminates gnuradio from the equation. This example
> will capture samples to a file that you can then plot to see the results.
> You could run this example initially without the FFT block (rx_radio =3D>=
 DDC
> =3D> rx_streamer) and make sure it is working as you expect.  Then you co=
uld
> try again with the FFT block inserted.
>
>
>
> Rob
>
>
>
> On Mon, Sep 11, 2023 at 5:30=E2=80=AFAM Bachmaier, Luca <
> luca.bachmaier@iis.fraunhofer.de> wrote:
>
> Hi Rob,
>
>
>
> thanks for your reply. What I originally wanted to bring across with my
> message was that I cannot run the flowgraph with fft_sizes larger than 25=
6,
> no matter whether the maximum possible limit is 1024 or 2048. E.g. if I s=
et
> the fft_size to  just 512, I also get the error about the atomic item siz=
e
> mentioned below. I keep wondering why that is.
>
>
> Regards
>
> Luca
>
>
>
> *Von:* Rob Kossler <rkossler@nd.edu>
> *Gesendet:* Mittwoch, 6. September 2023 21:29
> *An:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Cc:* Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.de>;
> usrp-users@lists.ettus.com; Nieland, Michael <
> michael.nieland@iis.fraunhofer.de>
> *Betreff:* Re: [USRP-users] Re: RFNoC: strange behavior of FFT block
>
>
>
> Hi Luca,
>
> A couple of things.  The largest FFT size might be limited to 1024 - even
> with MTU=3D9000.  I think that the maximum packet length is often 2000 or
> 2048 such that when you add a few header bytes, you can no longer achieve
> an FFT packet of 2048.
>
>
>
> Additionally, if you look in fft_block_control.cpp, you will see that
> there is a constant that limits the max size to 1024. This also matches t=
he
> parameter "C_NFFT_MAX=3D10" which you will find in "axi_fft.xci" which is=
 the
> Xilinx IP file that is implemented.  You can change these in order to bui=
ld
> different sizes, but these are the defaults.
>
>
>
> If you search the mailing archive, you may find discussion of this topic
> and the need to divorce the concepts of 'fft length' and 'packet length' =
in
> order to achieve FFT lengths greater than 1024.
>
> Rob
>
>
>
>
>
> On Tue, Sep 5, 2023 at 10:06=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
> On 05/09/2023 04:38, Bachmaier, Luca wrote:
>
> Hello Marcus,
>
>
>
> Thank you for your detailed explanation. I was able to fix the problem
> now: I updated GNU Radio from 3.10.5 (installed over apt) to 3.10.7
> (installed from source). With the newer version the FFT block now correct=
ly
> displays a noise floor.
>
>
>
> So far so good, the FFT resolution is still low as I cannot set the size
> higher than 256 (Error =E2=80=9Csamples per package must not be smaller t=
han atomic
> item size=E2=80=9D). As far as I understood, the size should be able to g=
o as high
> as 2048 when using 10Gbit streaming.
>
> My current configuration should enable that:
>
> -          MTU on my interface is set to 9000
>
> -          Parameter spp of RFNoC RX Radio is set to 2048
>
> -          Current FPGA image is of XG type
>
>
>
> In case it=E2=80=99s helpful, here=E2=80=99s the relevant output of `ip a=
` of my devices:
>
> Host:
>
>              4: enp9s0f1np1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000
> qdisc mq state UP group default qlen 1000
>
>     link/ether 9c:6b:00:16:8e:96 brd ff:ff:ff:ff:ff:ff
>
>     inet 192.168.10.3/24 scope global enp9s0f1np1
>
>        valid_lft forever preferred_lft forever
>
>
>
> USRP:
>
>              3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc
> pfifo_fast qlen 1000
>
>     link/ether 00:80:2f:31:28:42 brd ff:ff:ff:ff:ff:ff
>
>     inet 192.168.10.2/24 brd 192.168.10.255 scope global sfp0
>
>        valid_lft forever preferred_lft forever
>
>
>
> I think in the "RFNOC Graph" block, you can specify the SPP in the "Devic=
e
> Args" parameter.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
>

--000000000000d19351060558876b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Luca,<div>The problem with FFT lengths &gt; 256 is an E=
ttus bug in &quot;rfnoc_rx_streamer.cpp&quot; (also an issue in &quot;rfnoc=
_tx_streamer.cpp&quot;).=C2=A0 The following snippet from the atomic_item_s=
ize property resolver shows the issue.=C2=A0 The problem is that &quot;spp&=
quot; has units of &quot;samples&quot; whereas &quot;ais.get()&quot; has un=
its of bytes.=C2=A0 If you modify this code to use &quot;spp*4&quot; and re=
compile UHD, you can run with fft length 1024.</div><div>Rob</div><div><br>=
</div><div><font face=3D"monospace" color=3D"#0000ff">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (spp &lt; ais.get()) {<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 throw uhd::valu=
e_error(&quot;samples per package must not be smaller than atomic item size=
&quot;);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br></=
font>=C2=A0<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Sep 12, 2023 at 9:55=E2=80=AFAM Marcus D. Leec=
h &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 12/09/2023 07:35, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">Hi Rob,<u></u><u></u>=
</span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">your tip about =E2=80=
=9Crfnox_rx_to_file=E2=80=9D is great,
            I=E2=80=99ve been searching for examples for the UHD Python/C++=
 API
            for a while now anyway. Unfortunately it seems like the
            error is not due to GNU Radio. Even when trying to create a
            simple =E2=80=9CRadio -&gt; FFT -&gt; RX Streamer=E2=80=9D chai=
n by calling
            `./rfnoc_rx_to_file --spp=3D1024 --block-id FFT --block-props
            length=3D512` the flowgraph can=E2=80=99t even start, I get the=
 same
            error about the atomic item size. Looking at the output,
            everything should be set correctly:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [=E2=80=A6] Requesting =
samples per packet
            of: 1024<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span style=3D"=
font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D=
"EN-US">Actual samples per packet =3D 1024<u></u><u></u></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span style=3D"=
font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D=
"EN-US">[=E2=80=A6] Setting block properties to: length=3D512<u></u><u></u>=
</span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:5.25pt;text-indent:30.1=
5pt"><span style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb=
(31,73,125)" lang=3D"EN-US">Error: ValueError: samples per package must not
            be smaller than atomic item size<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u>=C2=A0<u></u><=
/span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">Additionally, I=E2=80=
=99m very much interesting in how
            you created your own FFT IP in Xilinx and separated the
            parameters. I would be happy to get some information from
            you.</span></p>
      </div>
    </blockquote>
    Have you tried spp=3Dfft_length?=C2=A0=C2=A0 I think the last time I di=
d this
    (years ago), that was the requirement...<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Ca=
libri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><u></u><u></u></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <div style=3D"border-top:none;border-right:none;border-bottom:none;=
border-left:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
          <div>
            <div style=3D"border-right:none;border-bottom:none;border-left:=
none;border-top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
              <p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-=
family:Calibri,sans-serif">Von:</span></b><span style=3D"font-size:11pt;fon=
t-family:Calibri,sans-serif"> Rob
                  Kossler <a href=3D"mailto:rkossler@nd.edu" target=3D"_bla=
nk">&lt;rkossler@nd.edu&gt;</a>
                  <br>
                  <b>Gesendet:</b> Montag, 11. September 2023 16:54<br>
                  <b>An:</b> Bachmaier, Luca
                  <a href=3D"mailto:luca.bachmaier@iis.fraunhofer.de" targe=
t=3D"_blank">&lt;luca.bachmaier@iis.fraunhofer.de&gt;</a><br>
                  <b>Cc:</b> Marcus D. Leech
                  <a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_bla=
nk">&lt;patchvonbraun@gmail.com&gt;</a>;
                  <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_=
blank">usrp-users@lists.ettus.com</a>; Nieland, Michael
                  <a href=3D"mailto:michael.nieland@iis.fraunhofer.de" targ=
et=3D"_blank">&lt;michael.nieland@iis.fraunhofer.de&gt;</a><br>
                  <b>Betreff:</b> Re: [USRP-users] Re: RFNoC: strange
                  behavior of FFT block<u></u><u></u></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
          <div>
            <p class=3D"MsoNormal">Hi Luca,<u></u><u></u></p>
            <div>
              <p class=3D"MsoNormal">I haven&#39;t used a recent UHD versio=
n
                with an FFT RFNoC block (probably 4.2 is the latest that
                I have used), but I have successfully used FFT lengths
                up to 4096.=C2=A0 In order to do this, I had to create my o=
wn
                Xilinx FFT IP and I also had to separate the concepts of
                streaming packet length from the FFT length.=C2=A0 If you
                want to do this, I can provide additional info.=C2=A0
                However, using the &quot;stock&quot; FFT block provided by =
Ettus,
                I believe that you should be able to stream with FFT
                length up to 1024 using the N310.=C2=A0=C2=A0<u></u><u></u>=
</p>
            </div>
            <div>
              <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal">You mentioned in a previous post that
                your SPP is 2048.=C2=A0 I think that this is an invalid SPP
                for the radio because of the need for the radio to
                insert &quot;packet header&quot; bytes which reduces the ma=
x num
                samples per packet to &lt;=3D2000 (or about that).=C2=A0 So=
, my
                suggestion is to use SPP=3D1024.<u></u><u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal">Another suggestion is to try the
                Ettus example &quot;rfnoc_rx_to_file&quot; which will allow=
 you to
                specify an arbitrary block - in this case the FFT block
                - to create an RFNoC graph that looks=C2=A0like &quot;rx_ra=
dio
                =3D&gt; DDC =3D&gt; FFT =3D&gt; rx_streamer&quot;.=C2=A0 Th=
is eliminates
                gnuradio from the equation. This example will capture
                samples to a file that you can then plot to see the
                results.=C2=A0 You could run this example initially without
                the FFT block (rx_radio =3D&gt; DDC =3D&gt; rx_streamer) an=
d
                make sure it is working as you expect.=C2=A0 Then you could
                try again with the FFT block inserted.<u></u><u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
            </div>
            <div>
              <p class=3D"MsoNormal">Rob<u></u><u></u></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
          <div>
            <div>
              <p class=3D"MsoNormal">On Mon, Sep 11, 2023 at 5:30=E2=80=AFA=
M
                Bachmaier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fr=
aunhofer.de" target=3D"_blank">luca.bachmaier@iis.fraunhofer.de</a>&gt;
                wrote:<u></u><u></u></p>
            </div>
            <blockquote style=3D"border-top:none;border-right:none;border-b=
ottom:none;border-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;m=
argin-left:4.8pt;margin-right:0cm">
              <div>
                <div>
                  <div>
                    <p class=3D"MsoNormal"><span style=3D"font-size:11pt;fo=
nt-family:Calibri,sans-serif;color:rgb(31,73,125)">Hi
                        Rob,</span><u></u><u></u></p>
                    <p class=3D"MsoNormal"><span style=3D"font-size:11pt;fo=
nt-family:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u><=
/u></p>
                    <p class=3D"MsoNormal"><span style=3D"font-size:11pt;fo=
nt-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">thanks fo=
r your reply. What I
                        originally wanted to bring across with my
                        message was that I cannot run the flowgraph with
                        fft_sizes larger than 256, no matter whether the
                        maximum possible limit is 1024 or 2048. E.g. if
                        I set the fft_size to =C2=A0just 512, I also get th=
e
                        error about the atomic item size mentioned
                        below. I keep wondering why that is.</span><u></u><=
u></u></p>
                    <p class=3D"MsoNormal"><span style=3D"font-size:11pt;fo=
nt-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US"><br>
                        Regards</span><u></u><u></u></p>
                    <p class=3D"MsoNormal"><span style=3D"font-size:11pt;fo=
nt-family:Calibri,sans-serif;color:rgb(31,73,125)" lang=3D"EN-US">Luca</spa=
n><u></u><u></u></p>
                    <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</spa=
n><u></u><u></u></p>
                    <div style=3D"border-top:none;border-right:none;border-=
bottom:none;border-left:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
                      <div>
                        <div style=3D"border-right:none;border-bottom:none;=
border-left:none;border-top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm"=
>
                          <p class=3D"MsoNormal"><b><span style=3D"font-siz=
e:11pt;font-family:Calibri,sans-serif" lang=3D"EN-US">Von:</span></b><span =
style=3D"font-size:11pt;font-family:Calibri,sans-serif" lang=3D"EN-US"> Rob=
 Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@=
nd.edu</a>&gt;
                              <br>
                              <b>Gesendet:</b> Mittwoch, 6. September
                              2023 21:29<br>
                              <b>An:</b> Marcus D. Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&=
gt;<br>
                            </span><b><span style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif">Cc:</span></b><span style=3D"font-size:11pt;font-f=
amily:Calibri,sans-serif">
                              Bachmaier, Luca &lt;<a href=3D"mailto:luca.ba=
chmaier@iis.fraunhofer.de" target=3D"_blank">luca.bachmaier@iis.fraunhofer.=
de</a>&gt;;
                              <a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a>;
                              Nieland, Michael &lt;<a href=3D"mailto:michae=
l.nieland@iis.fraunhofer.de" target=3D"_blank">michael.nieland@iis.fraunhof=
er.de</a>&gt;<br>
                              <b>Betreff:</b> Re: [USRP-users] Re:
                              RFNoC: strange behavior of FFT block</span><u=
></u><u></u></p>
                        </div>
                      </div>
                      <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                      <div>
                        <p class=3D"MsoNormal">Hi
                          Luca,<u></u><u></u></p>
                        <div>
                          <p class=3D"MsoNormal">A
                            couple of things.=C2=A0 The largest FFT size
                            might be limited to 1024 - even with
                            MTU=3D9000.=C2=A0 I think that the maximum pack=
et
                            length is often 2000 or 2048 such that when
                            you add a few header bytes, you can no
                            longer achieve an FFT packet of 2048.=C2=A0=C2=
=A0<u></u><u></u></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal">Additionally,
                            if you look in fft_block_control.cpp, you
                            will see that there is a constant that
                            limits the max size to 1024. This also
                            matches the parameter &quot;C_NFFT_MAX=3D10&quo=
t; which
                            you will find in &quot;axi_fft.xci&quot; which =
is the
                            Xilinx IP file that is implemented.=C2=A0 You c=
an
                            change these in order to build different
                            sizes, but these are the defaults.<u></u><u></u=
></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal">If
                            you search the mailing archive, you may find
                            discussion of this topic and the need to
                            divorce the concepts of &#39;fft length&#39; an=
d
                            &#39;packet length&#39; in order to achieve FFT
                            lengths greater than 1024.<u></u><u></u></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal">Rob<u></u><u></u></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                        </div>
                      </div>
                      <p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
                      <div>
                        <div>
                          <p class=3D"MsoNormal">On
                            Tue, Sep 5, 2023 at 10:06=E2=80=AFAM Marcus D. =
Leech
                            &lt;<a href=3D"mailto:patchvonbraun@gmail.com" =
target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
                            wrote:<u></u><u></u></p>
                        </div>
                        <blockquote style=3D"border-top:none;border-right:n=
one;border-bottom:none;border-left:1pt solid rgb(204,204,204);padding:0cm 0=
cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
                          <div>
                            <div>
                              <p class=3D"MsoNormal">On
                                05/09/2023 04:38, Bachmaier, Luca wrote:<u>=
</u><u></u></p>
                            </div>
                            <blockquote style=3D"margin-top:5pt;margin-bott=
om:5pt">
                              <div>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)">Hello Marcus,</span><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">Thank
                                    you for your detailed explanation. I
                                    was able to fix the problem now: I
                                    updated GNU Radio from 3.10.5
                                    (installed over apt) to 3.10.7
                                    (installed from source). With the
                                    newer version the FFT block now
                                    correctly displays a noise floor.</span=
><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">So
                                    far so good, the FFT resolution is
                                    still low as I cannot set the size
                                    higher than 256 (Error =E2=80=9Csamples=
 per
                                    package must not be smaller than
                                    atomic item size=E2=80=9D). As far as I
                                    understood, the size should be able
                                    to go as high as 2048 when using
                                    10Gbit streaming.</span><u></u><u></u><=
/p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">My
                                    current configuration should enable
                                    that:</span><u></u><u></u></p>
                                <p style=3D"margin-left:20.65pt"><span styl=
e=3D"color:rgb(31,73,125)" lang=3D"EN-US">-</span><span style=3D"font-size:=
7pt;color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
                                  </span><span style=3D"color:rgb(31,73,125=
)" lang=3D"EN-US">MTU on my interface is
                                    set to 9000</span><u></u><u></u></p>
                                <p style=3D"margin-left:20.65pt"><span styl=
e=3D"color:rgb(31,73,125)" lang=3D"EN-US">-</span><span style=3D"font-size:=
7pt;color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
                                  </span><span style=3D"color:rgb(31,73,125=
)" lang=3D"EN-US">Parameter spp of RFNoC
                                    RX Radio is set to 2048</span><u></u><u=
></u></p>
                                <p style=3D"margin-left:20.65pt"><span styl=
e=3D"color:rgb(31,73,125)" lang=3D"EN-US">-</span><span style=3D"font-size:=
7pt;color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
                                  </span><span style=3D"color:rgb(31,73,125=
)" lang=3D"EN-US">Current FPGA image is
                                    of XG type</span><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">In
                                    case it=E2=80=99s helpful, here=E2=80=
=99s the
                                    relevant output of `ip a` of my
                                    devices:</span><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">Host:</span><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                    4: enp9s0f1np1:
                                    &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt;
                                    mtu 9000 qdisc mq state UP group
                                    default qlen 1000</span><u></u><u></u><=
/p>
                                <p class=3D"MsoNormal" style=3D"text-indent=
:35.4pt"><span style=3D"color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0
                                    link/ether 9c:6b:00:16:8e:96 brd
                                    ff:ff:ff:ff:ff:ff</span><u></u><u></u><=
/p>
                                <p class=3D"MsoNormal" style=3D"text-indent=
:35.4pt"><span style=3D"color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0
                                    inet <a href=3D"http://192.168.10.3/24"=
 target=3D"_blank">
                                      192.168.10.3/24</a> scope global
                                    enp9s0f1np1</span><u></u><u></u></p>
                                <p class=3D"MsoNormal" style=3D"text-indent=
:35.4pt"><span style=3D"color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
                                    valid_lft forever preferred_lft
                                    forever</span><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                  </span><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">USRP:</span><u></u><u></u></p>
                                <p class=3D"MsoNormal"><span style=3D"color=
:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                    3: sfp0:
                                    &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt;
                                    mtu 9000 qdisc pfifo_fast qlen 1000</sp=
an><u></u><u></u></p>
                                <p class=3D"MsoNormal" style=3D"text-indent=
:35.4pt"><span style=3D"color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0
                                    link/ether 00:80:2f:31:28:42 brd
                                    ff:ff:ff:ff:ff:ff</span><u></u><u></u><=
/p>
                                <p class=3D"MsoNormal" style=3D"text-indent=
:35.4pt"><span style=3D"color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0
                                    inet <a href=3D"http://192.168.10.2/24"=
 target=3D"_blank">
                                      192.168.10.2/24</a> brd
                                    192.168.10.255 scope global sfp0</span>=
<u></u><u></u></p>
                                <p class=3D"MsoNormal" style=3D"text-indent=
:35.4pt"><span style=3D"color:rgb(31,73,125)" lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
                                    valid_lft forever preferred_lft
                                    forever</span><u></u><u></u></p>
                                <p class=3D"MsoNormal">=C2=A0<u></u><u></u>=
</p>
                              </div>
                            </blockquote>
                            <p class=3D"MsoNormal" style=3D"margin-bottom:1=
2pt">I
                              think in the &quot;RFNOC Graph&quot; block, y=
ou can
                              specify the SPP in the &quot;Device Args&quot=
;
                              parameter.=C2=A0
                              <u></u><u></u></p>
                          </div>
                          <p class=3D"MsoNormal">__________________________=
_____________________<br>
                            USRP-users mailing list -- <a href=3D"mailto:us=
rp-users@lists.ettus.com" target=3D"_blank">
                              usrp-users@lists.ettus.com</a><br>
                            To unsubscribe send an email to <a href=3D"mail=
to:usrp-users-leave@lists.ettus.com" target=3D"_blank">
                              usrp-users-leave@lists.ettus.com</a><u></u><u=
></u></p>
                        </blockquote>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000d19351060558876b--

--===============2926333119962713721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2926333119962713721==--
