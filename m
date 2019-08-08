Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0338F86565
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 17:14:22 +0200 (CEST)
Received: from [::1] (port=36894 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvk7Q-0003ov-4m; Thu, 08 Aug 2019 11:14:20 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:42041)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hvk7M-0003hq-AK
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 11:14:16 -0400
Received: by mail-qt1-f169.google.com with SMTP id t12so3917785qtp.9
 for <usrp-users@lists.ettus.com>; Thu, 08 Aug 2019 08:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=2rGYWGtqtmIUipUMk6SXPPsJ8tPOqFtHMn4ckSlCM1I=;
 b=TcmEI6J9dpz+MjzTsS+MioN+YBrgmMhgXVGt8rkLtltcrlbWxslgA/w0/bdmzJZ0ds
 2rZ6W2PH3CB3LDHnHgGyC215h9rqh6XmDflJdW+0rW+f6DeKAskEZK9KSDi8M4foyn24
 Z6LXuSPg9sKZuuR/wvxS4B0Won6zUGMXJlPwgRNrs9rddrGEh3mXuuu11SbOqWaMbe3d
 kh9xi26TAUleEFFB3ds2TVQop9W7d5RYZaNKRnfptOR9P+byJcUBfukQtRhh/fSV/EAc
 uCTYYjBQukHJz3kvB1k7xUb78D+q/n2xGLg9Yb4pYAqgMKzeO88aCdkcCLcc4/mjP2C3
 OGUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=2rGYWGtqtmIUipUMk6SXPPsJ8tPOqFtHMn4ckSlCM1I=;
 b=Nj8YJy1bbJtHQTjZBrENOJioADyTAVKRepNDXXxPwfzyhBDAlrdOLyg6FnI3AeyKeN
 2UAhEoYJvroM3PhUupaeQP9BztKdQVUYfYJzdiZqlipqc5KuyjqQnpbT3CESGSrKjKqF
 ttPRpk4UKxzXYBp7holssbe+YwYyvQMe9n9NkmkBvwIf1j3DebrgwXBB3VdjO6awNvYU
 /A+ug67F45/fsmywuyMOFbIYeW3wKACLE8aCIm8erYhMQyavFE1+a2Z4SQe6CEu+21xO
 Pfun3/LEzh8mvnzaFtHz2fr6t7IIrS+r5Ov+IH5cRvJO161vf8yUMiO2CeiTLmqnS9Yt
 3xCg==
X-Gm-Message-State: APjAAAUg52mlzXx4ZWRDGD/eiWFnfMnmmyhMcD/G6Px+sXeYU/6DnMDw
 ot+OVtjY8pS0kzPFI3i86gwexG1G
X-Google-Smtp-Source: APXvYqzJU91LHpVPKDx3b92GXASvM5WrDAdmheUpXvZk7zNXN/g22JCaoMkbtyXPzQELae85umcNQg==
X-Received: by 2002:ac8:35f6:: with SMTP id l51mr13642107qtb.109.1565277215603; 
 Thu, 08 Aug 2019 08:13:35 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id q73sm27696765qke.90.2019.08.08.08.13.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 08:13:35 -0700 (PDT)
Message-ID: <5D4C3C1E.2000704@gmail.com>
Date: Thu, 08 Aug 2019 11:13:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <02568f52-a7b4-df86-101e-eaec26cfed9b@g7iii.net>
In-Reply-To: <02568f52-a7b4-df86-101e-eaec26cfed9b@g7iii.net>
Subject: Re: [USRP-users] RFX-2400 - Band Pass Filter
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

On 08/08/2019 09:01 AM, Iain Young via USRP-users wrote:
> Hi Guys,
>
> Another long shot from me, and yes, again it's hardware that's EOL
> and "Not recommended for new designs", but it happens to be perfect
> for my needs (a 13cm Amateur Radio Beacon if anyone is remotely
> interested!)
>
> Anyhow, I have the opportunity to acquire a RFX2400. I understand the
> RFX2400 has a Band Pass filter that covers 2400 and 2483. Obviously
> for 2320 this is unwanted, but I understand that it "can easily be
> bypassed"
>
> I can see it on the schematic. Looking at the schematic though, it
> looks like this might need to be a hardware mod ? by cutting the
> tracks that go from pin 3 of U202 to the SAW Filter ? Or shorting
> pins 2 and 5 of the SAW filter ?
>
> That said, Pin 5 of U202 suggests a software method might be available.
> Anyone know for sure ? And if it's software, how, especially from within
> GRC ? I'd really rather not have to start butchering things if at all
> possible!
>
>
> Thanks and Best Regards
>
> Iain
>
>
You'll need to modify the hardware--the RFX-2400 didn't have any 
software support for filter bypass that I know of.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
