Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 708556E501A
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 20:24:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 535B038480A
	for <lists+usrp-users@lfdr.de>; Mon, 17 Apr 2023 14:24:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681755877; bh=k6lTUYQBuOak1jfZmsGDp88k8WDxGjyrdjYHyiY7e6U=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mqhMB9bhymE+hAdqIx+bYWYI58QEYUJuPuvKhT5g0XYzZ2Us0fQJuP9/5PK4oq07N
	 N3AECKz3/KWaGzGxPyj1odz7qd38ALKfsiWPM80C59t2F36Bg+xbFFWvb2yyOF6FGz
	 HoBx8tqA9SIYbVZQkRGL1TMWId4VhbZXfIheOxza8ZjBHOwdMCRfmmTColZ24yhClL
	 5mdJMG5Aa+IBcr0a2GvEzt5m1Ywi4jbL0szauyjHZUIw5pNrgs/tpO5tdiKJuW7FsY
	 Tc+X5cz+5/DkNk6YGqQfp99+9yrMnuLnLgALAA7qJoNAuYS37j7yPOIGbJNSzu+F/8
	 HEUavOC4UbGEw==
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 18C2B38464D
	for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 14:23:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VoMlu5JP";
	dkim-atps=neutral
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-3f16f792384so3545535e9.0
        for <usrp-users@lists.ettus.com>; Mon, 17 Apr 2023 11:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681755830; x=1684347830;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XozvJgJi39Bl18oZaaVwa8UyZDp4VrEVdgOaLxO3q7Y=;
        b=VoMlu5JPagU70S8TvakEcJ8rkcHZ39Wgb0OGA37Jszy2xXF5EAw3KzV33TPiCdBJDF
         /168BbTnpOGaj+18ofllxC/yz+nbKtpfHR9k1pvYGpQf+3UQqQp7pmv8r4bvUKj9cCRa
         szbhiiXVSF7SNJQSMXaJGyECN2hRScGFqXuY48Ls8MIBhfkBUYWoY7qeNLsc0giRwRNn
         kQB9YAAxoNs9ZBl4kpBLqGCtWIpvVNn8SaCpn6I0qOZph4TB5lLBBCt8Iy6dyC3MlvOe
         HBgpEhgqP0zwXZGYXS4GLUL9fWIwaKs90FMPXMPAF+05YM2tPxTG9UfCZRyoY31rJLeC
         7rDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681755830; x=1684347830;
        h=mime-version:subject:references:in-reply-to:message-id:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XozvJgJi39Bl18oZaaVwa8UyZDp4VrEVdgOaLxO3q7Y=;
        b=ckRl/fIcbUTt5PneppuTT8ttsNNJsoDN5UTCRxVsJ/rDzd6eVylBkjxB2f5ePDIBS5
         cKPje0OcqQ6dwI14iuD5Dpnp47SQMQq0MkDa1EROsDPDKLCGqDjV5heaMFLRxqqJ/EGB
         48CfArLGJrxDhXzlvSdodMWUhwiYNSrl0wItZ5nVLkI6HFBusyXWeu7i4RCsl6TwKk9S
         JEwG6XlBMx4OdXIpQXh2I7CmdULPLZf9sHkPi2g5cDHtsdhJCU4vvqs7sVMX/4wMPU8k
         yk/WTDDBviCGuhnt7uPFMbFnlpahhGlN4C6RH6gxOVLyzX/sye168ccTPQvrGu36nc9P
         iV8w==
X-Gm-Message-State: AAQBX9e9yNKRa+GQS64csftef0pgmW0oLzG5Oh5GpiU5zJE6UZRloBTL
	khVJOoMLuirqEGZUzzedJ0Xv2ezwAw8=
X-Google-Smtp-Source: AKy350Zk7xOUop7hjj/kia4fQk0O4MnaVi/GIya6Z7O3uYAZCsvwLnCmU+fLDRiqkdWqavHD9nC9UA==
X-Received: by 2002:a05:600c:6025:b0:3f1:75a5:a369 with SMTP id az37-20020a05600c602500b003f175a5a369mr1929342wmb.3.1681755829532;
        Mon, 17 Apr 2023 11:23:49 -0700 (PDT)
Received: from [192.168.101.139] ([102.39.234.92])
        by smtp.gmail.com with ESMTPSA id r4-20020a05600c458400b003f0a090d798sm14602009wmo.18.2023.04.17.11.23.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Apr 2023 11:23:49 -0700 (PDT)
Date: Mon, 17 Apr 2023 20:23:21 +0200
From: Kevin Williams <zs1kwa@gmail.com>
To: usrp-users@lists.ettus.com
Message-ID: <18d19080-541f-475d-b17e-f3ed2ff90207@Spark>
In-Reply-To: <37dc778e-30c2-41cf-9218-58cdbd43013a@Spark>
References: <37dc778e-30c2-41cf-9218-58cdbd43013a@Spark>
X-Readdle-Message-ID: 18d19080-541f-475d-b17e-f3ed2ff90207@Spark
MIME-Version: 1.0
Message-ID-Hash: EWNDVMYSFQVV6SLC5JY7TVDTN64WE752
X-Message-ID-Hash: EWNDVMYSFQVV6SLC5JY7TVDTN64WE752
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc user group
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EWNDVMYSFQVV6SLC5JY7TVDTN64WE752/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0889735365314386347=="

--===============0889735365314386347==
Content-Type: multipart/alternative; boundary="643d8eb2_109cf92e_6ff7"

--643d8eb2_109cf92e_6ff7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Would anyone be interested in forming a USRP RFNoC interest group?

My interest is in model-based firmware design, and am having success with Simulink and HDL Coder. I have a fractional resampler running on a x310, with all the design benefits. There is a lot to contribute. One huge step would be to get the Ettus BFM into Matlab.

--643d8eb2_109cf92e_6ff7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D=22http://www.w3.org/1999/xhtml=22>
<head>
<title></title>
</head>
<body>
<div name=3D=22messageBodySection=22>
<div dir=3D=22auto=22>Would anyone be interested in forming a USRP R=46No=
C interest group=3F<br />
<br />
My interest is in model-based firmware design, and am having success with=
 Simulink and HDL Coder. I have a fractional resampler running on a x310,=
 with all the design benefits. There is a lot to contribute. One huge ste=
p would be to get the Ettus B=46M into Matlab.</div>
</div>
</body>
</html>

--643d8eb2_109cf92e_6ff7--

--===============0889735365314386347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0889735365314386347==--
