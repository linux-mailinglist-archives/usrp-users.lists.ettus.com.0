Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4491B1D5D
	for <lists+usrp-users@lfdr.de>; Tue, 21 Apr 2020 06:24:21 +0200 (CEST)
Received: from [::1] (port=41080 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQkSH-00080n-IC; Tue, 21 Apr 2020 00:24:17 -0400
Received: from mout.gmx.net ([212.227.17.21]:38309)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jQkSD-0007xJ-MN
 for usrp-users@lists.ettus.com; Tue, 21 Apr 2020 00:24:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587443012;
 bh=E8oGD95MOZa3xJnU+i3IPvvvk8wMAW73iAW2kwhS3Vs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=fNj+HCMIuzfjWjBX8oI0uF92lrcfpbjgc/7HQwMtuPY3CxuRyTtfTsBMlUhuJvjZC
 eRhjjnEXIhX8cYXVxXUdoGm75Ips3MHg5bqiPaebJcNlrUa0hFQ1O1D3+O0fCFCCwW
 5f7vlfgLs9up6KQHf7vWhK9Rik7Po6QhnAi2lKSk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.101.50.39] ([87.101.50.39]) by web-mail.gmx.net
 (3c-app-gmx-bs69.server.lan [172.19.170.214]) (via HTTP); Tue, 21 Apr 2020
 06:23:32 +0200
MIME-Version: 1.0
Message-ID: <trinity-3d608735-14fc-4c76-b755-59be5d062058-1587443012457@3c-app-gmx-bs69>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Tue, 21 Apr 2020 06:23:32 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <5E9E4751.1090606@gmail.com>
References: <mailman.47.1587398404.12990.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-f7accbc4-db9b-4912-8e5c-f9c682236c93-1587400437026@3c-app-gmx-bs34>
 <5E9E4751.1090606@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:cOdMFhIIkDWFwejoAFeobueLged2XiKEKKqfDMTPtstB08o3DX0DwQTchOSOALLcEnFc+
 oYwuVommBPpKwIf9odjWZK+oO4rR2AqtWxXq1S/6s3Dj0hlVxhdFRFX4aBaGAjyf5Rv+kV6tZbgH
 3ZKZpfN5qEcI6xj4dAHyMG4urEWFnWMK+EnE5Xx+XliSydeaTcimODZFXE1VtnFTGba6B5TzT+Xu
 PLQAn8Dbnjm/n84giFnONoYalgTgwmy9iK0Ah+dVwJ0V6WyRCRnS5rjDzb81hN5u30O3RaguQxHo
 ec=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5o4JH7yceH4=:pNdLwjzHdYkqD7kiCqdFxJ
 wLZS5lgZ5ZSKrD1763+lmKLn33FGhLuXVdAYop5MdPIlH/7ooETm7E/HP1/szCmk37lrdza6C
 ytyRZmAAZ4Q6fNIVtpj8K6CHl6wkxBiSmsg8BKYjKXs+VpnmrUU+IP746y4Ll/97SOD7C/hrj
 lZEqfKPb9px2HzWNEq7TNcL774Nn+dPSBbzWsB6dkVSuXh6AnoHmf6311vyD7wsnQxjBglv8V
 iI0xnWhTlk5yDCquOqA3yZ8XZ3I9I493j3psTC8b+gFPvIR4ENXG74owmYJZxN+54u77FWUJL
 9QmXu8NJj/+7J9IZr8tOTrxWA5U7ygvA/hlYnZCu2VlufOqwLmo/lWM8/ub+2WHtgXWSkzTbf
 nhReQ7GLDhWj/T3gJW6AkTdFq5EL8REo38jf9Boyen8CBtVCG7r2qqOqzdFq+GhNxMmuKPads
 MOqu52Ym6nYQi57rzeAjJX5KE3xx9toHNMur4oITQsmOZFc3728l4ldv9XkLZOwYHcIteIvQ5
 FSrrkD2pPNtead77NDiFBk0RXwf4bCe8RCgv5YoaZfeIcNMIBMMeKieWugryhgyU7JoS5hoJJ
 Je9NAUuiJclrUte31IyE2xLzg+Z1tsJ0kfJKtexvKSoVo6XgXk1L+Z2hNrn2l63+k2gpUb4Jz
 s0ICYdB/hn8x2whu9dQHUUou9oav68QHMZjJ9U2M+DYp+leXvbZFO82oqPogAJufVBnA=
Subject: Re: [USRP-users] Questions about UBX-160 Noise Figure
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Cc: usrp-users@lists.ettus.com
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

Hi Marcus,

> Von: "Marcus D. Leech" <patchvonbraun@gmail.com>
> [...]
> > My question is if my approach/understanding is right.
> >
> > In particular I do not understand Question 4 (why does noise not reduce if I reduce bandwidth).
> If you're varying *analog* bandwidth, rather than sampling rate, be
> aware that UBX doesn't have variable analog bandwidth.  It's always fixed.

I see.
Great point.

I just found: http://ettus.80997.x6.nabble.com/USRP-users-Which-bandwidth-does-uhd-usrp-multi-usrp-set-rx-bandwidth-set-td11897.html

And it seems set_tx_bandwidth() and set_rx_bandwidth() do nothing then on the UBX.

I wrote before my noise level should be -174+NF+10*log10(5e6).

But based on this, it should be more correctly -174+NF+10*log10(160e6) ... is that correct? (I just receive the raw samples from the USRP via USRP Source. There is no other digital filter?)

> > Furthermore, I'd be interested if Question 5 is conceptually correct.
> Conceptually, I don't see any problem with it, but it very-squarely
> enters  "consider a spherical cow" territory.  You CANNOT use a purely
>    arithmetic analysis, due to uncertainties.   I would, in fact,
> encourage you to acquire a decent broad-band, calibrated, noise source for
>    you lab so that you can do Y-factor analysis, if for no other reason
> than to satisfy yourself that the noise equations work.

The issue with the bandwidth calculation above would be one of them ;-)

> I've used these on a budget-sensitive project just last year:
> https://g8fek.com/precision-noise-sources.html

Thanks for the pointer. I think I'll get one of these.

For a proper use I would need a steep filter though, correct? (in order to have a well defined total input power Pin=-174+ENR+10*log10(FilterCuroff) dBm? )

Thanks,
Lukas



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
