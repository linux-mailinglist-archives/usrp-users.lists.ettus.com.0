Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 934E07AC534
	for <lists+usrp-users@lfdr.de>; Sat, 23 Sep 2023 23:29:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69C4E384FD3
	for <lists+usrp-users@lfdr.de>; Sat, 23 Sep 2023 17:29:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695504582; bh=CvkzKsAiutuI9txejFPBt3FKsofppCIxrC1XYn0UDnY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Jr+z5tnp9JmPlpZErZTRUxgzrEuEtA6y4dRiAp3GNR1GdIeSYzTbQ9vAeNOB0vtcA
	 UOvyhXoAaDxMJ+HrR45/aC1t0KlWw5F20uGbA3VZ41QP0MK2aDWAbp144RhqG76JTf
	 keVhd/uC8jRWutVu4ArAZxjpXhUw6R0rzMxe+3IbA+4ti0EJIXRi1VrnaLzisqkx0g
	 7scKJtvYLgHhvG4Q6jz///I2IvCsPFeemvDWDmtDsRIaQqO81G005O4Ny5Xh+1tULe
	 K8SC9uge1/Z3zTBLin1xfCEhqxfd9y4juLt32Vd+DXP98VZ5GoZUkHih1Hc/ShS80l
	 Hw1Y0twjlauwQ==
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 096CF384E9F
	for <usrp-users@lists.ettus.com>; Sat, 23 Sep 2023 17:28:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Cykce1OW";
	dkim-atps=neutral
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5041335fb9cso6467957e87.0
        for <usrp-users@lists.ettus.com>; Sat, 23 Sep 2023 14:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695504529; x=1696109329; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PqcCuKeGS/VwKNBK9ks/4fbI8n0j2yPb1jA1PNTHgfk=;
        b=Cykce1OW0FWFsghwqIZCdb5WXWlARfh9e894H78hPOWpC2Pzd0DyBnHPJwppKly8x4
         VrreRyC+HcWPHmfVwOrozxEfezzBenA3ziy1rWAGOSOHapSx7N1NBB/vzTh55+O+a934
         Dk/rODjEbMdj70XzCTMRzEx1Grrz6+CBSnPx1/zfkbHwK6pG/X86/2pLI6HTtprcfIC8
         ttvwHj3sJwEXhWWrtCxZfoaY2I42PTc+1+4JWPVXZf4aybQ1pFXjF4h69bFrAZdErAqL
         Q6P8srsHYo1FAl0YWKn3ga8ZjQ8twu04CjsiR+c2xahXcaBG2lJXaVhSV/DrH1brQ4NT
         beQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695504529; x=1696109329;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PqcCuKeGS/VwKNBK9ks/4fbI8n0j2yPb1jA1PNTHgfk=;
        b=aiFj3OPCKReIdhOWKgkZxc6jRpQS9/N8dCOjDsqQ646k38FLZwnuI0i/nt7zYGZ1Ve
         yYRf2AmHdB8gukeqnROZjxEiuyJyhaFZrMBMSSjE1XSObngaDxBFY6azu4sRMd2wwL4V
         D6MSQKugiwI+uu9RSrxtUKdHzN18emc+zWwp+rs50XxSFTWf5zjVG8JM8ru07y7BtrFR
         WKafWPC6RqsJGAqOFO68dKmrRvfMUmr1NaRaamn5L8N4sJJxRlPNurgRbu4l1FUNecmS
         C8iPMItSbbQNl4wxMfHC7/IPHCDojpntxWp3r8pweQYs4P9riKGsmF9Hmx0Acq5uH3db
         eGfA==
X-Gm-Message-State: AOJu0Yx1R/fH4y70mmC7GpAcl+QyNL+cFBts75HoG/9ZYNitI2la2okA
	nL0tR75IJxy/uvdi/zNmU3iuh1ApdUEBHIahn4hZu/NOrsg=
X-Google-Smtp-Source: AGHT+IHmZLpvOEjmRpajuhp1GL8u2eVAgYBhG6q4/91rI8f7Xv+1ME9UbXDcLM4wieHS8mhevYmYvni6lsS5D7e0Fps=
X-Received: by 2002:ac2:4c04:0:b0:503:3675:9ba with SMTP id
 t4-20020ac24c04000000b00503367509bamr2155864lfq.26.1695504528847; Sat, 23 Sep
 2023 14:28:48 -0700 (PDT)
MIME-Version: 1.0
From: Ivan Zahartchuk <adray0001@gmail.com>
Date: Sun, 24 Sep 2023 00:28:37 +0300
Message-ID: <CAPRRyxvFFoPU8cCDFigOb+obsZGtE_nNz6q8WppVyU7q3oR0Ug@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: IDYAIVWOPG4Q5OXYZG5ODZCLSF65APZ7
X-Message-ID-Hash: IDYAIVWOPG4Q5OXYZG5ODZCLSF65APZ7
X-MailFrom: adray0001@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP B200 Data Reception Issue on Windows 10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IDYAIVWOPG4Q5OXYZG5ODZCLSF65APZ7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3672878564369717782=="

--===============3672878564369717782==
Content-Type: multipart/alternative; boundary="000000000000283d9406060d69f5"

--000000000000283d9406060d69f5
Content-Type: text/plain; charset="UTF-8"

Hello. I have an issue with reading data from the USRP B200 on Windows 10.
When I run the benchmark_rate with a 20 MHz reception bandwidth, I see
losses of more than 50 percent. However, there are no losses during
transmission. I have followed all the instructions, including modifying the
registry and disabling power management for USB. The same issue occurs even
when using an external power supply. Can you please advise on what the
possible problems might be? On the same PC, when using Ubuntu, I can
receive 50 MHz with almost no losses.

--000000000000283d9406060d69f5
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Hello. I have an issue with reading data from the USRP B200 on Windows 
10. When I run the benchmark_rate with a 20 MHz reception bandwidth, I 
see losses of more than 50 percent. However, there are no losses during 
transmission. I have followed all the instructions, including modifying 
the registry and disabling power management for USB. The same issue 
occurs even when using an external power supply. Can you please advise 
on what the possible problems might be? On the same PC, when using 
Ubuntu, I can receive 50 MHz with almost no losses.</div>

--000000000000283d9406060d69f5--

--===============3672878564369717782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3672878564369717782==--
