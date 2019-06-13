Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAA044C46
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2019 21:38:14 +0200 (CEST)
Received: from [::1] (port=51110 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hbVY5-0005kB-Qh; Thu, 13 Jun 2019 15:38:13 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:38357)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hbVY2-0005cc-L6
 for usrp-users@lists.ettus.com; Thu, 13 Jun 2019 15:38:10 -0400
Received: by mail-qt1-f171.google.com with SMTP id n11so21833924qtl.5
 for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2019 12:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=TaMTxDWtmv/xzz7ZVZ4Z/zDz0HQ7hqsBItcMT2a74j8=;
 b=W3cJrxgoZH2uF/LEDI3ptmqmHw5syOOncczOHbCKgXiZW1T/IRIoD6Kh0Beq8xtPII
 O2Il8B9JP0vtkBtNHuZlA9PBzUhUM1iG+hXPbc6yCg+pPo8UNSNq72V6e5SfMbdvVNE3
 fPdEQus4+nXI0sHXjBQkxY7cH7H2YZeVq/K1ZyEcH6HfPo+ubiEzHNIEbTE+H4XMMPER
 8eSvJF6eUjkEvcNvYtGo0Zocj5ZG7gYIWLCafVO5axG8SjDurAhWgpB10YPRIb8K1TA+
 AR6BcemzIRf4e6e+PapTwg9Rj43Y48uPdx2fCS9vPTmB7uLa5EOHUz5Iik6L/4vfG8nX
 oknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=TaMTxDWtmv/xzz7ZVZ4Z/zDz0HQ7hqsBItcMT2a74j8=;
 b=DAJNdvcdFIpxmxEAnxCHn+px+BU1WwlTsVP8/czWcbuAlsLhsXo9E5rBZBWmRiRegh
 1x7wqfkhD/Ab2q3NBQ+SxPcUUmjfEK+HGrvR90/FzSG/rV74m6XY7iOKX/5ZhLazroOn
 yXaFQRy7pr2/IN4nPmwLgAEOFwf8PyElDqxoMa9Wn49s1cKS567UGmB/t114UbW/gLlI
 qVLjYD9+LUucHb4vfzVEPQYN0KhbQ1CD9tkuxGuNwaYeLhdd3UfGh2qlnUHocf96aAeP
 oEY1UtEeKm+bl2LsV50EkMuZJYje0vc4Jtf1hxsIKBnfDWH576GuTxi55EjIrd4tC/C/
 /pww==
X-Gm-Message-State: APjAAAUDh+FbUzpC0ZfqoP7m1S5ixGOkfIzUpQKHt92uzNULQHL1rFqE
 S8CTkwgCAurpRG/MxkiGUmKQLbBGLUM=
X-Google-Smtp-Source: APXvYqwnCGVz4hFf77WObzuhMH2Q5tQsoaHRdCGO9ec2dblTxgRj5xWv3dCvvMMZ0M2XBPAZMOXG1g==
X-Received: by 2002:a0c:ba21:: with SMTP id w33mr5016927qvf.122.1560454650084; 
 Thu, 13 Jun 2019 12:37:30 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id k40sm439165qta.50.2019.06.13.12.37.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 12:37:29 -0700 (PDT)
Message-ID: <5D02A5F4.5010604@gmail.com>
Date: Thu, 13 Jun 2019 15:37:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAOExtcS3ZNPKD+HFTT8utGZmTTKPpd1sUVhLrrQJO1Pxq_C80g@mail.gmail.com>
In-Reply-To: <CAOExtcS3ZNPKD+HFTT8utGZmTTKPpd1sUVhLrrQJO1Pxq_C80g@mail.gmail.com>
Subject: Re: [USRP-users] Reg: USRP N200 reset problem
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

On 06/13/2019 03:33 PM, Sumit Kumar via USRP-users wrote:
>
> Hi,
>
> I got Ettus N200 from my colleague. I din't know the ip address so I 
> did a reset. After the reset, the ip of N200 became 192.168.10.2 and I 
> was able to ping and do all regular stuff with it. But whenever I do a 
> power cycle of the N200, it is undetectable at 192.168.10.2. Then 
> again I have to reset it.
>
> I am not sure what has gone wrong.
>
> Regards
> Sumit
>
Could you describe the steps you took to reset it?

IT sounds like you put it in "safe mode", but didn't actually download a 
working image into it or force an IP address reset to a desired IP address.

https://kb.ettus.com/N200/N210_Device_Recovery



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
