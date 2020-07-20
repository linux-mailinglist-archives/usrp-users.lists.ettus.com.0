Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA24226C35
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jul 2020 18:49:16 +0200 (CEST)
Received: from [::1] (port=57050 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxYyX-0002Sa-Bb; Mon, 20 Jul 2020 12:49:13 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:44346)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxYyT-0002HQ-0r
 for usrp-users@lists.ettus.com; Mon, 20 Jul 2020 12:49:09 -0400
Received: by mail-qk1-f175.google.com with SMTP id b4so16013201qkn.11
 for <usrp-users@lists.ettus.com>; Mon, 20 Jul 2020 09:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=qXc+2pTbaT+4btjDFxmPE5DcrL5v4zawNmqxi+R9voI=;
 b=PeuiLdoRS/ulwYS31QD2VxApo2NrDrcFyP6+8MZ++Nkw3kQgrtIbPLHp6bXGCu3d04
 S4H/AnA5Khr2DPWurrydvZctC4ggWJ2SCpvv01Vv6ZA2XOrsZeCPj/1O3+jOmLFyBPwa
 o7iYWskUD5xRnRcOuf1udm3c1C+C8UNbeZNmrMmwzUGYc+8B5mgy6jakOYlkjKwkgpWY
 TF9NWHuFAqAgr4n+s4EUBDcO+nhWZKQqdF1wL18BiOsKra7DAOlUayMyz9lNTJBtSGgP
 AHowzGwJNmtGQIHnLvfOCs5F7nyrFcA8Rb6zs8Bl59m6jOR7iFugAGEPv9WShVaZDpte
 ZrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=qXc+2pTbaT+4btjDFxmPE5DcrL5v4zawNmqxi+R9voI=;
 b=R+NkY8y8EAtWjSWsyaY2svEboNRYSKi+gYSzWdkVY8/eYredpW7q932rEK/WjxxOA2
 VoJ9jWGigxTW/Kx+c7aDHvnKj+PXDBwyGhDjobxm45mPGNsruaknB5rVo/yo/BW79vkJ
 fwuDi15HaOtp4JbaR1K0b3jCfCha6i8JebluzBc28FJxbDtqFQgjvWIfK2Zw2agA6jQR
 v6f0YQVIm2A9JCoTu9qHJjAi+9KQw78OE5zTHSqk2VLYa3TBY9tRox+Sk9u/pSrxpAYK
 16u9/a4w28krfi9ke+tlUkgNwzIqr848Cd2/K8l9A0iwdjIAwUIrOvvMkl0gI4h3QvEn
 ALEA==
X-Gm-Message-State: AOAM530JI7P6EKSw2PAXdr1X+hw/3O1de/pnsyMkgw5PD8/DhDE3WgFw
 HGh1nuTWoNEEkpZA+Ms1zjeJHQeu4KI=
X-Google-Smtp-Source: ABdhPJwJV3zhGiC7SUVko7q8Mf9IdBJlyIszsoiIN9Ag8DYBhy2uKyT2O43DBOCVKT45LiGrlD+Osw==
X-Received: by 2002:a37:cc5:: with SMTP id 188mr6525401qkm.195.1595263708097; 
 Mon, 20 Jul 2020 09:48:28 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id m20sm62802qkk.104.2020.07.20.09.48.27
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 Jul 2020 09:48:27 -0700 (PDT)
Message-ID: <5F15CADB.9090808@gmail.com>
Date: Mon, 20 Jul 2020 12:48:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAFZDN5J8ncEHAP1H=93cBUZ_sxOzydoXKc54sKgkCcFOHV9gYA@mail.gmail.com>
 <CAFZDN5+mXMNa4kMXfq8SUKTGn88apB3SbhCM1eoevJfGcbmO1g@mail.gmail.com>
In-Reply-To: <CAFZDN5+mXMNa4kMXfq8SUKTGn88apB3SbhCM1eoevJfGcbmO1g@mail.gmail.com>
Subject: Re: [USRP-users] Persistent red LINK LED,
 streaming samples valued zero
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 07/20/2020 12:32 PM, Hai Nguyen via USRP-users wrote:
> Hello,
>
> - Are you getting any under-run indications?
> There is no under-run indication.
>
> - What sample rate are you using?
> I tried with different values ranging from 1 Msamps to 100 Msamps and 
> the behaviors are the same.
>
> - Do you see this at the same sample rate with an example application 
> like
> "rx_samples_to_file".   Are you using standard FPGA firmware or do
>    you have your own modules in the FPGA?
> No, I don't see this with rx_samples_to_file (with that example, 
> orange LINK LED appeared). I am using a standard FPGA image.
>
> - What version of UHD are you using?
> I'm using UHD 3.9.7 (LTS)
>
> Best,
> Hai
>
PLEASE upgrade to a newer version of UHD.  That version is very very 
out-of-date, and MANY fixes have been implemented since then.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
