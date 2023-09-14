Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ADA7A0FFD
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 23:44:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 268673856B5
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 17:44:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694727858; bh=oYqTVqhSB05TpKrzv8wBamlJ9HsTDreKH74QPLiGRio=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pGX0CtqT9QmAMvzQXvXcq8x7SGvNeMpjXal1G0M7iRt+QwMcfahAZvk4ifdWnsQMY
	 NSPIR1Vp8xCrnvA0qvPoiaFmN3GxQ1hsmIL9ummfsWdserhGY+I9yLSHM3U2BFeB5h
	 D9sWA3Mco+StBwcx2L2XANeWOtBs0Cx8COOepKVdSkpo1qoneEJx/NbhYVxuqaaWzn
	 gG6+F1i0RxvfvhXs543Cvh7Ot/sZkH3EI183YeIrt6obVGAjpQrI73Qk8TDJ0sxLT5
	 JX87f1xn9VxG1py8RYVSwgMoKTclaquWnna9PPKLMeDUvizmX1bvxBaLF1gX7Da87+
	 nkZ+GQ8Wcql9w==
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D0A638514B
	for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 17:43:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ME4Hxcjd";
	dkim-atps=neutral
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-414b0bdea1cso8425871cf.1
        for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 14:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694727792; x=1695332592; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WGtMTd9L2lU0AEPPAsHqTGnKcMqCrPdSJYZx2MT/6jI=;
        b=ME4Hxcjd+UBF/8LtKPRXmz4KXWigrK93zHQBDF7dSqi08WOBrQ6BRR67ATQaBxFZxz
         O8PVi5HCe72vF2JSNw3Wg7i8p3Nvau6B1IDtQTtYTcDtD5LMia4aAuIZKmx9td0ni0XJ
         Up3e0GCFqwAXx2jxk31XNhibgkzASK2aj5bNkHaehVwfDEzWqrO4OEsLTZiQg30EGh/L
         1N2vpWlixJQ2/JJH03ky4QEuIt7mFvZAqIDGnJRYeAbtC9UrlyYgaedvvGQka7YRgTW2
         sr7Bi5IyfZSUku4AFNh66QmF/seYZ8VnrVlCQaFU/Br0s4Ql/yk8wOx2H4zIAcYNhjXQ
         mYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694727792; x=1695332592;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WGtMTd9L2lU0AEPPAsHqTGnKcMqCrPdSJYZx2MT/6jI=;
        b=fXp+6HHqCcSMG5hSgCx7cn54qpCZ0sIgYOX9oY1qmFCBmoZA42SaH+y6A7nzFR5P5Y
         UlY3kPD8p5vpp0XGkSsw47oEs3syKtnULypulvWHeXWCMVKR39KLwf/8siBQlbXv8k9/
         dBoXOt14T2XTQxX13w4/nDO8Q/pPBS4ID/eOWrjiCzd2fiwKAEX+THupUIVPW4XqZ9Nl
         Ee1VokUJsFlTMPuSV24IaIuokV0r7EbJCHjtHQ6jRLwX9SoaVImOlsmoAz53eSeayFMn
         ib85C/nspf8epy/OLs9dGZBr5fJzPARb3tmRueXE1DkeVtzfrIxYF7n6WRN0sxND0JBJ
         I0UA==
X-Gm-Message-State: AOJu0YxhNOtH7x88fpj2U4EhtzEn6dlPPWsEehING8OcUdm8xIzyb4uC
	TItDlaesINyhXS6MzorBgd4=
X-Google-Smtp-Source: AGHT+IE/qubKSu6H/AkNMigsrHbcOL9+1HTYBLkmGS3vIWvStQm1bWeh8hTM8TJDzMFow5QGssJMcw==
X-Received: by 2002:a05:622a:180b:b0:412:964c:c4d2 with SMTP id t11-20020a05622a180b00b00412964cc4d2mr7487881qtc.0.1694727792402;
        Thu, 14 Sep 2023 14:43:12 -0700 (PDT)
Received: from [192.168.2.208] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id g16-20020ac870d0000000b0041061a16791sm710093qtp.67.2023.09.14.14.43.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 14:43:12 -0700 (PDT)
Message-ID: <f0d63d45-20ce-10e1-da51-4c2e846e0035@gmail.com>
Date: Thu, 14 Sep 2023 17:43:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de>
 <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com>
 <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com>
 <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de>
 <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com>
 <786ad148287d46a8bdffd792914dbd73@iis.fraunhofer.de>
 <acd9439d-9d9d-d538-12c5-3a5c80cce611@gmail.com>
 <CAB__hTT8-dmWsY=15xvjYYLLq+Pa2f+8c1dJ-A7N4Ydd1S6dEg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTT8-dmWsY=15xvjYYLLq+Pa2f+8c1dJ-A7N4Ydd1S6dEg@mail.gmail.com>
Message-ID-Hash: G6ACA7T7ENVGBWCZ5PN7OYYKYBD2L2SP
X-Message-ID-Hash: G6ACA7T7ENVGBWCZ5PN7OYYKYBD2L2SP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G6ACA7T7ENVGBWCZ5PN7OYYKYBD2L2SP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7015475329541335828=="

This is a multi-part message in MIME format.
--===============7015475329541335828==
Content-Type: multipart/alternative;
 boundary="------------yrRlxVpz3cYA4e50jfUu1e30"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------yrRlxVpz3cYA4e50jfUu1e30
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/09/2023 17:40, Rob Kossler wrote:
> Hi Luca,
> The problem with FFT lengths > 256 is an Ettus bug in=20
> "rfnoc_rx_streamer.cpp" (also an issue in "rfnoc_tx_streamer.cpp").=C2=A0=
=20
> The following snippet from the atomic_item_size property resolver=20
> shows the issue.=C2=A0 The problem is that "spp" has units of "samples"=
=20
> whereas "ais.get()" has units of bytes.=C2=A0 If you modify this code t=
o=20
> use "spp*4" and recompile UHD, you can run with fft length 1024.
> Rob
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (spp < ais.g=
et()) {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 t=
hrow uhd::value_error("samples per package must=20
> not be smaller than atomic item size");
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }
>
>
This must be a relatively-recent bug, because I clearly remember using=20
FFT > 256 a few years back.

Thanks so much for finding this, Rob.=C2=A0=C2=A0 Did you file a bug?=C2=A0=
=C2=A0=C2=A0 I'll try=20
to point R&D at it.


> On Tue, Sep 12, 2023 at 9:55=E2=80=AFAM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 12/09/2023 07:35, Bachmaier, Luca wrote:
>>
>>     Hi Rob,
>>
>>     your tip about =E2=80=9Crfnox_rx_to_file=E2=80=9D is great, I=E2=80=
=99ve been searching
>>     for examples for the UHD Python/C++ API for a while now anyway.
>>     Unfortunately it seems like the error is not due to GNU Radio.
>>     Even when trying to create a simple =E2=80=9CRadio -> FFT -> RX St=
reamer=E2=80=9D
>>     chain by calling `./rfnoc_rx_to_file --spp=3D1024 --block-id FFT
>>     --block-props length=3D512` the flowgraph can=E2=80=99t even start=
, I get
>>     the same error about the atomic item size. Looking at the output,
>>     everything should be set correctly:
>>
>>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 [=E2=80=A6] Requesting samples per packet of: 1024
>>
>>     Actual samples per packet =3D 1024
>>
>>     [=E2=80=A6] Setting block properties to: length=3D512
>>
>>     Error: ValueError: samples per package must not be smaller than
>>     atomic item size
>>
>>     Additionally, I=E2=80=99m very much interesting in how you created=
 your
>>     own FFT IP in Xilinx and separated the parameters. I would be
>>     happy to get some information from you.
>>
>     Have you tried spp=3Dfft_length?=C2=A0=C2=A0 I think the last time =
I did this
>     (years ago), that was the requirement...
>
>
>>     *Von:*Rob Kossler <rkossler@nd.edu> <mailto:rkossler@nd.edu>
>>     *Gesendet:* Montag, 11. September 2023 16:54
>>     *An:* Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.de>
>>     <mailto:luca.bachmaier@iis.fraunhofer.de>
>>     *Cc:* Marcus D. Leech <patchvonbraun@gmail.com>
>>     <mailto:patchvonbraun@gmail.com>; usrp-users@lists.ettus.com;
>>     Nieland, Michael <michael.nieland@iis.fraunhofer.de>
>>     <mailto:michael.nieland@iis.fraunhofer.de>
>>     *Betreff:* Re: [USRP-users] Re: RFNoC: strange behavior of FFT blo=
ck
>>
>>     Hi Luca,
>>
>>     I haven't used a recent UHD version with an FFT RFNoC block
>>     (probably 4.2 is the latest that I have used), but I have
>>     successfully used FFT lengths up to 4096.=C2=A0 In order to do thi=
s, I
>>     had to create my own Xilinx FFT IP and I also had to separate the
>>     concepts of streaming packet length from the FFT length. If you
>>     want to do this, I can provide additional info.=C2=A0 However, usi=
ng
>>     the "stock" FFT block provided by Ettus, I believe that you
>>     should be able to stream with FFT length up to 1024 using the N310=
.
>>
>>     You mentioned in a previous post that your SPP is 2048.=C2=A0 I th=
ink
>>     that this is an invalid SPP for the radio because of the need for
>>     the radio to insert "packet header" bytes which reduces the max
>>     num samples per packet to <=3D2000 (or about that).=C2=A0 So, my
>>     suggestion is to use SPP=3D1024.
>>
>>     Another suggestion is to try the Ettus example "rfnoc_rx_to_file"
>>     which will allow you to specify an arbitrary block - in this case
>>     the FFT block - to create an RFNoC graph that looks=C2=A0like
>>     "rx_radio =3D> DDC =3D> FFT =3D> rx_streamer".=C2=A0 This eliminat=
es
>>     gnuradio from the equation. This example will capture samples to
>>     a file that you can then plot to see the results.=C2=A0 You could =
run
>>     this example initially without the FFT block (rx_radio =3D> DDC =3D=
>
>>     rx_streamer) and make sure it is working as you expect.=C2=A0 Then=
 you
>>     could try again with the FFT block inserted.
>>
>>     Rob
>>
>>     On Mon, Sep 11, 2023 at 5:30=E2=80=AFAM Bachmaier, Luca
>>     <luca.bachmaier@iis.fraunhofer.de> wrote:
>>
>>         Hi Rob,
>>
>>         thanks for your reply. What I originally wanted to bring
>>         across with my message was that I cannot run the flowgraph
>>         with fft_sizes larger than 256, no matter whether the maximum
>>         possible limit is 1024 or 2048. E.g. if I set the fft_size to
>>         =C2=A0just 512, I also get the error about the atomic item siz=
e
>>         mentioned below. I keep wondering why that is.
>>
>>
>>         Regards
>>
>>         Luca
>>
>>         *Von:*Rob Kossler <rkossler@nd.edu>
>>         *Gesendet:* Mittwoch, 6. September 2023 21:29
>>         *An:* Marcus D. Leech <patchvonbraun@gmail.com>
>>         *Cc:*Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.de>;
>>         usrp-users@lists.ettus.com; Nieland, Michael
>>         <michael.nieland@iis.fraunhofer.de>
>>         *Betreff:* Re: [USRP-users] Re: RFNoC: strange behavior of
>>         FFT block
>>
>>         Hi Luca,
>>
>>         A couple of things.=C2=A0 The largest FFT size might be limite=
d to
>>         1024 - even with MTU=3D9000.=C2=A0 I think that the maximum pa=
cket
>>         length is often 2000 or 2048 such that when you add a few
>>         header bytes, you can no longer achieve an FFT packet of 2048.
>>
>>         Additionally, if you look in fft_block_control.cpp, you will
>>         see that there is a constant that limits the max size to
>>         1024. This also matches the parameter "C_NFFT_MAX=3D10" which
>>         you will find in "axi_fft.xci" which is the Xilinx IP file
>>         that is implemented.=C2=A0 You can change these in order to bu=
ild
>>         different sizes, but these are the defaults.
>>
>>         If you search the mailing archive, you may find discussion of
>>         this topic and the need to divorce the concepts of 'fft
>>         length' and 'packet length' in order to achieve FFT lengths
>>         greater than 1024.
>>
>>         Rob
>>
>>         On Tue, Sep 5, 2023 at 10:06=E2=80=AFAM Marcus D. Leech
>>         <patchvonbraun@gmail.com> wrote:
>>
>>             On 05/09/2023 04:38, Bachmaier, Luca wrote:
>>
>>                 Hello Marcus,
>>
>>                 Thank you for your detailed explanation. I was able
>>                 to fix the problem now: I updated GNU Radio from
>>                 3.10.5 (installed over apt) to 3.10.7 (installed from
>>                 source). With the newer version the FFT block now
>>                 correctly displays a noise floor.
>>
>>                 So far so good, the FFT resolution is still low as I
>>                 cannot set the size higher than 256 (Error =E2=80=9Csa=
mples
>>                 per package must not be smaller than atomic item
>>                 size=E2=80=9D). As far as I understood, the size shoul=
d be
>>                 able to go as high as 2048 when using 10Gbit streaming=
.
>>
>>                 My current configuration should enable that:
>>
>>                 -MTU on my interface is set to 9000
>>
>>                 -Parameter spp of RFNoC RX Radio is set to 2048
>>
>>                 -Current FPGA image is of XG type
>>
>>                 In case it=E2=80=99s helpful, here=E2=80=99s the relev=
ant output of
>>                 `ip a` of my devices:
>>
>>                 Host:
>>
>>                 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 4: enp9s0f1np1:
>>                 <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc mq
>>                 state UP group default qlen 1000
>>
>>                 =C2=A0=C2=A0=C2=A0 link/ether 9c:6b:00:16:8e:96 brd ff=
:ff:ff:ff:ff:ff
>>
>>                 =C2=A0=C2=A0=C2=A0 inet 192.168.10.3/24 <http://192.16=
8.10.3/24>
>>                 scope global enp9s0f1np1
>>
>>                 valid_lft forever preferred_lft forever
>>
>>                 USRP:
>>
>>                 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 3: sfp0:
>>                 <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc
>>                 pfifo_fast qlen 1000
>>
>>                 =C2=A0=C2=A0=C2=A0 link/ether 00:80:2f:31:28:42 brd ff=
:ff:ff:ff:ff:ff
>>
>>                 =C2=A0=C2=A0=C2=A0 inet 192.168.10.2/24 <http://192.16=
8.10.2/24> brd
>>                 192.168.10.255 scope global sfp0
>>
>>                 valid_lft forever preferred_lft forever
>>
>>             I think in the "RFNOC Graph" block, you can specify the
>>             SPP in the "Device Args" parameter.
>>
>>             _______________________________________________
>>             USRP-users mailing list -- usrp-users@lists.ettus.com
>>             To unsubscribe send an email to
>>             usrp-users-leave@lists.ettus.com
>>
>

--------------yrRlxVpz3cYA4e50jfUu1e30
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/09/2023 17:40, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTT8-dmWsY=3D15xvjYYLLq+Pa2f+8c1dJ-A7N4Ydd1S6dEg@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Luca,
        <div>The problem with FFT lengths &gt; 256 is an Ettus bug in
          "rfnoc_rx_streamer.cpp" (also an issue in
          "rfnoc_tx_streamer.cpp").=C2=A0 The following snippet from the
          atomic_item_size property resolver shows the issue.=C2=A0 The
          problem is that "spp" has units of "samples" whereas
          "ais.get()" has units of bytes.=C2=A0 If you modify this code t=
o
          use "spp*4" and recompile UHD, you can run with fft length
          1024.</div>
        <div>Rob</div>
        <div><br>
        </div>
        <div><font face=3D"monospace" color=3D"#0000ff">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if
            (spp &lt; ais.get()) {<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 throw uhd::value_error("samples per
            package must not be smaller than atomic item size");<br>
            =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
          </font>=C2=A0<br>
        </div>
      </div>
      <br>
    </blockquote>
    This must be a relatively-recent bug, because I clearly remember
    using FFT &gt; 256 a few years back.<br>
    <br>
    Thanks so much for finding this, Rob.=C2=A0=C2=A0 Did you file a bug?=
=C2=A0=C2=A0=C2=A0 I'll
    try to point R&amp;D at it.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTT8-dmWsY=3D15xvjYYLLq+Pa2f+8c1dJ-A7N4Ydd1S6dEg@mail.gm=
ail.com">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 12, 2023 at
          9:55=E2=80=AFAM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 12/09/2023 07:35, Bachmaier, Luca wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div>
                <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                    lang=3D"EN-US">Hi Rob,</span></p>
                <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                    lang=3D"EN-US">=C2=A0</span></p>
                <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                    lang=3D"EN-US">your tip about =E2=80=9Crfnox_rx_to_fi=
le=E2=80=9D is
                    great, I=E2=80=99ve been searching for examples for t=
he UHD
                    Python/C++ API for a while now anyway. Unfortunately
                    it seems like the error is not due to GNU Radio.
                    Even when trying to create a simple =E2=80=9CRadio -&=
gt; FFT
                    -&gt; RX Streamer=E2=80=9D chain by calling
                    `./rfnoc_rx_to_file --spp=3D1024 --block-id FFT
                    --block-props length=3D512` the flowgraph can=E2=80=99=
t even
                    start, I get the same error about the atomic item
                    size. Looking at the output, everything should be
                    set correctly:</span></p>
                <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                    lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [=E2=80=A6] Requesting samples per
                    packet of: 1024</span></p>
                <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                    lang=3D"EN-US">Actual samples per packet =3D 1024</sp=
an></p>
                <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                    lang=3D"EN-US">[=E2=80=A6] Setting block properties t=
o:
                    length=3D512</span></p>
                <p class=3D"MsoNormal"
                  style=3D"margin-left:5.25pt;text-indent:30.15pt"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                    lang=3D"EN-US">Error: ValueError: samples per package
                    must not be smaller than atomic item size</span></p>
                <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                    lang=3D"EN-US">=C2=A0</span></p>
                <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                    lang=3D"EN-US">Additionally, I=E2=80=99m very much in=
teresting
                    in how you created your own FFT IP in Xilinx and
                    separated the parameters. I would be happy to get
                    some information from you.</span></p>
              </div>
            </blockquote>
            Have you tried spp=3Dfft_length?=C2=A0=C2=A0 I think the last=
 time I did
            this (years ago), that was the requirement...<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div>
                <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                    lang=3D"EN-US"></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span>=
</p>
                <div
style=3D"border-top:none;border-right:none;border-bottom:none;border-left=
:1.5pt
                  solid blue;padding:0cm 0cm 0cm 4pt">
                  <div>
                    <div
style=3D"border-right:none;border-bottom:none;border-left:none;border-top=
:1pt
                      solid rgb(225,225,225);padding:3pt 0cm 0cm">
                      <p class=3D"MsoNormal"><b><span
                            style=3D"font-size:11pt;font-family:Calibri,s=
ans-serif">Von:</span></b><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif"> Rob Kossler <a
                            href=3D"mailto:rkossler@nd.edu"
                            target=3D"_blank" moz-do-not-send=3D"true">&l=
t;rkossler@nd.edu&gt;</a>
                          <br>
                          <b>Gesendet:</b> Montag, 11. September 2023
                          16:54<br>
                          <b>An:</b> Bachmaier, Luca <a
                            href=3D"mailto:luca.bachmaier@iis.fraunhofer.=
de"
                            target=3D"_blank" moz-do-not-send=3D"true">&l=
t;luca.bachmaier@iis.fraunhofer.de&gt;</a><br>
                          <b>Cc:</b> Marcus D. Leech <a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank" moz-do-not-send=3D"true">&l=
t;patchvonbraun@gmail.com&gt;</a>;
                          <a href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">usrp-users@li=
sts.ettus.com</a>;
                          Nieland, Michael <a
                            href=3D"mailto:michael.nieland@iis.fraunhofer=
.de"
                            target=3D"_blank" moz-do-not-send=3D"true">&l=
t;michael.nieland@iis.fraunhofer.de&gt;</a><br>
                          <b>Betreff:</b> Re: [USRP-users] Re: RFNoC:
                          strange behavior of FFT block</span></p>
                    </div>
                  </div>
                  <p class=3D"MsoNormal">=C2=A0</p>
                  <div>
                    <p class=3D"MsoNormal">Hi Luca,</p>
                    <div>
                      <p class=3D"MsoNormal">I haven't used a recent UHD
                        version with an FFT RFNoC block (probably 4.2 is
                        the latest that I have used), but I have
                        successfully used FFT lengths up to 4096.=C2=A0 I=
n
                        order to do this, I had to create my own Xilinx
                        FFT IP and I also had to separate the concepts
                        of streaming packet length from the FFT length.=C2=
=A0
                        If you want to do this, I can provide additional
                        info.=C2=A0 However, using the "stock" FFT block
                        provided by Ettus, I believe that you should be
                        able to stream with FFT length up to 1024 using
                        the N310.=C2=A0=C2=A0</p>
                    </div>
                    <div>
                      <p class=3D"MsoNormal">=C2=A0</p>
                    </div>
                    <div>
                      <p class=3D"MsoNormal">You mentioned in a previous
                        post that your SPP is 2048.=C2=A0 I think that th=
is
                        is an invalid SPP for the radio because of the
                        need for the radio to insert "packet header"
                        bytes which reduces the max num samples per
                        packet to &lt;=3D2000 (or about that).=C2=A0 So, =
my
                        suggestion is to use SPP=3D1024.</p>
                    </div>
                    <div>
                      <p class=3D"MsoNormal">=C2=A0</p>
                    </div>
                    <div>
                      <p class=3D"MsoNormal">Another suggestion is to try
                        the Ettus example "rfnoc_rx_to_file" which will
                        allow you to specify an arbitrary block - in
                        this case the FFT block - to create an RFNoC
                        graph that looks=C2=A0like "rx_radio =3D&gt; DDC =
=3D&gt;
                        FFT =3D&gt; rx_streamer".=C2=A0 This eliminates
                        gnuradio from the equation. This example will
                        capture samples to a file that you can then plot
                        to see the results.=C2=A0 You could run this exam=
ple
                        initially without the FFT block (rx_radio =3D&gt;
                        DDC =3D&gt; rx_streamer) and make sure it is
                        working as you expect.=C2=A0 Then you could try a=
gain
                        with the FFT block inserted.</p>
                    </div>
                    <div>
                      <p class=3D"MsoNormal">=C2=A0</p>
                    </div>
                    <div>
                      <p class=3D"MsoNormal">Rob</p>
                    </div>
                  </div>
                  <p class=3D"MsoNormal">=C2=A0</p>
                  <div>
                    <div>
                      <p class=3D"MsoNormal">On Mon, Sep 11, 2023 at
                        5:30=E2=80=AFAM Bachmaier, Luca &lt;<a
                          href=3D"mailto:luca.bachmaier@iis.fraunhofer.de=
"
                          target=3D"_blank" moz-do-not-send=3D"true"
                          class=3D"moz-txt-link-freetext">luca.bachmaier@=
iis.fraunhofer.de</a>&gt;
                        wrote:</p>
                    </div>
                    <blockquote
style=3D"border-top:none;border-right:none;border-bottom:none;border-left=
:1pt
                      solid rgb(204,204,204);padding:0cm 0cm 0cm
                      6pt;margin-left:4.8pt;margin-right:0cm">
                      <div>
                        <div>
                          <div>
                            <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">Hi
                                Rob,</span></p>
                            <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)">=C2=A0</span></p>
                            <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                                lang=3D"EN-US">thanks for your reply. Wha=
t
                                I originally wanted to bring across with
                                my message was that I cannot run the
                                flowgraph with fft_sizes larger than
                                256, no matter whether the maximum
                                possible limit is 1024 or 2048. E.g. if
                                I set the fft_size to =C2=A0just 512, I a=
lso
                                get the error about the atomic item size
                                mentioned below. I keep wondering why
                                that is.</span></p>
                            <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                                lang=3D"EN-US"><br>
                                Regards</span></p>
                            <p class=3D"MsoNormal"><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,12=
5)"
                                lang=3D"EN-US">Luca</span></p>
                            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=
=A0</span></p>
                            <div
style=3D"border-top:none;border-right:none;border-bottom:none;border-left=
:1.5pt
                              solid blue;padding:0cm 0cm 0cm 4pt">
                              <div>
                                <div
style=3D"border-right:none;border-bottom:none;border-left:none;border-top=
:1pt
                                  solid rgb(225,225,225);padding:3pt 0cm
                                  0cm">
                                  <p class=3D"MsoNormal"><b><span
                                        style=3D"font-size:11pt;font-fami=
ly:Calibri,sans-serif"
                                        lang=3D"EN-US">Von:</span></b><sp=
an
style=3D"font-size:11pt;font-family:Calibri,sans-serif" lang=3D"EN-US"> R=
ob
                                      Kossler &lt;<a
                                        href=3D"mailto:rkossler@nd.edu"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true"
                                        class=3D"moz-txt-link-freetext">r=
kossler@nd.edu</a>&gt;
                                      <br>
                                      <b>Gesendet:</b> Mittwoch, 6.
                                      September 2023 21:29<br>
                                      <b>An:</b> Marcus D. Leech &lt;<a
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank"
                                        moz-do-not-send=3D"true"
                                        class=3D"moz-txt-link-freetext">p=
atchvonbraun@gmail.com</a>&gt;<br>
                                    </span><b><span
                                        style=3D"font-size:11pt;font-fami=
ly:Calibri,sans-serif">Cc:</span></b><span
style=3D"font-size:11pt;font-family:Calibri,sans-serif"> Bachmaier, Luca
                                      &lt;<a
                                        href=3D"mailto:luca.bachmaier@iis=
.fraunhofer.de"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true"
                                        class=3D"moz-txt-link-freetext">l=
uca.bachmaier@iis.fraunhofer.de</a>&gt;;
                                      <a
                                        href=3D"mailto:usrp-users@lists.e=
ttus.com"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true"
                                        class=3D"moz-txt-link-freetext">u=
srp-users@lists.ettus.com</a>;
                                      Nieland, Michael &lt;<a
                                        href=3D"mailto:michael.nieland@ii=
s.fraunhofer.de"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true"
                                        class=3D"moz-txt-link-freetext">m=
ichael.nieland@iis.fraunhofer.de</a>&gt;<br>
                                      <b>Betreff:</b> Re: [USRP-users]
                                      Re: RFNoC: strange behavior of FFT
                                      block</span></p>
                                </div>
                              </div>
                              <p class=3D"MsoNormal">=C2=A0</p>
                              <div>
                                <p class=3D"MsoNormal">Hi Luca,</p>
                                <div>
                                  <p class=3D"MsoNormal">A couple of
                                    things.=C2=A0 The largest FFT size mi=
ght
                                    be limited to 1024 - even with
                                    MTU=3D9000.=C2=A0 I think that the ma=
ximum
                                    packet length is often 2000 or 2048
                                    such that when you add a few header
                                    bytes, you can no longer achieve an
                                    FFT packet of 2048.=C2=A0=C2=A0</p>
                                </div>
                                <div>
                                  <p class=3D"MsoNormal">=C2=A0</p>
                                </div>
                                <div>
                                  <p class=3D"MsoNormal">Additionally, if
                                    you look in fft_block_control.cpp,
                                    you will see that there is a
                                    constant that limits the max size to
                                    1024. This also matches the
                                    parameter "C_NFFT_MAX=3D10" which you
                                    will find in "axi_fft.xci" which is
                                    the Xilinx IP file that is
                                    implemented.=C2=A0 You can change the=
se
                                    in order to build different sizes,
                                    but these are the defaults.</p>
                                </div>
                                <div>
                                  <p class=3D"MsoNormal">=C2=A0</p>
                                </div>
                                <div>
                                  <p class=3D"MsoNormal">If you search th=
e
                                    mailing archive, you may find
                                    discussion of this topic and the
                                    need to divorce the concepts of 'fft
                                    length' and 'packet length' in order
                                    to achieve FFT lengths greater than
                                    1024.</p>
                                </div>
                                <div>
                                  <p class=3D"MsoNormal">Rob</p>
                                </div>
                                <div>
                                  <p class=3D"MsoNormal">=C2=A0</p>
                                </div>
                              </div>
                              <p class=3D"MsoNormal">=C2=A0</p>
                              <div>
                                <div>
                                  <p class=3D"MsoNormal">On Tue, Sep 5,
                                    2023 at 10:06=E2=80=AFAM Marcus D. Le=
ech
                                    &lt;<a
                                      href=3D"mailto:patchvonbraun@gmail.=
com"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">pat=
chvonbraun@gmail.com</a>&gt;
                                    wrote:</p>
                                </div>
                                <blockquote
style=3D"border-top:none;border-right:none;border-bottom:none;border-left=
:1pt
                                  solid rgb(204,204,204);padding:0cm 0cm
                                  0cm 6pt;margin:5pt 0cm 5pt 4.8pt">
                                  <div>
                                    <div>
                                      <p class=3D"MsoNormal">On 05/09/202=
3
                                        04:38, Bachmaier, Luca wrote:</p>
                                    </div>
                                    <blockquote
                                      style=3D"margin-top:5pt;margin-bott=
om:5pt">
                                      <div>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
">Hello
                                            Marcus,</span></p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
">=C2=A0</span></p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">Thank you for
                                            your detailed explanation. I
                                            was able to fix the problem
                                            now: I updated GNU Radio
                                            from 3.10.5 (installed over
                                            apt) to 3.10.7 (installed
                                            from source). With the newer
                                            version the FFT block now
                                            correctly displays a noise
                                            floor.</span></p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0</span><=
/p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">So far so good=
,
                                            the FFT resolution is still
                                            low as I cannot set the size
                                            higher than 256 (Error
                                            =E2=80=9Csamples per package =
must
                                            not be smaller than atomic
                                            item size=E2=80=9D). As far a=
s I
                                            understood, the size should
                                            be able to go as high as
                                            2048 when using 10Gbit
                                            streaming.</span></p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">My current
                                            configuration should enable
                                            that:</span></p>
                                        <p style=3D"margin-left:20.65pt">=
<span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">-</span><span
                                            style=3D"font-size:7pt;color:=
rgb(31,73,125)"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">MTU on my
                                            interface is set to 9000</spa=
n></p>
                                        <p style=3D"margin-left:20.65pt">=
<span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">-</span><span
                                            style=3D"font-size:7pt;color:=
rgb(31,73,125)"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">Parameter spp
                                            of RFNoC RX Radio is set to
                                            2048</span></p>
                                        <p style=3D"margin-left:20.65pt">=
<span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">-</span><span
                                            style=3D"font-size:7pt;color:=
rgb(31,73,125)"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">Current FPGA
                                            image is of XG type</span></p=
>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0</span><=
/p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">In case it=E2=80=
=99s
                                            helpful, here=E2=80=99s the r=
elevant
                                            output of `ip a` of my
                                            devices:</span></p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">Host:</span></=
p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4:
                                            enp9s0f1np1:
                                            &lt;BROADCAST,MULTICAST,UP,LO=
WER_UP&gt;
                                            mtu 9000 qdisc mq state UP
                                            group default qlen 1000</span=
></p>
                                        <p class=3D"MsoNormal"
                                          style=3D"text-indent:35.4pt"><s=
pan
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0 link/ether
                                            9c:6b:00:16:8e:96 brd
                                            ff:ff:ff:ff:ff:ff</span></p>
                                        <p class=3D"MsoNormal"
                                          style=3D"text-indent:35.4pt"><s=
pan
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0 inet <a
                                              href=3D"http://192.168.10.3=
/24"
                                              target=3D"_blank"
                                              moz-do-not-send=3D"true">
                                              192.168.10.3/24</a> scope
                                            global enp9s0f1np1</span></p>
                                        <p class=3D"MsoNormal"
                                          style=3D"text-indent:35.4pt"><s=
pan
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
                                            valid_lft forever
                                            preferred_lft forever</span><=
/p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">USRP:</span></=
p>
                                        <p class=3D"MsoNormal"><span
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3:
                                            sfp0:
                                            &lt;BROADCAST,MULTICAST,UP,LO=
WER_UP&gt;
                                            mtu 9000 qdisc pfifo_fast
                                            qlen 1000</span></p>
                                        <p class=3D"MsoNormal"
                                          style=3D"text-indent:35.4pt"><s=
pan
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0 link/ether
                                            00:80:2f:31:28:42 brd
                                            ff:ff:ff:ff:ff:ff</span></p>
                                        <p class=3D"MsoNormal"
                                          style=3D"text-indent:35.4pt"><s=
pan
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0 inet <a
                                              href=3D"http://192.168.10.2=
/24"
                                              target=3D"_blank"
                                              moz-do-not-send=3D"true">
                                              192.168.10.2/24</a> brd
                                            192.168.10.255 scope global
                                            sfp0</span></p>
                                        <p class=3D"MsoNormal"
                                          style=3D"text-indent:35.4pt"><s=
pan
                                            style=3D"color:rgb(31,73,125)=
"
                                            lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0
                                            valid_lft forever
                                            preferred_lft forever</span><=
/p>
                                        <p class=3D"MsoNormal">=C2=A0</p>
                                      </div>
                                    </blockquote>
                                    <p class=3D"MsoNormal"
                                      style=3D"margin-bottom:12pt">I thin=
k
                                      in the "RFNOC Graph" block, you
                                      can specify the SPP in the "Device
                                      Args" parameter.=C2=A0 </p>
                                  </div>
                                  <p class=3D"MsoNormal">________________=
_______________________________<br>
                                    USRP-users mailing list -- <a
                                      href=3D"mailto:usrp-users@lists.ett=
us.com"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">
                                      usrp-users@lists.ettus.com</a><br>
                                    To unsubscribe send an email to <a
href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank"
                                      moz-do-not-send=3D"true"
                                      class=3D"moz-txt-link-freetext">
                                      usrp-users-leave@lists.ettus.com</a=
></p>
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
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------yrRlxVpz3cYA4e50jfUu1e30--

--===============7015475329541335828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7015475329541335828==--
