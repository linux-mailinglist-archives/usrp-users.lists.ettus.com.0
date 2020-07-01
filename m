Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C1F21146B
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jul 2020 22:27:02 +0200 (CEST)
Received: from [::1] (port=53618 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jqjJs-0005qE-Hu; Wed, 01 Jul 2020 16:27:00 -0400
Received: from mail-qv1-f48.google.com ([209.85.219.48]:43755)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jqjJo-0005i1-BU
 for USRP-users@lists.ettus.com; Wed, 01 Jul 2020 16:26:56 -0400
Received: by mail-qv1-f48.google.com with SMTP id e3so5312696qvo.10
 for <USRP-users@lists.ettus.com>; Wed, 01 Jul 2020 13:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=VRjxhlrUACM1hHyOWbrejN+sGLS9XoFBjQpSO8AkPYc=;
 b=d6b5wBtT2ovlwgWTjeyxVnor/g8F9A5SkkpAu2sEGrPWc5JAKWHCPD3Qyc6GSM/d0f
 PYVQD9vz1dHQLjeC6nRmxYkTBskgScayHnc/JzqAK0YSsoO8rEuCDCRE/GJipSSKiB1h
 FZHTbQJ/Q4fQr77tHbweFXe6KJtXZacs1oNUcWZXK9fk/p/n5weKVQPYqpS6QHYT+BLv
 Qo9dIu3JEshKK6LXG/ZGs4htL24wZSGYaDXEDQBL1/wttofpZVN4R+erp7isVu0mQ3v2
 RPDNv5zaD2qIhi71pYuPj6E4JbVkYhD+1agYfyG4AR2sloIbdJiUuoKz8CE4SZMpKeKG
 hySw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=VRjxhlrUACM1hHyOWbrejN+sGLS9XoFBjQpSO8AkPYc=;
 b=iee8+A+kc7S9PgpXh69G9fF1OBDt0FzyEFa3d2k9V8WeniMRLbtTAuHJBlIEobMcnD
 UDjnT0fJDmCJe0vjX0pE3YGD/yueTKvoCm2BdPtf5LP0Eio3Plyfk0/TLvD0el+YQ/jI
 DpHay+RVKJbnBhffjUFcBL2J89P8GRV8FSV7EyxeshnEEkXYr9coqtzU6jwgvRd8an4l
 vYcXowBSEOzmXxCY48aVNpIkAByPy2ETbrDBIseSvhs9nQy2u9XG+djE3tkxnMONBthI
 ScmoL8IoLOWzYCQka8SY5LRVfBL4KkydrwCvqmdHzgfg34//UrHGp0ymn8Ee5F0k7t/l
 evVQ==
X-Gm-Message-State: AOAM532ZaPybH1zpsw9ndvIZYijndJc9cGOa5C8qCfs0MNibstLTmp/d
 6TtA7OCmBqdbPCq4tyXkGtKmcKjV
X-Google-Smtp-Source: ABdhPJwheZwJcwxuwtxwpRkaQ0qewqdeBBYHl/MUCN4LztmFjyIGusS2dIPefo+OBOXgo+sZYf2btw==
X-Received: by 2002:a05:6214:108b:: with SMTP id
 o11mr16866594qvr.86.1593635174940; 
 Wed, 01 Jul 2020 13:26:14 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id a25sm7083814qtk.40.2020.07.01.13.26.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Jul 2020 13:26:14 -0700 (PDT)
Message-ID: <5EFCF165.4060205@gmail.com>
Date: Wed, 01 Jul 2020 16:26:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nate Young <nate.young@wde-llc.com>
CC: USRP-users@lists.ettus.com
References: <CAJU_EcVqLsgWuRCPfQAjcpmrRFUMepJXMfn7Y3ZPpe0wOVgBnA@mail.gmail.com>
 <FBD35268-FBD8-4E28-ADB4-6376E3310F8B@gmail.com>
 <CAJU_EcUrSau0mG7MJe0DWjqg+07whOhb9A=osmsv6bCfnzB_4A@mail.gmail.com>
In-Reply-To: <CAJU_EcUrSau0mG7MJe0DWjqg+07whOhb9A=osmsv6bCfnzB_4A@mail.gmail.com>
Subject: Re: [USRP-users] Exception in uhd_usrp_make (b205mini)
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

On 07/01/2020 02:03 PM, Nate Young wrote:
> Thank you for the suggestion, unfortunately, the stock image (from 
> /usr/local/share/uhd/images/usrp_b205mini_fpga.bin) had the same error 
> message.
> I also ran uhd_images_downloader to make sure the images were up to 
> date, as well as verified the udev rules were correct.
>
> I started probing the board, and found that the output of the U9 clock 
> buffer chip is not correct.  It is 40MHz, but has a slower speed 
> (~1MHz) on/off modulation to it.
> It turns out the capacitor C90 is no longer on my board ! This 
> capacitor provides stability to the LDO in the CDC3RL02 clock buffer 
> chip, and according to TI, will cause modulation on the output waveform.
>
> So this is likely the cause.  It looks to be an 0402 or 0201 part, so 
> I have ordered some of those in 2.2uF and will see if I am able to 
> replace it.
>
>
One of the issues with teensy SMD parts is that they can be "brushed" 
off a board relatively easily with a mechanical impact that would be
   no problem at all for lower-density through-hole parts.  This is one 
of the reasons I don't like to run these modern boards outside an
   enclosure in a "busy" lab space.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
