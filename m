Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D905E79A925
	for <lists+usrp-users@lfdr.de>; Mon, 11 Sep 2023 16:55:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FE09384E6A
	for <lists+usrp-users@lfdr.de>; Mon, 11 Sep 2023 10:55:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694444120; bh=dUQBcGm6E8Gb/hWS9rjPNu2zUv/cwHGy/54BgzjgWXc=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=RPz798i6z8aD3YcBqXLAIKbcsQMrbVZ9Y4RZSuLIliKb1EbyI9lbE0zdai3jgiegE
	 zgotXBU/ivseKxZCfHWGwskU/HlnlQ/5oNu2HcYygORCed6jzz0Nhx4WXqaHNF1JyZ
	 knwtCzJRzth5lfgZ85YSnLflM/DAaJmB4yNy8X2XCXnux9aQf7QYbNjCnVNEFi+pSL
	 8igl5wmVK04LjzPJ+qdjucqgqFd0nFdoJwsqEdWTdNe3M29SLBOtZ8NrIwhPIeQclt
	 nPRga/6pRddQj/AfYvhbz9HduzHlQtTTay4jBFZRL3Bdbym4lUrNvR8H9+Bzu8P5eI
	 iXWKeaVtCyP8g==
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 45193384C7A
	for <usrp-users@lists.ettus.com>; Mon, 11 Sep 2023 10:54:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="GjYv/Qw7";
	dkim-atps=neutral
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-403012f27e3so25035695e9.3
        for <usrp-users@lists.ettus.com>; Mon, 11 Sep 2023 07:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1694444057; x=1695048857; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YfpYPvqblzVn1I/YUb3GMEcZ1htkTARBMLzmeK3fBDY=;
        b=GjYv/Qw7bzzQOV/E9tw1qHnaCYhXS1zStV2x+Ix7KEryZiu4fft6sBRJSdiZprTvuy
         5p5mCWACUbctrssVQWttjNYe0ot1JfurCjtkpaKID2PWMRDT9EQxmgga788/hq6UmW0u
         11ECf4ZIRW1DkgOHzokpId0P/hJK5PAU33k1SO6zFtCugsQZjgPXDYNVKYaWkSuWX34l
         3F5xIpV371uG1NeJ9bZ5AZ41JOvSw1IKHZc6p4rVnecjZmo8BTiHhMOoVZAwMpRtpbXj
         oOGK4Z28efxs1Qz0E97GIatSy3zAblTXGHueKXTgRORPbveFPBLGI89arrHShOA+6WK5
         lL3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694444057; x=1695048857;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YfpYPvqblzVn1I/YUb3GMEcZ1htkTARBMLzmeK3fBDY=;
        b=Sg/X24qHUKM/KddAuqU/AMBXGGaQ/OO4mf7Sko+Z0Rw6AO7QwPhX82mH16GyeYrNS5
         APjb42PmvW0x8bnT9CISvDLNlmqsbREG1P6k7JLREUdw92+JmjbnFpFfuyWquqlaXUQ1
         +YdMBavMO0cRtSrM9dZQc364dKJfQx026J5+M0KhHYNvCwzyLrsC039wHpa9ccPMUonS
         T9L4hBBpaoTsVfT0VXnTvomndKkEyvnjtymoP6jHbsfnjjWNvzE2DxdDQMTVk/lbvsYT
         SMr+CwYgK3Zwvr/brI3qOcFp0PlLvrw/AQrF8Ml1hgRSk2cambHjB2/u+XzKuuatgasS
         32rg==
X-Gm-Message-State: AOJu0Yx34nsPzWsL6WwrVyOTf1Nj5wNGKCXbd81P/0Fnqd5sJngNG2Ak
	0v1fuePw8loPkB/VBjd8pCDNRU70GhrS8Q/DRn83Tw==
X-Google-Smtp-Source: AGHT+IF3ul8HeCQryF55sIBFLXSaMr11oAbIMDgB20lYwXUCgaIPmPhaKq5DfcMBAIsSwMmKVPI7TMNPueDqjFzqiuw=
X-Received: by 2002:adf:f50e:0:b0:31c:7001:3873 with SMTP id
 q14-20020adff50e000000b0031c70013873mr7608935wro.60.1694444056730; Mon, 11
 Sep 2023 07:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de>
 <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com> <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com>
 <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de>
In-Reply-To: <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de>
Date: Mon, 11 Sep 2023 10:54:05 -0400
Message-ID: <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com>
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
Message-ID-Hash: OOENQSLF5LG63LHXY4HLE4L7Z7RN64YI
X-Message-ID-Hash: OOENQSLF5LG63LHXY4HLE4L7Z7RN64YI
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OOENQSLF5LG63LHXY4HLE4L7Z7RN64YI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6992959465576474151=="

--===============6992959465576474151==
Content-Type: multipart/alternative; boundary="000000000000181cae06051680af"

--000000000000181cae06051680af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Luca,
I haven't used a recent UHD version with an FFT RFNoC block (probably 4.2
is the latest that I have used), but I have successfully used FFT lengths
up to 4096.  In order to do this, I had to create my own Xilinx FFT IP and
I also had to separate the concepts of streaming packet length from the FFT
length.  If you want to do this, I can provide additional info.  However,
using the "stock" FFT block provided by Ettus, I believe that you should be
able to stream with FFT length up to 1024 using the N310.

You mentioned in a previous post that your SPP is 2048.  I think that this
is an invalid SPP for the radio because of the need for the radio to insert
"packet header" bytes which reduces the max num samples per packet to
<=3D2000 (or about that).  So, my suggestion is to use SPP=3D1024.

Another suggestion is to try the Ettus example "rfnoc_rx_to_file" which
will allow you to specify an arbitrary block - in this case the FFT block -
to create an RFNoC graph that looks like "rx_radio =3D> DDC =3D> FFT =3D>
rx_streamer".  This eliminates gnuradio from the equation. This example
will capture samples to a file that you can then plot to see the results.
You could run this example initially without the FFT block (rx_radio =3D> D=
DC
=3D> rx_streamer) and make sure it is working as you expect.  Then you coul=
d
try again with the FFT block inserted.

Rob

On Mon, Sep 11, 2023 at 5:30=E2=80=AFAM Bachmaier, Luca <
luca.bachmaier@iis.fraunhofer.de> wrote:

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

--000000000000181cae06051680af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Luca,<div>I haven&#39;t used a recent UHD version with =
an FFT RFNoC block (probably 4.2 is the latest that I have used), but I hav=
e successfully used FFT lengths up to 4096.=C2=A0 In order to do this, I ha=
d to create my own Xilinx FFT IP and I also had to separate the concepts of=
 streaming packet length from the FFT length.=C2=A0 If you want to do this,=
 I can provide additional info.=C2=A0 However, using the &quot;stock&quot; =
FFT block provided by Ettus, I believe that you should be able to stream wi=
th FFT length up to 1024 using the N310.=C2=A0=C2=A0</div><div><br></div><d=
iv>You mentioned in a previous post that your SPP is 2048.=C2=A0 I think th=
at this is an invalid SPP for the radio because of the need for the radio t=
o insert &quot;packet header&quot; bytes which reduces the max num samples =
per packet to &lt;=3D2000 (or about that).=C2=A0 So, my suggestion is to us=
e SPP=3D1024.</div><div><br></div><div>Another suggestion is to try the Ett=
us example &quot;rfnoc_rx_to_file&quot; which will allow you to specify an =
arbitrary block - in this case the FFT block - to create an RFNoC graph tha=
t looks=C2=A0like &quot;rx_radio =3D&gt; DDC =3D&gt; FFT =3D&gt; rx_streame=
r&quot;.=C2=A0 This eliminates gnuradio from the equation. This example wil=
l capture samples to a file that you can then plot to see the results.=C2=
=A0 You could run this example initially without the FFT block (rx_radio =
=3D&gt; DDC =3D&gt; rx_streamer) and make sure it is working as you expect.=
=C2=A0 Then you could try again with the FFT block inserted.</div><div><br>=
</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, Sep 11, 2023 at 5:30=E2=80=AFAM Bachmaier, Luca=
 &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunhofer.de">luca.bachmaier@iis=
.fraunhofer.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div class=3D"msg-4811423844653522346">





<div lang=3D"DE">
<div class=3D"m_-4811423844653522346WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)">Hi Rob,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:Calibri,sa=
ns-serif;color:rgb(31,73,125)"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)">thanks for your reply. What I=
 originally wanted to bring across with my message was that I cannot run th=
e flowgraph with
 fft_sizes larger than 256, no matter whether the maximum possible limit is=
 1024 or 2048. E.g. if I set the fft_size to =C2=A0just 512, I also get the=
 error about the atomic item size mentioned below. I keep wondering why tha=
t is.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt;font-fa=
mily:Calibri,sans-serif;color:rgb(31,73,125)"><br>
Regards<u></u><u></u></span></p>
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
<b>Gesendet:</b> Mittwoch, 6. September 2023 21:29<br>
<b>An:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
</span><b><span style=3D"font-size:11pt;font-family:Calibri,sans-serif">Cc:=
</span></b><span style=3D"font-size:11pt;font-family:Calibri,sans-serif"> B=
achmaier, Luca &lt;<a href=3D"mailto:luca.bachmaier@iis.fraunhofer.de" targ=
et=3D"_blank">luca.bachmaier@iis.fraunhofer.de</a>&gt;; <a href=3D"mailto:u=
srp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>=
; Nieland, Michael &lt;<a href=3D"mailto:michael.nieland@iis.fraunhofer.de"=
 target=3D"_blank">michael.nieland@iis.fraunhofer.de</a>&gt;<br>
<b>Betreff:</b> Re: [USRP-users] Re: RFNoC: strange behavior of FFT block<u=
></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi Luca,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">A couple of things.=C2=A0 The largest FFT size might=
 be limited to 1024 - even with MTU=3D9000.=C2=A0 I think that the maximum =
packet length is often 2000 or 2048 such that when you add a few header byt=
es, you can no longer achieve an FFT packet of
 2048.=C2=A0=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Additionally, if you look in fft_block_control.cpp, =
you will see that there is a constant that limits the max size to 1024. Thi=
s also matches the parameter &quot;C_NFFT_MAX=3D10&quot; which you will fin=
d in &quot;axi_fft.xci&quot; which is the Xilinx IP file
 that is implemented.=C2=A0 You can change these in order to build differen=
t sizes, but these are the defaults.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">If you search the mailing archive, you may find disc=
ussion of this topic and the need to divorce the concepts of &#39;fft lengt=
h&#39; and &#39;packet length&#39; in order to achieve FFT lengths greater =
than 1024.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Rob<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Sep 5, 2023 at 10:06=E2=80=AFAM Marcus D. Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchv=
onbraun@gmail.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4=
.8pt;margin-right:0cm">
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
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</blockquote>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">I think in the &quot;RF=
NOC Graph&quot; block, you can specify the SPP in the &quot;Device Args&quo=
t; parameter.=C2=A0
<br>
<br>
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

</div></blockquote></div>

--000000000000181cae06051680af--

--===============6992959465576474151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6992959465576474151==--
