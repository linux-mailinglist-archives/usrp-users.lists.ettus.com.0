Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F286A478D
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 18:06:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C77E93842E2
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 12:06:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677517593; bh=bRAzQZleWJqnbGnv+IdBhW74N4AYSQjviidL+iRVtCU=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TbvTyRIYr8/wKk+qHQmOVLZ89ZPWocBRXT+jZQUeEKeMM1SH1zshS0/S7M2cmrkDt
	 jtUJGyUDLWNQX8DkV5ZbUbs27r1870lit9VfB1OzhPJB8nmW/qRN760L9C0PyOBM5L
	 kxi8mPIUqQL2kT9/wn7M07SiwnY+9n4ao8Ccn8Hac7UzBOKei8/FI+a5GfVhcutYbW
	 weXo7QfmVLqcoBw1lZxcrVbgJtTIYMHEsVfsf0+47yIDb1wZKR0THW/JZS/HnokdQE
	 U30ahCYVBEURH0nPCz6tD2yYSbuspFxhh99JnLDcYpXBh+kRU+iZFs+BJUnIC4RkPi
	 Q6qQ8gBzz96Bg==
Received: from mail-il1-f225.google.com (mail-il1-f225.google.com [209.85.166.225])
	by mm2.emwd.com (Postfix) with ESMTPS id 85948383D96
	for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 12:05:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gotenna.com header.i=@gotenna.com header.b="IJ3zqyJk";
	dkim-atps=neutral
Received: by mail-il1-f225.google.com with SMTP id y14so2242679ilv.4
        for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 09:05:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BfwdNXkH4bo2Y8+c50rUGlT9A/5BlzVkWDnLAgaKUC0=;
        b=avTK88DjZkWnXw9173Dsye/ZTB86xfWSiU1K4SqB05bM6/gOVsnsfANXBogOylrn2/
         hwP5HOA3U5Hhsh63kZQ+SdtjRlMkx7KY/H++/VOjyarNAiLj868hJr/Mg3GFS/2b80sj
         QCPvOhE9aRWW9bbL/azoFfC9tauuIzPiLPDBWW9jphruXLbyLPCTNZp9qxq6ELYijTvO
         sxaLZ6HVCKFhBRF2MX7mo0gQ7SFkAo1krg1nCV+FWtXL0tqbHAKjhUN+CJSF4vYB4k9j
         wQwBuCz/EFwuBaBDeU2QWXqIENAql197UPw8pE3NCt+7uqcRDIk4P7jSYSsdtAJCf4Jm
         63MQ==
X-Gm-Message-State: AO0yUKU3JJqOI8x2Oi3BOKEhfcKHWlc+h9yB1S6PlqQ6TDNeF0pR+8St
	MEhqr3Vep4OMVNCTh/6BBVd2fJsimK34swUuACXCZ8eX/hqavC0Exc0=
X-Google-Smtp-Source: AK7set/9PajXq5yqg0p6HUEFuroE27GCi7mgel17Mq9bLdXgi1NFOpe44XSStJTtjLyOsMHlvocDcyaD590c
X-Received: by 2002:a05:6e02:12e3:b0:313:cd79:adcb with SMTP id l3-20020a056e0212e300b00313cd79adcbmr99596iln.18.1677517544848;
        Mon, 27 Feb 2023 09:05:44 -0800 (PST)
Received: from us2.smtp.exclaimer.net (us2.smtp.exclaimer.net. [104.209.35.28])
        by smtp-relay.gmail.com with ESMTPS id i1-20020a056e021b0100b0031529922590sm310921ilv.71.2023.02.27.09.05.44
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2023 09:05:44 -0800 (PST)
X-Relaying-Domain: gotenna.com
Received: from mail-pg1-f199.google.com (209.85.215.199) by
	 us2.smtp.exclaimer.net (104.209.35.28) with Exclaimer Signature Manager
	 ESMTP Proxy us2.smtp.exclaimer.net (tlsversion=TLS12,
	 tlscipher=TLS_ECDHE_WITH_AES256_SHA1); Mon, 27 Feb 2023 17:05:44 +0000
X-ExclaimerHostedSignatures-MessageProcessed: true
X-ExclaimerProxyLatency: 13274145
X-ExclaimerImprintLatency: 893801
X-ExclaimerImprintAction: 146bd2c0067c4e6280a3004fdfd53889
Received: by mail-pg1-f199.google.com with SMTP id t185-20020a635fc2000000b00502e332493fso2146403pgb.12
        for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 09:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gotenna.com; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BfwdNXkH4bo2Y8+c50rUGlT9A/5BlzVkWDnLAgaKUC0=;
        b=IJ3zqyJkPeaJtiBof6XwzO5VdtnUhwP074KZi3KqNfWuor1hM4mPPyJDIBJa7zPgrz
         dUF9wMVQgFuIEPiv8o/vTK8Oou3mxBxV7Q+jj3zB/DYGV9XSH+4JjlrdVvHI/7aW3bOL
         znpQ4mCh3HHkqcA7aZiEsDWn+U0Dfxw7DKEIbeuoKylz3S/QahDpuZ5k5t/F2OmeE6xU
         BaIqVoXiUusAp/19LXpORiDHFiI87QM4wecVD/EZHiy89r4NfCJTlMuG/v5wuAlV2RRM
         Vl6/LioGc5tffnZYhUOWY2rHMDIvXvHHl+CGHrkdZxThV2grHwqeXUPWOV6bXZG/zS/+
         28/Q==
X-Received: by 2002:a17:90a:db42:b0:22c:89b:5a8d with SMTP id u2-20020a17090adb4200b0022c089b5a8dmr4878786pjx.6.1677517542716;
        Mon, 27 Feb 2023 09:05:42 -0800 (PST)
X-Received: by 2002:a17:90a:db42:b0:22c:89b:5a8d with SMTP id
 u2-20020a17090adb4200b0022c089b5a8dmr4878780pjx.6.1677517542442; Mon, 27 Feb
 2023 09:05:42 -0800 (PST)
MIME-Version: 1.0
From: Maxim Belotserkovsky <maxim@gotenna.com>
Date: Mon, 27 Feb 2023 11:05:31 -0600
Message-ID: <CA+7S2faQodi0HxFavaRCpKNdJOXNx1Y9iB-cWEFD34d3kWYTJg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: H6B42L63PTSOCEBDWSQS6XQJYQJDMGPG
X-Message-ID-Hash: H6B42L63PTSOCEBDWSQS6XQJYQJDMGPG
X-MailFrom: maxim@gotenna.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Spartan-7 radios
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H6B42L63PTSOCEBDWSQS6XQJYQJDMGPG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3196730578977728109=="

--===============3196730578977728109==
Content-Type: multipart/alternative; boundary="00000000000038e88d05f5b17d12"

--00000000000038e88d05f5b17d12
Content-Type: text/plain; charset="UTF-8"

Does anyone know if there is a Spartan-7 based SDR off-the-shelf radio,
currently or in the works? Spartan-6 is only supported by Xilinx ISE tools,
which are hopelessly obsolete by more than 10 years. Plus, there is a
substantial power savings by going from 6 to 7. Thank you.

--00000000000038e88d05f5b17d12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does anyone know if there is a Spartan-7 based SDR off-the=
-shelf radio, currently or in the works? Spartan-6 is only supported by Xil=
inx ISE tools, which are hopelessly=C2=A0obsolete by more than 10 years. Pl=
us, there is a substantial power savings by going from 6 to 7. Thank you.<b=
r clear=3D"all"><div><br></div><br><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature"><div dir=3D"ltr" style=3D"font-size:1=
px;direction:ltr"></div></div></div>

--00000000000038e88d05f5b17d12--

--===============3196730578977728109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3196730578977728109==--
