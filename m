Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DF9F9466
	for <lists+usrp-users@lfdr.de>; Tue, 12 Nov 2019 16:35:17 +0100 (CET)
Received: from [::1] (port=52918 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iUYCK-0000Jr-S3; Tue, 12 Nov 2019 10:35:16 -0500
Received: from mail-qv1-f48.google.com ([209.85.219.48]:41062)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iUYCI-0000BV-3S
 for usrp-users@lists.ettus.com; Tue, 12 Nov 2019 10:35:14 -0500
Received: by mail-qv1-f48.google.com with SMTP id g18so6521175qvp.8
 for <usrp-users@lists.ettus.com>; Tue, 12 Nov 2019 07:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=9cW4Z/csfX6M8wgNBLnSEB8f6l2WXrcNP8+XLK7kc+U=;
 b=GeOQB0q2XgaEyqxgx02nfKeeS9OxcFYQ3oOdKTa7066wP5GTlL8AxoLdncny/+mc4p
 MKyARY6bnkOG6X0irbpK3E3Moganl/Ov1s5g130TopRTejaE0FDhfWgZoIs91zWZIsu8
 UKu40Jr9Fn0MYYQkvRdNA4PYXw4rlOU1ST1iprqB9GdrP+d/YDZ4Nh/W/oztXanCJx3S
 /IITomnOl6lZkbgaIlVgjr4EQjlBu0xh8oncyt6bXN6jwG+3Tgd97kewUg/Qa6KkspDN
 OSh/KSVclKayV38YAPzEwLOPDn654VHwbRCNw57pZu3kGHYEvun4V97zBMCAK9ae84C5
 OlwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=9cW4Z/csfX6M8wgNBLnSEB8f6l2WXrcNP8+XLK7kc+U=;
 b=pTTaVz2lTtUFsv1cDmigakrPxcPr6AY6xFm6dgB6MiTJjzoOGDKTkIdSJJX5IRl2L9
 VLQNy5gsHw3ue+OSY3NN26WOi5MI02aBvG1M8HWlKMlLYt2KcYoJtuZxtgr1sry4ep7j
 ofQNufro9zDJaEYjbGf9m11YGl0bTyXsrpI0j/8yJfLHDPUVVDI+B5c+gll4EuH8glLG
 gOPzBbVG5D4eQQNO2H1CM9IAiLd0oiwnikcKur+trY0hBRH4ONKAmHuMbT6Zbxqxo78y
 kSyvbWfAaio2diljaa2UA8IfwyB6YzAFi242VXJpdEQTNQOZws37tR2IEubgvOjDn9hy
 LWiQ==
X-Gm-Message-State: APjAAAX4DwNT8/9bjYmgjSmcf8azfXOBkMjnA4drSeYl1n6s5M8WiUJr
 vhfPenzIsY1I0nmqrbmdM4amoS8MziE=
X-Google-Smtp-Source: APXvYqwyELapCziHxXuQYrrceKedwTsoCyeiAHSQ98DtIdOlPFFIFVUXh5mbcnl+hclUgEkkvlz8RA==
X-Received: by 2002:a0c:d2b4:: with SMTP id q49mr28341580qvh.135.1573572873390; 
 Tue, 12 Nov 2019 07:34:33 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id o53sm11467437qtj.91.2019.11.12.07.34.32
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 07:34:32 -0800 (PST)
Message-ID: <5DCAD108.4000207@gmail.com>
Date: Tue, 12 Nov 2019 10:34:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BN7PR01MB3859967050EB771F0A90D7CFCB770@BN7PR01MB3859.prod.exchangelabs.com>
In-Reply-To: <BN7PR01MB3859967050EB771F0A90D7CFCB770@BN7PR01MB3859.prod.exchangelabs.com>
Subject: Re: [USRP-users] Question about the IMU (MPU-9150) on the E310
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

On 11/12/2019 10:26 AM, Beeman, Isaac L. via USRP-users wrote:
> Hi List,
>
> I have recently started working with the E310/E312 and have gotten multichannel RX/TX and GPS working, but I can't figure out how to grab data off of the internal IMU/MPU-9150. I found some website (http://gnuradio.cn/en/html/support/en/page_usrp_e3x0.html) that said that the USRP image should contain RTIMULib applications with allow the user to test the IMU, but, unless I am looking in the wrong place, the current image for the E310 does not have any RTIMULib applications on it.
>
> I want to know if there are any API calls or libraries that would allow me to do development with the IMU.
>
> -Isaac Beeman
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
You might start here:

https://github.com/RTIMULib


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
