Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6758593A38D
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 17:13:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1AE003855FF
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jul 2024 11:13:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1721747600; bh=5F/+panrpiJ4d1SJTxqLyS9oKHQCZ7gtP69L/39ZF6U=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=NC9e+b0B7Qax8u1XfdNTUKL98v2c8tWAcon+yLUpbgeCUTumzyXZaXsJp1JaH2PgJ
	 0LtnlwhqesHF4vGDqp1jGP602KK2EjengQsbbo/JAO1g7ff6pDOpnPQ8YXpKd7LPfz
	 QH8oo8+eNbIP+zsIAeRMFdfxNEgdEtRirxkLNfupvEvRBpR2MC+XVi1eSyFNy2yHdy
	 rrlRjqRDw7Nliimey2+gZQ/E2+q/wMkMNso+GwbiSzXGz53uVgSyh+8XZ4xTl1ZtUg
	 4JuxQK/p9bjYdVvv6/qHIul5yO9L+/qpsrD3tLF9K5dj92Yf+svozBpeOAG3TiltPf
	 J00XZrQ3OMHYA==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 832443855E1
	for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 11:13:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AUH81ref";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a6fd513f18bso2254966b.3
        for <usrp-users@lists.ettus.com>; Tue, 23 Jul 2024 08:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721747584; x=1722352384; darn=lists.ettus.com;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kEAfYJC2bxIuZpQBkq9nn455fth5mA54eOjjaRcnBjM=;
        b=AUH81refAKjqtDNvGZ8a5BBXc6ZUqz066E7h02UbBvCONDDu/BSlX2LJysfdu1lXS9
         uCYuiIiaccI66iy2GDoaKyXRIHZn8CBoD/QBVGRPqtSCyQmuQvYCFNcKycMO7fvx/ubc
         gIOF/v3LCjtspekPlRRD6KzNIzsyhbWNLJdgnO4Y7wDO73wCIk01QS8qXlhnSdHAWfon
         leWA3z6m4DcByfYciuRRJNtiW/S1DCkG4ZAa40seRhWH1vWkaziuyUpTePogfAiMZIaS
         LnHOPBa44iR40uWTomO/o4S5dXo4GEzlzMfJMhSucQk/8N596n0jSID4ruvNuqG4irdF
         zHGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721747584; x=1722352384;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kEAfYJC2bxIuZpQBkq9nn455fth5mA54eOjjaRcnBjM=;
        b=nHnJbAm3UdCUxXzgZ0boRJA7FiXVQ7lX9cd6iyMM3+zW3xI/PT/DRoW0vhzh+bp97k
         N69YUdSd6jkygl2A8g2ibizVVo8NjuTbJp9bDIHqNyIIAE3C6UA3L4lKK2jQpmvPbLHF
         khRgP6BydfVtiO9CGHu6vEevYp1yq5rklXijzVaZhXi0t67S8Hw+MlY3a9mQp+soilO2
         qwCMnORcarn2iLUThW9ZFm6RCE4F1lMWyVgzoRdsTMBjMfjRw19WxWBV0GikNerORQx3
         AsP2REvVe+JRQiSBlmR6LqsfUvxMkq1xjcx1UpTwZT+WEkGYCxgXzCu3VBRGd2wNxYI1
         npcA==
X-Gm-Message-State: AOJu0YxCvC8mAu56bp7STE43zgNTgAAElDUZt0C4oEXQVuj9s6jFZoV2
	0DAL73Q00ZBbZ/V8TA4/W+6C1ovFilRRGBaIWqxPgkyTcDdqx8mMzpV+Eg==
X-Google-Smtp-Source: AGHT+IHmagzvlHmECIftmFy+pTy157s4gsjKeXx2UQLI5ZPDhaXC2IlAUZTy1vHzGwIfHkki2aiL7w==
X-Received: by 2002:a17:906:d550:b0:a77:f65d:39ff with SMTP id a640c23a62f3a-a7a8847a636mr257450666b.53.1721747583864;
        Tue, 23 Jul 2024 08:13:03 -0700 (PDT)
Received: from [192.168.1.7] (host-79-55-111-138.retail.telecomitalia.it. [79.55.111.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7aa96fbc41sm10631566b.6.2024.07.23.08.13.02
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 08:13:03 -0700 (PDT)
Message-ID: <5f14a3e6-a2aa-4a58-9e00-7c2466e5971b@gmail.com>
Date: Tue, 23 Jul 2024 17:12:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
Content-Language: it
From: Giuseppe Santaromita <giuseppe.santaromita1@gmail.com>
Message-ID-Hash: 4GIZW2F7O5YURUJ4VE64WGYMJF36JWWD
X-Message-ID-Hash: 4GIZW2F7O5YURUJ4VE64WGYMJF36JWWD
X-MailFrom: giuseppe.santaromita1@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] White Rabbit and N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4GIZW2F7O5YURUJ4VE64WGYMJF36JWWD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2832647551871090639=="

This is a multi-part message in MIME format.
--===============2832647551871090639==
Content-Type: multipart/alternative;
 boundary="------------uXz0jKzvusHqZjcGvQy1ifji"
Content-Language: it

This is a multi-part message in MIME format.
--------------uXz0jKzvusHqZjcGvQy1ifji
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi all,

I need to use some N310s with White Rabbit (WR) and I have some question:

Why in "Features" here (N310): link=20
<https://www.ettus.com/all-products/usrp-n310/> there is no White=20
Rabbit, while here (N321): link=20
<https://www.ettus.com/all-products/usrp-n321/> yes? Here: link=20
<https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP%E2=
%84%A2_N3xx_Devices>=20
the link talk about the N3xx generic. So, seems to be an error on the=20
website?

Here link=20
<https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP%E2=
%84%A2_N3xx_Devices>=20
I find: "The USRP N3xx use the SFP+ 0 port for White Rabbit and SFP+ 1=20
port for IQ streaming. This port configuration requires the White Rabbit=20
=E2=80=9CWX=E2=80=9D FPGA bitfile".

Here link=20
<https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Dual=
_10Gb_Streaming_SFP_Ports_0.2F1>=20
says that all possible FPGA are XG, HG and WG. How about the WX? Is WG?=20
Is the same? Was a typo?

Again, same link, says that "The XG FPGA image must be loaded for SFP=20
Port 0 to operate at 10 Gb speeds. If the HG image is loaded, the port=20
will be unresponsive at 10 Gb speeds". How about the WG?

It is sure that White Rabbit can work with the N310? If the WX FPGA it's=20
flashed, teoretically I can use one=C2=A0 SFP+ port for WR and one SFP+ p=
ort=20
for I/Q streaming. I need to be sure that the speed of the second port=20
is 10 GbE (and not reduced to 1 GbE).

Thanks in advance

Giuseppe

--------------uXz0jKzvusHqZjcGvQy1ifji
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi all,<br>
    </p>
    <p>I need to use some N310s with White Rabbit (WR) and I have some
      question:</p>
    <p>Why in "Features" here (N310): <a
        href=3D"https://www.ettus.com/all-products/usrp-n310/">link</a>
      there is no White Rabbit, while here (N321): <a
        href=3D"https://www.ettus.com/all-products/usrp-n321/">link</a>
      yes? Here: <a
href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_=
USRP%E2%84%A2_N3xx_Devices">link</a>
      the link talk about the N3xx generic. So, seems to be an error on
      the website?<br>
      <br>
      Here <a
href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_=
USRP%E2%84%A2_N3xx_Devices">link</a>
      I find: "The USRP N3xx use the SFP+ 0 port for White Rabbit and
      SFP+ 1 port for IQ streaming. This port configuration requires the
      White Rabbit =E2=80=9CWX=E2=80=9D FPGA bitfile".=C2=A0</p>
    <p>Here <a
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de#Dual_10Gb_Streaming_SFP_Ports_0.2F1">link</a>
      says that all possible FPGA are XG, HG and WG. How about the WX?
      Is WG? Is the same? Was a typo?<br>
    </p>
    <p>Again, same link, says that "The XG FPGA image must be loaded for
      SFP Port 0 to operate at 10 Gb speeds. If the HG image is loaded,
      the port will be unresponsive at 10 Gb speeds". How about the WG?</=
p>
    <p>It is sure that White Rabbit can work with the N310? If the WX
      FPGA it's flashed, teoretically I can use one=C2=A0 SFP+ port for W=
R
      and one SFP+ port for I/Q streaming. I need to be sure that the
      speed of the second port is 10 GbE (and not reduced to 1 GbE).</p>
    <p>Thanks in advance</p>
    <p>Giuseppe<br>
    </p>
  </body>
</html>

--------------uXz0jKzvusHqZjcGvQy1ifji--

--===============2832647551871090639==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2832647551871090639==--
