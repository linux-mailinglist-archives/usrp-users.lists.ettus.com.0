Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85121117818
	for <lists+usrp-users@lfdr.de>; Mon,  9 Dec 2019 22:11:40 +0100 (CET)
Received: from [::1] (port=48452 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieQJf-0002D0-Cr; Mon, 09 Dec 2019 16:11:39 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:45981)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1ieQJb-00025x-A5
 for usrp-users@lists.ettus.com; Mon, 09 Dec 2019 16:11:35 -0500
Received: by mail-qk1-f175.google.com with SMTP id x1so14403605qkl.12
 for <usrp-users@lists.ettus.com>; Mon, 09 Dec 2019 13:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=KedwKstRxEwHrrixztDt05MYyoVyvO63GMobt1EnZhg=;
 b=W2oyWikWM9c5uiJrnu8yPF0F3bpualLvajhdP+ZSvFJu+yY5vqGC6gyr32KYoxThv4
 6VizC1r/nFTN8wltcpzVTJjuR97OyUepvCSE6mgjftfk+IQ3nkhNJMFuxGo5EMMxHOCq
 PnCOSvt2OkjSqyIVl5mh6Prrte2P8ogGycK13xh5Tibj0Iw8nNMXJK8VrbF8/Coy7VH2
 OIfHRJjmNP4M7wpQanwoqY1DtNDojhuUHcEdjOKFQq2Eq2+gkUkwUSsaWygwbvdI45Jj
 OoQL/+n2yyo8546fTkdCSRVueHhLl/8u0Ray7/pnJfD3L9ZKZ8Ej/jyrHV6kxQ9CMuoK
 VulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=KedwKstRxEwHrrixztDt05MYyoVyvO63GMobt1EnZhg=;
 b=kyWrBXDd1/suJF1HqyHEI+YrIgh3qtMtI8hRD4lSXGQBosW0pI+aJfAj4fByq7xtuD
 zyczniwafT/iX5DTX8V5XI1rmLANdRNuSJAeBMlX+d2kH1V7/iYUEqrXA5v7Qs0iALoS
 AzAbJgkYbNnzOUmxpDCwpatP20xks15gkMhyeO8uRL7Cn4NDxLkapXCXuaP54wKPYxH3
 n4ViPsqzuug9WbyKTUit4Ja54e0BzPjgn1lqQ99caOQANvPCMvnNmUXHHoIQWD3H7tGa
 dq7GzhP4E9i+qdSJebN/fKPkrQ/TEOsZ+s/ynK585vPLpz073Ch8A5oWancoZQWJYNia
 FSag==
X-Gm-Message-State: APjAAAWd4iodC5EesPULj3ZMv4Moy4rVD5bVx37cJEWTFB/MhNRYyCIA
 QDIBOeBepUgxSawIo7AUwnJ3GQ+R
X-Google-Smtp-Source: APXvYqztyzosLg2EPTL+lFgjn4/FT7uyufNm6amfFbR1Vn2prQ0g2oWUEZF6geuulCoHvU65SJDrvA==
X-Received: by 2002:a37:2f81:: with SMTP id
 v123mr27365710qkh.249.1575925854219; 
 Mon, 09 Dec 2019 13:10:54 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id t38sm291314qta.78.2019.12.09.13.10.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Dec 2019 13:10:53 -0800 (PST)
Message-ID: <5DEEB85C.6010603@gmail.com>
Date: Mon, 09 Dec 2019 16:10:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
References: <trinity-7cb4be4f-5d41-4268-b5a8-2084b39834b6-1575702620460@3c-app-gmx-bs13>
 <CAL263iwG9u0mE_uQPLM+pxk-RJ2B5fHpsxBaeKg1dnzOZnrzuw@mail.gmail.com>
 <trinity-0ce9eefc-d9c2-4f7a-aa5b-342a8c0f5f36-1575747306151@3c-app-gmx-bs76>
 <CAL263iyCdU5b5p2SUJ92eNy+c7YLNuxbzi_NzrYCNOvb5OFQ5Q@mail.gmail.com>
 <trinity-43a8d710-cd0a-4b9b-a1e8-f62e485ff30c-1575843547979@3c-app-gmx-bs36>
 <5DEEA191.8000704@gmail.com>
 <trinity-8e728448-2993-4aed-830a-473bf70242bf-1575920305869@3c-app-gmx-bap48>
 <5DEEA426.1020108@gmail.com>
 <trinity-31ea48d5-e13c-4c84-873c-f3e1f3ff3aae-1575922308346@3c-app-gmx-bap48>
 <5DEEAC89.60403@gmail.com>
 <trinity-fca4d966-0044-494d-9d62-259818a05f79-1575923718171@3c-app-gmx-bap48>
In-Reply-To: <trinity-fca4d966-0044-494d-9d62-259818a05f79-1575923718171@3c-app-gmx-bap48>
Subject: Re: [USRP-users] Phase relation between RX/TX LO
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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


Something that MAY help here is to use integer_n tuning:

     treq=uhd.tune_request(my_frequency)
     treq.args=uhd.device_addr("mode_n=integer")

     ...

     ...set_center_freq(treq, 0)

This will force the PLL to use INTEGER_N tuning, which has more 
predictable phase behavior with respect to the reference.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
