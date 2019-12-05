Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA751149BB
	for <lists+usrp-users@lfdr.de>; Fri,  6 Dec 2019 00:16:47 +0100 (CET)
Received: from [::1] (port=33054 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1id0MY-00067e-BY; Thu, 05 Dec 2019 18:16:46 -0500
Received: from mail-qt1-f173.google.com ([209.85.160.173]:43480)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1id0MU-00061s-SA
 for usrp-users@lists.ettus.com; Thu, 05 Dec 2019 18:16:42 -0500
Received: by mail-qt1-f173.google.com with SMTP id q8so5237015qtr.10
 for <usrp-users@lists.ettus.com>; Thu, 05 Dec 2019 15:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=m/5y18/1mrAvrq9YMkSw3FZCA4u98AiIsC+VjWEK1NE=;
 b=G9fxe1HP2rgLkTebe/eeCCkbUSIURbZlOEoVpjgYnQ11xZNy0fy5gSogIV36802Vz/
 7BDOGSTuQavI1kNfuoqBCYab4WBYx12R1yra/t6O/XQTnRdn5sXdXiIWRLD75pdIIIu/
 ccvE9Dto7hZYdaQcXSkMFuUYrSwRksoH145+4xWO00X6tEw5CqJiuwR2HdEqbUr4cQkU
 2e/VPnCDXuvXs6fYlQX1U+hLWpHhzvzgGTGftuixxpWLq0v4YvFncM26HB4iMdjMTdsx
 uDmuTV1GOtv3/NLlrv1hggXuQYk18GFtnU+vSnCoDzG2jIBwnMXN8j2wgy58LkBFiSiS
 ad2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=m/5y18/1mrAvrq9YMkSw3FZCA4u98AiIsC+VjWEK1NE=;
 b=m6wzs47zcy0nnuWRKT0dikq9PWjjZ6bCz7njekJHuJLf7r17W6gOYzrLrCcXsYkw8u
 Ph+63BFY/Juwz8nRAOUwKSrztQuHgnVizA3NQ6tf1bJ2vf+pRzhiefuZ7aG7FaejCx7I
 puRJwwRKqggEJCzjMc16qDv+ShL4W3dm00vBpm1CcJGAFJKbrBAnlduXnK51QdhW80Ei
 aqECY6O8gxOvtq+9e6HRP7Uyle8PgE0TpylufKiIwSZwTz07iAiRZWNd+sBgxyy3Wzn6
 Q0p3GjxbYF8Fp1Wnv+vxB1F9D/x6c06Gl2HNC6co1xMJgDeG1+Mr7W0sQAY9IxhyZsHJ
 fLkQ==
X-Gm-Message-State: APjAAAU7FS7Ryv1TVxuRvJoKl5XXRGVcI4EKOPTJo3lOSDo4eC1lmuJ/
 MYKMIRcgRyKAsIPTwLSRrv0CMXPj
X-Google-Smtp-Source: APXvYqxQGKDC9hfk6+euLzat2PqNqixAMjRWDKiHI1ouqAXV/dRfWEtcqsFW2s54bwvwCLi8gFgvlA==
X-Received: by 2002:aed:23a2:: with SMTP id j31mr8583641qtc.6.1575587762250;
 Thu, 05 Dec 2019 15:16:02 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id 184sm5422551qke.73.2019.12.05.15.16.01
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Dec 2019 15:16:01 -0800 (PST)
Message-ID: <5DE98FB0.3020108@gmail.com>
Date: Thu, 05 Dec 2019 18:16:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAFGMRUBC+j_FsScHG1+7_p9GJwbe2Weh+KwghvokM58foJ-wWg@mail.gmail.com>
In-Reply-To: <CAFGMRUBC+j_FsScHG1+7_p9GJwbe2Weh+KwghvokM58foJ-wWg@mail.gmail.com>
Subject: Re: [USRP-users] DPDK
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

On 12/05/2019 06:06 PM, Keith k via USRP-users wrote:
> Just wondering if there are plans to add DPDK support for the N2xx 
> devices?
>
> -- 
> -Keith Kotyk
>
>
That seems unlikely since 'new feature' support for N2xx has been 
somewhat "dead" for a few years now.






_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
