Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F7A3D297
	for <lists+usrp-users@lfdr.de>; Tue, 11 Jun 2019 18:41:04 +0200 (CEST)
Received: from [::1] (port=34718 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hajpU-0007H3-9U; Tue, 11 Jun 2019 12:41:00 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:42559)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hajpQ-00077t-LE
 for usrp-users@lists.ettus.com; Tue, 11 Jun 2019 12:40:56 -0400
Received: by mail-qk1-f173.google.com with SMTP id b18so8054853qkc.9
 for <usrp-users@lists.ettus.com>; Tue, 11 Jun 2019 09:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=VNmWer85M1VZq52ks7Fw+3rRQiFJZNOuu/hRrFfPzrA=;
 b=b+/bP8kIlO6DzYWSspZXsroWf6JCFN5zUwq4fzFzuC3iOU2I2ToI4vp5EWMVPrgxTc
 Ce4opXBxy6yLXCrFMoI2Ti/rl/uCsaZZ7OPlBN4WoV3cvZo/4NcLCBU0yiXdIupO5Rye
 1nE+XfR8PM3STTP1Eo6UlVT6TogjeB80mRq3/BcDA/TaYFA0vhum6FNPhNGKQI6t9/qJ
 HGaIQZqKD95VojMdq+gjM01qvjtbRd/WcrWp5vgNNxhuR4Mdv3/NMWRvCbf1TsXXRgVR
 JPnjigfnA0LjrIeoC7sixGFcR29yg+HtL4gSnCZGNxGd4X9y8FAqhjv8Tq4iwGl5gn8F
 BSdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=VNmWer85M1VZq52ks7Fw+3rRQiFJZNOuu/hRrFfPzrA=;
 b=Rs+6LO8B0eZpdO4GGlYXC3mf7mzcTU4c05YT3dgE5u/mrr7SJ58Z3DmxMMEoIWkz9s
 dXwXEsBRQBz7EhR160UouQZoRhCJLRhXY/G6IQ6/ReWqHhUMvRLnIlNiYUYmgnWA8ink
 JCfVCZ5qZxEFdAB65scaWi2A6UCefHoE74HVBm/73GWUWlP7mqaP36Hm/nWCoLgtSiLl
 HM8bJJGIA1Sc4tA52kHqB11BslXUadYXqL/nK4rP8999pyuYx8ijf4FcOoSlDnDAa6Q2
 zV711bRGE27Ps2okjaQsmCbZluVaybLAxbQD8FU7cakBI9/BWsMVcaFFqSYO+YccDZI1
 4lyg==
X-Gm-Message-State: APjAAAW5rn4b5RpfGijW0P627M7J7ha2UoUjUyaxcTmQDmFDHwRdYUJ8
 G313hOpOiRRYbBnkir++WP7COo7pq70=
X-Google-Smtp-Source: APXvYqz6MViVeTGSR8b4z48ao+YTmephQwe7TyqJPUejzKnnphO2+C3WnLOnBoLoAiLHo7FprRRBfA==
X-Received: by 2002:a05:620a:16c1:: with SMTP id
 a1mr18478301qkn.269.1560271215984; 
 Tue, 11 Jun 2019 09:40:15 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id v186sm7162992qkc.36.2019.06.11.09.40.14
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 09:40:15 -0700 (PDT)
Message-ID: <5CFFD96E.8040504@gmail.com>
Date: Tue, 11 Jun 2019 12:40:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1cc193d7-d0c0-4605-8bf2-e8b6dab5c3ec@itsystems.it>
In-Reply-To: <1cc193d7-d0c0-4605-8bf2-e8b6dab5c3ec@itsystems.it>
Subject: Re: [USRP-users] problem configuring n310 using jtag
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

On 06/11/2019 10:53 AM, Paolo Palana via USRP-users wrote:
> Hi
>
> I've a little problem with my new n310. I'm trying to configure it with
> a stock XG image using jtag and vivado labtoos 2017.4.
>
> The configuration fails with error
>
> ERROR: [Labtools 27-3165] End of startup status: LOW
>
> I think I miss something, but I'm unable to figure out what.
>
> The n310 device is connected to a remote (LAN) machine and I'm
> configuring it through hw_server.
>
> Thank you in advance for your help.
>
>
> Paolo
>
>
You're going to need to give us more log information, and tell us a bit 
about the configuration.

Are you SSHing into the remote LAN machine, and then launching the 
Vivado tools from there?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
