Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B798A8F3
	for <lists+usrp-users@lfdr.de>; Mon, 12 Aug 2019 23:05:24 +0200 (CEST)
Received: from [::1] (port=45102 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxHVK-0002SX-BY; Mon, 12 Aug 2019 17:05:22 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:35998)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hxHVH-0002OI-0M
 for usrp-users@lists.ettus.com; Mon, 12 Aug 2019 17:05:19 -0400
Received: by mail-qt1-f170.google.com with SMTP id z4so104380488qtc.3
 for <usrp-users@lists.ettus.com>; Mon, 12 Aug 2019 14:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=2MhQVIHpUvNpSDJgtipsCnaqARDBVGv6At25nnUnYxQ=;
 b=r3WCsmh6PrOMXksynCMCxDSylPeWpsh0qWSMuLgwLIfDIunrmW1AIwW3akiEx4mgp0
 u3cKtZ0W7bpIkXsyNFWKMHF6VwmIjkV80XtUgy67CAK/ulIDFI+4q/TXJZiRC02gNAvh
 L2Wtv9qURP1MjLJzQLCGYpXP5fStsW4dTIrOWr3OxJGF8V9xCmNPaRnazKvZ1HOokC3M
 K4FUngX8/7Gk3/tOdahiMZMpGtDNWMSfNlXSlBbMymPp8n2iM7d7HkK/YBJfbms/bDOF
 z5t4aDik4xQ4+5vRvB+NyUZhDdrXkXzs3VqJv4rGnuIQ31g/KKFCbs+aC20zrFmtCSk2
 jKAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=2MhQVIHpUvNpSDJgtipsCnaqARDBVGv6At25nnUnYxQ=;
 b=CDsN0zXCmWk7s+LL1030EpgUtq0amKLJLykaX6VjgOq0VpWHY1IWiexg6ezPjbKHYI
 qqfwiQ6Y3vTklpI3AaoNq7N4CMS7JM6v/5JuizmbPzMHg87Tt/RxAf3c4G+pWwv96BU5
 Xi7Bp7gCMFbxjgs633ABBNZqWeRCVDMMeDiybhxlt+M7LhHKOiyXgSbRjtg8dafdoB1J
 WvBCOVLQCrDrm/kf6R11X9u68O/ddmq3Sv6y/5lqQshRXZxIv7O1CT0WWBTo8Zw3/Ar6
 DckUE0m79P2Bd7j8C/0tKWcB0B8Ezheb0uiPmFYOfJCr7ezO2nRC7DbiN0DxKiAzuNZU
 X7FQ==
X-Gm-Message-State: APjAAAXBIr5UymCXLfc2lUmlUBlpQDW9mECB5aeJKbRfblmaxco/SDAZ
 vIRE+ib0VsWLhknXBy8ZLujj5N40
X-Google-Smtp-Source: APXvYqwo8vimp+kII0m7rcnkl91p9qDur3AjQQIQPG37p+LFAYn3r2WzKsxxZ68ezPdZdwq0cOB3rw==
X-Received: by 2002:a0c:becb:: with SMTP id f11mr30558241qvj.33.1565643878227; 
 Mon, 12 Aug 2019 14:04:38 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id d12sm44000148qtj.50.2019.08.12.14.04.37
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 14:04:37 -0700 (PDT)
Message-ID: <5D51D464.6020201@gmail.com>
Date: Mon, 12 Aug 2019 17:04:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAHe2E1LmevSXC6_CNOn14cpMYRwDMXj7WSv5U=nrEQcesobZfw@mail.gmail.com>
In-Reply-To: <CAHe2E1LmevSXC6_CNOn14cpMYRwDMXj7WSv5U=nrEQcesobZfw@mail.gmail.com>
Subject: Re: [USRP-users] Differences between b200 and b100
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

On 08/12/2019 04:38 PM, Federico 'Larroca' La Rocca via USRP-users wrote:
> Hello everyone,
>
> We are testing our ISDB-T transmitter (see 
> https://github.com/git-artes/gr-isdbt) and we came into a very 
> important difference between the B100 and B200 when used as 
> transmitters. See the attached screenshots, but using the same exact 
> setup except for the transmitters (i.e. same antennas, same sampling 
> rate, same receivers, same software, although we have tested several 
> gains on the USRP just to be sure), while the b200 receives the whole 
> signal flawlessly, the b100 tends to distort the edges of the 
> transmitted signal's spectrum. In both cases the signal is received 
> with another b100.
>
> To be a little more explicit, the ISDB-T signal is OFDM modulated with 
> 6MHz of bandwidth (we are both receiving and transmitting at 8MSps), 
> and the figures include (starting from below) the received 
> constellation, the received spectrum and the received symbols per 
> sub-carrier. It's precisely in this last graph that the problem is clear.
>
> The question is then: what's happening here?
>
> best
> Federico
>
What daughtercard do you have in the B100?  What sample rates are you 
using?   The B100 and B200 are *VERY* different hardware internally,
   and the RF pathways are not that similar, and the internal DSP logic 
is fairly different also.

With the B100, the sample rates have to be an integer fraction of 
64MHz.  I'll also comment that the B100 is obsolete, and has been for many
   years, so if there is an internal problem in the DSP design, for 
example, it's not likely to get much maintenance work from Ettus R&D.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
