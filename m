Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A169D22E22E
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jul 2020 21:15:03 +0200 (CEST)
Received: from [::1] (port=36844 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzm6v-0007js-Pa; Sun, 26 Jul 2020 15:15:01 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:44518)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1jzm6s-0007bJ-5m
 for usrp-users@lists.ettus.com; Sun, 26 Jul 2020 15:14:58 -0400
Received: by mail-qk1-f177.google.com with SMTP id j187so13380510qke.11
 for <usrp-users@lists.ettus.com>; Sun, 26 Jul 2020 12:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nFsmOH95oEe1LQIUOXauT7Q0n+W9RuRNV1APGoNkkZA=;
 b=YltftnCC8sD2AI1qNZyDWyFwtHD5F/3MqxPFSqBFAP6oW/jXFeVir8QIgfPO5Kbruw
 gUMg54Vfd2Tb0VreAw+terCfiKuvs+EsE8ofrBjwR5GbAKbCebZREINSRa7Mdb6FhzsD
 LrdO8DdrNzhh8XNQTAp5qAhDBeehXeuVd2412zK/0ls3QX9QwV5U1c7asL06R9aMAWPV
 AM5gYCMuCxMFAB1UzrAAebOoeV2u4Tze7G6OAOFuiEV1Q21KBaiia3/3JC8NYt3dCvYN
 IlWZihTTLoJ6omRyMUsmDhyBR+tw+FRjoFgzRPZI5v94ayOXL6x8Vrw94udp/7eUpMmk
 1qGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nFsmOH95oEe1LQIUOXauT7Q0n+W9RuRNV1APGoNkkZA=;
 b=XCeHrHp1+7xlAWkfAIcy6uk4lmor8ISofdwA9zlc2Nqih8JF+nlk3G6gmLxPR7F0Ii
 JwLDpRaKO0m5ZlmWrR1OHUqwyRzok/h6O1GmkvcWjuez2BZLYGNPG1aRS30liviEZomf
 W+570Sm/oqb+c9+Pc5YmGz8fJ6GiYDtCRUwcvac74tHELziPh+o+ICshYtXvQaPM1uVM
 YlGSsj2BTTjrRMVv6demx4cTHCEcri5dyiWLfjNJmMB2CZ7feHtK7u9/69sc3NwL03G0
 OUn46mzaohjDFw4nNYesLEpqjOmPhna3vmQ54GxwLn9sR6shA9QqS5w6vKA8IP/mSvEe
 Qz/A==
X-Gm-Message-State: AOAM533aFe8dawRVMcq9VOuqhnKn3IYQh5q504O70Q8CdqCx0vDW2E7W
 dQNTwL+7qXc18vT1fyqXtsqOQec4Ycb2zwtPKNRM/owC
X-Google-Smtp-Source: ABdhPJyK/1X0mv1ujJhwVBWquMTOmz7SOiC2NF6uiLVuILrPLQHp1n6U/UaHLA6xv73hs8R8a2kQGaRydSbC+NPWAV8=
X-Received: by 2002:a37:8305:: with SMTP id f5mr20561611qkd.497.1595790857444; 
 Sun, 26 Jul 2020 12:14:17 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2Zyvz7XGRkKWy2tqeTqYdFuhU2DQV5QdjekCZi=4Av0ctuQ@mail.gmail.com>
 <5F1DCB58.7090804@gmail.com>
 <CA+w2Zytm2=5ZRrB-BaY91fax-9xpK8fpkVpB+ep4mzvZ3tH-oA@mail.gmail.com>
 <5F1DD036.5030509@gmail.com>
 <CA+w2ZythQQvQG3Zm6+bv8c+pWV42XFbtdUGw=vOZKnP0_qZmZg@mail.gmail.com>
 <5F1DD3DA.9070300@gmail.com>
In-Reply-To: <5F1DD3DA.9070300@gmail.com>
Date: Sun, 26 Jul 2020 21:14:06 +0200
Message-ID: <CA+w2Zyu_Ee+5+Hegnjcf9399ajyjJt+W5i8sXpkVEufwis-kiA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] AD936x disable DC offset removal
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============1065904547831714995=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1065904547831714995==
Content-Type: multipart/alternative; boundary="000000000000319ffa05ab5d03cd"

--000000000000319ffa05ab5d03cd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'll try that.

Thanks

Le dim. 26 juil. 2020 =C3=A0 21:04, Marcus D. Leech <patchvonbraun@gmail.co=
m> a
=C3=A9crit :

> On 07/26/2020 02:59 PM, David Carsenat wrote:
> > I have tried that, but I see 2 issues (but perhaps I'm wrong) :
> > - I need 25 Mhz of BW so if I want to push the LO outside, I need to
> > have a sample rate of 50 MHz --> difficult to have Tx / Rx loopback.
> > - I have tried to set the master clock rate at 60 MHz, the DDC offset
> > at 25 MHz, and a sample rate at 25 MHz. I thought that it could work
> > but I have a cutoff frequency at 12.5 MHz ...
> >
> > David
> >
> Try setting master-clock at 50MHz, and then set the analog bandwidth to
> 50MHz.  Then use the offset tuning.
>
>
>

--000000000000319ffa05ab5d03cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ll try that.=C2=A0<br><div><br></div><div>Thanks</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">Le=C2=A0dim. 26 juil. 2020 =C3=A0=C2=A021:04, Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; a =C3=
=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n 07/26/2020 02:59 PM, David Carsenat wrote:<br>
&gt; I have tried that, but I see 2 issues (but perhaps I&#39;m wrong) :<br=
>
&gt; - I need 25 Mhz of BW so if I want to push the LO outside, I need to <=
br>
&gt; have a sample rate of 50 MHz --&gt; difficult to have Tx / Rx loopback=
.<br>
&gt; - I have tried to set the master clock rate at 60 MHz, the DDC offset =
<br>
&gt; at 25 MHz, and a sample rate at 25 MHz. I thought that it could work <=
br>
&gt; but I have a cutoff frequency at 12.5 MHz ...<br>
&gt;<br>
&gt; David<br>
&gt;<br>
Try setting master-clock at 50MHz, and then set the analog bandwidth to <br=
>
50MHz.=C2=A0 Then use the offset tuning.<br>
<br>
<br>
</blockquote></div>

--000000000000319ffa05ab5d03cd--


--===============1065904547831714995==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1065904547831714995==--

