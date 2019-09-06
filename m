Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E92AB06D
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 03:53:54 +0200 (CEST)
Received: from [::1] (port=51178 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i63Re-0002ys-RB; Thu, 05 Sep 2019 21:53:50 -0400
Received: from mail-lj1-f181.google.com ([209.85.208.181]:42595)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1i63Rb-0002tS-6D
 for usrp-users@lists.ettus.com; Thu, 05 Sep 2019 21:53:47 -0400
Received: by mail-lj1-f181.google.com with SMTP id y23so4446320lje.9
 for <usrp-users@lists.ettus.com>; Thu, 05 Sep 2019 18:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MaijE/QnbRMw2fSFPRE57+ZEh9IWpDNytqmhYGQ55II=;
 b=07P00EwI21fO41lVdLsi6vCrAvv8XnpzUuZAyzOryGE/41GxPW9YcQDY3l9/a55j5m
 q3D2CvqdITLLpScx0ts/94CkMrmFhopVSit7UtVB3P5bTESPzO2KABsgBX1lp4wLaGpF
 KiIYtpcTFY2fe0jXrHijEjhTsQ6n1e9xp/w0vlVNoKYe2gMvPQnz/Q4aft+/1d0qURfp
 K9ZRH06IHvNHNPiSWFEUhjwqM0kSJh0tevm5U4YjznBIU0RTNlrivvStRGruMNshnJ6u
 YbAINBglrIEbuhYzsGD0U/xxWi6sCTClmNjQ82+i0zsbTgbDXzr65efiJ2316agRSQgs
 i+MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MaijE/QnbRMw2fSFPRE57+ZEh9IWpDNytqmhYGQ55II=;
 b=OBtF8h7aJMlbsby8vUoDKBX/r70JZadpFi+pgJ4R9t5ZAamgfZNJt+TaRiPTm8XuMH
 BcaYXAqWKrUw6Y537Yi57yFgyUnWpFY4X0cL1sd7uGUgw8A+QYb8llDTMtaDD8yUDjgy
 kgqqpwBgfjYJLgfWcOT49TY9ZIE0rTshwRz0iDEPwSUpxlZnYEQfYLEyxLfIqsm/GQgp
 ZpyTn0mvuYtQo2OYmHBEgZwkIt2Q65CN1v4vYOOTCgSGF5yaRaew8RtrsjsKARN9A7Bn
 caaULswIpmshr+5gc3aksGMX5hoUVRoBHUE/pSakPozzEVZZqzJg1J42NJgdUGTO0K4M
 dc0Q==
X-Gm-Message-State: APjAAAUrF1YW6RrGN+kcZoB2LkmmAeREcsFEm6jkzqjxwaR19hMoBCLD
 MAtbgg+SQrgxn1IxtGeOstIcCfwzbXhCE+rWwifNnLZU
X-Google-Smtp-Source: APXvYqxXLrKcSzKhbnur/KGIpNWbb6MIUzfflUhaot7RZq/IcW9W9pym7A8WbmL+o7U5xL3VqlXmEvTZS9HOrSc1Llc=
X-Received: by 2002:a2e:b1c4:: with SMTP id e4mr4126801lja.101.1567734785746; 
 Thu, 05 Sep 2019 18:53:05 -0700 (PDT)
MIME-Version: 1.0
References: <e9eaf91b-fbf4-af25-be4c-122e88f21ec6@tkn.tu-berlin.de>
In-Reply-To: <e9eaf91b-fbf4-af25-be4c-122e88f21ec6@tkn.tu-berlin.de>
Date: Fri, 6 Sep 2019 10:52:29 +0900
Message-ID: <CAL7q81tLUkzR9hruos3hpL9DnfOD5wdK85j2QdZnCSrPk3aJsQ@mail.gmail.com>
To: =?UTF-8?Q?Sebastian_Br=C3=A4uer?= <braeuer@tkn.tu-berlin.de>
Subject: Re: [USRP-users] RFNoC packet sizes
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6434201702153668710=="
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

--===============6434201702153668710==
Content-Type: multipart/alternative; boundary="00000000000001bc4f0591d8b3dc"

--00000000000001bc4f0591d8b3dc
Content-Type: text/plain; charset="UTF-8"

Hi Sebastian

Is this a UHD app or a GNU Radio flowgraph? Are you setting the spp via
stream args?

Jonathon

--00000000000001bc4f0591d8b3dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Sebastian</div><div dir=3D"ltr"><br></=
div><div>Is this a UHD app or a GNU Radio flowgraph? Are you setting the sp=
p via stream args?</div><div class=3D"gmail_quote"><div><br></div><div>Jona=
thon</div><div>=C2=A0</div></div></div>

--00000000000001bc4f0591d8b3dc--


--===============6434201702153668710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6434201702153668710==--

