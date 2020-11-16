Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCB32B551E
	for <lists+usrp-users@lfdr.de>; Tue, 17 Nov 2020 00:35:57 +0100 (CET)
Received: from [::1] (port=37850 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1keo2O-00038u-2l; Mon, 16 Nov 2020 18:35:56 -0500
Received: from mail-il1-f175.google.com ([209.85.166.175]:40527)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1keo2J-0002zp-UN
 for usrp-users@lists.ettus.com; Mon, 16 Nov 2020 18:35:51 -0500
Received: by mail-il1-f175.google.com with SMTP id n5so16922304ile.7
 for <usrp-users@lists.ettus.com>; Mon, 16 Nov 2020 15:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=5By9URCZ5GKgJdolETLbw4lSF6xbsLAJ2S8ZkwFCNs4=;
 b=eQ0CtaYPlFUcAQqpZc3XOOSl9OZk6t3L/2QYWnLzM2r1ANaRdcSblJxKPnAkvzmeCL
 S9uStevfJm+OrDlCxoqpAhPsx4q1oXtYR1/pXrmmlOLugGzduluEa/Ia/Ud8csfn1SwY
 OH+yFhkr0kSfFSM3qeifQsCorqRAa0YlvRSzyLI8XHSr/QHXYcuyh0QKaId2Gk/tgw1N
 JoWB6C4f0wqtmydFTVOLkmtGodReeD/XxO6wfeavYldMm0qCO8npv5vytSwv0w3y/iOk
 HTzCER0tPjiGIl6GLQiDo8Aw0yfArERtp9OtAFjhcKel1JhtoE+NP3S2UwKMlCVqsZkI
 +GNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=5By9URCZ5GKgJdolETLbw4lSF6xbsLAJ2S8ZkwFCNs4=;
 b=GvWfhVQ6y6dKxRMQ9DqMqhuxCAawa3tsV0e/f54UOSYsF0/otsUEYyQNRRH6+cf5UF
 IHxfu30mCWZzJtIl4sHBX6Lwy9grJBUmEWPLRxiX6G5ZesuG1Hm/ru7ZLDDPtU3UQ94F
 zZIiBCfGaiJSXnYjHDjIao2Of4qB0aeB40pPQxsW8liRbkJUGG1JZ4wYcGS+vMbomBe7
 dbfel33WIRdNbCWwokS/1rV6kNSLkDKw7H1H5Gw0m7g9pNceimS1B2ANW3QILKbo3k4D
 5tDTRE0kc8cGbBRjZIsqYND9ncSTtpgBrN1jSfHsWisGXknbSJ8cocRxb9BGrNyjpLPi
 1dWw==
X-Gm-Message-State: AOAM530c+kRac/mRGs4j2XXgKRCyqV/5Vl2KfdYuKDHW8l54wIUallJL
 0wJv6I8P20TpB3vz0ezkuR0+CMBOWteTiov9tsZc/zM6hwk=
X-Google-Smtp-Source: ABdhPJxXOAt4gz0kaOY4QQQKUeRPokLvgXSPtcgiqRyHH/n2RheQ+yPpa34XJmTpTTQEKuz/BkbSmoDYh4XSoia0yA4=
X-Received: by 2002:a92:c7ae:: with SMTP id f14mr10489761ilk.202.1605569710986; 
 Mon, 16 Nov 2020 15:35:10 -0800 (PST)
MIME-Version: 1.0
References: <CAPRRyxvjjBW1Z2htqVOO_OCLP2RXs=j6Q0B3y7L5YL0sLU4bCQ@mail.gmail.com>
 <850F88F7-486D-4D42-9E66-E853B4ABE16E@gmail.com>
 <CAPRRyxtR3SgYWqnAaJM=LnTxYZF5iCzeVR_xB9dVDXAWVT0Wow@mail.gmail.com>
In-Reply-To: <CAPRRyxtR3SgYWqnAaJM=LnTxYZF5iCzeVR_xB9dVDXAWVT0Wow@mail.gmail.com>
Date: Tue, 17 Nov 2020 01:34:59 +0200
Message-ID: <CAPRRyxt8qaJ-DbgKbDQbXYMt8=0PKC42JReqb=LrUxR0ZCEJqg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Subject: [USRP-users] Fwd:  Direction finding based on USRP E310 board
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============5851914577836443029=="
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

--===============5851914577836443029==
Content-Type: multipart/alternative; boundary="000000000000491bc805b441d4ef"

--000000000000491bc805b441d4ef
Content-Type: text/plain; charset="UTF-8"

That is, in theory, I can simply start two streams from two channels and
further process them using certain direction finding algorithms?

--000000000000491bc805b441d4ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr"><br></div><br><br><div dir=3D"ltr">That is, in theory, I can simply =
start two streams from two channels and further process them using certain =
direction finding algorithms?</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr"><br></div></div>
</div></div>

--000000000000491bc805b441d4ef--


--===============5851914577836443029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5851914577836443029==--

