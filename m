Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 995458628C5
	for <lists+usrp-users@lfdr.de>; Sun, 25 Feb 2024 03:12:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8273338508D
	for <lists+usrp-users@lfdr.de>; Sat, 24 Feb 2024 21:12:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708827143; bh=qiY/VYcQ0SF/RaCGJu7YCIOIH0P4UHJQE2Cjiy2BG2A=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ysnRecYlRDUIrbW83konxTcr8gWl8KtRsBJ3EwOmrhvGk63h7ILkTS2auJ4J2Iu62
	 5ilJ0FOqQPjwktHBaRwPBTfIL7istOSfaHAzmAQMP88M/W/fpDpM7ygy0bCxQOZgMt
	 SU+PssNYqgdMomTf0SX+kbh/OR1xRSbnezu4LmDqCHQIVjSZwZLYydPvFIpIk733UO
	 WZwhYHDX/aWNwPvlYt9Y1GfL4K/IwgOroVQwI/ve68LNZz9gj3zn1t3qkOCFS3PBHh
	 jDEBzTdpWeqC+w3rm55hqRgJ9degW5ZJwiPYxbrAQres/jvMxKx65J508PZiI4S9vM
	 z47NONOayDIIA==
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 99744383CF2
	for <usrp-users@lists.ettus.com>; Sat, 24 Feb 2024 21:12:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QZp+/Zri";
	dkim-atps=neutral
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-5cfb8126375so745183a12.1
        for <usrp-users@lists.ettus.com>; Sat, 24 Feb 2024 18:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708827125; x=1709431925; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f5ea/yfSHVkn5isSGi9dk7RpLHLAROxkFQLH594ITEg=;
        b=QZp+/ZriuCZbxGILRhwu2pSHnhOuFLmm4IHejsNhEw0iGdrbTy3a736UMQ34Rki5yh
         wvJCNLqodzGg6cXhYaPxCi56TFlXSW6PSr8xY3qKuSv66d2wGYRAlkEQXQOGnEWlzfQ4
         UbAq1Dmw50hlWzyHcTvIskVp1ldFUlDwBXhrXoMgkAHF3IlXIpZa7AEqLqXMOFDvb3et
         xnNU/vCfmZA/QCdLh/LOj2/InoGLdTlUuvHLocLniUdlaYpZ2mZkJenmCzjVC6qAlHEt
         aQKDCM/r+fuByxrWebttSG6hskgywUDcTXgXmXkDtnuHOVqPbuXQzql6/pT/fqvifFHJ
         xzZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708827125; x=1709431925;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f5ea/yfSHVkn5isSGi9dk7RpLHLAROxkFQLH594ITEg=;
        b=Usa/zVvcJN8PBTl5aHfWIq+BHRwXse213KiVw1xz9hhIKHjxqR/YV4vnqrRzy383lP
         VZWvpR380w4XLicwDw1iYv867ACVv81R4GZ0qHQzE3GtWdLURivFA9dvFn4TH0bFOggB
         ISDNDNk39c1tsnktteFYsJG6kwHz9NuBo++M9SFYcjLBp/b+wpeflHOG4zgI23mBeGW1
         OGAHaCaBpNJMav6+ypppziGcSsY6/hFx5mt9gf+iSBY9IqnKX5YKyt9DVXnxkRNvHld6
         MWKmJMUpHlk6zhWZTxFAzL+EOK0cNdT7RHCvXatrx3Yu7V/d36jXoaICbkdM8h4vLg/P
         hWQw==
X-Gm-Message-State: AOJu0YzALH0kJqi/qdVK/PP5fJzjxBVw9PN6Fcn8RZPJZnVUE95dUIVv
	HHBSu3OiOyaUc6ZIRkmuBIwnO6E0Wzh3ve3VK9mjzbHhfd0tQhYKcQzAH+Q07fL05e+0yJtLdnW
	1BFaW+NadqtzZ4X0+Jjhr4ENdOvh8pkoY
X-Google-Smtp-Source: AGHT+IF0VbVUvqmQOGysOSONCDS9rXAeWiW9JGNcKWbhb5bQh/r3KJFroO0oqTpAgesEKhI5Ig1LI1ilXyrCjqZCbmE=
X-Received: by 2002:a17:90a:6787:b0:298:c3b4:f6ab with SMTP id
 o7-20020a17090a678700b00298c3b4f6abmr2818473pjj.2.1708827125207; Sat, 24 Feb
 2024 18:12:05 -0800 (PST)
MIME-Version: 1.0
From: Ethan C <ethanclarke365@gmail.com>
Date: Sat, 24 Feb 2024 18:11:51 -0800
Message-ID: <CAM0spwpOGFZoQj5Ej4q1rXU7O54KpPKHRgOY=Ps2XHfAOEVVfQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: AMY4X2J5UB66H63N4DN577QYU2EYDQMU
X-Message-ID-Hash: AMY4X2J5UB66H63N4DN577QYU2EYDQMU
X-MailFrom: ethanclarke365@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 cable for GPIO connector
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AMY4X2J5UB66H63N4DN577QYU2EYDQMU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7541353713152405666=="

--===============7541353713152405666==
Content-Type: multipart/alternative; boundary="000000000000c7d9cc06122b51ad"

--000000000000c7d9cc06122b51ad
Content-Type: text/plain; charset="UTF-8"

Hello all,
I am looking for the part number for the GPIO connector (J12) on an E310.
So that I may buy a cable to connect to it. I can't find any information
online nor on the physical connector itself on the E310 I have.

Thanks,
Ethan VA7MNK

--000000000000c7d9cc06122b51ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div>I am looking for the part number=
 for the GPIO connector (J12) on an E310. So that I may buy a cable to conn=
ect to it. I can&#39;t find any information online nor on the physical conn=
ector itself on the E310 I have.<br></div><div><br></div><div>Thanks,</div>=
<div>Ethan VA7MNK<br></div></div>

--000000000000c7d9cc06122b51ad--

--===============7541353713152405666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7541353713152405666==--
