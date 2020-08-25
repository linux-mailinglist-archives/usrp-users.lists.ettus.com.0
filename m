Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6D62513CD
	for <lists+usrp-users@lfdr.de>; Tue, 25 Aug 2020 10:04:25 +0200 (CEST)
Received: from [::1] (port=33746 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kATwK-0007Sh-IW; Tue, 25 Aug 2020 04:04:20 -0400
Received: from mail-ej1-f53.google.com ([209.85.218.53]:42382)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kATwG-0007OS-1H
 for usrp-users@lists.ettus.com; Tue, 25 Aug 2020 04:04:16 -0400
Received: by mail-ej1-f53.google.com with SMTP id j25so6143362ejk.9
 for <usrp-users@lists.ettus.com>; Tue, 25 Aug 2020 01:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=AU3ykRgecPFO/SaOV7gzC2Xl6nngDWYBWfYY9sF1mWM=;
 b=lWNGQc1y7GBf4sWqEeZOWVMFZR6soDz1xNw2OVo95S3S1jrQ4ZBDNp4uQ6wttDg5Of
 qBVFfAgWtv+CDbphkL18hjNjwdTvCLsZZk147ycIhHobKX7ErohO0sEMdLTfKXFxbwaP
 H+FAuta32OQ47LDAywws5RMTDboW0Ef6YNUda8zZJRYh1hg/3gq30TO9lBON0kgQFr6Y
 77S1EQ/KjZJRR7oafxQCmbsnVnFK56S8jYrbx2uIiNciwnD0agMxjhZrkEcwifMCoVGb
 GmZSwSYzdZ9FCU0LmbnLP0nrJLG2GKE85kvNibaq1hLZ3QxlE+cSkGCjbutuw58qoESN
 X9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AU3ykRgecPFO/SaOV7gzC2Xl6nngDWYBWfYY9sF1mWM=;
 b=CIuJiB4yQI+IjG1OcPOZpm/jTB99Y7A5FHpGcotctlT7K9pRWo3NXmpYkN127yDyRC
 JyEfw36+LrE/iENk8726rTPVhhSm9sqGwVsULnDSQWd9AktIrmYiU/5Jq5CxjKUhcS/S
 vYbYUYK6Ro8pPGZpqQgQS97HNNH/RRsQ1X1oEswW+9EY5E+JlQiFXbFYROW4+TJpdgDO
 TT/obT7QtcnGmOQ4Da/TllDsK/+2hxxACIQoUyQnEz9Ccg+l/B9N3oB4HKKTJeFnXjq+
 2Cx7t0O2CtAMhe2hce+DZ8OpqXfm7xAr+83xoy+RtGE8qI1OXAHjhEKpJb4nP0j6Tb1j
 8Gfw==
X-Gm-Message-State: AOAM5307GrAEhNW9Nx5yBpjmum2VfUVIxm/4DwdlJtJPRLu5v88Cs7B5
 I2wfLY34I5ukcWNYMHogk7qr6Sug8he3E1Ez2Hg=
X-Google-Smtp-Source: ABdhPJwIyyHpRnHScypGE/OCN00snck8NU3cRmi5iidyYVs+5KzIHnyU5c8lTLruedEg3DPdKfqGrA==
X-Received: by 2002:a17:906:b210:: with SMTP id
 p16mr5653037ejz.312.1598342614741; 
 Tue, 25 Aug 2020 01:03:34 -0700 (PDT)
Received: from ?IPv6:2003:f0:f71e:b352:2477:859e:1ea5:4e01?
 ([2003:6:61f4:2f52:2477:859e:1ea5:4e01])
 by smtp.gmail.com with ESMTPSA id o22sm12341262edt.85.2020.08.25.01.03.34
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Aug 2020 01:03:34 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <BYAPR09MB3494FDB408B6F5F3F7CC91438E560@BYAPR09MB3494.namprd09.prod.outlook.com>
Message-ID: <915ec64e-0972-213d-3694-2e16e6dd4d8c@ettus.com>
Date: Tue, 25 Aug 2020 10:03:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <BYAPR09MB3494FDB408B6F5F3F7CC91438E560@BYAPR09MB3494.namprd09.prod.outlook.com>
Content-Language: en-US
Subject: Re: [USRP-users] Finding multiple USRPs on the Python API
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

On 8/24/20 7:28 PM, Jonathan V Nguyen via USRP-users wrote:
> I was wondering if there was a way to get the addresses of all the USRPS
> currently connected to a host on the Python API. I saw that the C++ API
> had the uhd::device::find() function, but this seems to be missing in
> the Python API. The main goal is to be able to create a multiUSRP object
> with all connected USRPs without knowing their addresses / serial
> numbers beforehand.

Jonathan,

you're right, that call isn't wrapped. Might be a good candidate for a
future amendment.

Here's a hacky solution that you can steal if you like. As part of our
devtests, which predate the Python API, we implemented a Python find
call by calling uhd_find_devices, and parsing the output. Minus points
for elegance, I know, but this was a perfectly fine solution for the use
case and the time. You can find it here:

https://github.com/EttusResearch/uhd/blob/master/host/tests/devtest/usrp_probe.py#L13-L38


--M

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
