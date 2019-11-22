Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4815F1077B9
	for <lists+usrp-users@lfdr.de>; Fri, 22 Nov 2019 19:56:43 +0100 (CET)
Received: from [::1] (port=49310 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYE6j-0000Gb-Bq; Fri, 22 Nov 2019 13:56:41 -0500
Received: from mail-io1-f52.google.com ([209.85.166.52]:45926)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iYE6g-0000Cu-LJ
 for usrp-users@lists.ettus.com; Fri, 22 Nov 2019 13:56:38 -0500
Received: by mail-io1-f52.google.com with SMTP id v17so9149875iol.12
 for <usrp-users@lists.ettus.com>; Fri, 22 Nov 2019 10:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=JhMP2wraRqIvOfHd9mXb4U3uy5XwA4tgEwlXYGGmyyU=;
 b=LVtjwreAZtCcJz2faB8OyRoTKD1SChNbdh0o/BJKIcvuU3lPriRKav3mrJJ56srgnP
 LaUfUM6kCSLdC6apPLesYuPXK0NJIysd+qfLOV/D14Tk/EJNxb7IxwWdIMmvLeBs8YMJ
 39ChRwAV4lgU22RMwGZaJV5vja+s2RCnS+pJA+V+CQmsPyZPe8/fUDbprPiRcK8HY5hy
 5gxIvFWTUVMX0vBX3YGvK+ujBNEGM+yXeEX7KIbGDvHNaHD2AItW2MCz+PskkzdhKr6Q
 dppG1XqAml/8lF9TEz9YLrMip+5gGaih+NbNF7/0OIbfi3KRA+m6ZPPQ4eT9XusHBDNp
 6AWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=JhMP2wraRqIvOfHd9mXb4U3uy5XwA4tgEwlXYGGmyyU=;
 b=Q2+YUo9AMKtFPjL6KRzQQHkr52dXDjO1XmtmkqnrMEo0Dj9Ai3LVl6S8RRfvFjG5BA
 gAnHxr73zSAKj6u1vIYaP+7nYXA6nLac+fquAhvbjvCTWx/xYU6pzVZ5NhuSeBuz78Ct
 8MC9LDQ9fg5VjkM5w2oR976fv9k+BOWskD9RbkZwianYMu+/4i2yCHWpD/KdISevbbrY
 dJL0tlkMXmzzPWjLQOh+osLSqCNsCIeaamgEf2pkrH1KH2ZDXyjrWKKIrwz+xObiVAyt
 upcub1iu23bNIadZsBv3hidZ0Kf9Ao1vHQMIsl1AFa60cCWX+VemU56UAXrzY4u4oinn
 Z47A==
X-Gm-Message-State: APjAAAXoLDXWB/2bPidvGGHVDGOCPfGq+nS76NMYLx73V+gXx5QSW/Yc
 pQKrkKa/NWmL+iGo+RiZtnfpSZgMJZk=
X-Google-Smtp-Source: APXvYqz95D9wlHvekmuTz+Ijm8Z/CEqXznlTs4LkeM15rLUd7G7ctpUCXSHCgHBiY/8e+0wtH6XrOg==
X-Received: by 2002:a5e:aa10:: with SMTP id s16mr15037280ioe.113.1574448957571; 
 Fri, 22 Nov 2019 10:55:57 -0800 (PST)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id a6sm2525713ioh.0.2019.11.22.10.55.56
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 10:55:57 -0800 (PST)
Message-ID: <5DD82F3B.3070607@gmail.com>
Date: Fri, 22 Nov 2019 13:55:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <f97306b6-c01d-f712-4102-11cd15e020a2@rub.de>
In-Reply-To: <f97306b6-c01d-f712-4102-11cd15e020a2@rub.de>
Subject: Re: [USRP-users] E310 Usable Bandwith
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

On 11/22/2019 12:09 PM, Jeremy Brauer via USRP-users wrote:
> Hey,
>
> according to the specifications of the E310, the RF hardware is capable
> of processing up to 56 MHz of bandwidth, but the ARM processor only
> supports 10MS/s.
> Since signal processing written in GnuRadio, C/C++ or Python will be
> executed on the ARM processor, I assume those programms will also have
> the limitations of 10MS/s and the availiable bandwith will be limited to
> 10MHz.
> Is this assumption correct?
>
> Is it neccessary to perform the signal processing directly on the FPGA
> by writing VHDL code to obtain higher bandwith and data rates?
>
> Best regards
> Jeremy
>
>
Yes, that is correct.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
