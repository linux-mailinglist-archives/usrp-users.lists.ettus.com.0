Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B0D2C90B4
	for <lists+usrp-users@lfdr.de>; Mon, 30 Nov 2020 23:12:11 +0100 (CET)
Received: from [::1] (port=41124 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kjrOx-0002er-Nh; Mon, 30 Nov 2020 17:12:07 -0500
Received: from mail-qv1-f47.google.com ([209.85.219.47]:38761)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kjrOu-0002Xd-0x
 for usrp-users@lists.ettus.com; Mon, 30 Nov 2020 17:12:04 -0500
Received: by mail-qv1-f47.google.com with SMTP id n9so6432697qvp.5
 for <usrp-users@lists.ettus.com>; Mon, 30 Nov 2020 14:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=RNoNJe8e+yG21uUEfuMa8qpDHFHNxxJ5zubKDueeqPQ=;
 b=mLDNme9eAWuJMnenWBtRnIp6VuAQ3ldNROVzuKxd6KI/D7sNgW4oLmSgi3Y+HPxHeQ
 yhaO44sFIhYCtfbLgYiCZtlxjgQ+dL0d7xvW2rWTQJFMsMX0gbwMIZ1MQLCvemiOWZiA
 Gtf6HN72s8mBSCUmXXbXwbWK4O4DQiAbeB+sH+Wa78aA7e49xgl+mn6k/2ypeLsQn4qN
 AuR7K1FCBCzXNR6LyD0txsvaCy7EL6dbg+xr9hFPGweh6nVRYkQT2S27HuCsFKzQeSwd
 kS61wmZGnDfjVBK4qKo+lCOF+cUwuJnZMTZW8zP20Z0RrqQX2UpaL31aBlacobADaxAr
 0iMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=RNoNJe8e+yG21uUEfuMa8qpDHFHNxxJ5zubKDueeqPQ=;
 b=dySeI+ytc2zxJMODrRobqpx27cqWYAGt8wfoxvNjt2cBOnGNeSjX0xgVTkiVWCjjvW
 VkHG+MCkHTr5SBEjDcRqKz5qREfwN3i1U0nucNOGE83wDzNttGelTd3YAF2sCcYeNnhN
 OZHzzHlyyz1bs0KfqirJ9zQ5+Ll6tjE5FHS8ZQPrg2a2xiroVOg0r18x3Vr6wOdcuXne
 azXLX+hEOqkid2gEDMdECZUJHh51AOgj5e4O9o6k8M9ZPHfg827ouL3Ys7m2BBbx81AI
 pobmlcnzdCXu4OKTEMpXDgWcJ/7tuyY/oYw5da7f9G6vLL8S2xFJVXpUd9kHQtxPd1/M
 t2tg==
X-Gm-Message-State: AOAM531jVRYJ69KwIsvPnx1F+slBKrNMcisbrkcdbqe3hnvUWCCukl4s
 Gh38l4QMQ9vA93Glqr7ScH9QxUwLuS0=
X-Google-Smtp-Source: ABdhPJzvIyMkqPvHr5jMoMXzjm12VGyH/b2ChA0+w2W4+jCsamNpq3vCrdVMZtc9TqYQmeiN8vesMA==
X-Received: by 2002:ad4:4661:: with SMTP id z1mr25164037qvv.19.1606774283199; 
 Mon, 30 Nov 2020 14:11:23 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id a13sm16134899qtj.69.2020.11.30.14.11.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Nov 2020 14:11:22 -0800 (PST)
Message-ID: <5FC56E0A.30506@gmail.com>
Date: Mon, 30 Nov 2020 17:11:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jens Hoffmann <jens.hoffmann@mail.de>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <60ffa266c935b350ffbe56c13b3df309@femto-st.fr>
 <38E03DD9-B06C-4C8B-AF7E-677D6F652915@gmail.com>
 <em7ecf7731-c223-4682-abbc-040656c0e077@dx-jh-t470p>
In-Reply-To: <em7ecf7731-c223-4682-abbc-040656c0e077@dx-jh-t470p>
Subject: Re: [USRP-users] GNURADIO doesn't find USRP B205
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

On 11/30/2020 01:27 PM, Jens Hoffmann wrote:
> uhd_images_downloader output:
>
>
Again, you have TWO UHD library installations.    The version that Gnu 
Radio is linked against is 3.13, whereas your
   uhd tools, like uhd_usrp_probe are apparently 3.15.

My *guess* is that you installed Gnu Radio from the packages repository, 
then did a UHD source install to give you UHD 3.15.

Which cannot work properly.

Unless you really need 3.15, you should uninstall it, and possibly 
uninstall and re-install Gnu Radio and UHD from the packages repository.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
