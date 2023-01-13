Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FF966A26D
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 19:59:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFB75384146
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 13:59:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673636391; bh=NIsHPWpyUqaoP9lHhCxVidXOWfBxu9AD73xnGFBW2Q8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XA0KrL92B3ZlLwJfhqB55LEd9kBd/HNQIdetDNDr53JT+5PGtb+JsXbOyW07LOE5v
	 HPrVo+KVIKAv74drbDQP6O+8zpO6QpuXS9H+D32KBb4Z4DvOmOq6wFKO95loB5Tyuj
	 ifcYjRa+OM3zXpt5XxFGyCtWLVJRpIXYxSkq91x99mPEYeaZeZxgse690iGpYMy4Vv
	 8/ijK8BcxbpLlYfjjxR4yXqLfudYg8z9Xn9GOr7hdGmYQkBLx+UTNiuXoceSwdqM12
	 jlqxHF7Mzign58Hj+ER0ftbgq5FBDa9UBz7ca4Jyw5cPfsfPQ5onE1eSMndVIIDbtI
	 X8RrD5JfH93Gw==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id F38113814FA
	for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 13:59:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cj6zPaKd";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id qk9so54413218ejc.3
        for <usrp-users@lists.ettus.com>; Fri, 13 Jan 2023 10:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kVc0Qbap4btnhS/swuY4cc7q0iyeWU/rhBiKCoWqTPM=;
        b=cj6zPaKd41wxiP/KWQywTv9sxz2idwEJIN5adzkjNS86YMwmhE/uvMlcHJ8qfwwG8o
         aY7WgGMXT42xX7LKsy3+vEEJuFQK8TCQ5d2MTQEQI71n/vEpvbnKrquRMTeGoe8wCB6e
         nt/MoyAdtMn4lcUkhPnH1a7ubFEdm03Orb4w82U8S8BnUdmtHFzk6xRe4dFKXvaw+cVP
         S/p7d5e23D5Ua5NvU89qt9QNPn6AOPzT/tz3RdXhBgA+fBcyUQZs3ZmHN1G2I46+5ahJ
         uSzZmYA48A1Iqh1gOv14U5FDnjBcu+29xtBko9Gz1Ndkb98b8Qgc9CKkGvKtN2Hk/7BV
         GGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kVc0Qbap4btnhS/swuY4cc7q0iyeWU/rhBiKCoWqTPM=;
        b=ULmuIYBwq1EMjCTeDUT/v/iueVTDCUEoHsK+I6lb2QBOdc53crD2FSTlq48t535mxi
         Uux/J1o7M9JJDHdZZcoMccW6NSzIg8Q6chF/NyMBUCQqFCOBTx5PxwdSYaS6k1f7DYtS
         xSJoBMB9YABTcOvETf5A+rtT3RFXUAb+SSiQOUpM0MnmNwFL86RIpxxePbEO2f8H65zS
         xi/IeE2Bl1vVo4PzKNUeD64GHiV15anVkFSTj8UR8kVdlm3nvpJxriJKm5Hr6l3tlqXx
         EYHy04GEIKDJTGL9xHyHePP1Bc6QMUQJGIPzJ/VMBjZ0jhqT0jrroDVgwrAzF1GJnagE
         Iiiw==
X-Gm-Message-State: AFqh2kpAbYeyvMfKAfYempZD9m92qmpLXeeN46yik8Y+Vfkw4M+3fDBf
	aZN6H98CINgpwjnGg3wUV5BO9KesXpIZSWc12F2uhWQn
X-Google-Smtp-Source: AMrXdXunMOSfk4vP63d4BInhYMMQ7HnPRXbrcG5cgJlv1fvT4bEWw18G1oczFZuKMxEm9rSMaYUxuvg0oJFuf3Svatg=
X-Received: by 2002:a17:906:9f20:b0:84d:43a0:709a with SMTP id
 fy32-20020a1709069f2000b0084d43a0709amr1767228ejc.328.1673636384713; Fri, 13
 Jan 2023 10:59:44 -0800 (PST)
MIME-Version: 1.0
References: <1npIe9K6rHfFb8sw9vQXet8Y0KXgBnTWyTmfLF12pLA@lists.ettus.com>
In-Reply-To: <1npIe9K6rHfFb8sw9vQXet8Y0KXgBnTWyTmfLF12pLA@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 13 Jan 2023 13:59:33 -0500
Message-ID: <CAEXYVK60n7qoARibz8S=T9iru843Ptk=Lc-MSWS0o49MNeh-8A@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: YEW44COCG4RFB2ZLYJL4NGTPBJ4CL4G6
X-Message-ID-Hash: YEW44COCG4RFB2ZLYJL4NGTPBJ4CL4G6
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Starting FPGA development on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YEW44COCG4RFB2ZLYJL4NGTPBJ4CL4G6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5462144183565525200=="

--===============5462144183565525200==
Content-Type: multipart/alternative; boundary="00000000000031b18d05f229d6c2"

--00000000000031b18d05f229d6c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Vivado locks IP if it's been targeted for the wrong device, or generated
with the wrong version of the software.

Did you receive any warnings about the wrong version of Vivado being used?
Are you running in a clean UHD repo (git status shows no changes)?

I've run into this issue when things were targeted incorrectly and old
artifacts were still present during the build process.

Brian

On Fri, Jan 13, 2023 at 1:48 PM <jmaloyan@umass.edu> wrote:

> Hello,
>
>
> I have run the setupenv.
>
> build-ip is a folder that is made when the
> makefile(uhd/fpga/usrp3/top/n3xx/Makefile.inc) is run. Removing it does n=
ot
> do anything, but I did try commenting out include statements in the
> Makefile.
>
>
> I tried commenting hb47_1to2 in the makefile, and it proceeded since it
> did not look for it. It asked for hb47_2to1, I commented that out and it
> moved on, but then it looked for something called axi_hb31, which I could
> not file in the include statements in the makefile.
>
>
> The errors I get refer to an IP being =E2=80=9Clocked=E2=80=9D, though I =
am unsure how to
> proceed from there. Some of the IPs have been built successfully
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000031b18d05f229d6c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Vivado locks IP if it&#39;s been targeted for the wrong de=
vice, or generated with the wrong=C2=A0version of the software.<div><br></d=
iv><div>Did you receive any warnings about the wrong version of Vivado bein=
g used?=C2=A0 Are you running in a clean UHD repo (git status shows no chan=
ges)?</div><div><br></div><div>I&#39;ve run into this issue when things wer=
e targeted incorrectly and old artifacts were still present during the buil=
d process.</div><div><br></div><div>Brian</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 13, 2023 at 1:48=
 PM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello,</=
p><p><br></p><p>I have run the setupenv.</p><p>build-ip is a folder that is=
 made when the makefile(uhd/fpga/usrp3/top/n3xx/Makefile.inc) is run. Remov=
ing it does not do anything, but I did try commenting out include statement=
s in the Makefile.</p><p><br></p><p>I tried commenting hb47_1to2 in the mak=
efile, and it proceeded since it did not look for it. It asked for hb47_2to=
1, I commented that out and it moved on, but then it looked for something c=
alled axi_hb31, which I could not file in the include statements in the mak=
efile.</p><p><br></p><p>The errors I get refer to an IP being =E2=80=9Clock=
ed=E2=80=9D, though I am unsure how to proceed from there. Some of the IPs =
have been built successfully</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000031b18d05f229d6c2--

--===============5462144183565525200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5462144183565525200==--
