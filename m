Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF4979D2F6
	for <lists+usrp-users@lfdr.de>; Tue, 12 Sep 2023 15:56:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 297383852B4
	for <lists+usrp-users@lfdr.de>; Tue, 12 Sep 2023 09:56:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694526984; bh=weBTu7xsS3+8JpiychWGI7KFQPYTQba8VjV0my2B0V8=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=L/xRM0mK/2siSVaPai6/AERqwq5LfDZoaM6GX+kqK7srJRLeRPa0h7fs4ey4koCqw
	 +Z3KUknNNVPU428NjYcs/gy097Z1UzdyCz9L2LG4ppqL42kNVWaDUvbJrPfhpRuFw6
	 FHyck20l4eglWZSobAbNcW4XRCynwawc8nJyYWS1eqW/G5KZM/HpHHlcMhCsWsipZc
	 VUf5pDhycj63J2LqBq3BH8jKu3t3ROdmkqi4xoicwyzt0ixGF6aHSj1NsSbWvA2iau
	 Xv/aBpiXnG1l5b3mhqGdCnTDqSru9/NKXuZKE1AM1dLQclaWzX6N1Wvz9jc6mtOkMX
	 XQ8C1cJSyO3ww==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F84F38510D
	for <usrp-users@lists.ettus.com>; Tue, 12 Sep 2023 09:55:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GJKA5WIE";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-41501ffb771so28090781cf.0
        for <usrp-users@lists.ettus.com>; Tue, 12 Sep 2023 06:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694526921; x=1695131721; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YCY8FTR3eAAq4QQPT5lZzUmIP9/MuD+BdGiSOYQmzzE=;
        b=GJKA5WIEsgWmQgAq9TSl9xRJcEC7xBeaNB69RAbq5tkj8lZaxeiJIg3d91DFSkpZlo
         agRyJNcsJRJCV9xcneFDuIsZmqg+sflL6nnHQTl1OD/AYCwa3hlwA7HGuSmbT4dvrUD+
         WDOsV8wzTkLv6ySW3qxffnyLMq3MtVK4n66iAoir9e4H1r1hJcyBX39pQRqlMkqHHWZZ
         hRyt5cqLzmMBbAKvcOL6KL8KnN3ACEoFMFY0QN/II/Zk2JAzQFvwn0gtZ1HS26mdTarx
         XsyRjYRj5M+PTxGs8aWlEv9htQjfKqQe/dz/Seolc4Zki5Udp1fOxGYGVouxRkQHJtBJ
         dTqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694526921; x=1695131721;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YCY8FTR3eAAq4QQPT5lZzUmIP9/MuD+BdGiSOYQmzzE=;
        b=FGmgNhnlwEFrASZBlKQZn9WJp3zUsWgwvptqrZy6ElAtJekWuhJzrbaAlmV9FwSZmR
         R1VRLB6ayR2WpDoB38iDkrD+QsX3NY44rUd4Ha6aCFWNG5t4VFxHUrGkNjXKMIzmT1Yu
         D+JrSo/lGdZV5vd81zpWkjKpJ7kJIfeYXZOtiif8kFRdq+Ue19X0MPKC5zxLpcfCKv1s
         LVbYXl2ZcrB8ZhgABebFz/fQpJZ6kGoxIKDUaRNZAts62T/kBZF1dVOBXlG98ILS9CtW
         FgqvOUKg1hpS+FFuxKkWrEBUiL0W6NL6LpGQ98pvf0f9qcPr9/Rq5IBk9LpbX28pOAXA
         cJ8Q==
X-Gm-Message-State: AOJu0Yzo7Y3G92aXGG/Kbb7GSib4zZtnqGMqC5RjdD4cY9+5GHHQ9+aS
	mFOb/Eycsi+pf/u+eCQal+4=
X-Google-Smtp-Source: AGHT+IFITswYMo8HEfqYYiPB/UUlT/hdsk419bGLn4YPAq7VRn/kQ7SiWsjDgWztg3ZlLuJInNeGrw==
X-Received: by 2002:ac8:7f55:0:b0:403:b02c:db8d with SMTP id g21-20020ac87f55000000b00403b02cdb8dmr17576949qtk.7.1694526920690;
        Tue, 12 Sep 2023 06:55:20 -0700 (PDT)
Received: from [192.168.2.200] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id ka22-20020a05622a441600b0040399fb5ef3sm3333871qtb.0.2023.09.12.06.55.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 06:55:20 -0700 (PDT)
Message-ID: <acd9439d-9d9d-d538-12c5-3a5c80cce611@gmail.com>
Date: Tue, 12 Sep 2023 09:55:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>,
 Rob Kossler <rkossler@nd.edu>
References: <f775309f76844190a9c5ad474c531a08@iis.fraunhofer.de>
 <902b4da8-293d-91b3-6524-ddf2626ce4e7@gmail.com>
 <CAB__hTTCu8-43c7=_gDK6SYHkeFoq9WGKxb3tFrvJx-=bMEAWw@mail.gmail.com>
 <a6da16894f9d45b28d0352ccb0b9923a@iis.fraunhofer.de>
 <CAB__hTTAch8skU_VCX1TJoqJFnxmEDyshMR1K7ZRC9PgO0xOsw@mail.gmail.com>
 <786ad148287d46a8bdffd792914dbd73@iis.fraunhofer.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <786ad148287d46a8bdffd792914dbd73@iis.fraunhofer.de>
Message-ID-Hash: RJP5YC6XF55JRLTTVLPAMPMOH3BJB2TM
X-Message-ID-Hash: RJP5YC6XF55JRLTTVLPAMPMOH3BJB2TM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Nieland, Michael" <michael.nieland@iis.fraunhofer.de>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: strange behavior of FFT block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RJP5YC6XF55JRLTTVLPAMPMOH3BJB2TM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0397407285407752186=="

This is a multi-part message in MIME format.
--===============0397407285407752186==
Content-Type: multipart/alternative;
 boundary="------------WnkkejbdNoneKfjbN4iqkweD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WnkkejbdNoneKfjbN4iqkweD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 12/09/2023 07:35, Bachmaier, Luca wrote:
>
> Hi Rob,
>
> your tip about =E2=80=9Crfnox_rx_to_file=E2=80=9D is great, I=E2=80=99v=
e been searching for=20
> examples for the UHD Python/C++ API for a while now anyway.=20
> Unfortunately it seems like the error is not due to GNU Radio. Even=20
> when trying to create a simple =E2=80=9CRadio -> FFT -> RX Streamer=E2=80=
=9D chain by=20
> calling `./rfnoc_rx_to_file --spp=3D1024 --block-id FFT --block-props=20
> length=3D512` the flowgraph can=E2=80=99t even start, I get the same er=
ror about=20
> the atomic item size. Looking at the output, everything should be set=20
> correctly:
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 [=E2=80=A6] Requesting samples per packet of: 1024
>
> Actual samples per packet =3D 1024
>
> [=E2=80=A6] Setting block properties to: length=3D512
>
> Error: ValueError: samples per package must not be smaller than atomic=20
> item size
>
> Additionally, I=E2=80=99m very much interesting in how you created your=
 own=20
> FFT IP in Xilinx and separated the parameters. I would be happy to get=20
> some information from you.
>
Have you tried spp=3Dfft_length?=C2=A0=C2=A0 I think the last time I did =
this (years=20
ago), that was the requirement...


> *Von:*Rob Kossler <rkossler@nd.edu>
> *Gesendet:* Montag, 11. September 2023 16:54
> *An:* Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.de>
> *Cc:* Marcus D. Leech <patchvonbraun@gmail.com>;=20
> usrp-users@lists.ettus.com; Nieland, Michael=20
> <michael.nieland@iis.fraunhofer.de>
> *Betreff:* Re: [USRP-users] Re: RFNoC: strange behavior of FFT block
>
> Hi Luca,
>
> I haven't used a recent UHD version with an FFT RFNoC block (probably=20
> 4.2 is the latest that I have used), but I have successfully used FFT=20
> lengths up to 4096.=C2=A0 In order to do this, I had to create my own=20
> Xilinx FFT IP and I also had to separate the concepts of streaming=20
> packet length from the FFT length.=C2=A0 If you want to do this, I can=20
> provide additional info. However, using the "stock" FFT block provided=20
> by Ettus, I believe that you should be able to stream with FFT length=20
> up to 1024 using the N310.
>
> You mentioned in a previous post that your SPP is 2048.=C2=A0 I think t=
hat=20
> this is an invalid SPP for the radio because of the need for the radio=20
> to insert "packet header" bytes which reduces the max num samples per=20
> packet to <=3D2000 (or about that).=C2=A0 So, my suggestion is to use S=
PP=3D1024.
>
> Another suggestion is to try the Ettus example "rfnoc_rx_to_file"=20
> which will allow you to specify an arbitrary block - in this case the=20
> FFT block - to create an RFNoC graph that looks=C2=A0like "rx_radio =3D=
> DDC=20
> =3D> FFT =3D> rx_streamer".=C2=A0 This eliminates gnuradio from the equ=
ation.=20
> This example will capture samples to a file that you can then plot to=20
> see the results.=C2=A0 You could run this example initially without the=
 FFT=20
> block (rx_radio =3D> DDC =3D> rx_streamer) and make sure it is working =
as=20
> you expect.=C2=A0 Then you could try again with the FFT block inserted.
>
> Rob
>
> On Mon, Sep 11, 2023 at 5:30=E2=80=AFAM Bachmaier, Luca=20
> <luca.bachmaier@iis.fraunhofer.de> wrote:
>
>     Hi Rob,
>
>     thanks for your reply. What I originally wanted to bring across
>     with my message was that I cannot run the flowgraph with fft_sizes
>     larger than 256, no matter whether the maximum possible limit is
>     1024 or 2048. E.g. if I set the fft_size to =C2=A0just 512, I also =
get
>     the error about the atomic item size mentioned below. I keep
>     wondering why that is.
>
>
>     Regards
>
>     Luca
>
>     *Von:*Rob Kossler <rkossler@nd.edu>
>     *Gesendet:* Mittwoch, 6. September 2023 21:29
>     *An:* Marcus D. Leech <patchvonbraun@gmail.com>
>     *Cc:*Bachmaier, Luca <luca.bachmaier@iis.fraunhofer.de>;
>     usrp-users@lists.ettus.com; Nieland, Michael
>     <michael.nieland@iis.fraunhofer.de>
>     *Betreff:* Re: [USRP-users] Re: RFNoC: strange behavior of FFT bloc=
k
>
>     Hi Luca,
>
>     A couple of things.=C2=A0 The largest FFT size might be limited to =
1024
>     - even with MTU=3D9000.=C2=A0 I think that the maximum packet lengt=
h is
>     often 2000 or 2048 such that when you add a few header bytes, you
>     can no longer achieve an FFT packet of 2048.
>
>     Additionally, if you look in fft_block_control.cpp, you will see
>     that there is a constant that limits the max size to 1024. This
>     also matches the parameter "C_NFFT_MAX=3D10" which you will find in
>     "axi_fft.xci" which is the Xilinx IP file that is implemented.=C2=A0
>     You can change these in order to build different sizes, but these
>     are the defaults.
>
>     If you search the mailing archive, you may find discussion of this
>     topic and the need to divorce the concepts of 'fft length' and
>     'packet length' in order to achieve FFT lengths greater than 1024.
>
>     Rob
>
>     On Tue, Sep 5, 2023 at 10:06=E2=80=AFAM Marcus D. Leech
>     <patchvonbraun@gmail.com> wrote:
>
>         On 05/09/2023 04:38, Bachmaier, Luca wrote:
>
>             Hello Marcus,
>
>             Thank you for your detailed explanation. I was able to fix
>             the problem now: I updated GNU Radio from 3.10.5
>             (installed over apt) to 3.10.7 (installed from source).
>             With the newer version the FFT block now correctly
>             displays a noise floor.
>
>             So far so good, the FFT resolution is still low as I
>             cannot set the size higher than 256 (Error =E2=80=9Csamples=
 per
>             package must not be smaller than atomic item size=E2=80=9D)=
. As
>             far as I understood, the size should be able to go as high
>             as 2048 when using 10Gbit streaming.
>
>             My current configuration should enable that:
>
>             -MTU on my interface is set to 9000
>
>             -Parameter spp of RFNoC RX Radio is set to 2048
>
>             -Current FPGA image is of XG type
>
>             In case it=E2=80=99s helpful, here=E2=80=99s the relevant o=
utput of `ip a`
>             of my devices:
>
>             Host:
>
>             4: enp9s0f1np1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000
>             qdisc mq state UP group default qlen 1000
>
>             link/ether 9c:6b:00:16:8e:96 brd ff:ff:ff:ff:ff:ff
>
>             inet 192.168.10.3/24 <http://192.168.10.3/24> scope global
>             enp9s0f1np1
>
>             valid_lft forever preferred_lft forever
>
>             USRP:
>
>             3: sfp0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9000 qdisc
>             pfifo_fast qlen 1000
>
>             link/ether 00:80:2f:31:28:42 brd ff:ff:ff:ff:ff:ff
>
>             inet 192.168.10.2/24 <http://192.168.10.2/24> brd
>             192.168.10.255 scope global sfp0
>
>             valid_lft forever preferred_lft forever
>
>         I think in the "RFNOC Graph" block, you can specify the SPP in
>         the "Device Args" parameter.
>
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>

--------------WnkkejbdNoneKfjbN4iqkweD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 12/09/2023 07:35, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:786ad148287d46a8bdffd792914dbd73@iis.fraunhofer.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}p.msonormal0, li.msonormal0, div.ms=
onormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.E-MailFormatvorlage19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-MailFormatvorlage20
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Hi Rob,<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">your tip about =E2=80=9Crfnox_rx_to_file=E2=80=
=9D is great,
            I=E2=80=99ve been searching for examples for the UHD Python/C=
++ API
            for a while now anyway. Unfortunately it seems like the
            error is not due to GNU Radio. Even when trying to create a
            simple =E2=80=9CRadio -&gt; FFT -&gt; RX Streamer=E2=80=9D ch=
ain by calling
            `./rfnoc_rx_to_file --spp=3D1024 --block-id FFT --block-props
            length=3D512` the flowgraph can=E2=80=99t even start, I get t=
he same
            error about the atomic item size. Looking at the output,
            everything should be set correctly:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 [=E2=80=A6] Requesting samples per packet
            of: 1024<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Actual samples per packet =3D 1024<o:p></o:p><=
/span></p>
        <p class=3D"MsoNormal" style=3D"text-indent:35.4pt"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">[=E2=80=A6] Setting block properties to: lengt=
h=3D512<o:p></o:p></span></p>
        <p class=3D"MsoNormal"
          style=3D"margin-left:5.25pt;text-indent:30.15pt"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Error: ValueError: samples per package must no=
t
            be smaller than atomic item size<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US">Additionally, I=E2=80=99m very much interestin=
g in how
            you created your own FFT IP in Xilinx and separated the
            parameters. I would be happy to get some information from
            you.</span></p>
      </div>
    </blockquote>
    Have you tried spp=3Dfft_length?=C2=A0=C2=A0 I think the last time I =
did this
    (years ago), that was the requirement...<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:786ad148287d46a8bdffd792914dbd73@iis.fraunhofer.de">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D;mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"
            lang=3D"EN-US"><o:p>=C2=A0</o:p></span></p>
        <div style=3D"border:none;border-left:solid blue 1.5pt;padding:0c=
m
          0cm 0cm 4.0pt">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class=3D"MsoNormal"><b><span
                    style=3D"font-size:11.0pt;font-family:&quot;Calibri&q=
uot;,sans-serif">Von:</span></b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> Ro=
b
                  Kossler <a class=3D"moz-txt-link-rfc2396E" href=3D"mail=
to:rkossler@nd.edu">&lt;rkossler@nd.edu&gt;</a>
                  <br>
                  <b>Gesendet:</b> Montag, 11. September 2023 16:54<br>
                  <b>An:</b> Bachmaier, Luca
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:luca.=
bachmaier@iis.fraunhofer.de">&lt;luca.bachmaier@iis.fraunhofer.de&gt;</a>=
<br>
                  <b>Cc:</b> Marcus D. Leech
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>;
                  <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>; Nieland, Michae=
l
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:micha=
el.nieland@iis.fraunhofer.de">&lt;michael.nieland@iis.fraunhofer.de&gt;</=
a><br>
                  <b>Betreff:</b> Re: [USRP-users] Re: RFNoC: strange
                  behavior of FFT block<o:p></o:p></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <div>
            <p class=3D"MsoNormal">Hi Luca,<o:p></o:p></p>
            <div>
              <p class=3D"MsoNormal">I haven't used a recent UHD version
                with an FFT RFNoC block (probably 4.2 is the latest that
                I have used), but I have successfully used FFT lengths
                up to 4096.=C2=A0 In order to do this, I had to create my=
 own
                Xilinx FFT IP and I also had to separate the concepts of
                streaming packet length from the FFT length.=C2=A0 If you
                want to do this, I can provide additional info.=C2=A0
                However, using the "stock" FFT block provided by Ettus,
                I believe that you should be able to stream with FFT
                length up to 1024 using the N310.=C2=A0=C2=A0<o:p></o:p><=
/p>
            </div>
            <div>
              <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal">You mentioned in a previous post tha=
t
                your SPP is 2048.=C2=A0 I think that this is an invalid S=
PP
                for the radio because of the need for the radio to
                insert "packet header" bytes which reduces the max num
                samples per packet to &lt;=3D2000 (or about that).=C2=A0 =
So, my
                suggestion is to use SPP=3D1024.<o:p></o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal">Another suggestion is to try the
                Ettus example "rfnoc_rx_to_file" which will allow you to
                specify an arbitrary block - in this case the FFT block
                - to create an RFNoC graph that looks=C2=A0like "rx_radio
                =3D&gt; DDC =3D&gt; FFT =3D&gt; rx_streamer".=C2=A0 This =
eliminates
                gnuradio from the equation. This example will capture
                samples to a file that you can then plot to see the
                results.=C2=A0 You could run this example initially witho=
ut
                the FFT block (rx_radio =3D&gt; DDC =3D&gt; rx_streamer) =
and
                make sure it is working as you expect.=C2=A0 Then you cou=
ld
                try again with the FFT block inserted.<o:p></o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
            </div>
            <div>
              <p class=3D"MsoNormal">Rob<o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
          <div>
            <div>
              <p class=3D"MsoNormal">On Mon, Sep 11, 2023 at 5:30=E2=80=AF=
AM
                Bachmaier, Luca &lt;<a
                  href=3D"mailto:luca.bachmaier@iis.fraunhofer.de"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">luca.bachmaier@iis.fraunhofer.de</a>&gt;
                wrote:<o:p></o:p></p>
            </div>
            <blockquote style=3D"border:none;border-left:solid #CCCCCC
              1.0pt;padding:0cm 0cm 0cm
              6.0pt;margin-left:4.8pt;margin-right:0cm">
              <div>
                <div>
                  <div>
                    <p class=3D"MsoNormal"
                      style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D">Hi
                        Rob,</span><o:p></o:p></p>
                    <p class=3D"MsoNormal"
                      style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D">=C2=A0</span><o:p></o:p></p>
                    <p class=3D"MsoNormal"
                      style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
                        lang=3D"EN-US">thanks for your reply. What I
                        originally wanted to bring across with my
                        message was that I cannot run the flowgraph with
                        fft_sizes larger than 256, no matter whether the
                        maximum possible limit is 1024 or 2048. E.g. if
                        I set the fft_size to =C2=A0just 512, I also get =
the
                        error about the atomic item size mentioned
                        below. I keep wondering why that is.</span><o:p><=
/o:p></p>
                    <p class=3D"MsoNormal"
                      style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
                        lang=3D"EN-US"><br>
                        Regards</span><o:p></o:p></p>
                    <p class=3D"MsoNormal"
                      style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#1F497D"
                        lang=3D"EN-US">Luca</span><o:p></o:p></p>
                    <p class=3D"MsoNormal"
                      style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto"><span
                        lang=3D"EN-US">=C2=A0</span><o:p></o:p></p>
                    <div style=3D"border:none;border-left:solid blue
                      1.5pt;padding:0cm 0cm 0cm 4.0pt">
                      <div>
                        <div style=3D"border:none;border-top:solid #E1E1E=
1
                          1.0pt;padding:3.0pt 0cm 0cm 0cm">
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto"><b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"
                                lang=3D"EN-US">Von:</span></b><span
                              style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif"
                              lang=3D"EN-US"> Rob Kossler &lt;<a
                                href=3D"mailto:rkossler@nd.edu"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">rkossler@=
nd.edu</a>&gt;
                              <br>
                              <b>Gesendet:</b> Mittwoch, 6. September
                              2023 21:29<br>
                              <b>An:</b> Marcus D. Leech &lt;<a
                                href=3D"mailto:patchvonbraun@gmail.com"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">patchvonb=
raun@gmail.com</a>&gt;<br>
                            </span><b><span
                                style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif">Cc:</span></b><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">
                              Bachmaier, Luca &lt;<a
                                href=3D"mailto:luca.bachmaier@iis.fraunho=
fer.de"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">luca.bach=
maier@iis.fraunhofer.de</a>&gt;;
                              <a
                                href=3D"mailto:usrp-users@lists.ettus.com=
"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">usrp-user=
s@lists.ettus.com</a>;
                              Nieland, Michael &lt;<a
                                href=3D"mailto:michael.nieland@iis.fraunh=
ofer.de"
                                target=3D"_blank" moz-do-not-send=3D"true=
"
                                class=3D"moz-txt-link-freetext">michael.n=
ieland@iis.fraunhofer.de</a>&gt;<br>
                              <b>Betreff:</b> Re: [USRP-users] Re:
                              RFNoC: strange behavior of FFT block</span>=
<o:p></o:p></p>
                        </div>
                      </div>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                      <div>
                        <p class=3D"MsoNormal"
                          style=3D"mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto">Hi
                          Luca,<o:p></o:p></p>
                        <div>
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto">A
                            couple of things.=C2=A0 The largest FFT size
                            might be limited to 1024 - even with
                            MTU=3D9000.=C2=A0 I think that the maximum pa=
cket
                            length is often 2000 or 2048 such that when
                            you add a few header bytes, you can no
                            longer achieve an FFT packet of 2048.=C2=A0=C2=
=A0<o:p></o:p></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto">=C2=A0<o:p></o:p></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto">Additionally,
                            if you look in fft_block_control.cpp, you
                            will see that there is a constant that
                            limits the max size to 1024. This also
                            matches the parameter "C_NFFT_MAX=3D10" which
                            you will find in "axi_fft.xci" which is the
                            Xilinx IP file that is implemented.=C2=A0 You=
 can
                            change these in order to build different
                            sizes, but these are the defaults.<o:p></o:p>=
</p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto">=C2=A0<o:p></o:p></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto">If
                            you search the mailing archive, you may find
                            discussion of this topic and the need to
                            divorce the concepts of 'fft length' and
                            'packet length' in order to achieve FFT
                            lengths greater than 1024.<o:p></o:p></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto">Rob<o:p></o:p></p>
                        </div>
                        <div>
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto">=C2=A0<o:p></o:p></p>
                        </div>
                      </div>
                      <p class=3D"MsoNormal"
                        style=3D"mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto">=C2=A0<o:p></o:p></p>
                      <div>
                        <div>
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto">On
                            Tue, Sep 5, 2023 at 10:06=E2=80=AFAM Marcus D=
. Leech
                            &lt;<a href=3D"mailto:patchvonbraun@gmail.com=
"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">patchvonbra=
un@gmail.com</a>&gt;
                            wrote:<o:p></o:p></p>
                        </div>
                        <blockquote style=3D"border:none;border-left:soli=
d
                          #CCCCCC 1.0pt;padding:0cm 0cm 0cm
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5=
.0pt">
                          <div>
                            <div>
                              <p class=3D"MsoNormal"
                                style=3D"mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto">On
                                05/09/2023 04:38, Bachmaier, Luca wrote:<=
o:p></o:p></p>
                            </div>
                            <blockquote
                              style=3D"margin-top:5.0pt;margin-bottom:5.0=
pt">
                              <div>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D">Hello Marcus,=
</span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D">=C2=A0</span>=
<o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">Thank
                                    you for your detailed explanation. I
                                    was able to fix the problem now: I
                                    updated GNU Radio from 3.10.5
                                    (installed over apt) to 3.10.7
                                    (installed from source). With the
                                    newer version the FFT block now
                                    correctly displays a noise floor.</sp=
an><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0</span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">So
                                    far so good, the FFT resolution is
                                    still low as I cannot set the size
                                    higher than 256 (Error =E2=80=9Csampl=
es per
                                    package must not be smaller than
                                    atomic item size=E2=80=9D). As far as=
 I
                                    understood, the size should be able
                                    to go as high as 2048 when using
                                    10Gbit streaming.</span><o:p></o:p></=
p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">My
                                    current configuration should enable
                                    that:</span><o:p></o:p></p>
                                <p style=3D"margin-left:20.65pt"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">-</span><span
style=3D"font-size:7.0pt;color:#1F497D" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                  </span><span style=3D"color:#1F497D"
                                    lang=3D"EN-US">MTU on my interface is
                                    set to 9000</span><o:p></o:p></p>
                                <p style=3D"margin-left:20.65pt"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">-</span><span
style=3D"font-size:7.0pt;color:#1F497D" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                  </span><span style=3D"color:#1F497D"
                                    lang=3D"EN-US">Parameter spp of RFNoC
                                    RX Radio is set to 2048</span><o:p></=
o:p></p>
                                <p style=3D"margin-left:20.65pt"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">-</span><span
style=3D"font-size:7.0pt;color:#1F497D" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                  </span><span style=3D"color:#1F497D"
                                    lang=3D"EN-US">Current FPGA image is
                                    of XG type</span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0</span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">In
                                    case it=E2=80=99s helpful, here=E2=80=
=99s the
                                    relevant output of `ip a` of my
                                    devices:</span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">Host:</span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                    4: enp9s0f1np1:
                                    &lt;BROADCAST,MULTICAST,UP,LOWER_UP&g=
t;
                                    mtu 9000 qdisc mq state UP group
                                    default qlen 1000</span><o:p></o:p></=
p>
                                <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:3=
5.4pt"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0=C2=A0=C2=A0
                                    link/ether 9c:6b:00:16:8e:96 brd
                                    ff:ff:ff:ff:ff:ff</span><o:p></o:p></=
p>
                                <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:3=
5.4pt"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0=C2=A0=C2=A0
                                    inet <a
                                      href=3D"http://192.168.10.3/24"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true">
                                      192.168.10.3/24</a> scope global
                                    enp9s0f1np1</span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:3=
5.4pt"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                    valid_lft forever preferred_lft
                                    forever</span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                  </span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">USRP:</span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                    3: sfp0:
                                    &lt;BROADCAST,MULTICAST,UP,LOWER_UP&g=
t;
                                    mtu 9000 qdisc pfifo_fast qlen 1000</=
span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:3=
5.4pt"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0=C2=A0=C2=A0
                                    link/ether 00:80:2f:31:28:42 brd
                                    ff:ff:ff:ff:ff:ff</span><o:p></o:p></=
p>
                                <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:3=
5.4pt"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0=C2=A0=C2=A0
                                    inet <a
                                      href=3D"http://192.168.10.2/24"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true">
                                      192.168.10.2/24</a> brd
                                    192.168.10.255 scope global sfp0</spa=
n><o:p></o:p></p>
                                <p class=3D"MsoNormal"
style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:3=
5.4pt"><span
                                    style=3D"color:#1F497D" lang=3D"EN-US=
">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                                    valid_lft forever preferred_lft
                                    forever</span><o:p></o:p></p>
                                <p class=3D"MsoNormal"
                                  style=3D"mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto">=C2=A0<o:p></o:p></p>
                              </div>
                            </blockquote>
                            <p class=3D"MsoNormal"
                              style=3D"mso-margin-top-alt:auto;margin-bot=
tom:12.0pt">I
                              think in the "RFNOC Graph" block, you can
                              specify the SPP in the "Device Args"
                              parameter.=C2=A0
                              <o:p></o:p></p>
                          </div>
                          <p class=3D"MsoNormal"
                            style=3D"mso-margin-top-alt:auto;mso-margin-b=
ottom-alt:auto">_______________________________________________<br>
                            USRP-users mailing list -- <a
                              href=3D"mailto:usrp-users@lists.ettus.com"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">
                              usrp-users@lists.ettus.com</a><br>
                            To unsubscribe send an email to <a
                              href=3D"mailto:usrp-users-leave@lists.ettus=
.com"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">
                              usrp-users-leave@lists.ettus.com</a><o:p></=
o:p></p>
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
  </body>
</html>

--------------WnkkejbdNoneKfjbN4iqkweD--

--===============0397407285407752186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0397407285407752186==--
