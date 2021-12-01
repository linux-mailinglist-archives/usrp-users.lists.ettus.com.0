Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E194659C0
	for <lists+usrp-users@lfdr.de>; Thu,  2 Dec 2021 00:23:22 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9AFB38522D
	for <lists+usrp-users@lfdr.de>; Wed,  1 Dec 2021 18:23:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZZH+FZKv";
	dkim-atps=neutral
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id A2098381923
	for <usrp-users@lists.ettus.com>; Wed,  1 Dec 2021 18:22:21 -0500 (EST)
Received: by mail-qk1-f179.google.com with SMTP id g28so32872318qkk.9
        for <usrp-users@lists.ettus.com>; Wed, 01 Dec 2021 15:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=sh9yEhwHtJOeHSUN8/fitSA4cPaqr2WUR4cTTcOqHAI=;
        b=ZZH+FZKvz2W1AL7J0KOYftQfm3uojQVFSykJosBc51qGgXQMdOUTl2b3H9W39gnSMO
         tQOAeHdV7ElcqEDDL8slVBLyOxv3MvkU85xw9G3lS1i3RswpOlLz4nlJah1VNk5nae+7
         Y42aalQ69b/lDixHu+dXc5/5FT5b1/EpucMnqFmdgQHFXp0u1ex2EesXp47DX5Cchm8A
         2ptnd1EzVnd7Fu9IemQOXpaUcK/XwqUdZjEtQaNIK2g2MFbxQAspVr0C3EK/geStVqoh
         t5MqsCtIK+b0C0gPXFfhu5AsBGJJXMgIiE8Ko03eFrmM5vS2kzoqvhMYn7BLi2PhhUwT
         GZaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=sh9yEhwHtJOeHSUN8/fitSA4cPaqr2WUR4cTTcOqHAI=;
        b=BnOhc1UGtZWAjBJ0480VRThu04KLbvmBPiK46n9Dx0N/WSt9Jxkgmvjs55JKIXOTwA
         QS5uhlSi9dl5n8gPi5rmXp66u1fNX2G7m8hBHIHGDWwViT4bSg5qSeufQv9Mcg1sapU9
         0VRi3BajvwNgtTD8gLENMoeRyrXZ2oaeZK+x930bA2hgg7t6GmPdA/zBOi1VvmR7qbiO
         nnEk9Un4eGZdOA0EAziXatq7yvTJYP/ZcjY7Di8CRpVkiWqfSy057WkMVTR/80Q+KnWp
         Y5W1Mwac18Xb9/O40z7a+4x/nwMSZFBILWkDb8QkUIb8IyI3ZfhuW/eN9RZu7hRuwnEf
         tlJA==
X-Gm-Message-State: AOAM531hXlyy6qKjWDgzd0qMuhC1oSzTyVCq5Pf5LE9tZFJkDS5iV7pS
	uZJSI+rByC8ih7xoKKS/Nyelc2HRmfA=
X-Google-Smtp-Source: ABdhPJyE9n2PeHGzY5A/zQ4CPreViKI9CwNJECZG/Rqd9CPOEm5HCpXCMj+b8W51+0b2Xd6kCHVbIA==
X-Received: by 2002:a37:e04:: with SMTP id 4mr9111720qko.294.1638400940683;
        Wed, 01 Dec 2021 15:22:20 -0800 (PST)
Received: from [192.168.2.221] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id bs16sm692960qkb.45.2021.12.01.15.22.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Dec 2021 15:22:20 -0800 (PST)
Message-ID: <a67d6748-c632-1b68-47e9-4117d064c24d@gmail.com>
Date: Wed, 1 Dec 2021 18:22:11 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR16MB350290C9B8C095A24BB79358B9669@MN2PR16MB3502.namprd16.prod.outlook.com>
 <c0883989-44e1-feab-c59b-f069c032c12c@gmail.com>
 <MN2PR16MB35020798AC36662AA6CA506CB9689@MN2PR16MB3502.namprd16.prod.outlook.com>
 <34902af7-c4cf-8aa3-1b00-62c6573116ec@gmail.com>
 <CAB__hTTDAxTLDcUKemJYPWvtT0HRQSTdRydHyBftF=fiBtTUag@mail.gmail.com>
 <MN2PR16MB350282F7916B28B372C5FE55B9689@MN2PR16MB3502.namprd16.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR16MB350282F7916B28B372C5FE55B9689@MN2PR16MB3502.namprd16.prod.outlook.com>
Message-ID-Hash: 32X6NYZQMUU3BPYFQQE7S7QALBURT62X
X-Message-ID-Hash: 32X6NYZQMUU3BPYFQQE7S7QALBURT62X
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP streaming data performance
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/32X6NYZQMUU3BPYFQQE7S7QALBURT62X/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8312797162388017565=="

This is a multi-part message in MIME format.
--===============8312797162388017565==
Content-Type: multipart/alternative;
 boundary="------------e0qFKC2aOHT2Z008QR1EVbwH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------e0qFKC2aOHT2Z008QR1EVbwH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-12-01 16:19, Jonathan Pratt wrote:
>
> Thanks to those who helped.
>
> The problem has disappeared. I hesitate to say =E2=80=9Cresolved=E2=80=9D=
 because we=20
> don=E2=80=99t know exactly what the problem was. We knew there was a pr=
oblem=20
> with our configuration, but not what the problem was =E2=80=93 just hop=
ing=20
> that someone with more experience could tell us where to look since we=20
> only followed instructions provided by ettus on line. I will detail=20
> our findings for the event that it is helpful to someone else.
>
> It seems to have been related to the FPGA image since that was the=20
> last thing we changed before behaviour returned to expected (ie 25MSPS=20
> transfer across a 1GbE link without any drop outs).
>
> The set up is:
>
>   * X310 =C2=A0with a1GbE SFP+ module in socket 0, and a generic but =E2=
=80=98intel
>     compatible=E2=80=99 10GbE SFP+ module in socket 1. The IP addresses=
 have
>     been altered to not cause conflicts on our LAN.
>       o The 1GbE connection connects to the LAN
>       o The 10GbE connection connects to a 1GbE connection on the Xavie=
r
>   * nVidia AGX Xavier with a 2x 10GbE PCIe card inserted. The same
>     generic 10GbE SFP+ modules do not work in the PCIe card, so we
>     have a 1GbE SFP+ in one of the sockets.
>       o The on board 1GbE connects to the LAN
>       o The 1GbE on the PCIe card is connected to the 10GbE module on
>         the X310
>       o The xavier has UHD 4.0.0 + gnu radio 3.8 + gr-ettus (RFNoC)
>         4.0 installed which is the setup described in the workshop for
>         RFNoC 4
>         (https://kb.ettus.com/images/e/e9/rfnoc4_workshop_slides_2020_p=
art_2.pdf)
>
> The X310 can be =E2=80=98seen=E2=80=99 by the usrp-probe software eithe=
r across the=20
> LAN or directly but always seems to go via the direct link first=20
> (reports the direct IP address when connecting and no loss of data if=20
> either LAN cable is unplugged while running). Works similarly via both=20
> routes.
>
> We setup a simple USRP source to QT frequency sink flow. Any time the=20
> sample rate was set above 2MSPS the letter =E2=80=98D=E2=80=99 (drop ou=
t =3D sequence=20
> numbers not in sequence) =C2=A0was output repeatedly to the console. Th=
is=20
> was the only =E2=80=98error=E2=80=99. Coincidentally the 2MSPS rate wou=
ld be the=20
> largest sample rate we would expect to receive reliably if the=20
> ethernet negotiation had resolved to a 100Base-TX link. However the=20
> interface card (on the xavier) reported a 1000mb/s link.
>
> When the X310 arrived this setup would not work until we updated the=20
> FPGA image to one compatible with uhd 4.0.0. This was done following=20
> the instructions here :=20
> https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash
>
> We tried all possible combinations of ethernet interfaces with the=20
> same results. At some point we stopped using gnuradio-companion in=20
> favour of the benchmark_rate application but the results were the same=20
> =E2=80=93 dropouts above 2MSPS. We tried a different computer (windows =
PC with=20
> ubuntu VM) but the same results. We then tried a newer version of UHD=20
> (4.1.3 I think). In this case the =E2=80=98XG=E2=80=99 image was progra=
mmed. The=20
> results were very similar. The last test was to be a direct link=20
> between the on-board ethernet of the xavier (rather than via the PCI=20
> ethernet interfaces) and the 1GbE module on the X310. The xavier only=20
> had the 4.0.0 uhd software installed so it was necessary to replace=20
> the FPGA image for uhd 4.0.0. Initially this was done with the =E2=80=98=
XG=E2=80=99=20
> image (unintentionally) but then we changed back to the =E2=80=98HG=E2=80=
=99 image.
>
> After this we found that the benchmark_rate script would work up to=20
> 16MSPS without dropouts, and above 16MSPS it would crash (reset) the=20
> Xavier. Thinking this a vast improvement over what we were getting=20
> (16MSPS vs 2MSPS) we replaced the cables to the configuration=20
> described above. Coincidentally we discovered that gnuradio-companion=20
> will now work at 25MSPS without dropouts. So we can get 25MSPS=20
> transfer across a 1GbE link from a 10GbE SFP+ module in slot 1 of the=20
> X310 to a 1GbE SFP+ module on a PCIe card on the Xavier platform.
>
> What changed? No idea. But its working, so there=E2=80=99s no plan to=20
> investigate further, unless performance is inadequate when we change=20
> to a 10GbE SFP+ module on the xavier.
>
>
A few things to note.=C2=A0=C2=A0 The PHYs on the X310 are *FIXED SPEED*,=
 they=20
don't "do" speed negotiation.=C2=A0 Speed is established by the version o=
f=20
the firmware that you're running.

Keep in mind that the IP stack on these devices is completely-minimal.=C2=
=A0=C2=A0=20
They don't "do" routing in any meaningful sense.=C2=A0=C2=A0 Even though =
they have=20
Ethernet ports,
 =C2=A0 think of those as a dedicated data channel to a host computer, ra=
ther=20
than implying that they can participate as any other network device on a=20
routed network.

If anything between the radio and the host re-orders packets, the=20
UDP-based protocol will not "cope" in any meaningful way.=C2=A0 The=20
assumption is that the network connection
 =C2=A0 is quite direct between the radio and the host computer, so no=20
packet-reordering would be expected (nor any significant packet loss).=C2=
=A0=20
Anything that violates that assumption
 =C2=A0 will cause havoc.

The problem is that implementing a full, robust, IP stack on the devices=20
that is fully compliant with, for example, the "Host Requirements" RFC=20
would mean that vital
 =C2=A0 space in the FPGA would be taken up by all of that "goop", and le=
ave=20
very little room for DSP machinery--either "as shipped" or=20
customer-added via RFNOC.=C2=A0 So, the
 =C2=A0 network connections should be thought of as a "high speed sample =
bus=20
with a very familiar connector".


--------------e0qFKC2aOHT2Z008QR1EVbwH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-12-01 16:19, Jonathan Pratt
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR16MB350282F7916B28B372C5FE55B9689@MN2PR16MB3502.namprd16=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";}p.MsoListParagraph, li.MsoListParagraph, div.=
MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>Thanks
            to those who helped.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>The
            problem has disappeared. I hesitate to say =E2=80=9Cresolved=E2=
=80=9D
            because we don=E2=80=99t know exactly what the problem was. W=
e knew
            there was a problem with our configuration, but not what the
            problem was =E2=80=93 just hoping that someone with more expe=
rience
            could tell us where to look since we only followed
            instructions provided by ettus on line. I will detail our
            findings for the event that it is helpful to someone else.<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>It
            seems to have been related to the FPGA image since that was
            the last thing we changed before behaviour returned to
            expected (ie 25MSPS transfer across a 1GbE link without any
            drop outs).<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>The
            set up is:<o:p></o:p></span></p>
        <ul style=3D"margin-top:0cm" type=3D"disc">
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              style=3D"mso-fareast-language:EN-US">X310 =C2=A0with a1GbE =
SFP+
              module in socket 0, and a generic but =E2=80=98intel compat=
ible=E2=80=99
              10GbE SFP+ module in socket 1. The IP addresses have been
              altered to not cause conflicts on our LAN.<o:p></o:p></span=
></li>
          <ul style=3D"margin-top:0cm" type=3D"circle">
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0cm;mso-list:l0 level2 lfo1"><span
                style=3D"mso-fareast-language:EN-US">The 1GbE connection
                connects to the LAN
                <o:p></o:p></span></li>
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0cm;mso-list:l0 level2 lfo1"><span
                style=3D"mso-fareast-language:EN-US">The 10GbE connection
                connects to a 1GbE connection on the Xavier<o:p></o:p></s=
pan></li>
          </ul>
          <li class=3D"MsoListParagraph"
            style=3D"margin-left:0cm;mso-list:l0 level1 lfo1"><span
              style=3D"mso-fareast-language:EN-US">nVidia AGX Xavier with
              a 2x 10GbE PCIe card inserted. The same generic 10GbE SFP+
              modules do not work in the PCIe card, so we have a 1GbE
              SFP+ in one of the sockets.<o:p></o:p></span></li>
          <ul style=3D"margin-top:0cm" type=3D"circle">
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0cm;mso-list:l0 level2 lfo1"><span
                style=3D"mso-fareast-language:EN-US">The on board 1GbE
                connects to the LAN<o:p></o:p></span></li>
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0cm;mso-list:l0 level2 lfo1"><span
                style=3D"mso-fareast-language:EN-US">The 1GbE on the PCIe
                card is connected to the 10GbE module on the X310<o:p></o=
:p></span></li>
            <li class=3D"MsoListParagraph"
              style=3D"margin-left:0cm;mso-list:l0 level2 lfo1"><span
                style=3D"mso-fareast-language:EN-US">The xavier has UHD
                4.0.0 + gnu radio 3.8 + gr-ettus (RFNoC) 4.0 installed
                which is the setup described in the workshop for RFNoC 4
                (<a
href=3D"https://kb.ettus.com/images/e/e9/rfnoc4_workshop_slides_2020_part=
_2.pdf"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">https://kb.ettus.com/images/e/e9/rfnoc4_workshop_slides_2020_part_2.pdf=
</a>)<o:p></o:p></span></li>
          </ul>
        </ul>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>The
            X310 can be =E2=80=98seen=E2=80=99 by the usrp-probe software=
 either across
            the LAN or directly but always seems to go via the direct
            link first (reports the direct IP address when connecting
            and no loss of data if either LAN cable is unplugged while
            running). Works similarly via both routes.<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>We
            setup a simple USRP source to QT frequency sink flow. Any
            time the sample rate was set above 2MSPS the letter =E2=80=98=
D=E2=80=99
            (drop out =3D sequence numbers not in sequence) =C2=A0was out=
put
            repeatedly to the console. This was the only =E2=80=98error=E2=
=80=99.
            Coincidentally the 2MSPS rate would be the largest sample
            rate we would expect to receive reliably if the ethernet
            negotiation had resolved to a 100Base-TX link. However the
            interface card (on the xavier) reported a 1000mb/s link.<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>When
            the X310 arrived this setup would not work until we updated
            the FPGA image to one compatible with uhd 4.0.0. This was
            done following the instructions here :
            <a
              href=3D"https://files.ettus.com/manual/page_usrp_x3x0.html#=
x3x0_flash"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_flash</a><o:p></o:p=
></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>We
            tried all possible combinations of ethernet interfaces with
            the same results. At some point we stopped using
            gnuradio-companion in favour of the benchmark_rate
            application but the results were the same =E2=80=93 dropouts =
above
            2MSPS. We tried a different computer (windows PC with ubuntu
            VM) but the same results. We then tried a newer version of
            UHD (4.1.3 I think). In this case the =E2=80=98XG=E2=80=99 im=
age was
            programmed. The results were very similar. The last test was
            to be a direct link between the on-board ethernet of the
            xavier (rather than via the PCI ethernet interfaces) and the
            1GbE module on the X310. The xavier only had the 4.0.0 uhd
            software installed so it was necessary to replace the FPGA
            image for uhd 4.0.0. Initially this was done with the =E2=80=98=
XG=E2=80=99
            image (unintentionally) but then we changed back to the =E2=80=
=98HG=E2=80=99
            image.
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>After
            this we found that the benchmark_rate script would work up
            to 16MSPS without dropouts, and above 16MSPS it would crash
            (reset) the Xavier. Thinking this a vast improvement over
            what we were getting (16MSPS vs 2MSPS) we replaced the
            cables to the configuration described above. Coincidentally
            we discovered that gnuradio-companion will now work at
            25MSPS without dropouts. So we can get 25MSPS transfer
            across a 1GbE link from a 10GbE SFP+ module in slot 1 of the
            X310 to a 1GbE SFP+ module on a PCIe card on the Xavier
            platform.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"=
>What
            changed? No idea. But its working, so there=E2=80=99s no plan=
 to
            investigate further, unless performance is inadequate when
            we change to a 10GbE SFP+ module on the xavier.<o:p></o:p></s=
pan></p>
        <br>
      </div>
    </blockquote>
    A few things to note.=C2=A0=C2=A0 The PHYs on the X310 are *FIXED SPE=
ED*,=C2=A0
    they don't "do" speed negotiation.=C2=A0 Speed is established by the
    version of the firmware that you're running.<br>
    <br>
    Keep in mind that the IP stack on these devices is
    completely-minimal.=C2=A0=C2=A0 They don't "do" routing in any meanin=
gful
    sense.=C2=A0=C2=A0 Even though they have Ethernet ports,<br>
    =C2=A0 think of those as a dedicated data channel to a host computer,
    rather than implying that they can participate as any other network
    device on a routed network.<br>
    <br>
    If anything between the radio and the host re-orders packets, the
    UDP-based protocol will not "cope" in any meaningful way.=C2=A0 The
    assumption is that the network connection<br>
    =C2=A0 is quite direct between the radio and the host computer, so no
    packet-reordering would be expected (nor any significant packet
    loss).=C2=A0 Anything that violates that assumption<br>
    =C2=A0 will cause havoc.<br>
    <br>
    The problem is that implementing a full, robust, IP stack on the
    devices that is fully compliant with, for example, the "Host
    Requirements" RFC would mean that vital<br>
    =C2=A0 space in the FPGA would be taken up by all of that "goop", and
    leave very little room for DSP machinery--either "as shipped" or
    customer-added via RFNOC.=C2=A0 So, the<br>
    =C2=A0 network connections should be thought of as a "high speed samp=
le
    bus with a very familiar connector".<br>
    <br>
    <br>
  </body>
</html>
--------------e0qFKC2aOHT2Z008QR1EVbwH--

--===============8312797162388017565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8312797162388017565==--
