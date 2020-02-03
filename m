Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE314150DC1
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2020 17:46:47 +0100 (CET)
Received: from [::1] (port=58098 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iyes0-00012z-Hw; Mon, 03 Feb 2020 11:46:44 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:40611)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iyerw-0000z9-PL
 for usrp-users@lists.ettus.com; Mon, 03 Feb 2020 11:46:40 -0500
Received: by mail-qk1-f175.google.com with SMTP id t204so14839609qke.7
 for <usrp-users@lists.ettus.com>; Mon, 03 Feb 2020 08:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=5MVa/qTtIMWz8ktOjTsiHEu2Bc85hpkHat7Vb1ZZI2g=;
 b=SEOUWy8WDO+LAnelZexnRdOkaw05arW5Dk8SZuovaD4QHTpQI8yQlDa3MToPDv6gvp
 5ipbEZDLAobsAohvbeX7EaJl9rmsx8zke033Av3/ss1dW4DWwMDhE+8137VW1wAoOMhn
 NxeUgTLvr2x3MRCc+MHWu/Zlsohl9fGzCgK18cB5sMZD3TgPUp3afYBqCpQDQvR44EKn
 IwZ7BBLbnYJ/JPXPcCkByqWND8374k5wkciE5hotkl3QLR78rbYHp8o+4JKikTVy5dau
 855pjbp6oIlWWyPGq37A/oH4W0ExHyRSbEQN6VPyoaTxVg1k9/q7o+bB+bChilGEW9cS
 jbTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=5MVa/qTtIMWz8ktOjTsiHEu2Bc85hpkHat7Vb1ZZI2g=;
 b=lKTNgCEYi7O20H2IOtvss0f6VXuzQAJYwZjbgOJhJyeRKrWhYHsfvCTsHibN+B80l9
 tfoG00S/zCd0bfh5qwu+nISgcmL8WYEw0NKfwQsY6/J0ca2XWLTutIwDFFLmp6gawwE4
 ng2hjt49zoWdSmnfHxPpKPHCcOeg7NCIUPa6IKa5aAZqkiR/9SppOm/Rg4hO3yto43DN
 zC+r+mBGh2eXX5A90uFNfRRzzOvaPMrK1SGulgLt56qD0+8KBiZ9l0VIya0ltFA0wNRJ
 lesSXUjMVO5kF2Dlg/8/kZSCT4fqWvrUjs16TNwGQJQUeyGsyV5AJNjdADS80+nyoiZm
 wzvA==
X-Gm-Message-State: APjAAAVp7px74uwncHfep6hFYBDSlvgkvENLHaYjtZWLU9dLx0ish8ob
 KRQlyrxohgantZciYPrV5SgQQik9
X-Google-Smtp-Source: APXvYqwt0QXHuPRebtcCeZ/xxOPy5nmpJyXu2MsDaOwumAXvdTvs/xO1H5IWZCMDh4/viqzH2ahipA==
X-Received: by 2002:a37:9fce:: with SMTP id
 i197mr23641050qke.466.1580748359982; 
 Mon, 03 Feb 2020 08:45:59 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id m23sm9899727qtp.6.2020.02.03.08.45.58
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Feb 2020 08:45:59 -0800 (PST)
Message-ID: <5E384E46.9070604@gmail.com>
Date: Mon, 03 Feb 2020 11:45:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <4964800f-842c-e3f0-4969-3e48b93b0975@novagrid.com>
 <3c5972f65acf079e9d16fbbfd39a169f79979d32.camel@ettus.com>
 <7802e95a-d7eb-2c88-62e3-aae06d541b24@novagrid.com>
In-Reply-To: <7802e95a-d7eb-2c88-62e3-aae06d541b24@novagrid.com>
Subject: Re: [USRP-users] X300 connecting 10Gb/s using baseT
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

On 02/03/2020 06:36 AM, Olivier Ravard via USRP-users wrote:
> The green led at the back of the device (port 1) is on and the second on (orange) blink
> some times.
> The "link" led at the front of the device not blink.
>
> The result of ethtool on the linux machine for this interface is the following:
>
>
>          Supported ports: [ TP ]
>          Supported link modes:   1000baseT/Full
>                                  10000baseT/Full
>          Supported pause frame use: Symmetric Receive-only
>          Supports auto-negotiation: Yes
>          Supported FEC modes: Not reported
>          Advertised link modes:  1000baseT/Full
>                                  10000baseT/Full
>          Advertised pause frame use: Symmetric
>          Advertised auto-negotiation: Yes
>          Advertised FEC modes: Not reported
>          Speed: 1000Mb/s
>          Duplex: Full
>          Port: Twisted Pair
>          PHYAD: 12
>          Transceiver: internal
>          Auto-negotiation: on
>          MDI-X: Unknown
>          Supports Wake-on: g
>          Wake-on: g
>          Current message level: 0x00000000 (0)
>                                
>          Link detected: yes
>
> It seems that only 1000 Mb/s is negociated.
>
> Olivier Ravard
> NovaGrid S.A.S.
>
What type of SFP-to-RJ45 module do you have?  Are you sure that it is 
designed for 10GBaseT?  What type of cable are you using?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
