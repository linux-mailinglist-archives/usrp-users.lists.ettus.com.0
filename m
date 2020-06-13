Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 439FC1F80B3
	for <lists+usrp-users@lfdr.de>; Sat, 13 Jun 2020 05:25:50 +0200 (CEST)
Received: from [::1] (port=42506 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjwnj-0006Cc-1J; Fri, 12 Jun 2020 23:25:47 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:33806)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjwnf-0005r9-B6
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 23:25:43 -0400
Received: by mail-qk1-f181.google.com with SMTP id f18so11037184qkh.1
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 20:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=hu7xtSaI3D4JHDjKGzu6bee5IJqjwSTyAA8hoP2d5s4=;
 b=aZtojO4dQoHM9U54BV/iVGvBDXGT4PRSJev51JBcFMTYYHnq+Un0dfwOqGPwxxhDfI
 TQ8JXk5OrgcxeFMA1zwU9L9jzlREg1zkMmpg2mnmWoxO90QfWlPY+ULmh7mFRJwWIEs4
 bTbaFQ22f2+pQpPzCvIGN0tNvlHDXGRdjZpt/TdrktOzohwGGkr286I5dGPLkJVxbsBQ
 fx/26QukazUfOnOwmQ+RNsBmHrE2qdZxc3C3NRibLb7E8VhlrGTgX7+dtM5YVfpUHnJc
 SMmfopAMR8gMUHs5MhifK/YldbYkm/+H6u6V6yTX/l1ebtYji37XhmvVR6fVdY7XFbvg
 QVGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=hu7xtSaI3D4JHDjKGzu6bee5IJqjwSTyAA8hoP2d5s4=;
 b=BiepdyQZxX1abUY2t20EHxED2dTEMrmmqUwmQu2vL06zESwwzZGwJbuqnbxHN5I6f9
 ZwZBEFjoy3fE7ISNl62Lg0ue0cPvm511bk7wbKi33gkIblbMc8scMaNmrhM3O7xqY7HX
 l1otY4MPJn00rLCUv8J/97bVgxIzf0DYKBiD05Nwc4cbbHHLvATyn2Dp2xwpnHhuS5ty
 xy3eKGn+fghZQZT1pkUNgzE3xa1v/wELJ01Gd1zqnsS+2KkgBvUBDwRqiIxEF/DvntlL
 SZj+8dfnnNCGRIJzuD4KMOteDC0SayIsnPiM8LsGw24GFkb1o94ulcvRARRO4q66hC4K
 Ua2A==
X-Gm-Message-State: AOAM530QdlEHZTuUsu4o8aJQvfOb40Br96vjHUtREM8kOhTm+Y5v6I0Q
 YT7YMUjdPkMNjl5XKNISG9J+vNsPg2k=
X-Google-Smtp-Source: ABdhPJwp93nNnqnlIMX4Pf6mRqFlQKoDguAjlYeGSzSNpNc8Q8TuUGlL9Q8jU/3TpAJpJFMUdXb0Lw==
X-Received: by 2002:a37:9ed2:: with SMTP id h201mr6118557qke.280.1592018702542; 
 Fri, 12 Jun 2020 20:25:02 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id k34sm4549336qtf.35.2020.06.12.20.25.01
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jun 2020 20:25:02 -0700 (PDT)
Message-ID: <5EE4470D.3020809@gmail.com>
Date: Fri, 12 Jun 2020 23:25:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <ebc6fa45-4ed3-6507-c44e-0bf7be48b30b@dcsmail.net>
In-Reply-To: <ebc6fa45-4ed3-6507-c44e-0bf7be48b30b@dcsmail.net>
Subject: Re: [USRP-users] UHD USRP Source block message port
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

On 06/12/2020 10:47 PM, Barry Duggan via USRP-users wrote:
> Hi!
>
> I am using a GNU Radio USRP Source block and would like to know what 
> messages in addition to 'freq' are accepted. I have been unable to 
> find any documentation on it.
>
> I have a B200mini.
>
> Thanks,
https://www.gnuradio.org/doc/doxygen/page_uhd.html#uhd_command_syntax_cmds


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
