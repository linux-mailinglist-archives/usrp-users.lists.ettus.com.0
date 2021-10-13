Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A45D142C0DD
	for <lists+usrp-users@lfdr.de>; Wed, 13 Oct 2021 15:02:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CF4038442B
	for <lists+usrp-users@lfdr.de>; Wed, 13 Oct 2021 09:02:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="oIEBpPnB";
	dkim-atps=neutral
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id AB628383DE3
	for <usrp-users@lists.ettus.com>; Wed, 13 Oct 2021 09:01:54 -0400 (EDT)
Received: by mail-ed1-f44.google.com with SMTP id z20so9839374edc.13
        for <usrp-users@lists.ettus.com>; Wed, 13 Oct 2021 06:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZqeoBaD8Zaqlo71siiqyRsUv8XLVHLH/euNWl3dWJRE=;
        b=oIEBpPnBVw6FM3lndyjpc/mNT0eudSjJXBJsHgFxb1B6JF8sACi1/Kp/VQEEbFCZfD
         uNGyK8HHI+ZHLXLTMs18FG5G4/VnDoSJiMKyAcivceVVAqib+VVZ2+LI+c89VCIDlr1/
         VRaZ4pwhX9uaSNqc1rltNi456uQZggl8FZ/aF3qCenacwrzfSNYR/bmBvjO/gThYHmVg
         LNdyxVw7/seoP6WtLAmnOn5eDKl+I5MgS/P7MTH5NrVfLMQx6KCnkDCOWf2mDsQMI6By
         Q+Sc/aC3xfmYNVUIdpuJOLLPdWFOrEn4aQXSnbqrsRuh20AlbAMIdLB+TH2GP1jXES0q
         teNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZqeoBaD8Zaqlo71siiqyRsUv8XLVHLH/euNWl3dWJRE=;
        b=zx/JpCloE684p0nJrhirdCIOcyVm07LiDp5Rk7hZQpugH9bDiDWi3Dt8yLKuI2KZR7
         a/KG2bdf1eJpCSfUcTj36WyEbEEP3di7MsB7w1eFoSVLJqshmRWwxOc70DlSV1y/Te5Y
         m6Ygd7YGKOsyNtcm2VKR60+O9gYC5K2SDzNbkCkDeax6OG5f8uhn7/OVrWmsFgQ10sjH
         8ysNQuNrNSzQ1bZsXeg89zFe7I48zsEmGI+865JH3oidtGCqyfoS2fF1kI9JfYurSrF1
         2F7pkyJAWqcMEuc7B6H6aa2kIIQRH54CNDQFWVzVWG0vY+kOOkV+Iz0uo1KgjWANSsCv
         BPVA==
X-Gm-Message-State: AOAM532flVr8A5nIB1H4B1MBI9/0xlHzfDDidVkWkHWtqwl8vAzHLCXE
	pa4G6cXwXo8BSaOpLTQ66g/TRqnXPGBSDLRZQCtplzr+QA9Pd7Zf
X-Google-Smtp-Source: ABdhPJy9OZjXhbVdHsBf2UPpCsLGeUySOw9wHTSX7UaNldzben/Od7JiYNfr3hJBQN0XXQ/31kSZ8DPMJN3Ry0AGiZY=
X-Received: by 2002:a50:be8a:: with SMTP id b10mr9439433edk.235.1634130108441;
 Wed, 13 Oct 2021 06:01:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAJPQ1a3zntj=e9YsXfw_1m3tAVW9pARuC8ounnShQSf2B0zH9A@mail.gmail.com>
In-Reply-To: <CAJPQ1a3zntj=e9YsXfw_1m3tAVW9pARuC8ounnShQSf2B0zH9A@mail.gmail.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Wed, 13 Oct 2021 09:01:37 -0400
Message-ID: <CAGNhwTPgJ9erk5H17txvW0MKzbEjn1iAUH+FZ2vA59JPtkw=ow@mail.gmail.com>
To: Sanjoy Basak <sanjoybasak14@gmail.com>
Message-ID-Hash: FZ2NFO7SRTPNSMKOU5O4VSC3VSAOPKDT
X-Message-ID-Hash: FZ2NFO7SRTPNSMKOU5O4VSC3VSAOPKDT
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RJ-45 10GbE NIC for X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FZ2NFO7SRTPNSMKOU5O4VSC3VSAOPKDT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4300297613302805121=="

--===============4300297613302805121==
Content-Type: multipart/alternative; boundary="000000000000a177c605ce3b90c5"

--000000000000a177c605ce3b90c5
Content-Type: text/plain; charset="UTF-8"

Hi Sanjoy - That NIC should work fine with the X310. You will need an
adapter from RJ45 to SFP+ (or 2, if you want to use dual connectivity) and,
yes, CAT6 or CAT7 ENET cable. I've used this adapter & it works nicely <
https://www.fs.com/products/74680.html?attribute=113&id=219394 >. There are
plenty of options for this adapter. Hope this is helpful! - MLD

On Wed, Oct 13, 2021 at 6:45 AM Sanjoy Basak <sanjoybasak14@gmail.com>
wrote:

> Hello,
> I am planning to purchase a computer, which has Intel X550-T2 10GbE NIC.
> This is a RJ-45 10GbE NIC.
> Can I use it to stream/receive at 200MSps with the USRP X310 using cat 6-7
> Ethernet cable?
>
> I have used Intel X520-DA2 sfp+ NIC before to receive at 200MSPs rate with
> X310.
> I am not sure if this NIC (X550-T2) can stream at this rate or there will
> be issues with this.
> Please give me a feedback if anyone has tested such NICs with X310.
>
> Thanks in advance.
> Best regards
> Sanjoy
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a177c605ce3b90c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sanjoy - That NIC should work fine with the X310. You w=
ill need an adapter from RJ45 to SFP+ (or 2, if you want to use dual connec=
tivity) and, yes, CAT6 or CAT7 ENET cable. I&#39;ve used this adapter &amp;=
 it works nicely &lt; <a href=3D"https://www.fs.com/products/74680.html?att=
ribute=3D113&amp;id=3D219394">https://www.fs.com/products/74680.html?attrib=
ute=3D113&amp;id=3D219394</a> &gt;. There are plenty of options for this ad=
apter. Hope this is helpful! - MLD</div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 13, 2021 at 6:45 AM Sanjoy Ba=
sak &lt;<a href=3D"mailto:sanjoybasak14@gmail.com">sanjoybasak14@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr">Hello,<div>I am planning to purchase a computer, which has=C2=A0In=
tel X550-T2 10GbE NIC. This is a RJ-45 10GbE NIC.=C2=A0</div><div>Can I use=
 it to stream/receive at 200MSps with the USRP X310 using cat 6-7 Ethernet =
cable?=C2=A0</div><div><br></div><div>I have used Intel X520-DA2 sfp+ NIC b=
efore to receive at 200MSPs rate with X310.=C2=A0</div><div>I am not sure i=
f this NIC (X550-T2) can stream at this rate or there will be issues with t=
his.</div><div>Please give me a feedback if anyone has tested such NICs wit=
h X310.</div><div><br></div><div>Thanks in advance.</div><div>Best=C2=A0reg=
ards</div><div>Sanjoy</div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a177c605ce3b90c5--

--===============4300297613302805121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4300297613302805121==--
