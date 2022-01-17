Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B970D4902D7
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 08:18:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 701FB3851C0
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jan 2022 02:18:52 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="l0pIM2jh";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 757CE385102
	for <usrp-users@lists.ettus.com>; Mon, 17 Jan 2022 02:17:52 -0500 (EST)
Received: by mail-yb1-f175.google.com with SMTP id p5so43006954ybd.13
        for <usrp-users@lists.ettus.com>; Sun, 16 Jan 2022 23:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=FJPaaNEm3FpHlh+JRzF24Z2rsGsKuFuHrrVLuyfWnj0=;
        b=l0pIM2jhuJuXZzAhhr4/dapQSXC6+gQL1QNgdPuFUbe7H4bNA3nXqjJGgzgAlszQyu
         oZkV3An5Pxw7v2+PKVY87sfS153eyVpSDcB/Voxw7NgNrqidyNOJ8Ef7JhDgrFAD8o2E
         ZSvtWncmPsfTtI8kEj8NrBMUCvf13R0r6VZ5bKrjavU8XpUTueQ5XR9kWluGrSHR4g/O
         5iwWWnufSMj3ILR+lnGdm+5gKnofWSc0DneG0GKz5LNmdtkR+r0TkD+HbR9ro+IQ/vEs
         1kzYVMlgh/RxWhHxgpMN+ZHO24aWSuSuovXLYzCORGMR859ORg8XXChf1rVQW/wla3WO
         SL+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FJPaaNEm3FpHlh+JRzF24Z2rsGsKuFuHrrVLuyfWnj0=;
        b=AE+wd8T3+M4IJ33XA2epsPpsLT6BvvNDUFo/WRNpRcMEZaVgoFH49PzV7cSlPT6MTI
         djUVsuUu2HX+RMDlf9D+ATaf1ZrECbl6Xf4dQZxerp6HoG/sSzY673PxyFpLUec9nsgm
         xjh5+ZHWzJH1d4b5v10g5Nc6YPAotIVqghYxcuv7pSayUnRt3MtSxf7GD6yyswxe8Ay3
         te/i3FrExEoPFIGoEMJgV0E0nvOEXbQhBra7Rhgq9TObvclNVldB4QT7Lx5fR94mFBiI
         fbuReIFpWNUYUjGdZpQInHIeBwPqx3CrmvJji14o7jp4FvvI0zVcdosTJ4eBAPbd1OdR
         oxRA==
X-Gm-Message-State: AOAM5322+gbRC0YfeuGSknSpuTenPH5uS4uwTGX/AM/JCf7SYdnvHqmf
	e88pwfeIOZrdCP+q54MHx3FOmvNBBVDlPXx6tsnIPmGCqVg2kzgMAVo=
X-Google-Smtp-Source: ABdhPJwMlobuVmaRYFvlmiNv/pQ9CdS5uM7l/OhhEX6VqYDHVLuh2ET1bcvoy8IHDObQMVj1O2wTNhyCXXOP8EcWRyY=
X-Received: by 2002:a25:8c04:: with SMTP id k4mr24440404ybl.40.1642403871063;
 Sun, 16 Jan 2022 23:17:51 -0800 (PST)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Mon, 17 Jan 2022 10:47:39 +0330
Message-ID: <CAA=S3PvZHB4UqicSdDWwgJQhAhY25rWB3J0tWUV2q-=ZR5sPpw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ACIXV6FSIG7DOX6X35SWZAVNRF7CIPOL
X-Message-ID-Hash: ACIXV6FSIG7DOX6X35SWZAVNRF7CIPOL
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] For building Verilog code for FPGA x300 series which license Vivado should I necessary?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ACIXV6FSIG7DOX6X35SWZAVNRF7CIPOL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1130187514975024229=="

--===============1130187514975024229==
Content-Type: multipart/alternative; boundary="00000000000050035c05d5c1f3ef"

--00000000000050035c05d5c1f3ef
Content-Type: text/plain; charset="UTF-8"

For building Verilog code for FPGA x300 series which license Vivado should
I necessary?
Webpack license is enough?
Or do we need a full license?

thanks very much

--00000000000050035c05d5c1f3ef
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">For building Verilog code for FPGA x300 series which license Vivado should I necessary?<br><div>Webpack license is enough?</div><div>Or do we need a full license?</div><div><br></div><div>thanks very much</div><div><br></div></div>

--00000000000050035c05d5c1f3ef--

--===============1130187514975024229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1130187514975024229==--
