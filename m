Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D87A11CD201
	for <lists+usrp-users@lfdr.de>; Mon, 11 May 2020 08:44:20 +0200 (CEST)
Received: from [::1] (port=44082 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jY2Ai-0006ud-HX; Mon, 11 May 2020 02:44:16 -0400
Received: from mail-wm1-f42.google.com ([209.85.128.42]:50876)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <246tnt@gmail.com>) id 1jY2Ae-0006ol-6F
 for usrp-users@lists.ettus.com; Mon, 11 May 2020 02:44:12 -0400
Received: by mail-wm1-f42.google.com with SMTP id m12so11851791wmc.0
 for <usrp-users@lists.ettus.com>; Sun, 10 May 2020 23:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c8YD+cjQWmOMQxmNZ9E1KyNdjHir21Hw/ihKfuq83vU=;
 b=mKS4Lo4ZqZMZb5wLv8B3KtWHgPLIN2lCT7u2IXkBXR5HzWBhu/1sQtXtggBznLqJ9+
 78QvFU0llcvwlp08QeS5A3CPLMtgCq23/c3+lmjt5xc+9SPBw5tznVt5Jt4MrTrcBNXq
 nJz0VJoyP6FgFjQlGq7fqU6oD33wFSDMgv6hLRei5qifkEbjhuH/QbKRklnb1MmL6vYB
 p+aCotjOsB4fxbLG6/K0IBrq8b28Hl4fxQd1ca+5hWIMQ8/dcQZ2kywAPP+lmYhzLsst
 1/io4S7053fiC3YwtuyqHoRydXXBi9k5AhRhdNuqBnz/vPQkNLWzUfPbS4ruvvZ6/gxO
 mxCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c8YD+cjQWmOMQxmNZ9E1KyNdjHir21Hw/ihKfuq83vU=;
 b=XJasWGZlkS9uBCNn313D7UXFlOT/MtNVeryYp++X1RVfX94zKxg1bp9MJI0Ar6JzA4
 kc9NWFGcBm5AUfvnDnXeBG8/ADAezNp8KSKjVAD2Ycr2+aodm+o+tYmteCzfqG71R2/A
 eFMBA7zT2Y5NpABxhxPcOUClUArDtzTp3TZA/tBU1hjfppa1kWuR9pmMGg48wHpurEmY
 R5blXw2uZdu1OaYwiu9E/6Do28iNvCwHin9lk2sGlETyWDutxetDdy7HzV0Z1kNSGX0X
 A17OMouopL3xLZ8UzDKaxuJO9+nLjlPMZTPTm4mMqT4AE0csR022Y3xf5RUraqrnu8kW
 uePQ==
X-Gm-Message-State: AGi0PubQdcwh8jNoPqW9Oh2tTHRdybYGv8s0WSFUUxk4UuJyGodUc6v7
 pjXvYc/5/3alFF+q2VgVXJdB56KdBa0mfCWopYk=
X-Google-Smtp-Source: APiQypKXBfFDJb4yctR8P4+EnQjaM+FMKfpWaK55sCiVQgETLZJMvn2xzUsrTcbEzDXrLmJ6oB7jScjFTXkeaiMZaTo=
X-Received: by 2002:a1c:4d07:: with SMTP id o7mr31628317wmh.59.1589179411280; 
 Sun, 10 May 2020 23:43:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAPRRyxstLciU5Dh1bP7KkTMGBzjOu1pMmj4s=ECFcP6xYcLMTg@mail.gmail.com>
 <CAL7q81t96z7e_B4ADotPsZdeREdJRRk-A4NC41Nu=QLGwGoMXA@mail.gmail.com>
In-Reply-To: <CAL7q81t96z7e_B4ADotPsZdeREdJRRk-A4NC41Nu=QLGwGoMXA@mail.gmail.com>
Date: Mon, 11 May 2020 08:43:24 +0200
Message-ID: <CAHL+j08bozSt86uwMWnUsZPsMSG2Jbw2oBmY74edLuROW2dNag@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Subject: Re: [USRP-users] disabling ddc duc blocks in rfnoc usrp e310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sylvain Munaut via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sylvain Munaut <246tnt@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi,

MMm, I thought there was an "all in one" mode where fosphor had built
in optimized windows / fft / re-order blocks to greatly reduce
resource usage, but looking back at the logs it seems this was never
merged into mainline :/

Cheers,

    Sylvain

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
