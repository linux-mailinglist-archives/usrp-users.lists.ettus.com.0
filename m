Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 846C86DA805
	for <lists+usrp-users@lfdr.de>; Fri,  7 Apr 2023 05:37:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94AF8384B6A
	for <lists+usrp-users@lfdr.de>; Thu,  6 Apr 2023 23:37:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680838620; bh=l0gPE0LwtQ3+O9ZLVWaUBl9z2NQuQq71BXrb9fZQWNM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MIeekk96vF7QrOGfbMOzp2t2t05EJDrRZ72YGnYQjTfm38tTUCFz42PlZWWxCGa/A
	 nFWzTDba0mt34bmWVA6HYhKfwy4nSz3CKqiwbb50o3KbbjKQBhE8FT8JOfUF5WIvCt
	 TYzHgu3JXRPO5hKuBUixGXPNroTgGxC7fhKd+281VSYLvhzuzyQjVvtvqJtD3VqhHn
	 KjVl00379FBRmRWLN+NzYro8vvvfKu6i1noKpan+M/DJBIX1IYsjh8eldlNzV2dnYT
	 2RhHJ/No/qigjzLQMzRRKsqgQ0K0mdAohNTBQTFsHRZazXd9Cb6mvvviV+YDcr2dOS
	 +3lG+h3FY81mg==
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by mm2.emwd.com (Postfix) with ESMTPS id E971F384A6C
	for <usrp-users@lists.ettus.com>; Thu,  6 Apr 2023 23:36:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=nu.edu.kz header.i=@nu.edu.kz header.b="Rz01ALwe";
	dkim-atps=neutral
Received: by mail-lf1-f46.google.com with SMTP id o3so52778lfd.12
        for <usrp-users@lists.ettus.com>; Thu, 06 Apr 2023 20:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nu.edu.kz; s=google; t=1680838576; x=1683430576;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=77NNZD8K16EK1gTDC1faPN5IVkrnKljl9mxbGXUWoSY=;
        b=Rz01ALwe2aRKK5vGwd6VQLmrAQoELL3NyyY73vWgwbLvKtHrPCOAXLSIUZnAba89qL
         YmaWsY/xH8FJOzSBPEh9s/VmEkY+KW/NHbs3E+91n6AhVo+2wNhJu763bV/W8raRlU5d
         sIZ6klLMddN/Hpc97uMY2LDRrCwOUYg8n95nk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680838576; x=1683430576;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=77NNZD8K16EK1gTDC1faPN5IVkrnKljl9mxbGXUWoSY=;
        b=EIAX0D05XyFKjv4WbFktVu3j6diG0ql3+qOXsYvatM2aJh8TafoqO7ZrZklaasan1z
         h/kG6dWD104dM91N7Xl3EgXPIIJnK/0A2TZKhaPjdKnr+JVkWxpyfX9Ovf4BbaX3pE1t
         9eboJ1uqMr2QjVMrldTbkx1NoMJ+auMygeoM+8FC8FhGiLhcZtOB1fndkxYHo1q9e+PF
         AuTqq2pfsbtv+RlDoow753aWiSqNtmih12xVDdNSviQ5X9y0VOdQ4qdA+jr8PockD+cQ
         CrQPvYmNTLmBZJJ9yWLi01UNgyk8/mgyBaes4PDlUhpy2hWyoCzTBBsBYcBqvlm9ZQ5T
         tZIA==
X-Gm-Message-State: AAQBX9cVRe6/T7yocqxbIXg5/qIdYr5fDtnuTFODzKftSKW86+x8BXNy
	CtKmLJriX6Q39TmYPmjHGxkA2UkMlTU5V4BnhzB2Iyy3lbdStUSPA4ILY6xSKkj7i0if4A4uru1
	PvFRaozShRK3wpRkxigYQYYPTHXAn72046QKosh8QCKcx9zje/SFSVfw9mBmumQOwOEMj6zbyKG
	71RMFOGXxFncozFG61E1yHuFz+mv/dR1229/jgLnlAwl2LYrgt30YLCU9ryVl8MjkYTvclBHcU6
	H7lRoYkarvZa1PjhG8=
X-Google-Smtp-Source: AKy350bpyVO+L2v1xcDIebQUIWY3UOvoATe6SQomnRHfW8WWUh6vEYAEGdwbkytPBH2Ordkmo3hc2uDnVmaXUbpXoQQ=
X-Received: by 2002:ac2:4545:0:b0:4df:1d72:8e87 with SMTP id
 j5-20020ac24545000000b004df1d728e87mr355374lfm.2.1680838576110; Thu, 06 Apr
 2023 20:36:16 -0700 (PDT)
MIME-Version: 1.0
From: Azamat Nassipkaliyev <azamat.nassipkaliyev@nu.edu.kz>
Date: Fri, 7 Apr 2023 09:36:05 +0600
Message-ID: <CA+z47vTD1_Upe1EQbXKzmUQtedt_RkPLf3Rv8Z8jmZu3cj0i-A@mail.gmail.com>
To: usrp-users@lists.ettus.com
X-CLOUD-SEC-AV-Sent: true
X-CLOUD-SEC-AV-Info: nazarbayevuniversity,google_mail,monitor
X-Gm-Spam: 0
X-Gm-Phishy: 0
Message-ID-Hash: FKQOVWBXSFCMXQW23KY77TRO42VUIUCW
X-Message-ID-Hash: FKQOVWBXSFCMXQW23KY77TRO42VUIUCW
X-MailFrom: azamat.nassipkaliyev@nu.edu.kz
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP doesn't want to connect to computer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FKQOVWBXSFCMXQW23KY77TRO42VUIUCW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5637644880964430189=="

--===============5637644880964430189==
Content-Type: multipart/alternative; boundary="00000000000041540005f8b6baae"

--00000000000041540005f8b6baae
Content-Type: text/plain; charset="UTF-8"

I am relatively new to USRP. But I have an USRP X310 and GNU Radio
installed on Ubuntu 20.04. It was perfectly connected and everything worked
before. But then GNU Radio gave a message that FPGA versions did not match.
I tried everything, but it wasn't solved, so I reinstalled Ubuntu, UHD and
GNU Radio.
But then when I connected the USRP to the computer through ethernet, the
computer didn't "see it". The LEDs of ports 0 and 1 do not light up at all.
So does the port on the other end of the cable connected to the computer,
no connection at all. I tried changing the cable, but still no change.

What could be the problem? And I would appreciate, if anyone could help me
solve it

With kind regards

--00000000000041540005f8b6baae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am relatively new to USRP. But I have an USRP X310 and G=
NU Radio installed on Ubuntu 20.04. It was perfectly connected and everythi=
ng worked before. But then GNU Radio gave a message that FPGA versions did =
not match. I tried everything, but it wasn&#39;t solved, so I reinstalled U=
buntu,=C2=A0UHD and GNU Radio.=C2=A0<div>But then when I connected the USRP=
 to the computer through ethernet, the computer didn&#39;t &quot;see it&quo=
t;. The LEDs of ports 0 and 1 do not light up at all. So does the port on t=
he other end of the cable connected to the computer, no connection at all. =
I tried changing the cable, but still no change.<div><br></div><div>What co=
uld be the=C2=A0problem? And I would appreciate, if anyone=C2=A0could help =
me solve it<br clear=3D"all"><div><br></div></div></div><div>With kind=C2=
=A0regards</div></div>

--00000000000041540005f8b6baae--

--===============5637644880964430189==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5637644880964430189==--
