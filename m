Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACA969A779
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 09:51:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8EB513844C6
	for <lists+usrp-users@lfdr.de>; Fri, 17 Feb 2023 03:51:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676623912; bh=HU/lKe6CwdWxc8hqeJ4gDivTVLRMk2YxvGZX0uhNic8=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=F3C9USYg+LMTWPjJIQF7RzoYc/kyArKs0U4foZzAg+RtnA5rHvmIIBBlznM854YE+
	 GQGR4p0jWc7HUHQnIDe/fLbl1G1PYkOkdKhHV4tsCY4z4tNzDjbf1CV4YMzxSCl+cU
	 6PmwKkmQJkzYvUEJh4wLMPJCumaDu1K41dRS7tJsI64YY5SkYPs23JZ5HsI0gF17Lb
	 zoz9zO7+ZnIT/v5ME7QNHYMFjZReG3HzUc+kknmlT+4ShFgJr2XsbUfjYQ2usPF+Yw
	 xZxni7qbVGsssKz+iOIzPiDRnwxunCDBsrwBUBUbCfLXnbnTBNdhKvXvtU7So4UpyM
	 7l0tf1Gx7TNhA==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 249BD3844C6
	for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 03:51:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YXQ4Iksi";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id cn2so1620042edb.4
        for <usrp-users@lists.ettus.com>; Fri, 17 Feb 2023 00:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8+PQdybVeXQHP0p+WOi3qcfjbJofSDv+T6WFFu2OtMU=;
        b=YXQ4IksiDIGnw/NsX043yZTOWncYQ+HkbNNMoHmH5ZOhhbEI00he4genHoxgq3jvFN
         N52KqkwvM1CQ0CYDe/otkxrae+YlSJ5Wj476Jbz5AKHmVDcgJQCa4D1ReYo8KTlJhHEQ
         94F0kbVw3ZPeFBfhlipFoT3ySHonQyU6JCm/3Cr/yXui9Dia5zDyIJQGItLsFqOnrALu
         KPZxg43K0d791/Jdokr78Ck9VZmy9cyqKbe+IkmrVU6Lnw2Zr/oEoq+BTjAYKUJYUuWw
         8CsAM5bRk0svvFq1Y7iGP3pbSfuPOUzjsII08D5S9eIvPh5WxJjJ0GnbD37hSUszo1HU
         t8Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8+PQdybVeXQHP0p+WOi3qcfjbJofSDv+T6WFFu2OtMU=;
        b=0Hhit+LsKztCVh5pdKodBx0z8kEsYxOI+Gm3kv/mZZfq1wxKCiVGi748UMuEkVrkC/
         0KX2oTPvtW3nn7qDeQ8pB0udnIrd0zwo4jYahjHaeefMxLiq2in8I0Qb5igDgKPbyPE2
         LK2PyPH3OI9754jPUEmEJ958A/jSb7McfKj+HVvpa5qQny+wl3fQPIz+ZP/c8xL9hyI+
         4IIJde1JRBtAtW1OO0I6OLXUG/3t8m7GBiKV51J5FDwcZE5NVsMxCwP+iqkwulOs/xeb
         xXGg4x9UTFpZD2JAMNIWmJInF7z5gu0FK8sBoaR3+K35mXvTCVd+z0W4uzvypMd3I882
         Nuvg==
X-Gm-Message-State: AO0yUKXICSeT3QgAcePZ3jtbX8c5hCrjK55gI7zgbJsf32JsdylDDXAx
	LarqoLjjIHUEsYrYJxRpm4ShwyuqJsSagXTmvZuCJBEntA==
X-Google-Smtp-Source: AK7set9lxlaGgvO2z2BbPk/epxlmTdwef5LKuE2dOZy3jyTJa9mf5zIuSB/CP0zn9p4cgAYlyLh4ljeevdXDFnGOtW8=
X-Received: by 2002:a17:906:9410:b0:8b1:b795:110a with SMTP id
 q16-20020a170906941000b008b1b795110amr868460ejx.13.1676623904455; Fri, 17 Feb
 2023 00:51:44 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Fri, 17 Feb 2023 11:51:33 +0300
Message-ID: <CALooG39Scf0NB4sAvB5b8cvdMjAMPh=fY3Zc2N_GMZXbsQgsbg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: CKNJ6FBVPE44WT4C4R73YDK4MESFAMKI
X-Message-ID-Hash: CKNJ6FBVPE44WT4C4R73YDK4MESFAMKI
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP E320 DMA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CKNJ6FBVPE44WT4C4R73YDK4MESFAMKI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5297470470534840971=="

--===============5297470470534840971==
Content-Type: multipart/alternative; boundary="0000000000003f3ea105f4e16ce5"

--0000000000003f3ea105f4e16ce5
Content-Type: text/plain; charset="UTF-8"

Hi everyone,
I have a problem with DMA. I am trying to build a custom RFNoC block which
finds pulse parameters (pulse width, pulse repetition interval and
frequency) and stores them in a block ram. I have built it and it worked in
simulation. The problem is I wanna read those parameters from the host. If
I try to read them via registers, it is too slow. Therefore; I thought that
I must use DMA to do that.

In order to reach that goal, I did the things below;
I statically connected my 2 ports to endpoints. and in the UHD application,
I connected the radios (RX) to my block and connected my block to the
radios (TX) again. In this way, I successfully took all the ADC datas to my
block in the FPGA and processed them.

The problem is when I processed the data in the FPGA and tried to read
parameters back in the host, I needed to use the rfnoc_chdr port and it is
used by radio for ADC datas. Therefore; I thought I needed to disconnect
the connection from my port to the radio and connect my port to
rx_streamer. But, it did not work. It gave an error saying that "attempting
to reconnect the block". Can anyone give me advice to read parameters fast
that my block produced by processing the ADC datas.

Note: I don't wanna take all the ADC datas to the host, but only the
parameters which my RFNoC block produced while not blocking the ADC signals
arriving at my block.

Device : USRP E320
Host : Ubuntu 20.04 - 1GbE

Kind Regards,
Yasir.

--0000000000003f3ea105f4e16ce5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div>I have a problem with DMA. I am trying to=
 build a custom RFNoC block which finds pulse parameters (pulse width, puls=
e repetition interval and frequency) and stores them in a block ram. I have=
 built it and it worked in simulation. The problem is I wanna read those pa=
rameters from the host. If I=C2=A0try to read them via registers, it is too=
 slow. Therefore; I thought that I must use DMA to do that.=C2=A0<br></div>=
<div><br></div><div>In order to reach that goal, I did the things below;</d=
iv><div>I statically connected my 2 ports to endpoints. and in the UHD appl=
ication, I connected the radios (RX) to my block and connected my block to =
the radios (TX) again. In this way, I successfully took all the ADC datas t=
o my block in the FPGA and processed them.</div><div><br></div><div>The pro=
blem is when I processed the data in the FPGA and tried to read parameters =
back in the host, I needed to use the rfnoc_chdr port and it is used by rad=
io for ADC datas. Therefore; I thought I needed to disconnect the connectio=
n from my port to the radio and connect my port to rx_streamer. But, it did=
 not work. It gave an error saying that &quot;attempting to reconnect the b=
lock&quot;. Can anyone give me advice to read parameters fast that my block=
 produced by processing the ADC datas.</div><div><br></div><div>Note: I don=
&#39;t wanna take all the ADC datas to the host, but only the parameters wh=
ich=C2=A0my RFNoC block produced while=C2=A0not blocking the ADC signals ar=
riving at my=C2=A0block.</div><div><br></div><div>Device : USRP E320</div><=
div>Host : Ubuntu 20.04 - 1GbE</div><div><br></div><div>Kind Regards,</div>=
<div>Yasir.</div><div><br></div><div><br></div></div>

--0000000000003f3ea105f4e16ce5--

--===============5297470470534840971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5297470470534840971==--
