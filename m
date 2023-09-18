Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 007367A52B0
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 21:08:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB692384D7E
	for <lists+usrp-users@lfdr.de>; Mon, 18 Sep 2023 15:08:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695064084; bh=YhsgQbcXNdEdGE1b6A2LIscuvCAZULVLH07YK/DLLKs=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=q3ctWhvAn7akedS1BBp6FPKWm1HIuo0xLgVfiRw/kRtMFB72OZVIUaP+HtNY7EnqY
	 gMnIiMqiF6eDp2jfnkjLNmcfCKVwWKJmcV1Pb4lWtPM9og0IODAhCkw3Li5paPwrUO
	 G27qgeLhPVcJDaVDIwKnmSFxo1Sa6ouXLOMWH+DQCqDVGrx6ZBqbaF6tni1ftumw54
	 VaRBqj2BfESFcVSrilhu3SIUux7igQ9MgI8FczbbNO4X9IjsoJYTKBS2NrPqquosk6
	 v/ozOAh7jJG7hNj9SaoLrbLvLfksL2lrkdk2Jwc27/LsFV17igZxMYDI1YAj++mSX0
	 0c016UNCiWjTA==
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by mm2.emwd.com (Postfix) with ESMTPS id AEEA7384CEB
	for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 15:07:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="TFRgl87R";
	dkim-atps=neutral
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-502e6d632b6so7422433e87.0
        for <usrp-users@lists.ettus.com>; Mon, 18 Sep 2023 12:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1695064028; x=1695668828; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=P/efeLhdvbfZKNAR1RMYUYd72JlKgRxrYkXWalqJTBM=;
        b=TFRgl87RF2hdae/12j3SGBo/ihZPSBWqywhvuV8vSb4GALTVwwwb4iwJwjxvzqSCrX
         f369QWBLwcs6scArlmC7o+yFWBD6nPocbEBu8Qne+SkL8cr3V9HoUlZC7rSI3PUeEeub
         o4ayfkBIwx3eoMX9xM/Q4PMgpnlyYCNocY2WJM0+GX+oY+75xJiPYe6VyMljpXygh9Bq
         NEvk10VKMuTffPlPDD372Q34ZcxrP3lgjmNFjdd8/sxHofmJLrYfAPJmrwX50GyxO8US
         BQ5ZKG9lbHv2yecrrtBXhGx4F+6+uhdiYgzwr/tuU5bOD56ATzP0xNDH32B+kNX7jHrD
         euCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695064028; x=1695668828;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P/efeLhdvbfZKNAR1RMYUYd72JlKgRxrYkXWalqJTBM=;
        b=mV6PL3H3NdbjOue3BNtmSbOPp/Lu7caYkIr4cuU8E/HrdJNbRymupHBRedAKE8Mcwh
         4UzkV4byzSzZcYqcbCmsJRXw3hpvgrFjW8lHYeR+szNfB+cZepv9/cUrHKtr5In+1t9w
         hAjJcb6xgpPy9DqIUU1S66wGPtWWCek1QK0iHeDQuuTpu5yjHsZN7KkQKEbEEsXqvj0x
         VpReMp+5MGLPaFGDLgCFHshxClLqyYVM/jjYU9p86m63pcpXe68mhBOkuev+dGkLLvh4
         YIEZxnyN4D9LGv5r5oSH6HrtbZrkE2Cpkp1Xet56JI+DafGfIxk4jh4IejWjUq1GbIwz
         iAzQ==
X-Gm-Message-State: AOJu0YwX3kkTejWCUqEeZX6zn/B1buuvrDLuxDfplnZ6C70c+IxtIte8
	aeUBpaKdTe3VOSkX05SkZrUXewgNlMT7en4ox2iXdg==
X-Google-Smtp-Source: AGHT+IEIbrFa5dHp+WyaJlaZYsTqpKIbJYzJXG8HHKhUURTM5WumYwnrQYsLVBBYN7+5g1uJbFFJmUm5cs1csO2t+CI=
X-Received: by 2002:a05:6512:12cd:b0:502:9bb6:3aba with SMTP id
 p13-20020a05651212cd00b005029bb63abamr9329575lfg.14.1695064027733; Mon, 18
 Sep 2023 12:07:07 -0700 (PDT)
MIME-Version: 1.0
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de>
 <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com> <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com>
 <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de> <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com>
 <786ad148287d46a8bdffd792914dbd73@iis.fraunhofer.de> <acd9439d-9d9d-d538-12c5-3a5c80cce611@gmail.com>
 <CAB__hTT8-dmWsY=15xvjYYLLq+Pa2f+8c1dJ-A7N4Ydd1S6dEg@mail.gmail.com> <82c7292ac8ef4ad983d6f80a7d8bc3aa@iis.fraunhofer.de>
In-Reply-To: <82c7292ac8ef4ad983d6f80a7d8bc3aa@iis.fraunhofer.de>
Date: Mon, 18 Sep 2023 15:07:02 -0400
Message-ID: <CAB__hTR4bX9h8L7KgWJniFCtqVXfo_oz1Q09gb7wSF1+=Gjyzw@mail.gmail.com>
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
Message-ID-Hash: CHE2ZMNDQKTEX47ZDNCWMOUQTZODLMQ3
X-Message-ID-Hash: CHE2ZMNDQKTEX47ZDNCWMOUQTZODLMQ3
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CHE2ZMNDQKTEX47ZDNCWMOUQTZODLMQ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3185060574795774513=="

--===============3185060574795774513==
Content-Type: multipart/alternative; boundary="0000000000003ecfbb0605a6d9f8"

--0000000000003ecfbb0605a6d9f8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Luca,
I installed the latest from UHD-4.4 (as of last week).
Rob

On Mon, Sep 18, 2023 at 4:11=E2=80=AFAM Bachmaier, Luca <
luca.bachmaier@iis.fraunhofer.de> wrote:

> Hi Rob,
>
>
>
> thank you very much for putting effort into finding this bug. Since you=
=E2=80=99re
> talking about recompiling UHD I=E2=80=99m going to assume you installed U=
HD from
> source. Which exact version did you build and install? I remember running
> into problems I couldn=E2=80=99t solve when installing the branches UHD-4=
.3 und
> UHD-4.4 from source.
>
>
>
> Regards
>
> Luca
>
>
>
> *Von:* Rob Kossler <rkossler@nd.edu>
> *Gesendet:* Donnerstag, 14. September 2023 23:41
> *An:* Marcus D. Leech <patchvonbraun@gmail.com>
> *Cc:* Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.de>;
> usrp-users@lists.ettus.com; Nieland, Michael <
> michael.nieland@iis.fraunhofer.de>
> *Betreff:* Re: AW: [USRP-users] Re: RFNoC: strange behavior of FFT block
>
>
>
> Hi Luca,
>
> The problem with FFT lengths > 256 is an Ettus bug in
> "rfnoc_rx_streamer.cpp" (also an issue in "rfnoc_tx_streamer.cpp").  The
> following snippet from the atomic_item_size property resolver shows the
> issue.  The problem is that "spp" has units of "samples" whereas
> "ais.get()" has units of bytes.  If you modify this code to use "spp*4" a=
nd
> recompile UHD, you can run with fft length 1024.
>
> Rob
>
>
>
>                 if (spp < ais.get()) {
>                     throw uhd::value_error("samples per package must not
> be smaller than atomic item size");
>                 }
>
>
>
>
> On Tue, Sep 12, 2023 at 9:55=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
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
>

--0000000000003ecfbb0605a6d9f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Luca,<div>I installed the latest from UHD-4.4 (as of la=
st week).</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Sep 18, 2023 at 4:11=E2=80=AFAM Bachm=
aier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunhofer.de">luca.bac=
hmaier@iis.fraunhofer.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div class=3D"msg4446082144023578295">





<div lang=3D"DE">
<div class=3D"m_4446082144023578295WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Hi Rob,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">thank you very much for putti=
ng effort into finding this bug. Since you=E2=80=99re talking about recompi=
ling UHD I=E2=80=99m going to
 assume you installed UHD from source. Which exact version did you build an=
d install? I remember running into problems I couldn=E2=80=99t solve when i=
nstalling the branches UHD-4.3 und UHD-4.4 from source.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Regards<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Luca<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:Calibri,sans-serif">Von:</span></b><span lang=3D"EN-US" style=3D"fo=
nt-size:11pt;font-family:Calibri,sans-serif"> Rob Kossler &lt;<a href=3D"ma=
ilto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
<br>
<b>Gesendet:</b> Donnerstag, 14. September 2023 23:41<br>
<b>An:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a></span><span style=3D"font-size=
:11pt;font-family:Calibri,sans-serif">&gt;<br>
<b>Cc:</b> Bachmaier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunho=
fer.de" target=3D"_blank">luca.bachmaier@iis.fraunhofer.de</a>&gt;; <a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>; Nieland, Michael &lt;<a href=3D"mailto:michael.nieland@iis.fr=
aunhofer.de" target=3D"_blank">michael.nieland@iis.fraunhofer.de</a>&gt;<br=
>
<b>Betreff:</b> Re: AW: [USRP-users] Re: RFNoC: strange behavior of FFT blo=
ck<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi Luca,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">The problem with FFT lengths &gt; 256 is an Ettus bu=
g in &quot;rfnoc_rx_streamer.cpp&quot; (also an issue in &quot;rfnoc_tx_str=
eamer.cpp&quot;).=C2=A0 The following snippet from the atomic_item_size pro=
perty resolver shows the issue.=C2=A0 The problem is that &quot;spp&quot; h=
as
 units of &quot;samples&quot; whereas &quot;ais.get()&quot; has units of by=
tes.=C2=A0 If you modify this code to use &quot;spp*4&quot; and recompile U=
HD, you can run with fft length 1024.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;;c=
olor:blue">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (spp =
&lt; ais.get()) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 throw=
 uhd::value_error(&quot;samples per package must not be smaller than atomic=
 item size&quot;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
</span>=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Sep 12, 2023 at 9:55=E2=80=AFAM Marcus D. Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchv=
onbraun@gmail.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4=
.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal">On 12/09/2023 07:35, Bachmaier, Luca wrote:<u></u><u=
></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Hi Rob,</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">your tip about =E2=80=9Crfnox=
_rx_to_file=E2=80=9D is great, I=E2=80=99ve been searching for examples for=
 the UHD
 Python/C++ API for a while now anyway. Unfortunately it seems like the err=
or is not due to GNU Radio. Even when trying to create a simple =E2=80=9CRa=
dio -&gt; FFT -&gt; RX Streamer=E2=80=9D chain by calling `./rfnoc_rx_to_fi=
le --spp=3D1024 --block-id FFT --block-props length=3D512`
 the flowgraph can=E2=80=99t even start, I get the same error about the ato=
mic item size. Looking at the output, everything should be set correctly:</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [=E2=80=A6] Requesting sample=
s per packet of: 1024</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-serif=
;color:rgb(31,73,125)">Actual samples per packet =3D 1024</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt">
<span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-serif=
;color:rgb(31,73,125)">[=E2=80=A6] Setting block properties to: length=3D51=
2</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.25pt;text-indent:30.15pt">
<span lang=3D"EN-US" style=3D"font-size:11pt;font-family:Calibri,sans-serif=
;color:rgb(31,73,125)">Error: ValueError: samples per package must not be s=
maller than atomic item size</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Additionally, I=E2=80=99m ver=
y much interesting in how you created your own FFT IP in Xilinx and
 separated the parameters. I would be happy to get some information from yo=
u.</span><u></u><u></u></p>
</div>
</blockquote>
<p class=3D"MsoNormal">Have you tried spp=3Dfft_length?=C2=A0=C2=A0 I think=
 the last time I did this (years ago), that was the requirement...<br>
<br>
<br>
<br>
<u></u><u></u></p>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11pt;font-family:Calibri=
,sans-serif">Von:</span></b><span style=3D"font-size:11pt;font-family:Calib=
ri,sans-serif"> Rob Kossler
<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">&lt;rkossler@nd.edu&gt=
;</a> <br>
<b>Gesendet:</b> Montag, 11. September 2023 16:54<br>
<b>An:</b> Bachmaier, Luca <a href=3D"mailto:luca.bachmaier@iis.fraunhofer.=
de" target=3D"_blank">
&lt;luca.bachmaier@iis.fraunhofer.de&gt;</a><br>
<b>Cc:</b> Marcus D. Leech <a href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank">
&lt;patchvonbraun@gmail.com&gt;</a>; <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">
usrp-users@lists.ettus.com</a>; Nieland, Michael <a href=3D"mailto:michael.=
nieland@iis.fraunhofer.de" target=3D"_blank">
&lt;michael.nieland@iis.fraunhofer.de&gt;</a><br>
<b>Betreff:</b> Re: [USRP-users] Re: RFNoC: strange behavior of FFT block</=
span><u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">Hi Luca,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">I haven&#39;t used a recent UHD version with an FFT =
RFNoC block (probably 4.2 is the latest that I have used), but I have succe=
ssfully used FFT lengths up to 4096.=C2=A0 In order to do this,
 I had to create my own Xilinx FFT IP and I also had to separate the concep=
ts of streaming packet length from the FFT length.=C2=A0 If you want to do =
this, I can provide additional info.=C2=A0 However, using the &quot;stock&q=
uot; FFT block provided by Ettus, I believe that you
 should be able to stream with FFT length up to 1024 using the N310.=C2=A0=
=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">You mentioned in a previous post that your SPP is 20=
48.=C2=A0 I think that this is an invalid SPP for the radio because of the =
need for the radio to insert &quot;packet header&quot; bytes which
 reduces the max num samples per packet to &lt;=3D2000 (or about that).=C2=
=A0 So, my suggestion is to use SPP=3D1024.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Another suggestion is to try the Ettus example &quot=
;rfnoc_rx_to_file&quot; which will allow you to specify an arbitrary block =
- in this case the FFT block - to create an RFNoC graph that
 looks=C2=A0like &quot;rx_radio =3D&gt; DDC =3D&gt; FFT =3D&gt; rx_streamer=
&quot;.=C2=A0 This eliminates gnuradio from the equation. This example will=
 capture samples to a file that you can then plot to see the results.=C2=A0=
 You could run this example initially without the FFT block (rx_radio =3D&g=
t;
 DDC =3D&gt; rx_streamer) and make sure it is working as you expect.=C2=A0 =
Then you could try again with the FFT block inserted.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Sep 11, 2023 at 5:30=E2=80=AFAM Bachmaier, L=
uca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunhofer.de" target=3D"_blan=
k">luca.bachmaier@iis.fraunhofer.de</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin:5pt 0c=
m 5pt 4.8pt">
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Hi Rob,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">thanks for your reply. What I=
 originally wanted to bring across with my message was that
 I cannot run the flowgraph with fft_sizes larger than 256, no matter wheth=
er the maximum possible limit is 1024 or 2048. E.g. if I set the fft_size t=
o =C2=A0just 512, I also get the error about the atomic item size mentioned=
 below. I keep wondering why that is.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><br>
Regards</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">Luca</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11pt;font=
-family:Calibri,sans-serif">Von:</span></b><span lang=3D"EN-US" style=3D"fo=
nt-size:11pt;font-family:Calibri,sans-serif"> Rob
 Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@=
nd.edu</a>&gt; <br>
<b>Gesendet:</b> Mittwoch, 6. September 2023 21:29<br>
<b>An:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
</span><b><span style=3D"font-size:11pt;font-family:Calibri,sans-serif">Cc:=
</span></b><span style=3D"font-size:11pt;font-family:Calibri,sans-serif"> B=
achmaier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunhofer.de" targ=
et=3D"_blank">luca.bachmaier@iis.fraunhofer.de</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>; Nieland, Michael &lt;<a href=3D"mailto:michael.nieland=
@iis.fraunhofer.de" target=3D"_blank">michael.nieland@iis.fraunhofer.de</a>=
&gt;<br>
<b>Betreff:</b> Re: [USRP-users] Re: RFNoC: strange behavior of FFT block</=
span><u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">Hi Luca,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">A couple of things.=C2=A0 The largest FFT size might=
 be limited to 1024 - even with MTU=3D9000.=C2=A0 I think that the maximum =
packet length is often 2000 or 2048 such that when you add a few
 header bytes, you can no longer achieve an FFT packet of 2048.=C2=A0=C2=A0=
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Additionally, if you look in fft_block_control.cpp, =
you will see that there is a constant that limits the max size to 1024. Thi=
s also matches the parameter &quot;C_NFFT_MAX=3D10&quot; which
 you will find in &quot;axi_fft.xci&quot; which is the Xilinx IP file that =
is implemented.=C2=A0 You can change these in order to build different size=
s, but these are the defaults.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">If you search the mailing archive, you may find disc=
ussion of this topic and the need to divorce the concepts of &#39;fft lengt=
h&#39; and &#39;packet length&#39; in order to achieve FFT lengths
 greater than 1024.<u></u><u></u></p>
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
<p class=3D"MsoNormal">On Tue, Sep 5, 2023 at 10:06=E2=80=AFAM Marcus D. Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchv=
onbraun@gmail.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin:5pt 0c=
m 5pt 4.8pt">
<div>
<div>
<p class=3D"MsoNormal">On 05/09/2023 04:38, Bachmaier, Luca wrote:<u></u><u=
></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<div>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Hello Marcus,</=
span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">=C2=A0</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
Thank you for your detailed explanation. I was able to fix the problem now:=
 I updated GNU Radio from 3.10.5 (installed over apt) to 3.10.7
 (installed from source). With the newer version the FFT block now correctl=
y displays a noise floor.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
So far so good, the FFT resolution is still low as I cannot set the size hi=
gher than 256 (Error =E2=80=9Csamples per package must not be smaller
 than atomic item size=E2=80=9D). As far as I understood, the size should b=
e able to go as high as 2048 when using 10Gbit streaming.</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
My current configuration should enable that:</span><u></u><u></u></p>
<p style=3D"margin-left:20.65pt"><span lang=3D"EN-US" style=3D"color:rgb(31=
,73,125)">-</span><span lang=3D"EN-US" style=3D"font-size:7pt;color:rgb(31,=
73,125)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">MTU on my interf=
ace is set to 9000</span><u></u><u></u></p>
<p style=3D"margin-left:20.65pt"><span lang=3D"EN-US" style=3D"color:rgb(31=
,73,125)">-</span><span lang=3D"EN-US" style=3D"font-size:7pt;color:rgb(31,=
73,125)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">Parameter spp of=
 RFNoC RX Radio is set to 2048</span><u></u><u></u></p>
<p style=3D"margin-left:20.65pt"><span lang=3D"EN-US" style=3D"color:rgb(31=
,73,125)">-</span><span lang=3D"EN-US" style=3D"font-size:7pt;color:rgb(31,=
73,125)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">Current FPGA ima=
ge is of XG type</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
In case it=E2=80=99s helpful, here=E2=80=99s the relevant output of `ip a` =
of my devices:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
Host:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4:=
 enp9s0f1np1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc mq sta=
te UP group default qlen 1000</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt">
<span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 link=
/ether 9c:6b:00:16:8e:96 brd ff:ff:ff:ff:ff:ff</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt">
<span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 inet=
 <a href=3D"http://192.168.10.3/24" target=3D"_blank">
192.168.10.3/24</a> scope global enp9s0f1np1</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt">
<span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 valid_lft forever preferred_lft forever</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
USRP:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3:=
 sfp0: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 9000 qdisc pfifo_fast ql=
en 1000</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt">
<span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 link=
/ether 00:80:2f:31:28:42 brd ff:ff:ff:ff:ff:ff</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt">
<span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0 inet=
 <a href=3D"http://192.168.10.2/24" target=3D"_blank">
192.168.10.2/24</a> brd 192.168.10.255 scope global sfp0</span><u></u><u></=
u></p>
<p class=3D"MsoNormal" style=3D"text-indent:35.4pt">
<span lang=3D"EN-US" style=3D"color:rgb(31,73,125)">=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 valid_lft forever preferred_lft forever</span><u></u><u></u=
></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">I think in the &quot;RF=
NOC Graph&quot; block, you can specify the SPP in the &quot;Device Args&quo=
t; parameter.=C2=A0
<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
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
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</blockquote>
</div>
</div>
</div>
</div>

</div></blockquote></div>

--0000000000003ecfbb0605a6d9f8--

--===============3185060574795774513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3185060574795774513==--
