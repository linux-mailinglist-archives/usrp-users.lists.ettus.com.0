Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9237785BC
	for <lists+usrp-users@lfdr.de>; Fri, 11 Aug 2023 05:03:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EF0B53817DC
	for <lists+usrp-users@lfdr.de>; Thu, 10 Aug 2023 23:03:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691723030; bh=hEbntICjSJz24G4Ck8aPVbmAzV6M19ulVbhfsz9DDOs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eyjsKr5dnr8vq1XYpja0tZmyIKZIzFXPySRHrusBFlaqhtqOcQDcWH3ZQthEwtNWW
	 pHG/E2SWI0Ijmn+GCChR4KjqDJyTktu0E5ZWdRcLMoSzX1L0g6+XFGKUOPDo4PQrdo
	 sMcp3xkPrRM7XqkSluEB0oinHBnFLeCG3dgxn5CldUmWhOIHIRj9+XqwKEloqz9qsU
	 +Rgvkqv0VOCahB/iYAks2qiN2HEYkVmxY3US3ZrNkITXMvbG6mcs/bEnhX/innvFpg
	 F1bxq0PPnzV+3JmnPoA+tlbWa6XzxoOLYj8GvHYN9Dh+VUlJZqmkKuBbAlWZzKKmQo
	 LnQEsf48OtU3A==
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 66C433809BE
	for <usrp-users@lists.ettus.com>; Thu, 10 Aug 2023 23:03:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.b="Lh4HF0xt";
	dkim-atps=neutral
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3a78604f47fso1403763b6e.1
        for <usrp-users@lists.ettus.com>; Thu, 10 Aug 2023 20:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com; s=20221208; t=1691722994; x=1692327794;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=44t9ec160O9Wt4AdNnWl8AJWRnfbfgwVJsorSNb8c8U=;
        b=Lh4HF0xtJwfqpMbm/c/NWTfXcaXDQJjXJOSyoPMDJe/ukznP7E3ajfXAGWLOG5jxVv
         JJLfnGag1oMf+x40Au7QZ4HCK+oiY2UCb0ZrfzdfuVj2dcDcHBLaPBf3WgXJg/rVKNhr
         wxwJ46HvQ0l1gzE5S0BNY5Pgi7tB9c5Kvtblb8iQcQU6feZ8ZaJznU1k5LRSHiYbJrcf
         gDwg/z+xJUCZpQtYarPE7o4nfVt6mrXaI15l7d3q5B9TT5Bcccp3GTxEWGsMPCMW4DKC
         BVZSTpJPfDQsPDurhnwqMv3TZiqcabv5RvjGR/cKhNMI9Ch69A/pmmHNkMRTeYLbEUHM
         D4YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691722994; x=1692327794;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=44t9ec160O9Wt4AdNnWl8AJWRnfbfgwVJsorSNb8c8U=;
        b=CrRm3pbtx0T1vTmjiUwHmSLeUexu2hOGFJvxEnc59xhz8guCNoYSBJJmP9EZxJzs/d
         OxfkROm2LixDRhr+JCG34almmjwfOpo1ZvCQ4O/mSbT0/n+FYXXLGb2rXVOG81zvokQq
         UgYzA+CeJjYs9sa0ngRX6WAhFmDzvt0gz5s7pTXOipT3mkgItlu6tFMxcA2Qc0rf/IOV
         /+VEBk7KNXnO7ouhNRR8wTm1Xw+Af9AXJjVHvJL/0pjrTZxxUR231nGHP9cQwnRBUDr6
         NHU3ZxUyiXh1fbRCM004wDVWKJcqg7BIp9l4pU8ZDfgS0dPJH4+sGeVhkuRA6f/n8txs
         MKGw==
X-Gm-Message-State: AOJu0YzLmEAytAkbILugSpuGOLQedyHbOfi2U48IDomrGp06KeUxcg+k
	k5fJQ1bE4mQATkDMVbXFhzDSxDeYTc8tneu0pg8=
X-Google-Smtp-Source: AGHT+IEd08tU7U2i1dDs+kJN/xFJTbKvWZS42w/CF2zBtJv3qtUdC1reL39pGD1zFJrHtR9uSpnpqg==
X-Received: by 2002:a05:6808:52:b0:3a7:2621:2d9e with SMTP id v18-20020a056808005200b003a726212d9emr761094oic.27.1691722993956;
        Thu, 10 Aug 2023 20:03:13 -0700 (PDT)
Received: from [192.168.10.5] (nakaolab97.iii.u-tokyo.ac.jp. [133.11.240.97])
        by smtp.gmail.com with ESMTPSA id a23-20020a637057000000b00564aee22f33sm2240457pgn.14.2023.08.10.20.03.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Aug 2023 20:03:13 -0700 (PDT)
Date: Fri, 11 Aug 2023 12:03:03 +0900
From: ". AERMAN TUERXUN" <armantursun@g.ecc.u-tokyo.ac.jp>
To: "=?utf-8?Q?usrp-users=40lists.ettus.com?="
 <usrp-users@lists.ettus.com>
Message-ID: <25ee7978-5252-4151-80ba-d21ca1c94e5b@Spark>
In-Reply-To: <a2260457-2a73-4cc5-a25d-52371ed4e128@Spark>
References: <a2260457-2a73-4cc5-a25d-52371ed4e128@Spark>
X-Readdle-Message-ID: 25ee7978-5252-4151-80ba-d21ca1c94e5b@Spark
MIME-Version: 1.0
Message-ID-Hash: SISVZF5V7LJ7AYJGX3KL5X7J6POCAEM3
X-Message-ID-Hash: SISVZF5V7LJ7AYJGX3KL5X7J6POCAEM3
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Streaming Timeout after two continuous send and receives.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SISVZF5V7LJ7AYJGX3KL5X7J6POCAEM3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5702716069048511094=="

--===============5702716069048511094==
Content-Type: multipart/alternative; boundary="64d5a4ec_7ca5d5fd_568"

--64d5a4ec_7ca5d5fd_568
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi USRP user,

I am using USRP X410 with UHD-4.2. I have my own costume rfnoc bitstream.
When I test different data for sending and receiving, I have an error of streaming timeout.
When I try small size of data, it works fine. But when I try with large size, like over 10000 bytes, it cause the streaming time out. I tried with random generated data, but it always crashed at the third one.
I am thinking maybe because of the buffering problem, but I am sure I am freeing it everytime after one round sending and receiving.
But the funny thing is, when I restart the application manually, instead of using for loop to test different data, it works fine.
Is there anyone encountered the same problem? Or anyone have some hints for that?

Thank you in advance!

--64d5a4ec_7ca5d5fd_568
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Hi USRP user,<br />
<br />
I am using USRP X410 with UHD-4.2. I have my own costume rfnoc bitstream.=
&=23160;<br />
When I test different data for sending and receiving, I have an error of =
streaming timeout.<br />
When I try small size of data, it works fine. But when I try with large s=
ize, like over 10000 bytes, it cause the streaming time out. I tried with=
 random generated data, but it always crashed at the third one.<br />
I am thinking maybe because of the buffering problem, but I am sure I am =
freeing it everytime after one round sending and receiving.<br />
But the funny thing is, when I restart the application manually, instead =
of using for loop to test different data, it works fine.<br />
Is there anyone encountered the same problem=3F Or anyone have some hints=
 for that=3F<br />
<br />
Thank you in advance=21</div>
</div>
</body>
</html>

--64d5a4ec_7ca5d5fd_568--

--===============5702716069048511094==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5702716069048511094==--
