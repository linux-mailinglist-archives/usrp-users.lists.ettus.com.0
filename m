Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E886A6C34
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 13:21:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 817D93844AC
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 07:21:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677673268; bh=9EwON5+74HJyCc6yfqTTonaJKiapycxoDvbSKqJsjns=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=NASqwkcYIFzLqpeXkQJuEoOnujioRu6ZN+e9M1r/o4qxuyUypRaw8Jld57R1+8pcF
	 G8xuDiG1g81WcP3mKjbDzI7yaQqMf7M0+kvv0P5kabCL72b5Ct5/IuAIyOoBDj9iy4
	 zk3hwm2yV38P1K9KgqhAUzv790+5GVQjVI+vLvVLGmh3Xj9RjZemXC5RoSVGi2bn5p
	 rAfgU8JvkZSSJpr+2H8Idcu/5PFd5mZpIBeQATSBP0RFV/niAnsvF21YJNuaQdtRgE
	 hjRgkj53o5+ZS2GwuHYNBLp6qFhsIBiwa3R5syNfWHqRsIX4AFEcm5jsOdR15F19TJ
	 SCAWx2wfN8AAg==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 1972D384281
	for <usrp-users@lists.ettus.com>; Wed,  1 Mar 2023 07:20:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VEnJr3Nv";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id u9so3483157edd.2
        for <usrp-users@lists.ettus.com>; Wed, 01 Mar 2023 04:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677673234;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=slKHKTkmMkwXLUth0KLOERa/Bhq5k0f0Q3c1XU+jqfM=;
        b=VEnJr3NvPJb4kOtgvFHZyXUSKCU81EhCVwb3QcWB5yZIyDQCmhTloQSOGCLZkczBGP
         C9eAIk4DtRMV0h+bQz6H18LzihIyqNKt75lB4akigK3QLkHRzcSI9Neb4i0fQVf2WdhD
         uSfRLP1bYhYkXQQXRssHBWmOczAp9Gyi4SWc39Tx71wKL7/uqJJW1yPBGubDtfCRF0Rd
         iFmOia0wJWPYwr1dNFCTKAvDpoWa5eZ9N9SoYzdt57C0jB75GH+NK/icQvqKKTteFZ3S
         15T9xwVK4BQFcFCcEgk4+FpRvo2mIppKBypVA1K0O+0YeTUisF14UdnTSsc+GlqZtbz9
         Kw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677673234;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=slKHKTkmMkwXLUth0KLOERa/Bhq5k0f0Q3c1XU+jqfM=;
        b=kj4K4vKrQg38VipJ/8jCLvWzzuDxiMzVJZSP+ojIkfJ/2SsXfhljsYg5tje/Vaj47z
         ID7Nf5OkFQkkk21vwEWjRngEWK6pF4Ek79yd1JfjijC/gSA2c9tZMgrl4bVYn8MVgpdn
         zdjBlC1DLylI4IDOQAuJ3AllBVt1GX53NYvpbEEWpS2UNJZ/LFKPCNv1WjVtq96xXQi0
         mwaJTl4zpWJpCW0vnILdwlvdRw55uSNjLDViwUtXXxLoU7Wuh15ZaH9jvBHQRDrG7SGm
         9OoCE9fo8vCws2kGs67kEi7rLQ5qa1Mq431iwgB/mQH/cjG+lXlmrogCz6SAGYTyJlGe
         wJjA==
X-Gm-Message-State: AO0yUKXq48+redu30lIPEEZh6921aZ9XAFuiBIBX8LEg1eLYlUrqO9uU
	Dim84UpWilrRozAhDAHFo7XwwvNME9uE1BV/PgcNYf8y
X-Google-Smtp-Source: AK7set9PyeMpkWaoluQen/VWr1kJSQWgcf8p/vET1wXNo8UllcgVOwZb2MjbYhP8E84PlTgSl3G/gqsubBhHBuLfxIY=
X-Received: by 2002:a17:907:9858:b0:88d:7af6:25de with SMTP id
 jj24-20020a170907985800b0088d7af625demr2894811ejc.12.1677673233810; Wed, 01
 Mar 2023 04:20:33 -0800 (PST)
MIME-Version: 1.0
References: <PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
 <PH0PR15MB470475B739510FC1329965F2E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
In-Reply-To: <PH0PR15MB470475B739510FC1329965F2E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 1 Mar 2023 07:20:22 -0500
Message-ID: <CAEXYVK76azqDJCxcBx6pN53abV9ACic0EcC1MfHLWoTpaK84Xg@mail.gmail.com>
To: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>
Message-ID-Hash: XPZAKSPWXISXMZJEVJZN4F26YN35QXB5
X-Message-ID-Hash: XPZAKSPWXISXMZJEVJZN4F26YN35QXB5
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What do I need to do to make uhd_usrp_probe see my custom RFNOC module?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XPZAKSPWXISXMZJEVJZN4F26YN35QXB5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7778089167301862346=="

--===============7778089167301862346==
Content-Type: multipart/alternative; boundary="0000000000002691a905f5d5bdbb"

--0000000000002691a905f5d5bdbb
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 1, 2023 at 5:40 AM Vermeulen, Bas (Consultant) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Just to answer my own question:
>
> Run uhd_usrp_probe with LD_PRELOAD=/usr/lib/librfnoc-module.so
> uhd_usrp_probe and it will be able to find the RFNOC modules.
> The same for any test programs you use, those need the LD_PRELOAD as well.
>

While this is a way to do it, I believe the preferred method is using the
UHD_MODULE_PATH environment variable.

Set that to a location which contains all the .so files for any RFNoC
modules, and UHD will load them automatically.  Note that if any non-.so
files are in that path, you will get a warning about not being able to load
the library.

Brian

--0000000000002691a905f5d5bdbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Mar 1, 2023 at 5:40 AM Vermeulen, Bas=
 (Consultant) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div class=3D"msg3678092131574538191">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Just to answer my own question:<br>
<br>
Run uhd_usrp_probe with <span style=3D"font-family:&quot;Courier New&quot;,=
monospace">LD_PRELOAD=3D/usr/lib/librfnoc-module.so uhd_usrp_probe</span> a=
nd it will be able to find the RFNOC modules.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
The same for any test programs you use, those need the LD_PRELOAD as well.<=
/div></div></div></blockquote><div><br></div><div>While this is a way to do=
 it, I believe the preferred method is using the UHD_MODULE_PATH environmen=
t variable.</div><div><br></div><div>Set that to a location which contains =
all the .so files for any RFNoC modules, and UHD will load them automatical=
ly.=C2=A0 Note that if any non-.so files are in that path, you will get a w=
arning about not being able to load the library.</div><div><br></div><div>B=
rian</div></div></div>

--0000000000002691a905f5d5bdbb--

--===============7778089167301862346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7778089167301862346==--
