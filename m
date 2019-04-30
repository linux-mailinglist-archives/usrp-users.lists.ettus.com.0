Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DADE3EDA7
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 02:25:43 +0200 (CEST)
Received: from [::1] (port=60150 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLGab-0005m9-7V; Mon, 29 Apr 2019 20:25:41 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:41104)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hLGa3-0005d1-I2
 for usrp-users@lists.ettus.com; Mon, 29 Apr 2019 20:25:37 -0400
Received: by mail-qk1-f178.google.com with SMTP id l199so7149503qke.8
 for <usrp-users@lists.ettus.com>; Mon, 29 Apr 2019 17:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=nQ9ZvC8EGvVX1hY/ik+d/zq+eQUnXumHSHWARIJDFbo=;
 b=J4REwhYXdDfBzEdVlvihgKO+ox+UgcEglBEhcvb7NjgHPZvcx8NHGBRzqXNhpUsvHf
 24SFzxaLP8OrsO5+q5/9SsMcU43IebWjYLZrxprmYHhgL+A6nT7CeafIj1Tbc4o9eYif
 xaIm9m098jD/i3vwaICNVnHrOe8v8USdRDB6V+RFeInBgEgvm2eTMX85NpGkpLa17rJ0
 A3mxqaVwe/jSy6AzOD3YoXku5dtrwHj7C7vXkl/mhu9aZcdaiElJJZ6nnPQmHDT+492y
 ZkM+ad6y/lTMmzommzjmj3j+b9yVkPl+FMY/QbkUleJfQDm5eCERrNzhtRhgKI4r+djn
 TF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=nQ9ZvC8EGvVX1hY/ik+d/zq+eQUnXumHSHWARIJDFbo=;
 b=UFvIbh3FwoMVY65CdekHU6qxattMIzskQDAY0NR58w6TzBe/Y1mHvl3e0G8GvSSODv
 TbzfSdqF3/MMAiPHLuq9o2PZk8VC4SUabpYSNLOZkIzRW9BuviKAyj0lHtnQCqSnZnlV
 oBdQ1bHRtJ3u2Wjja3NmRDiRZ7aUdIp/g3Ukjo+78Qd+Grkt1G+pnO5IfKsxxitvtX4K
 vI4TpV8ol3CQ68OegHwR6Kh8Gl+yezIp7bG7x9LPbaqbzHInBb9J3vjy6K/Z32cB8w0R
 J42j+Bmy54vShbZV3Y+TeE5s1dGqo3+3vCpTb+eMyS3hPGYV8j3vP7Xc0Vo5LAc9UMvg
 5Ykw==
X-Gm-Message-State: APjAAAUK/6Py9qzFCiqlomvGdHcKUVAGLbvk4S0zxRMnLi8aVMXxXtsR
 yzcp6RGFL6sYYkRl3Udd3q287gZRFOW8RQ==
X-Google-Smtp-Source: APXvYqwNBMLBjXCm27UomWV++Qvw5pL0vpZnXA2ClYSwDOWPse/veXNhd53GCy01Q0UST02C3JTaxw==
X-Received: by 2002:a37:8102:: with SMTP id c2mr49825548qkd.115.1556583866880; 
 Mon, 29 Apr 2019 17:24:26 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id c20sm1134889qkl.63.2019.04.29.17.24.26
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 17:24:26 -0700 (PDT)
Message-ID: <5CC795B9.4050401@gmail.com>
Date: Mon, 29 Apr 2019 20:24:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CALLKLAPDtvLxHkVwea_c0S9oX3xFkOYwfpbhvS9HTxK+LiEkhg@mail.gmail.com>
In-Reply-To: <CALLKLAPDtvLxHkVwea_c0S9oX3xFkOYwfpbhvS9HTxK+LiEkhg@mail.gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] How to periodically write files using USRP and
 GNUradio
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

On 04/29/2019 08:08 PM, Mark Wagner via USRP-users wrote:
> Hey all,
>
> I'd like to know how to write short files of streamed USRP data 
> periodically using GNUradio. For instance, I'd like the USRP to 
> automatically record 5 seconds of data every 10 minutes. It does not 
> matter to me whether the USRP is constantly on and most of the data is 
> being discarded, or if the USRP wakes up every 10 minutes to record 
> the data before sleeping. Whichever is easiest to achieve is fine by 
> me. Does anyone have experience doing this kind of thing?
>
> -Mark
>
>
>
> -- 
> Mark Wagner
> University of California San Diego
> Electrical and Computer Engineering
>
>
If you're using Gnu Radio, you can simply use the file sink, and have it 
record to "/dev/null" most of the time, then have something (perhaps via
   the XMLRPC built-in feature) change the filename to whatever your 
desired filename is, and then revert it back to "/dev/null".

I think I said the same thing on the discuss-gnuradio mailing list a few 
days ago.

The usrp-users mailing list isn't the best place to ask Gnu Radio 
questions, a question like this, which is inherently radio-type 
agnostic, probably
   belongs on the discuss-gnuradio mailng list, because it's more about 
"how do I make Gnu Radio dance".



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
