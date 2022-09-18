Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B6D5BBE00
	for <lists+usrp-users@lfdr.de>; Sun, 18 Sep 2022 15:31:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E6DBC383CE7
	for <lists+usrp-users@lfdr.de>; Sun, 18 Sep 2022 09:31:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663507879; bh=6H5p4ggjGYO32bHTs0TUuYH8vQDtjEeoLRrC4/8L0Ys=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=fMtUOkSv3U9ipj6ZAtEO8WWwMpc6PFJZC2J98kEWVyJv7zj4u8oGAwK08G2jXJE8p
	 Qm/tIoHUdcAaZ6eVmCi5U7ykNA9bl87H9BJyty0Xzo66ACPiaZDFTULqjmpblKLrCc
	 hULciWi/zrez/F4QRHPjD+fifMRuvCAGnYS4QuhY5lxnURX6ft1Oo6Q/fJjQh+cOPF
	 EYxehwc5/Z37H/tmoBSn55NsYizUgmouwpOfkn8FcLyaVi7XvsABlpvUZ/1DHGeM0u
	 Xgmp4hsGeZMdZO7ypVTPHN1osi4BtdD1AU9Npx4IRv6PKVF5F5W/YvXB9u2nFGSQwF
	 +oErvq4KglKLQ==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id B4C7E380AC9
	for <usrp-users@lists.ettus.com>; Sun, 18 Sep 2022 09:30:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XwvzY8d7";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id sb3so29259996ejb.9
        for <usrp-users@lists.ettus.com>; Sun, 18 Sep 2022 06:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=rIBkfCXyGt/BJX+mlvEKXU0puSUCncQSJSOHInyw7fQ=;
        b=XwvzY8d7nlTxHZBy81EtY65g/EBbmtAVNNY8d7rRfVmcI0VFb0t/KICLggz5gHmSPf
         y5WF+RF1+Cq6D6ibWg3c0UiTrHOISI1NVBlZnRnx3yj+K73PwnqZ9G/KV7b1+5CspMap
         DgCgDJFBfcM2Iz/13ONrpGkhdX3x6MP7AODhD9lL8MzgjBvVZTCZYSCiEefnWpyOM/IR
         ICyfSHqBZbbrn2h0fZ1hTI7ywIvRcSDBiYa1HZque0nj0qme6+URMCCbcR309h6DLupI
         JqLd34ZQxiVV69NMpfJq2kmJwTpkNNj3sGavDg6/YKoNXAeLhqCDEtvzTG0GKO7JX4Jz
         dZ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=rIBkfCXyGt/BJX+mlvEKXU0puSUCncQSJSOHInyw7fQ=;
        b=39Y8WlhbX7mqxrXWS2ZdpNDUI+slY9fZc5V/YAJJMxB8HJLdfCTYDM3mi2w0kguIbw
         s5kV8vd9Ty3QlskPDrjqOwLp/fqWjdK6Y8mCOLkj+vY9yM7ewA2SnmlzQlEZt+ilF1B0
         6n07DDrAlMmafjcBdAzbBlaWInNCTYkjmmEhEtdq2VudMqpGxbwxvGfKlGq25RvIBu/s
         bYQl2/vmwWXj1xl1RQ3fXvuNQV3Y9awSQ3Jb/1nUVr1azAhyhhQi7xMBj89vamZzPu8K
         soPbeWcm3PlasL1lg6aGwGTBoDXAaRiSHXbnaOS5ibpTUvRNYqLAHpZarvO9C3XKhVn5
         DIrw==
X-Gm-Message-State: ACrzQf2ioRLoC2JU4dkc7P/LkQBeYHLC+ATR8PhRdndXDcaJAEwlWiDI
	4O6vH1GUpTHwcHnwJxowJaOzByf3EVcKjdGvGsY=
X-Google-Smtp-Source: AMsMyM5PuEzgLOBx5KBjkUSntFnjmz1cY8uPmHLAJjpazeKG/CCswLeWJytAWX9cCa3XHubZVzNC2A6uwTiPx6k0ey0=
X-Received: by 2002:a17:907:3e12:b0:780:523b:d9cf with SMTP id
 hp18-20020a1709073e1200b00780523bd9cfmr9646141ejc.326.1663507811510; Sun, 18
 Sep 2022 06:30:11 -0700 (PDT)
MIME-Version: 1.0
References: <SN6PR04MB3870C53A01D40869FAA91219E8469@SN6PR04MB3870.namprd04.prod.outlook.com>
In-Reply-To: <SN6PR04MB3870C53A01D40869FAA91219E8469@SN6PR04MB3870.namprd04.prod.outlook.com>
From: Chris Wozny <woznych@gmail.com>
Date: Sun, 18 Sep 2022 09:30:00 -0400
Message-ID: <CAEZoMYPb7H2NE+A-_-FimKQ4fu-ddLYpFOYYyB40Qqx6CwMe3A@mail.gmail.com>
To: Steven Koo <steven.koo@ni.com>
Message-ID-Hash: 22MM3MS3CMR77XRFZ64GRL5RR47TGGVH
X-Message-ID-Hash: 22MM3MS3CMR77XRFZ64GRL5RR47TGGVH
X-MailFrom: cwoz36@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.3.0.0 released!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/22MM3MS3CMR77XRFZ64GRL5RR47TGGVH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2955419935428671276=="

--===============2955419935428671276==
Content-Type: multipart/alternative; boundary="0000000000002faeba05e8f398a7"

--0000000000002faeba05e8f398a7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you all!

Question about the 4.3.0.0 FPGA builds using Vivado 2021.1: would you
expect the bitstreams for the b2xx to still be identical as previous
releases? Not sure if it=E2=80=99s anywhere as drastic as software compiler=
 updates
where you=E2=80=99ll see a dramatic amount of changes in the binary.

Thanks,
Chris

On Wed, Sep 14, 2022 at 6:23 PM Steven Koo <steven.koo@ni.com> wrote:

> UHD 4.3.0.0 is now available [1]! This release includes:
>
>    - Extension framework support
>    - FPGA builds using Xilinx Vivado 2021.1 (B2xx, E3xx, N3xx, X3xx, and
>    X4xx devices)
>    - Bug fixes and improvements for USRP devices. See the changelog. [1]
>
>
>
> We'd like to thank all the USRP users that have filed issues or directly
> contributed to
>
> UHD and meta-ettus. You contributions have helped the continued
> improvement of UHD.
>
> As always, please file issues to our GitHub repo [2], by posting in the
> USRP-users mailing list, or
>
> contacting support@ettus.com.
>
>
>
> Thanks!
>
> Steven
>
>
>
> [1] https://github.com/EttusResearch/uhd/releases/tag/v4.3.0.0
>
> [2] https://github.com/EttusResearch/uhd/issues/
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002faeba05e8f398a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you all!</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Question about the 4.3.0.0 FPGA builds using Vivado 2021.1: would=
 you expect the bitstreams for the b2xx to still be identical as previous r=
eleases? Not sure if it=E2=80=99s anywhere as drastic as software compiler =
updates where you=E2=80=99ll see a dramatic amount of changes in the binary=
.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div><div dir=
=3D"auto">Chris</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Sep 14, 2022 at 6:23 PM Steven Koo &lt;<a href=
=3D"mailto:steven.koo@ni.com">steven.koo@ni.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(=
204,204,204)">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"overflow-wr=
ap: break-word;">
<div class=3D"m_-7101161334209321074WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:black">UHD 4.3.0.0 is now avail=
able [1]! This release includes:<u></u><u></u></span></p>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"m_-7101161334209321074MsoListParagraph" style=3D"margin-left:0=
in;color:black">
Extension framework support<u></u><u></u></li><li class=3D"m_-7101161334209=
321074MsoListParagraph" style=3D"margin-left:0in;color:black">
FPGA builds using Xilinx Vivado 2021.1 (B2xx, E3xx, N3xx, X3xx, and X4xx de=
vices)<u></u><u></u></li><li class=3D"m_-7101161334209321074MsoListParagrap=
h" style=3D"margin-left:0in;color:black">
Bug fixes and improvements for USRP devices. See the changelog. [1]<u></u><=
u></u></li></ul>
<p class=3D"MsoNormal"><span style=3D"color:black"><u></u>=C2=A0<u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:black">We&#39;d like to thank a=
ll the USRP users that have filed issues or directly contributed to<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">UHD and meta-ettus. You =
contributions have helped the continued improvement of UHD.<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">As always, please file i=
ssues to our GitHub repo [2], by posting in the USRP-users mailing list, or=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black">contacting <a href=3D"ma=
ilto:support@ettus.com" target=3D"_blank">support@ettus.com</a>.<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black"><u></u>=C2=A0<u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:black">Thanks!<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:black">Steven<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:black"><u></u>=C2=A0<u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:black">[1] <a href=3D"https://g=
ithub.com/EttusResearch/uhd/releases/tag/v4.3.0.0" target=3D"_blank">https:=
//github.com/EttusResearch/uhd/releases/tag/v4.3.0.0</a><u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:black">[2] <a href=3D"https://g=
ithub.com/EttusResearch/uhd/issues/" target=3D"_blank">https://github.com/E=
ttusResearch/uhd/issues/</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000002faeba05e8f398a7--

--===============2955419935428671276==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2955419935428671276==--
