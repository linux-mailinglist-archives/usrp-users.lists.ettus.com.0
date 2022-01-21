Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A19496531
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 19:38:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18F47385017
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 13:38:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KvFjm7lR";
	dkim-atps=neutral
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 548AF384995
	for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 13:37:51 -0500 (EST)
Received: by mail-oi1-f178.google.com with SMTP id w188so14703819oiw.13
        for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 10:37:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QgB6XjfZHTzuGsV1FqhfGKi4w2eDVzroh7C0mpx0GYk=;
        b=KvFjm7lRKEeYEV9SpyVfpxrVKzs73UPclzYWkQ3p1g5yowYk26/3alW6ed2Y1FcOuB
         hbDrQ1fOi9TuL5wcJh3XOMjpa1jPoEgGZz5m8YuSJ6M5VDbDsD24BY5XoDB0rqfOU1g9
         /TR2PATSqGpYtpkty+DGl+g24rVCPuZCeYi6496CNEMy+u5g5BdnbgPD9/bv/+GVqAXD
         yV26kK3MilUB8vlRR6Bwka2Hnu8t+FnRyb6cPOJXe81NvAz1/zSrb4JGjAQSOP4JbMUE
         2iDE7HrfmntpKXnsJYKi5xcLDGt/INPlMIzbu2KZfSS2EaARLYe8Grep0KpWgemN2fkH
         hLlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QgB6XjfZHTzuGsV1FqhfGKi4w2eDVzroh7C0mpx0GYk=;
        b=3T8KkiGuMW+0UUknCtEmhrcWh38bpZoFe3297Jpbo2rnVHQmVxzLfvVYcBZ6/Vv01z
         0O00ZGFWUMJ3mPycMnq7jmBYCc9FLMM8TR4mAzEnnm929B59cfaF5ZsP6+OXs6PDIuZt
         9yWUCj129o/CmKCvYYxo9+c+vm6dlYNiB10hrRfwHIagi6i7VqJIkazl1bnCE88j5GI+
         Y/rNNP8SguMYVxio94Afg/6g20XaXF0r8/Xgtso4WoRolvOWVTEyhW0sKqJ5Iq18ODqg
         YUPO1+L58Lswww4JY2sF+cwu9dXfT2Lj3G9EDGoAymkXgI0XUnK96dz7gM/nqeMTG/hE
         oOZw==
X-Gm-Message-State: AOAM533yaVeXUp/n8t/MOkBIpu16QL/WbkdOMwrCRIPqHIDttBVPG8cg
	phFFgGADJ7Cwq2/JWwmaApGAztZelkpUjVQKu+8=
X-Google-Smtp-Source: ABdhPJwqdCjCrEsrDvnzzMhv/aMVUvXY+rIMQOj7TyiHJ5o4fDOtaI7nnZhOhk6rn0peVvO6ur19C2wR/Ea7AG9cHWU=
X-Received: by 2002:a54:4417:: with SMTP id k23mr1663298oiw.58.1642790270735;
 Fri, 21 Jan 2022 10:37:50 -0800 (PST)
MIME-Version: 1.0
References: <CANP_axL6-SFaBZJmhHr07eQFge-s3h91Xqx+4urgFn+zB33fMA@mail.gmail.com>
 <ef6c3c86-582f-a954-9483-bcc8db257f7c@gmail.com>
In-Reply-To: <ef6c3c86-582f-a954-9483-bcc8db257f7c@gmail.com>
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Fri, 21 Jan 2022 21:37:39 +0300
Message-ID: <CANP_axLO0z6hOoZeZPPXzp80uNpay+Z448ZgUQSzo2m+eeMiaw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: IPRESYZL42FLYHIJ5R7EB3P5ZCNEQBHV
X-Message-ID-Hash: IPRESYZL42FLYHIJ5R7EB3P5ZCNEQBHV
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus E320 Power Consumption
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IPRESYZL42FLYHIJ5R7EB3P5ZCNEQBHV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2962398797314609160=="

--===============2962398797314609160==
Content-Type: multipart/alternative; boundary="00000000000087170b05d61bea17"

--00000000000087170b05d61bea17
Content-Type: text/plain; charset="UTF-8"

Thanks for your answer Marcus. Is it the ARM side consuming all that power?
I was expecting more than a few watts decrease in an Rx-only scenario.
Would the power levels change when the RF frontend and the FPGA is
completely idle?

Also if anyone has the exact Watt levels for different scenarios I would
love to hear about them.

Best,
Temir





On Fri, Jan 21, 2022 at 9:28 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-21 13:25, Temir Karakurum wrote:
> > Hi,
> >
> > E320 datasheet mentions 10 - 14 Vdc, 3A max 30W power consumption. I
> > assume this maximum value is for the Tx scenario. What power levels
> > should I expect when receiving on only one channel with the GPSDO active?
> >
> > Best,
> > Temir
> >
> My guess is that it will be not hugely less than 30W, since the TX
> output power on all USRPs is very modest--as much as 10dBm, but not a
> lot more.
>
> Granted, the TX side of the FPGA will be "idle", but I wouldn't expect
> more than a watt or two less as a result of that.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000087170b05d61bea17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for your answer Marcus. Is it the ARM side consumin=
g all that power? I was expecting more than a few watts decrease in an Rx-o=
nly scenario.<div>Would the power levels change when the RF frontend and th=
e FPGA is completely idle?<br></div><div><br></div><div>Also if anyone has =
the exact Watt levels for different scenarios I would love to hear about th=
em.</div><div><br></div><div>Best,</div><div>Temir</div><div><br></div><div=
><br><div><br></div><div><br></div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 21, 2022 at 9:28 PM Ma=
rcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On 2022-01-21 13:25, Temir Karakurum wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; E320 datasheet mentions 10 - 14 Vdc, 3A max 30W power consumption. I <=
br>
&gt; assume this maximum value is for the Tx scenario. What power levels <b=
r>
&gt; should I expect when receiving on only one channel with the GPSDO acti=
ve?<br>
&gt;<br>
&gt; Best,<br>
&gt; Temir<br>
&gt;<br>
My guess is that it will be not hugely less than 30W, since the TX <br>
output power on all USRPs is very modest--as much as 10dBm, but not a <br>
lot more.<br>
<br>
Granted, the TX side of the FPGA will be &quot;idle&quot;, but I wouldn&#39=
;t expect <br>
more than a watt or two less as a result of that.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000087170b05d61bea17--

--===============2962398797314609160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2962398797314609160==--
