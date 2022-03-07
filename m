Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E47944D0B09
	for <lists+usrp-users@lfdr.de>; Mon,  7 Mar 2022 23:25:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB22938497E
	for <lists+usrp-users@lfdr.de>; Mon,  7 Mar 2022 17:25:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="6ZF7M9u/";
	dkim-atps=neutral
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E77C3847B5
	for <usrp-users@lists.ettus.com>; Mon,  7 Mar 2022 17:24:47 -0500 (EST)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-2dc242a79beso171302917b3.8
        for <usrp-users@lists.ettus.com>; Mon, 07 Mar 2022 14:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aXBZoUgHX2+Y81wV0sEp94AXBYLVsjjlSy5chOqjKdc=;
        b=6ZF7M9u/46lv8+KxCi/EpF092z2KJGlk+lQoD6Mk1rglOr9X1UrgHFbCGqHeT5TnmU
         ES3JDQYEAcBS8wxi/946FmZ0utrnEGSn8IMTMJ6cWfDMRPCzp31Ynd7Rf1d37qD/yUQC
         kVFa/XgiI8GGR/dRTgpBTk6YVEWg9/vSl/4sd86r3H+i8ZFCgSuZ3s5l9egdHRBFPiIx
         ZrGSH+4br+xa6wgBYVKRud9iWoKmAKsBV8TOzcwvvJuH0r0ofSyrGxE12npJNNdKfLSt
         ++qdkWy7rO8i0RAtzY2A8qH/WM6kmNEsQlRQ3DByzqNWhmgOKbLe/eOZ4shyt90egEvO
         zlmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aXBZoUgHX2+Y81wV0sEp94AXBYLVsjjlSy5chOqjKdc=;
        b=U6BWLAnJbSy8qxiK1OXodzyfiDo0pbfElvxh9zmnonhu6JhhA2+af0nmyIRKiUf6u2
         8x2TwOXa1G/ImNa88rPGS/E9Jy7F1cN0Um6Uir81mLni+NMsuZafM1ySA4+LBez54ZrX
         7D2r3/VKMUfC2gR3s86dzGDMc+x79JgtE75rEaeNbhqZy9a+BYkEKsakHMbMqwK0uYLo
         byuRkpyXYbULjYdvLAfxz71v5zb+M/UUKhf0YD0VICr/lG0ReLnTijEDpSCpEW3nR1/r
         QczPgEON7kKbGsN9k2INme/X3nLaayWoM/n7rEMm2G8FVXU9mLbwGqkiP7HZ3bjuSh6l
         rW6A==
X-Gm-Message-State: AOAM5326C6tOyWLSKacH41swmvvoRS04LZ3jp+u7/EniP/Dm0U0Rur1w
	dKyTVjhc9bXktOevxvO9IvOrYzL/G2DC+UlktePjjpB2zmOyeY6m
X-Google-Smtp-Source: ABdhPJzWnDk89m6RWGkqWekMas7J5ym42qEdiFVZgBdkWjXRxS2FmgxAWl94NERjFmC1louDwGwyBExo5c6EBQPqjtU=
X-Received: by 2002:a81:f008:0:b0:2d0:cd72:74e5 with SMTP id
 p8-20020a81f008000000b002d0cd7274e5mr10785259ywm.301.1646691886613; Mon, 07
 Mar 2022 14:24:46 -0800 (PST)
MIME-Version: 1.0
References: <HE1PR0701MB25864CA8FBCF8311D7290C599C059@HE1PR0701MB2586.eurprd07.prod.outlook.com>
In-Reply-To: <HE1PR0701MB25864CA8FBCF8311D7290C599C059@HE1PR0701MB2586.eurprd07.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 7 Mar 2022 16:24:31 -0600
Message-ID: <CAFche=hKQWv6SApVGR9nCZAoFDVuri26NfNwF158VFY51ROMRQ@mail.gmail.com>
To: "Kozlov, Yuriy (Nokia - RU/Saint Petersburg)" <yuriy.kozlov@nokia.com>
Message-ID-Hash: 6IQCPBRPU2OR55KFUSMQG24T7Z5BKIE6
X-Message-ID-Hash: 6IQCPBRPU2OR55KFUSMQG24T7Z5BKIE6
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Network card compatibility X410
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6IQCPBRPU2OR55KFUSMQG24T7Z5BKIE6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5790100440966347339=="

--===============5790100440966347339==
Content-Type: multipart/alternative; boundary="000000000000f4dd8c05d9a8540f"

--000000000000f4dd8c05d9a8540f
Content-Type: text/plain; charset="UTF-8"

Hi Yuriy,

The Dual 100 Gigabit Ethernet PCIe Interface Kit (PN 788216-01) includes an
NVIDIA MCX516A-CCAT card and one QSFP28 cable for 100 GbE.

The QSFP28 to 4xSFP28 Breakout Cable (PN 788214-01) has one QSFP28 on one
end and four SFP28 cables on the other end. It is for connecting up to four
10 GbE ports to the X410.

NI also offers 10 Gigabit Ethernet Card for Desktop (PN 783345-0) which is
a dual-port 10 GbE Intel E10G42BTDABLK. That's a card you could use with
the SFP28 cable ends.

If you need 500 MS/s bandwidth, and plan to stream all the data to a host
computer, then you will need 100 GbE. If you need 250 MS/s or less, then
you can use 10 GbE.

Please note that 100 GbE support has not yet been released in UHD (although
it is technically available on the open-source master branch), but this
feature is planned for an upcoming release. 10 GbE / 250 MS/s is fully
supported with the current version of UHD.

Thanks,

Wade


On Fri, Mar 4, 2022 at 2:47 AM Kozlov, Yuriy (Nokia - RU/Saint Petersburg) <
yuriy.kozlov@nokia.com> wrote:

> Hello,
>
> Which additional communication equipment is needed for using X410 board
> and cover 500M samples per second. I see in recommendation "Dual 100
> Gigabit Ethernet PCIe Interface Kit". Is this network card + one qsfp28
> cable? "QSFP28 to 4xSFP28 Breakout Cable" - I am note sure, do I need this
> cable if buy "Dual 100 Gigabit Ethernet PCIe Interface Kit"?
>
> Thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f4dd8c05d9a8540f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Yuriy,</div><div><br></div><div>The Dual 100 Gigab=
it Ethernet PCIe Interface Kit (PN 788216-01) includes an NVIDIA	MCX516A-CC=
AT card and one QSFP28 cable for 100 GbE.</div><div><br></div><div>The=20
QSFP28 to 4xSFP28 Breakout Cable (PN 788214-01) has one QSFP28 on one end a=
nd four SFP28 cables on the other end. It is for connecting up to four 10 G=
bE ports to the X410.</div><div><br></div><div>NI also offers 10 Gigabit Et=
hernet Card for Desktop (PN 783345-0) which is a dual-port 10 GbE Intel E10=
G42BTDABLK. That&#39;s a card you could use with the SFP28 cable ends.<br><=
/div><div><br></div><div>If you need 500 MS/s bandwidth, and plan to stream=
 all the data to a host computer, then you will need 100 GbE. If you need 2=
50 MS/s or less, then you can use 10 GbE.</div><div><br></div><div>Please n=
ote that 100 GbE support has not yet been released in UHD (although it is t=
echnically available on the open-source master branch), but this feature is=
 planned for an upcoming release. 10 GbE / 250 MS/s is fully supported with=
 the current version of UHD.<br></div><div><br></div><div>Thanks,</div><div=
><br></div><div>Wade<br></div><div><br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 4, 2022 at 2:47 AM=
 Kozlov, Yuriy (Nokia - RU/Saint Petersburg) &lt;<a href=3D"mailto:yuriy.ko=
zlov@nokia.com">yuriy.kozlov@nokia.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
</div>
Hello,
<div><br>
</div>
<div>Which additional communication equipment is needed for using X410 boar=
d and cover 500M samples per second. I see in recommendation &quot;Dual 100=
 Gigabit Ethernet PCIe Interface Kit&quot;. Is this network card + one qsfp=
28 cable? &quot;QSFP28 to 4xSFP28 Breakout Cable&quot;
 - I am note sure, do I need this cable if buy &quot;Dual 100 Gigabit Ether=
net PCIe Interface Kit&quot;?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,255);display:inline"></span>Tha=
nks</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f4dd8c05d9a8540f--

--===============5790100440966347339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5790100440966347339==--
