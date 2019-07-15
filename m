Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0291169E76
	for <lists+usrp-users@lfdr.de>; Mon, 15 Jul 2019 23:45:04 +0200 (CEST)
Received: from [::1] (port=40926 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hn8mM-0007Za-24; Mon, 15 Jul 2019 17:45:02 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:37039)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hn8mI-0007UR-Eb
 for usrp-users@lists.ettus.com; Mon, 15 Jul 2019 17:44:58 -0400
Received: by mail-qt1-f177.google.com with SMTP id y26so17322098qto.4
 for <usrp-users@lists.ettus.com>; Mon, 15 Jul 2019 14:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=UeTzmvgM0KIJyZYX/IJKTqJS0xBWi6633Rziz3Ra6jM=;
 b=sJ8sRK+TzQBw/R3IoY0rHXicGdJgBpMNfKXoyOCfAIL0Wcp+ue1GKjZ5YibyUVfAMc
 hSOm5TOV3jdML+ntxRUnfoF91UjEXu3LD+am03Z/OpjVPFKLWJFrq5y2EApxRA5jSeDS
 1oJ/0UGmV2R+RPS+GwL9evq1YkG2HrpU4Uu/S6uKvCwd1dNAwPUwmk0Q5Q9AcLk/pIUZ
 KOgr/7ID67qxoUNmb56y8pN3oVgfcb6mUb7t3IM+8g43CDjYnaH/JxNK2+opN9o84Mkv
 13oDNCCyRZKbI443FO3ofwJy4xc7f4SJDmOBZBm1yDS2C+oM4gUF0pjEo0aVKJDDsqe2
 LlXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=UeTzmvgM0KIJyZYX/IJKTqJS0xBWi6633Rziz3Ra6jM=;
 b=XuXjWysUyYISbfoEu+LDxqsYj3CEzDEZV+jIZKkPhpZ1phM6ku32PYzRy9G0QprrE6
 /8pzMkLkIEey/PRJzlVqRtac6DN45nJfYRNWw+wBneAWPMUHDzVCNkQ6mxGZFJ6KDRmN
 p3ZUb7L+Kv3xEd7CGkhYmIaJ3RiBHgIomUZPEj+bmMHzp7mQy3mQR1QXQyfLrwAuGyus
 7WFW1zEOoapEY8zorBGUUIHXkfREGfGPOqLv8IPOkEJNpJxNF2A6O9+ydMlUZIDxiHea
 7TJJIFMJU26q0lFpHPi1GQ9J+JO2QLx0ujtyVKiyYgcRPZGgOky5j8u/j5R8pOipEXQ7
 Ay+g==
X-Gm-Message-State: APjAAAUQVKB2vWRAJux9Of1Y7pv3bzTETq3rsEhoPVzrHM9oW+sHUr1t
 7qFZHgTl7lZ4AnUttQqBtp8CUVDh
X-Google-Smtp-Source: APXvYqz/MmKQVBaerMnoAvV9fXTjUkdvo8tEYU9d2hpHjv1gbPdYIbVSdhCKfZloy3Nz+roB0eRddA==
X-Received: by 2002:ac8:7a9a:: with SMTP id x26mr20081241qtr.251.1563227057798; 
 Mon, 15 Jul 2019 14:44:17 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id l19sm11761429qtb.6.2019.07.15.14.44.17
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 14:44:17 -0700 (PDT)
Message-ID: <5D2CF3B0.4090809@gmail.com>
Date: Mon, 15 Jul 2019 17:44:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <336792c6-6b5e-5ba1-a535-bdc4f1e45136@research.att.com>
In-Reply-To: <336792c6-6b5e-5ba1-a535-bdc4f1e45136@research.att.com>
Subject: Re: [USRP-users] Ettus LP0965 antenna azimut/elevation
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

On 07/15/2019 04:40 PM, Lorenzo Bertizzolo via USRP-users wrote:
> Hi all,
> where can I find some info about Ettus LP0965 antenna azimut/elevation ?
>
> Thanks,
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
These antenna are actually made, AFAIR, by Kent electronics:

https://www.wa5vjb.com/pcb-pdfs/LP8565.pdf

They don't specify the antenna patterns, but if you look up "Log 
periodic antenna pattern" you should be able to get a rough idea.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
