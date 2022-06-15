Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F4454D2BF
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jun 2022 22:36:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7DB81384462
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jun 2022 16:36:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655325406; bh=/I+CMNlup+3u5gv7boR0IyyEpbYhgG7csBcH5HcYgvQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Wqv1aUkpGtMcHQcp9FzsV5/YF4s2ba3G4gr56zalO6DZmOBydir1rYRru2kG/ZfKG
	 z5FkTTQL4v7rKeSdlUZfh9TirTrvv7woJcA8MtbFXAHV/pXMmObKAOBl7wwfBTDjEH
	 Y94rxG7r+21cWPQVWKxz4VvbcWOyUQlRA3qrxZvT1jN7hE9V1m4rJA5RPgD0F0jWp1
	 n7wsSNjgRXmkXIHXd+Qv0/7mSbOLa9dELlb6kiNgJnue1hgQCQGg58/uxMTcRY187m
	 JlKfjZHjNY1Gnw8W8GzR0K4KP1T5rXDfPK4m6DiLa+Z8FnLzuPtOCx41Gv4hg4m0zV
	 4rrJk9Z6aA+og==
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 681B2383E97
	for <usrp-users@lists.ettus.com>; Wed, 15 Jun 2022 16:35:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="qK5UAlRq";
	dkim-atps=neutral
Received: by mail-yb1-f182.google.com with SMTP id u99so22511803ybi.11
        for <usrp-users@lists.ettus.com>; Wed, 15 Jun 2022 13:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UDEKehAozFMs2EgEoeJRBDILkxo8mUkvk5FzduzAD5U=;
        b=qK5UAlRqsKRMQFHIu5j7QKYvQKUyS9pJTdxZLYwycbbMAacyyUWzGNwDhCpII6f6Rj
         9q87OSrvt7p2m6Moa3pQHxlDH9fitKxHiFyFTtQWxkI3qr7R5xXO89KJJku9kqV8VBRF
         50QDXv8bdNEGgH/Cv81rURkyXR2cnnlxtg3gArrT9nZZyMC/DOmm9Sk0xjo9Dim8kKao
         5kwth2pa6lzjcFX4c9GXlgjQ09qVVeSqsZWqWeq1eAhNT8Sa5DlP2vp4bN4Duwlw22fy
         m1IMLs1E+/LADQdZF1vapGuc9Avenw2k44PlUijlgVYmBWOcysohSgxIiovLvWXjW70i
         Ux/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UDEKehAozFMs2EgEoeJRBDILkxo8mUkvk5FzduzAD5U=;
        b=KIwK3Q1am21xubweovcxswqIEUCZP4sHAVCOJmXG3PzpqTnu06/fal//h1hwjZHRkE
         F6124UGKmygeXT39t2j+9ovK96nczAVu7Et8YvuIb15TR0Q3woB1oxXIFXm1I5CPQ1Z1
         fDv8MrVClevzOXLfLWmoCZAzes7lFm6zsczHosq8SI0R99lpf5fF6cI7X5a9fSgZOWxj
         NKx1GiB2fMnavu2xM3Y+JN8L8YXPceGoJVjiGVErSLP9pKh7s7uqGe/AuOmk/3LRzLMU
         zUM6+gxw73VWWLWe0mV3Qpn8jzMGKOle8NdNsajhMMuc/MiFHzS/SOwXalAGW2M5pnXI
         /Q/A==
X-Gm-Message-State: AJIora8lwrFIhsFB2dMRbQvhyC32pGYymKnIVVVlTVAqX8xcgOVAndYI
	IRPComQX4B5Z7dOWa6EA/ABaA6kxzFzMXYGc+U8YfcXDBH9DzA==
X-Google-Smtp-Source: AGRyM1st2eE6yyl9h+SrCs3kFxmbBvwvuvuC1A8qytkSH3oTRVnVwmjVRdu6AqWUZQ9VepIuDP04COdIqIqig6iw8uY=
X-Received: by 2002:a25:8682:0:b0:65d:11d5:5f99 with SMTP id
 z2-20020a258682000000b0065d11d55f99mr1937495ybk.340.1655325337822; Wed, 15
 Jun 2022 13:35:37 -0700 (PDT)
MIME-Version: 1.0
References: <165530633592.11266.12838205147515045731@mm2.emwd.com>
In-Reply-To: <165530633592.11266.12838205147515045731@mm2.emwd.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 15 Jun 2022 15:35:22 -0500
Message-ID: <CAFche=i38wHH6a046yAZQz=iG+fMNqiCq4HC8ndOU5h6yMAauQ@mail.gmail.com>
To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Message-ID-Hash: 4CNJYBD2PKOF3TUY4V7ILQYN2DBQQTZV
X-Message-ID-Hash: 4CNJYBD2PKOF3TUY4V7ILQYN2DBQQTZV
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 x4_200 connectivity question
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4CNJYBD2PKOF3TUY4V7ILQYN2DBQQTZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4519374696619284654=="

--===============4519374696619284654==
Content-Type: multipart/alternative; boundary="000000000000bfb7c705e18276d0"

--000000000000bfb7c705e18276d0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bob,

Question 1:
With the x4 bitstream, the X410 puts a separate 10 GbE interface on each
lane of its QSFP28 port 0 (the QSFP port has four lanes). There are
breakout cables that go from one QSFP to four SFPs if you have cards with
SFP ports, or, if your card supports four 10 GbE ports on a single QSFP
plug then you can use a single QSFP cable like you described. But not all
cards support this. Check your card's documentation.

Question 2:
This is configurable. You can use the addr, second_addr, third_addr, and
fourth_addr device arguments to indicate which IP ports to use for
streaming. UHD automatically distributes the streams over the ports you
indicate.

Thanks,

Wade

On Wed, Jun 15, 2022 at 10:19 AM Tillson, Bob (US) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> So I am on the x4_200 image and am wondering what the =E2=80=9Ccorrect=E2=
=80=9D way to
> setup the transport is.
>
>
>
> I currently have a single qsfp28 connection on the x410 to a single 100
> GbE port on a mellanox card.
>
>
>
> Question #1:
>
> Looking at the description of the fpga image it describes the x4_200 as =
=E2=80=9C4
> x 10GbE=E2=80=9D, so should I really be configured as single qsfp28 conne=
ction on
> the x410 to a quad 10 GbE on host with a breakout cable?
>
>
>
> I am seeing some wonkiness in my app, which was pretty stable on the N310
> and wondering if it could be due to my transport setup.
>
> I am still investigating the app, but it made me think about how the data
> is delivered from device to host.
>
>
>
> Question #2:
>
> With the x4_200 fpga image, is the traffic for each RF port =E2=80=9Crout=
ed=E2=80=9D to a
> single 10GbE interface?  4 RF ports, 4 10GbE connections?
>
>
>
> Any insights would be greatly appreciated J
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000bfb7c705e18276d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Bob,</div><div><br></div><div>Question 1:</div><di=
v></div><div>With the x4 bitstream, the X410 puts a separate 10 GbE interfa=
ce on each lane of its QSFP28 port 0 (the QSFP port has four lanes). There =
are breakout cables that go from one QSFP to four SFPs if you have cards wi=
th SFP ports, or, if your card supports four 10 GbE ports on a single QSFP =
plug then you can use a single QSFP cable like you described. But not all c=
ards support this. Check your card&#39;s documentation.<br></div><div><br><=
/div><div>Question 2:</div><div></div><div>This is configurable. You can us=
e the addr, second_addr, third_addr, and fourth_addr device arguments to in=
dicate which IP ports to use for streaming. UHD automatically distributes t=
he streams over the ports you indicate.</div><div><br></div><div>Thanks,</d=
iv><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 15, 2022 at 10:19 AM Tills=
on, Bob (US) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3070239761360953073WordSection1">
<p class=3D"MsoNormal">So I am on the x4_200 image and am wondering what th=
e =E2=80=9Ccorrect=E2=80=9D way to setup the transport is.<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I currently have a single qsfp28 connection on the x=
410 to a single 100 GbE port on a mellanox card.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Question #1:<u></u><u></u></p>
<p class=3D"MsoNormal">Looking at the description of the fpga image it desc=
ribes the x4_200 as =E2=80=9C4 x 10GbE=E2=80=9D, so should I really be conf=
igured as single qsfp28 connection on the x410 to a quad 10 GbE on host wit=
h a breakout cable?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am seeing some wonkiness in my app, which was pret=
ty stable on the N310 and wondering if it could be due to my transport setu=
p.<u></u><u></u></p>
<p class=3D"MsoNormal">I am still investigating the app, but it made me thi=
nk about how the data is delivered from device to host.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Question #2:<u></u><u></u></p>
<p class=3D"MsoNormal">With the x4_200 fpga image, is the traffic for each =
RF port =E2=80=9Crouted=E2=80=9D to a single 10GbE interface?=C2=A0 4 RF po=
rts, 4 10GbE connections?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Any insights would be greatly appreciated <span styl=
e=3D"font-family:Wingdings">
J</span><u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000bfb7c705e18276d0--

--===============4519374696619284654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4519374696619284654==--
