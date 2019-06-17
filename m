Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2314921C
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2019 23:10:07 +0200 (CEST)
Received: from [::1] (port=33330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hcytA-0004T7-VY; Mon, 17 Jun 2019 17:10:04 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:37304)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dbc23910@gmail.com>) id 1hcyt6-00046Y-0Q
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 17:10:00 -0400
Received: by mail-io1-f47.google.com with SMTP id e5so24646921iok.4
 for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2019 14:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CNSlYn11bSSJC7SLprhy5xaDjcl2fqCOlGjFClKBokw=;
 b=QMOqX7n68k9fZMbjJjYwlSDIbVJ1dCXmtcQijGDWhOe0t4Y4dpsjCaIuWo9nRUQ6tC
 t/Mklfxc5BMjB+5T4vGzWxfsMRC/R4Xjnli/oZmP+EEcySf/0YNqNuUnRggsKB+2Wh4B
 8srDBcOYnVJXfXi6mzyxeP4w3j4Nrwu81gU1IuCluTPZ7SiDZae9XMIpnISuKDBo+Lm4
 6LGaI2t1MMDFqO5plsgXu/EIhIymtV23XYviRMZ4DEX+htX4ynD/uNTnGVVQDLfBybtN
 nQAM1+O9DmkFQ6wDF4xjpQ5znN3EqIY9SYzQSQdY14jA+WIzeZJFHeH9llBRreu7EpDw
 6AJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CNSlYn11bSSJC7SLprhy5xaDjcl2fqCOlGjFClKBokw=;
 b=CoUEoPbmDzelrO7AVKbV46KPZnF4LSk3gFkkNd2zTe4hHBCcUDO/l8zgY/+3Hwm3U8
 S0HNjHcmj9024wtaLNBLimZurpumFiYYezz9vg+dVS6cl82VeyPJ1Loc27p4CnIgTRy9
 SwrydaDBPtXYTUntdd4tSRaEDRZdJdL9JooUhvRlKkRKbHUC9OogobeKrzQKwJLndVFx
 qhjMq7YZAWQP7vW84oFj+7c5rx6rRcoeGdSzs9CSL0GYprHSrM75+rNnYC4REqAe0U34
 BjDKpG5fqgsIInpDfRmoI7XCe7f321yYwe/b6OYyUMcelcrKV5cEvIBmPSnN32KqHF5Q
 +REQ==
X-Gm-Message-State: APjAAAWNZFLFUnfBrdEya18pt0GxUPwe7t+8mk6x1FW5dt9wJ2sMakBG
 o4eAvRtfFixJar9LyLaRFAu34z4fnWN71/HdafI=
X-Google-Smtp-Source: APXvYqx7EJgAhNil6K80IT9lDim/gNHcRRP8WonsC/dLKL+wb1eoh6Zpf2fhplAjg7jvCGbLM8jbKEME8rriH2Akyxo=
X-Received: by 2002:a5d:8404:: with SMTP id i4mr15137650ion.146.1560805759228; 
 Mon, 17 Jun 2019 14:09:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
 <5D07FF68.9080804@gmail.com>
In-Reply-To: <5D07FF68.9080804@gmail.com>
Date: Mon, 17 Jun 2019 15:09:08 -0600
Message-ID: <CAO_1D1W9h1hg_182mQ5oDZbaVqHNgFnu9gjPnMZ08ZLd0eSNgA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] E310 Startup/Boot not working
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
From: Donnie C via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Donnie C <dbc23910@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============2233654984926055732=="
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

--===============2233654984926055732==
Content-Type: multipart/alternative; boundary="000000000000d7a455058b8b68f1"

--000000000000d7a455058b8b68f1
Content-Type: text/plain; charset="UTF-8"

Im pretty sure the speed grade matches so it must be an incorrect sd card
burn, but as far as I can tell I followed the ettus tutorial for sd image
burning, is there any extra steps involved they don't go over?

--000000000000d7a455058b8b68f1
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Im pretty sure the speed grade matches so it must be an incorrect sd card burn, but as far as I can tell I followed the ettus tutorial for sd image burning, is there any extra steps involved they don&#39;t go over?</div>

--000000000000d7a455058b8b68f1--


--===============2233654984926055732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2233654984926055732==--

