Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D0C6A1E52
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 16:16:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 602703840FB
	for <lists+usrp-users@lfdr.de>; Fri, 24 Feb 2023 10:16:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677251793; bh=uQesxARSn3NRwJmHa8Dc47AXJCsvta4vicrMo2F4O8U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TO1Xc1ARf5A0YZ9A/7j31yXs2xMZkO56ZsZBtqw5MpT0fkh67nxdIqI1q3WhCaX1w
	 dux05OXjY2Q2fCqEU/KmhGBLSPx6LCiDb15EleljWMGTTw3LGhYyFR+UDGBdQiqfA8
	 clJu8Fxx5tVvSeWmH42UXWVnulHagIavo27qq1+4tVecXKUT9RSgA5SWLtppOSOkMm
	 eGK2EJlf+LJuhIeGyO7P0XOjWgfg+6bPEadyTd5s2rUWiQLQ7DIbuPvlLajf4bE1LN
	 nFxraR3lglkvc/eAPPHpmCer8sZ6LNHCGXvpXoVNhjD0E+tGdw1sb30xt7WR6pYzSk
	 ry6NgM6ZoLZnQ==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 6357F381076
	for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 10:15:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jZdjddiy";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id h16so14562422qta.8
        for <usrp-users@lists.ettus.com>; Fri, 24 Feb 2023 07:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aiR/MSNFiZOcHaDLx2qX3gQxTEAQOnhOscLvUFl8nVw=;
        b=jZdjddiyFlb3KI9Kh8tstWiwAt/c87Y96SaWgrNVgN3kJfvoMiTK3PGQl15241U1uM
         wWYDHsG57emWn1Yz/bkAd2tClm0UKhp8k9Jwh7vvpW5a5ZZlBccWoRjxyh9iPkdXmlZu
         42VtFdII+W+Ccwc/ITzT1XFpLmOP+tG6oflh6thCrrCVBzGL463P3bR0mlCSiH5OcTvm
         kM9zv/2QKZ1J6WaDyfo0tal6xa8x1ywYMzJOoBd5tf4GpmN4cRkVvnb6OBUGZJ1BXR0P
         CxI/d+OPE1+ile8eke7D+aM4hT1H2eMJ21c9Tdx0Hiw3JbOvS7B9+mAeN6B/+UcBz5u+
         ITyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aiR/MSNFiZOcHaDLx2qX3gQxTEAQOnhOscLvUFl8nVw=;
        b=vG8Tu1++g026/I8uLhaU3jS9A2IxmwbxBscjLJLMA2Rfgjn9AU2yP7j3FhaGTZQf4f
         sJEahnHIc7ct/GuctQzyovD+EPwzPjeEZxrPqoI8/BL+j9jsVb0iQ5HZVNBwsnVQVdzd
         6Fj6Tdalrc9N+5FqZRmbdvja/MeTsoHUdMuVPvPypjRKEDYk2V+x32U9OK/SIg3mOr/b
         7BTcicJb1NpO1gAhM4W1KdSKqC1c8oL9r6DDXSS1lsr6tLDlYG7rzNH9Sgdbo/Careri
         JGahL7SAvGtMtomsXSIlHReTcazE1MTApUtiBywx+eUuSf1TWT5vqYHL81VgXqYDe/eK
         Q/KQ==
X-Gm-Message-State: AO0yUKWBHLr/UKuNZLzv/p31EpnfBNKprHH1aiIGh+43UgRD+3/KnAOt
	Q9OeAR1ZHPQWxj5FIF7nxjPnA6TpLbY=
X-Google-Smtp-Source: AK7set/4M0lY0zJnzUi2ES80Idh3Cy4k1FKrxYFuaECka8uB53xbikZL0yw4hiyL1c3gxs7gdIWXrw==
X-Received: by 2002:ac8:5c4a:0:b0:3bd:48:7097 with SMTP id j10-20020ac85c4a000000b003bd00487097mr28904696qtj.49.1677251756710;
        Fri, 24 Feb 2023 07:15:56 -0800 (PST)
Received: from [192.168.2.156] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id bs18-20020ac86f12000000b003b62bc6cd1csm6313037qtb.82.2023.02.24.07.15.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 07:15:56 -0800 (PST)
Message-ID: <e03719d3-1105-8610-0949-a57c67ef0607@gmail.com>
Date: Fri, 24 Feb 2023 10:15:55 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: "Peter Featherstone (XENINT)" <peter.featherstone@xenint.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <DB6PR02MB2981E698C5CE0E3D6829D9DEE7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <b3cda3ac-b1c2-5788-1fe7-14e06d710c3b@gmail.com>
 <DB6PR02MB2981F4FF97EE0FBC112DF396E7AB9@DB6PR02MB2981.eurprd02.prod.outlook.com>
 <b0bcd12f-a3e4-8c99-2d23-005ff6824217@gmail.com>
 <DB6PR02MB298163AD80446D2D087D4E52E7A89@DB6PR02MB2981.eurprd02.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <DB6PR02MB298163AD80446D2D087D4E52E7A89@DB6PR02MB2981.eurprd02.prod.outlook.com>
Message-ID-Hash: BD72Y7RFWQJKLMEHRYC2BYIU5PTZS2EM
X-Message-ID-Hash: BD72Y7RFWQJKLMEHRYC2BYIU5PTZS2EM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: libuhd - read IQ samples without discontinuities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BD72Y7RFWQJKLMEHRYC2BYIU5PTZS2EM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0108829880418757449=="

This is a multi-part message in MIME format.
--===============0108829880418757449==
Content-Type: multipart/alternative;
 boundary="------------aK7OLaSPYicdEVG23bOskaYj"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------aK7OLaSPYicdEVG23bOskaYj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 24/02/2023 03:40, Peter Featherstone (XENINT) wrote:
>
> Hi Marcus,
>
> /To clarify.=C2=A0=C2=A0=C2=A0 You are in a loop, reading exactly 16K o=
f data, then=20
> going to sleep for 5 seconds, and you have a
> =C2=A0 STREAM_MODE_START_CONTINUOUS stream?///
>
> Exactly that.
>
> So do you reckon it=E2=80=99s possible to get no OVERFLOW errors in thi=
s=20
> situation?
>
> I have to admit, after a while, the overflow messages start coming in,=20
> but it takes like 40 seconds. I can=E2=80=99t imagine the internal buff=
ers are=20
> that big, but I could be wrong. Is there a way to set the internal=20
> buffer sizes?
>
> Is there a way to manually provide buffers to the underlying=20
> transport? Rather than libuhd do its own internal buffering and users=20
> not really knowing how big they are or when they overflow, we could=20
> manually provide a buffer and have a callback notification when it=E2=80=
=99s=20
> full. Maybe there could be a set of buffers provided, a bit like how=20
> libiio works.
>
> (Or even better, use C++ Asio style API. All buffers are manually=20
> provided, and users know where they stand. It looks like libuhd uses=20
> asio under the hood anyway. May as well use it for the API too. Then=20
> you can use all of Asio super powers without any extra work, like=20
> coroutines, futures, callbacks, etc. Anyway, that=E2=80=99s a tangent.)
>
> I appreciate the help and the clarifications.
>
> Thanks,
>
TBH, given that the architecture is driven by "zero copy as much as=20
possible", I'm not sure how that interacts with the
 =C2=A0 user-provided buffer, and that you appear to be able to accumulat=
e a=20
LOT of samples before overrun occurs.

Changing the API at this point, 16+ years on, with thousands of deployed=20
applications in the field is unlikely to happen.

> Peter
>
> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* 23 February 2023 17:21
> *To:* Peter Featherstone (XENINT) <peter.featherstone@xenint.com>
> *Subject:* Re: [USRP-users] Re: libuhd - read IQ samples without=20
> discontinuities
>
> On 23/02/2023 10:42, Peter Featherstone (XENINT) wrote:
>
>     HI,
>
>     No I want to receive continuously without gaps.
>
>     However, I have a suspicion that sometimes you don=E2=80=99t get OV=
ERFLOW
>     errors when you should.
>
>     My thought was that if I stream in continuous mode and don=E2=80=99=
t get
>     any overflow messages, then all my received IQ would be continuous.
>
>     However, I did an experiment where I artificially added sleep
>     statements to force overflows, but they don=E2=80=99t happen. I wai=
t for
>     5s at 1 MHz sample rate, therefore 5 million samples should have
>     overflowed, but I get no messages.
>
>     So I=E2=80=99m questioning whether this mode of streaming actually
>     guarantees continuous receive.
>
>     peter
>
>     My problem is that I don=E2=80=99t get any OVERFLOW errors
>
> To clarify.=C2=A0=C2=A0=C2=A0 You are in a loop, reading exactly 16K of=
 data, then=20
> going to sleep for 5 seconds, and you have a
> =C2=A0 STREAM_MODE_START_CONTINUOUS stream?
>
> Parts of UHD run asynchronously in a separate thread, and there's a=20
> large buffer pool available to the reader thread.
> =C2=A0 HOWEVER, if you're only reading 16K, those buffers would get blo=
wn=20
> out fairly quickly.
>
> MY experience is that B210 delivers uninterrupted data in continuous=20
> streaming, and when it can't, it declares an
> =C2=A0 OVERFLOW, and prints an "O" on the console.=C2=A0=C2=A0=C2=A0 Bu=
t there can be an=20
> awful lot of data "in flight".=C2=A0=C2=A0 The architecture
> =C2=A0 isn't a polling architecture, per se, so when you issue a recv()=
=20
> call, that doesn't imply that the drivers go to the hardware
> =C2=A0 and ask for exactly that amount of data.=C2=A0 Instead, the hard=
ware is=20
> told to stream samples, and the underlying libusb
> =C2=A0 bulk-transfer mechanisms are used to provide a continuous collec=
tion=20
> of buffers with samples in them, and the
> =C2=A0 user-side recv() call is vacuuming out those buffers.
>
>
>
>     *From:*Marcus D. Leech <patchvonbraun@gmail.com>
>     <mailto:patchvonbraun@gmail.com>
>     *Sent:* 23 February 2023 15:34
>     *To:* usrp-users@lists.ettus.com
>     *Subject:* [USRP-users] Re: libuhd - read IQ samples without
>     discontinuities
>
>     On 23/02/2023 04:27, Peter Featherstone (XENINT) wrote:
>
>         Hi,
>
>         I=E2=80=99m trying to read samples from my B210 as fast as poss=
ible
>         without gaps in the IQ.
>
>         I=E2=80=99m using a sample rate of 1e6 Hz and read 5s of IQ.
>
>         As an experiment, I read 16K samples at a time in a loop.
>
>         At each iteration I sleep for 5 seconds.
>
>         I was expecting to see loads of ERROR_CODE_OVERFLOW error
>         codes, but I don=E2=80=99t.
>
>         Is it the case that that error is only =E2=80=9Cthrown=E2=80=9D=
 when you can=E2=80=99t
>         write to a buffer quick enough, but not necessarily if you=E2=80=
=99re
>         waiting too long between successive reads in a continuous RX
>         stream?
>
>         Many thanks,
>
>         *Peter*
>
>
>
>
>         _______________________________________________
>
>         USRP-users mailing list --usrp-users@lists.ettus.com
>
>         To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>
>     If you want to capture samples discontinuously, this is not the
>     way to do it.
>
>     Use "NUM_SAMPS_AND_MORE"=C2=A0 in creating your stream:
>
>     https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html
>
>     This particular stream mode tells the device to send you the
>     number of samples requested and to expect a future
>     =C2=A0 stream command to fetch more samples.
>
>

--------------aK7OLaSPYicdEVG23bOskaYj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 24/02/2023 03:40, Peter Featherston=
e
      (XENINT) wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:DB6PR02MB298163AD80446D2D087D4E52E7A89@DB6PR02MB2981.eurprd02=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-fareast-language:EN-US;}span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi Marcus,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><i><span
              style=3D"color:#4472C4;mso-fareast-language:EN-GB">To
              clarify.=C2=A0=C2=A0=C2=A0 You are in a loop, reading exact=
ly 16K of
              data, then going to sleep for 5 seconds, and you have a<br>
              =C2=A0 STREAM_MODE_START_CONTINUOUS stream?</span></i><i><s=
pan
              style=3D"color:#4472C4"><o:p></o:p></span></i></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Exactly that.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">So do you reckon it=E2=80=99s possible to =
get no
          OVERFLOW errors in this situation?<o:p></o:p></p>
        <p class=3D"MsoNormal">I have to admit, after a while, the
          overflow messages start coming in, but it takes like 40
          seconds. I can=E2=80=99t imagine the internal buffers are that =
big,
          but I could be wrong. Is there a way to set the internal
          buffer sizes?<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Is there a way to manually provide buffers
          to the underlying transport? Rather than libuhd do its own
          internal buffering and users not really knowing how big they
          are or when they overflow, we could manually provide a buffer
          and have a callback notification when it=E2=80=99s full. Maybe =
there
          could be a set of buffers provided, a bit like how libiio
          works.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">(Or even better, use C++ Asio style API.
          All buffers are manually provided, and users know where they
          stand. It looks like libuhd uses asio under the hood anyway.
          May as well use it for the API too. Then you can use all of
          Asio super powers without any extra work, like coroutines,
          futures, callbacks, etc. Anyway, that=E2=80=99s a tangent.)<o:p=
></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">I appreciate the help and the
          clarifications.<o:p></o:p></p>
        <p class=3D"MsoNormal">Thanks,</p>
      </div>
    </blockquote>
    TBH, given that the architecture is driven by "zero copy as much as
    possible", I'm not sure how that interacts with the<br>
    =C2=A0 user-provided buffer, and that you appear to be able to accumu=
late
    a LOT of samples before overrun occurs.<br>
    <br>
    Changing the API at this point, 16+ years on, with thousands of
    deployed applications in the field is unlikely to happen.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:DB6PR02MB298163AD80446D2D087D4E52E7A89@DB6PR02MB2981.eurprd02=
.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Peter<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class=3D"MsoNormal"><b><span
                  style=3D"mso-fareast-language:EN-GB" lang=3D"EN-US">Fro=
m:</span></b><span
                style=3D"mso-fareast-language:EN-GB" lang=3D"EN-US"> Marc=
us
                D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                <br>
                <b>Sent:</b> 23 February 2023 17:21<br>
                <b>To:</b> Peter Featherstone (XENINT)
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:peter.f=
eatherstone@xenint.com">&lt;peter.featherstone@xenint.com&gt;</a><br>
                <b>Subject:</b> Re: [USRP-users] Re: libuhd - read IQ
                samples without discontinuities<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 23/02/2023 10:42, Peter Featherstone
            (XENINT) wrote:<span style=3D"mso-fareast-language:EN-GB"><o:=
p></o:p></span></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">HI,<o:p></o:p></p>
          <p class=3D"MsoNormal">No I want to receive continuously withou=
t
            gaps.<o:p></o:p></p>
          <p class=3D"MsoNormal">However, I have a suspicion that
            sometimes you don=E2=80=99t get OVERFLOW errors when you shou=
ld.<o:p></o:p></p>
          <p class=3D"MsoNormal">My thought was that if I stream in
            continuous mode and don=E2=80=99t get any overflow messages, =
then
            all my received IQ would be continuous.
            <o:p></o:p></p>
          <p class=3D"MsoNormal">However, I did an experiment where I
            artificially added sleep statements to force overflows, but
            they don=E2=80=99t happen. I wait for 5s at 1 MHz sample rate=
,
            therefore 5 million samples should have overflowed, but I
            get no messages.<o:p></o:p></p>
          <p class=3D"MsoNormal">So I=E2=80=99m questioning whether this =
mode of
            streaming actually guarantees continuous receive.<o:p></o:p><=
/p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">peter<o:p></o:p></p>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <p class=3D"MsoNormal">My problem is that I don=E2=80=99t get a=
ny
            OVERFLOW errors<o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB"=
>To
            clarify.=C2=A0=C2=A0=C2=A0 You are in a loop, reading exactly=
 16K of data,
            then going to sleep for 5 seconds, and you have a<br>
            =C2=A0 STREAM_MODE_START_CONTINUOUS stream?<br>
            <br>
            Parts of UHD run asynchronously in a separate thread, and
            there's a large buffer pool available to the reader thread.<b=
r>
            =C2=A0 HOWEVER, if you're only reading 16K, those buffers wou=
ld
            get blown out fairly quickly.<br>
            <br>
            MY experience is that B210 delivers uninterrupted data in
            continuous streaming, and when it can't, it declares an<br>
            =C2=A0 OVERFLOW, and prints an "O" on the console.=C2=A0=C2=A0=
=C2=A0 But there
            can be an awful lot of data "in flight".=C2=A0=C2=A0 The arch=
itecture<br>
            =C2=A0 isn't a polling architecture, per se, so when you issu=
e a
            recv() call, that doesn't imply that the drivers go to the
            hardware<br>
            =C2=A0 and ask for exactly that amount of data.=C2=A0 Instead=
, the
            hardware is told to stream samples, and the underlying
            libusb<br>
            =C2=A0 bulk-transfer mechanisms are used to provide a continu=
ous
            collection of buffers with samples in them, and the<br>
            =C2=A0 user-side recv() call is vacuuming out those buffers.<=
br>
            <br>
            <br>
            <br>
            <o:p></o:p></span></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class=3D"MsoNormal"><b><span
                    style=3D"mso-fareast-language:EN-GB" lang=3D"EN-US">F=
rom:</span></b><span
                  style=3D"mso-fareast-language:EN-GB" lang=3D"EN-US">
                  Marcus D. Leech
                  <a href=3D"mailto:patchvonbraun@gmail.com"
                    moz-do-not-send=3D"true">&lt;patchvonbraun@gmail.com&=
gt;</a>
                  <br>
                  <b>Sent:</b> 23 February 2023 15:34<br>
                  <b>To:</b> <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    moz-do-not-send=3D"true" class=3D"moz-txt-link-freete=
xt">usrp-users@lists.ettus.com</a><br>
                  <b>Subject:</b> [USRP-users] Re: libuhd - read IQ
                  samples without discontinuities</span><o:p></o:p></p>
            </div>
          </div>
          <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
          <div>
            <p class=3D"MsoNormal">On 23/02/2023 04:27, Peter Featherston=
e
              (XENINT) wrote:<o:p></o:p></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal">Hi,<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal">I=E2=80=99m trying to read samples fro=
m my B210
              as fast as possible without gaps in the IQ.<o:p></o:p></p>
            <p class=3D"MsoNormal">I=E2=80=99m using a sample rate of 1e6=
 Hz and
              read 5s of IQ.<o:p></o:p></p>
            <p class=3D"MsoNormal">As an experiment, I read 16K samples a=
t
              a time in a loop.<o:p></o:p></p>
            <p class=3D"MsoNormal">At each iteration I sleep for 5
              seconds.<o:p></o:p></p>
            <p class=3D"MsoNormal">I was expecting to see loads of
              ERROR_CODE_OVERFLOW error codes, but I don=E2=80=99t.<o:p><=
/o:p></p>
            <p class=3D"MsoNormal">Is it the case that that error is only
              =E2=80=9Cthrown=E2=80=9D when you can=E2=80=99t write to a =
buffer quick enough,
              but not necessarily if you=E2=80=99re waiting too long betw=
een
              successive reads in a continuous RX stream?<o:p></o:p></p>
            <p class=3D"MsoNormal">Many thanks,<o:p></o:p></p>
            <p class=3D"MsoNormal">=C2=A0<o:p></o:p></p>
            <p class=3D"MsoNormal"><b><span
                  style=3D"font-size:10.0pt;color:#0D0D0D;mso-fareast-lan=
guage:EN-GB">Peter</span></b><o:p></o:p></p>
            <p class=3D"MsoNormal"><span
                style=3D"mso-fareast-language:EN-GB"><br>
                <br>
                <br>
              </span><o:p></o:p></p>
            <pre>_______________________________________________<o:p></o:=
p></pre>
            <pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@=
lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext"=
>usrp-users@lists.ettus.com</a><o:p></o:p></pre>
            <pre>To unsubscribe send an email to <a href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com" moz-do-not-send=3D"true" class=3D"moz-txt-lin=
k-freetext">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"mso-fareast-language:EN-GB">If you want to capture
              samples discontinuously, this is not the way to do it.<br>
              <br>
              Use "NUM_SAMPS_AND_MORE"=C2=A0 in creating your stream:<br>
              <br>
              <a
                href=3D"https://files.ettus.com/manual/structuhd_1_1strea=
m__cmd__t.html"
                moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html</a><br>
              <br>
              This particular stream mode tells the device to send you
              the number of samples requested and to expect a future<br>
              =C2=A0 stream command to fetch more samples.<br>
              <br>
              <br>
            </span><o:p></o:p></p>
        </blockquote>
        <p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB"=
><o:p>=C2=A0</o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------aK7OLaSPYicdEVG23bOskaYj--

--===============0108829880418757449==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0108829880418757449==--
