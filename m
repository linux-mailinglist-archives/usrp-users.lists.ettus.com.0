Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACF314212A
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jan 2020 02:04:00 +0100 (CET)
Received: from [::1] (port=51946 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1itLTy-0006EZ-Vc; Sun, 19 Jan 2020 20:03:58 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:40665)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1itLTv-0005zR-6i
 for usrp-users@lists.ettus.com; Sun, 19 Jan 2020 20:03:55 -0500
Received: by mail-qk1-f173.google.com with SMTP id c17so28601788qkg.7
 for <usrp-users@lists.ettus.com>; Sun, 19 Jan 2020 17:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=zUSCVehokbZGA3epGZNQ6LvPr07uQ9ULeyWeGiv4rHk=;
 b=NrnscKZkPkY70KSPRJuBJun37GkVJS8NHnRAkBaNn74J+Os5Twnn6cfowrHHnWpk83
 YAThJoAJ6zmlTTAxYWs/+vMSIWb68on/EabrEdEgC8mDgvy+LwQ7cJ6tJtXwq16h3FBF
 cYRe1KPkgBYwzuZmPniX+cUt42hFYhNpYsE6PvY9TrY/VBHk05WjKusYll2NT83oPqRI
 hcwn30pqC5YZfn+fKqdZBO8+VKOUUWCRdXkm5Nk2dNxaV9K2P39R4tnN8YFYJoQFNhgr
 oMJFg66JQEHd16uNDj/b9K9n5ejOCYJQ/9957L7TRkMnz/2wkmVDXehiLxxBOSx76VQa
 LI1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=zUSCVehokbZGA3epGZNQ6LvPr07uQ9ULeyWeGiv4rHk=;
 b=Q+xTZLgr8KG+6zVwOn4K8obYOPSCY2JHshFUCkwCQJ83CmpEUa5w9KK/4dmUjFTzUh
 fPlhspdQbt6dR4CTkM20uARwHIamu7WBxXS61Iswt0EodrkjcV4Nm8uwCR1nvzZzxHUB
 /iyzNPah8bvSE6hq6o2rkt/V/CPXP3yb7WIfF9jCDMMeQz4gNXaNwbieRCfSYm/QFITG
 avDhuEgmRWglZgp/g8dBFdYV07H0Ys5s7st8YiJ2IPIHvBO96AEjZaFAPXQqHdAwCWXN
 sfb+pPAro4s6/OLv2Bm3A8qI8Xar68ZVGcsEqsz6bR3F222nWVpaoTcy63PPeZX4tC2n
 seJg==
X-Gm-Message-State: APjAAAXy18w4d84fa9Er3Wo0wX0JDSE0Me4gXFkkXpVAcGCPlaIQ6czX
 oA4eN/OuIhdHwssLfuFOxQYhgSx9Lz0=
X-Google-Smtp-Source: APXvYqx1pKe5vEKRPZZH56DerX+B0TSMsi7HwlPtTfRK8om1nGPzIwFT4zuCaW3JL9f3R1NOQiW3KQ==
X-Received: by 2002:ae9:f709:: with SMTP id s9mr43708859qkg.463.1579482194457; 
 Sun, 19 Jan 2020 17:03:14 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id f4sm14992175qka.89.2020.01.19.17.03.13
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Jan 2020 17:03:13 -0800 (PST)
Message-ID: <5E24FC51.7070908@gmail.com>
Date: Sun, 19 Jan 2020 20:03:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAEnX9dG3dQqn9QyMw+gr6aw-HaQOb+aoZ6zYpQeFowrMZyoF9A@mail.gmail.com>
In-Reply-To: <CAEnX9dG3dQqn9QyMw+gr6aw-HaQOb+aoZ6zYpQeFowrMZyoF9A@mail.gmail.com>
Subject: Re: [USRP-users] uhd_find_devices - No UHD Devices Found
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

On 01/19/2020 07:49 PM, Joe crossen via USRP-users wrote:
> Hi all,
>
> I have 2 USRP E312 devices.
> - one has a GNU Radio image
> - one has a Redhawk SDR image - 
> https://geontech.com/redhawk-sdr-and-an-ettus-e310/
>
> With both devices turned on, I am attempting to locate them using 
> uhd_find_devices (and also the probe command), but it says No UHD 
> devices Found. I have 2 host PCs, one running Ubuntu, one running CentOS.
>
> Everything is on the same network. Everything can ping everything.
>
> I have used Wireshark, and noticed that the uhd_find_devices command 
> broadcasts a UDP package throughout the network, but there is no 
> response.
>
> However, I have noticed that all UHD driver versions are different:
> - USRP1 (redhawk image) = 3.11.0.1-0
> - USRP2 (gnuradio image) = 003.009.002
> - Ubuntu PC = 3.14.1
> - CentOS PC = 003.010.001.000-0
> Would this be the problem? if so, how do I go about installing 
> specific versions of UHD on my PCs? (or possible the USRP devices - 
> though I would rather not mess with the images)
>
> Thanks in advance everyone!
> Joe
>
>
So, the E310 is *primarily* an embedded device, and there's something 
called "network mode" that make it behave like a low-performance
   version of something like the N210.

In order for this to work, a few thing have to be true:

   o You have to be running the same version of UHD on your host and 
your E310
   o The host UHD must have been compiled with E310 support
   o You need to run the 'usrp_e3x0_network_mode' command on the E310 
(via SSH or the console)

Don't expect really great performance--perhaps 1 or 2Msps is the max 
that can be achieved.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
