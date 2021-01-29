Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2270308AB2
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jan 2021 17:57:53 +0100 (CET)
Received: from [::1] (port=48776 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l5X5k-0003ju-J1; Fri, 29 Jan 2021 11:57:52 -0500
Received: from mail-qt1-f182.google.com ([209.85.160.182]:42568)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l5X5g-0003bU-5I
 for usrp-users@lists.ettus.com; Fri, 29 Jan 2021 11:57:48 -0500
Received: by mail-qt1-f182.google.com with SMTP id e15so7109070qte.9
 for <usrp-users@lists.ettus.com>; Fri, 29 Jan 2021 08:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=uR5VwC4yGiYP+mvCYmBGpxfHA16z5qEj9ldDe478N2Q=;
 b=IjKvUFfaj2hJ8pladna6x0PV4VygZHilklPggcMhMBVwTkPcmOEXfyKaI1Pa4e/oqV
 TcjZYjUQV6WUi2w9qIrEC735bkCdPn/UxS/KLXSlzrGsu8LHir43dDHoeVpaccuMguPu
 xF5MDYXX4ZYvil2Kbe5hAwT3AWEWEXLA8HuwK6rYh/EWiaB96GUMQNYKMkjGep3xA/Ad
 1xSKnj4S6EmHuJm+Sk7GiVw0w+fVqTcOLdGNnPknddKNyIDPzr7JuqH5TEmohB5sLHDv
 XB7+oWiFNkKm7bNcCDLFJGu2OD+cl6FCx2gEOMMNYWMETvAnO23R8jl1lud74LgKcM9i
 DMHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=uR5VwC4yGiYP+mvCYmBGpxfHA16z5qEj9ldDe478N2Q=;
 b=aO3izd1pj/27Ib4j6NXbZyWb8EbQ8jE42CPKzIMyVbf8SG0IaBC6F4EyllZFKDV5Aa
 nVcqBqQs13NbN/COinyJY0ut1PlyrSSOhOJRXkxQhdokmg7//chZntuwO100bKYQAhic
 5SF0Mjc0ZieebqdcoDZgM0df7tfmDSVTBFTdbNYT62bvZ/7KYq0rVWAUp2nlGXXBgLGd
 5bDO2i4+jz0Zg5Ffb/kKyYIsxUWg4Bw8ButnnX1/UCOKU+RCzVwgsDgZtBoO/XRKaaRn
 WPCQ1o12H2m+4haK7pDiC27ANMmw0JzJSDz2eO3PHjp04Y9Une6gD5tj3+K3QVZzw5i5
 +RLA==
X-Gm-Message-State: AOAM531hLcLPqGjvqt5EqEVKyIVD72XHEd/vm0E5bW41yFutBXGjuQLX
 vYPVCaB0r+oVc/9N3era+5qCqgLD6i0=
X-Google-Smtp-Source: ABdhPJxCNw90VBvzm30+p9DyOF2mnif7kNYjPoCeJciJn99Cj53pl2bV02/enrdwF7VtBiLkg7wvMQ==
X-Received: by 2002:ac8:4a82:: with SMTP id l2mr5248518qtq.298.1611939427247; 
 Fri, 29 Jan 2021 08:57:07 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id z11sm3296326qto.71.2021.01.29.08.57.06
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Jan 2021 08:57:06 -0800 (PST)
Message-ID: <60143E62.9070206@gmail.com>
Date: Fri, 29 Jan 2021 11:57:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAErymBhJT8CAYUbR_3+=jr1VrfKohhgyX3OWb51=4sNwaNgs=w@mail.gmail.com>
In-Reply-To: <CAErymBhJT8CAYUbR_3+=jr1VrfKohhgyX3OWb51=4sNwaNgs=w@mail.gmail.com>
Subject: Re: [USRP-users] check if GPSDO is locked
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

On 01/29/2021 11:26 AM, Achilleas Anastasopoulos via USRP-users wrote:
> HI all,
>
> I am looking at an old N210 with a GPSDO and a GPS antenna connected.
>
> Is there a uhd script or snippet of code (python) that I can use to 
> probe the USRP and check if it has acquired lock from the GSP?
>
> Any help would be appreciated.
> thanks
> Achilleas
>
>
If you look at the sync_to_gps example code, it probes the "gps_locked" 
sensor.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
