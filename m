Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B81472C357B
	for <lists+usrp-users@lfdr.de>; Wed, 25 Nov 2020 01:29:27 +0100 (CET)
Received: from [::1] (port=37068 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khigV-00016R-72; Tue, 24 Nov 2020 19:29:23 -0500
Received: from mail-lj1-f180.google.com ([209.85.208.180]:41899)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wandrewp@gmail.com>) id 1khigS-00012T-5e
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 19:29:20 -0500
Received: by mail-lj1-f180.google.com with SMTP id y7so408402lji.8
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 16:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Jitw89akF9kYglj4XPojJaOPqdBvk8lljE+AsrmboNY=;
 b=mtUp9S7n07UqgWAfOlUxFCVhHX95RQnkXQAUK2OXyyTJxST0pB0Jv3ITLAYxU2Vd8J
 /uutQyHVEdEjhRrdVjjILTVEJIJHemw9FG0MlpByNoKkWdT508zsHS0X6HIlAL2TnAKK
 4XJLVaJ/eyxqm5vNIecGISRPuAIzOR9D3VLDcCEWJ3FGRMS6WkilETKNqlTODCd9fnUC
 q0oC3K1qGmNRmbEM1i9YeiogGUULAXbxm5jNEVQljJD8V3I7p+xo/JVtHrYLF03z8TyT
 MV4duzZe25EMdmuK0gWX+uVL2MPF7Vryk8AKqXdekeQHZKdnR3EMaFZxx8sOxzAF3Qae
 pe8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Jitw89akF9kYglj4XPojJaOPqdBvk8lljE+AsrmboNY=;
 b=kdM+INz1VsiwRNkzwcl+Pg3rxfr/IuzmosxjwBxosbz+/vfIaKrifPiSy3i3997aAF
 K34lYDI2Cl2xdLmyp1qCtz3JDiLBhK6NLZtMbsCXfZc6+otTTWaL2zisIB5wst4FBr3C
 M2Z+zivNPG0rY20fUWj3T44KoKOzbH45afZTBeOwb7gzRCbZYFiIX0ZAnkomd3ClaWkZ
 kRZt4ebgHNy6F8jnQStpsaApmuNqHxXd9PF8OEIa4MQbSr1BFsnfgwCrU3g1nqorF7ct
 h4zw4rQKemyQAeqfxC7+wzAcQo6PptuGxRIyhRWqL+hJ5rEnXZSgjvaoV2N0X/8EN5JC
 Y+/g==
X-Gm-Message-State: AOAM53370egbYtldA3b6hKj/LYoemR8MvlvdPM1UfWW/VFDJuR/tyjcE
 GMHdS0R8CQqMQB5lfEtx0RWlw9DwwPwiZq4OJ2QJf3bSqJo=
X-Google-Smtp-Source: ABdhPJy5FhGfUZOOWKWFkFBjSzV8fkgG6DftW79QO7ATY9ROGxndV4InYf2snM3QAeuhPvyOSWePy4vRFDyeMxGoAxg=
X-Received: by 2002:a2e:2416:: with SMTP id k22mr294920ljk.201.1606264118298; 
 Tue, 24 Nov 2020 16:28:38 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 24 Nov 2020 19:28:28 -0500
Message-ID: <CAB50+dRQJvM2+xh5ZK7D43Z_B_6aHVmZ9fGK+V8NjjTJK5Deag@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] E310: Change MAC Address?
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
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Content-Type: multipart/mixed; boundary="===============6126264669439124159=="
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

--===============6126264669439124159==
Content-Type: multipart/alternative; boundary="0000000000002fcbac05b4e382bc"

--0000000000002fcbac05b4e382bc
Content-Type: text/plain; charset="UTF-8"

Is there a way to change the mac address of my e310s?  I have imaged
several e310s using the image file in
https://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/, and they
all have the same MAC address.

On some searching around the web I can see that it is likely that the MAC
address parameter is specified as a U-boot parameter.  I'd like to know
what my options are for changing it.

Thanks,
Andrew

--0000000000002fcbac05b4e382bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there a way to change the mac address of my e310s?=C2=
=A0 I have imaged several e310s using the image file in=C2=A0<a href=3D"htt=
ps://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/">https://fil=
es.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0/</a>, and they all ha=
ve the same MAC address.<div><br></div><div>On some searching around the we=
b I can see that it is likely that the MAC address parameter=C2=A0is specif=
ied as a U-boot parameter.=C2=A0 I&#39;d like to know what my options are f=
or changing it.</div><div><br></div><div>Thanks,</div><div>Andrew</div></di=
v>

--0000000000002fcbac05b4e382bc--


--===============6126264669439124159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6126264669439124159==--

