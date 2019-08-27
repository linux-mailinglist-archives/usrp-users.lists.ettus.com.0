Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6DA9F3BF
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2019 22:06:52 +0200 (CEST)
Received: from [::1] (port=39174 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2hjt-0005VB-8i; Tue, 27 Aug 2019 16:06:49 -0400
Received: from mail-wr1-f43.google.com ([209.85.221.43]:42933)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <aholtzma@gmail.com>) id 1i2hS4-0004Fk-El
 for USRP-users@lists.ettus.com; Tue, 27 Aug 2019 15:48:24 -0400
Received: by mail-wr1-f43.google.com with SMTP id b16so31532wrq.9
 for <USRP-users@lists.ettus.com>; Tue, 27 Aug 2019 12:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=f8fOAS33UoZ9fS7ezQLs5GbhXayzlRp8TJZPDWMiLgI=;
 b=HzCSjuoSoxnp974JK0p8D9y4CP4htPR6x+7Fq58ILsnMk1i/CB5jx+gULj/mIb5jlZ
 a64WTUKhc3LqWydV6BGkkwZsJ21iRq64HpwpSIPSdorbGM18eBX16rXSWc10IxOv8qAC
 MTDNGnGd2o4UZVHEKl3N63sWc7KqB29wi0QOWmeLmMSm+mu2+MFrX2dmTGfbEFBGtdRI
 +0sq5JBlP+ZNO1/RAKeywibPqmTEvhp4XyyGeQ6PpvPJj/yBlqTj3s+QUidzPiIjL5BC
 kAFKYMsbX1r2h3Ii3kpSDzCHuMnBo5JOD7a0KUe/7BxTUCvSqXa1ELNNqJCq6b1l93Ve
 3LLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=f8fOAS33UoZ9fS7ezQLs5GbhXayzlRp8TJZPDWMiLgI=;
 b=SUlgNosfnSE8E4LbEJc3ROla4bJvb+diEvX7IJsGMJ13fdgqFN94K/UnVgTSw9UBmj
 bh9K2FNwWqz+WTOhEQWELwcpie2WKR5SMri4/hRRnoQEkwukJHiFV4lc8fNH0plalZ2P
 KUuVZ5oxHJob0TrBN5Bjn7PbzMYQcM5D9OBOLuaLQGR9xDW1gy0Iq98oGak9pbNpHFNh
 sSbASozuVWbARB8vkasAkUvXEHLyGKKNHFau6bvubByqaY67CHLz1sWuts2jsjBjwPx0
 IxdWDvStNBgL0rpE+uNtdQYf5MSXGVANFcQ2gpMUnd6apGhLYS9m+OxeaFl8KOfR9j+X
 Y8Sw==
X-Gm-Message-State: APjAAAUyi38nmmxh12/bcYS0Ne7pHW/wGjSrl0CIKeLmhpeEmn6Y2q8V
 uGkDVcrT1mw46dT17hPumi6LR7eTN5svuk06oeUNC84L/oA=
X-Google-Smtp-Source: APXvYqxeYPhJuY0PaWKJowihH2Z8m3VvDLZUE1QHAzNONQqTA5CVEBL+xVWw9EXzR6zt2eZN609/FoPeHqaTmAA12tE=
X-Received: by 2002:adf:e782:: with SMTP id n2mr542665wrm.1.1566935263166;
 Tue, 27 Aug 2019 12:47:43 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 27 Aug 2019 15:47:32 -0400
Message-ID: <CAEhVi8SP6FCXO83bnN-_f3P0yx_6kw6-1qmFTi6iXwEQTZLJMQ@mail.gmail.com>
To: USRP-users@lists.ettus.com
X-Mailman-Approved-At: Tue, 27 Aug 2019 16:06:45 -0400
Subject: [USRP-users] e320 GPIO pinout
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Aaron Holtzman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Holtzman <aholtzma@gmail.com>
Content-Type: multipart/mixed; boundary="===============5797609133536077541=="
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

--===============5797609133536077541==
Content-Type: multipart/alternative; boundary="000000000000bf45da05911e8b9f"

--000000000000bf45da05911e8b9f
Content-Type: text/plain; charset="UTF-8"

The pinout for the e320 GPIO connector at
https://files.ettus.com/manual/page_gpio_api.html does not indicate which
pin is used for the return current. Is it pin 17 (non-mini HDMI) which HDMI
uses for the single ended signal return?

On a related note, will the schematics for e320 ever be released?

Thanks.

cheers,
Aaron

--000000000000bf45da05911e8b9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">The pinout for the e320 GPIO connector at=
=C2=A0<a href=3D"https://files.ettus.com/manual/page_gpio_api.html">https:/=
/files.ettus.com/manual/page_gpio_api.html</a>=C2=A0does not indicate which=
 pin is used for the return current. Is it pin 17 (non-mini HDMI) which HDM=
I uses for the single ended signal return?</div><div dir=3D"ltr"><br></div>=
<div>On a related=C2=A0note, will the schematics for e320 ever be released?=
=C2=A0</div><div><br></div><div>Thanks.</div><div><br></div><div>cheers,</d=
iv><div>Aaron</div></div>

--000000000000bf45da05911e8b9f--


--===============5797609133536077541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5797609133536077541==--

