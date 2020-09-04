Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F5B25DCD7
	for <lists+usrp-users@lfdr.de>; Fri,  4 Sep 2020 17:08:11 +0200 (CEST)
Received: from [::1] (port=37012 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kEDJW-0002h3-AF; Fri, 04 Sep 2020 11:07:42 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:39295)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kEDJS-0002ZJ-Rs
 for usrp-users@lists.ettus.com; Fri, 04 Sep 2020 11:07:38 -0400
Received: by mail-qt1-f171.google.com with SMTP id 92so4823953qtb.6
 for <usrp-users@lists.ettus.com>; Fri, 04 Sep 2020 08:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ykvIiFhfhcDWuIT3ZYsSwz2VOyltDAYruAlHDQKvIkE=;
 b=sBwhlXyKo8ibr8GHAnOa0Zd4pYpA1/b57zwu/k+pXvf2RcCeiPQm303a6BeAvuTvr9
 wEKfKAOEfQ1jyZ12F7nb+guFcPvT0eYVpI8hkXgm+kYX0g3oJNJOZfQCIgXWPALW89G/
 WJOcDuySeLXjVsfjbs6BXwWZumYsG8j4luHtGkDuxyBvKq2zk5Lon8A/WN/ZgkQbW2KX
 knaVegImEHs7W9WRMTOcHZpPdsPfQZ9LxNV8ibdEaHr46PnjjxvEMMeQmhKAsDLraIuB
 qrUbWSDOjS78oewv0JFFC2WUZqXei1I4wF1/gL8a4hhqXqLpCI1VvOaXTj34jRgpQQhH
 Ba6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ykvIiFhfhcDWuIT3ZYsSwz2VOyltDAYruAlHDQKvIkE=;
 b=kk7EWMm/iLIIu7B/hJoBEkIJ9EE86R68Oauid61sQS6rMtKryBmztAV3RHWnxBwPJW
 EbVs1fTmUI2XsUN6iFiAFg6XyjvDvV1/oBR/BI4ToGFuIEnSKn8R7ITnCmHD7JPkbyav
 cl1IyrKjjrxP8i1zal9gjOpMlxubV07cLiH4qfeR259PSIe6IdIoAqDqJcV8vRZTWOKs
 B+xIHrvUQaIKwmvZl1IaonDaj8/GbW6TXdWeGYgRrx3YBIUmyERxpFmsXicKdZAQDnBk
 SeTaFAMywNncvzOIOg4FIwbDpMxPObg4O+H/W7FB+8Sd+aDWQsJkiaVxmbY0E5gsv/Qa
 JZ7g==
X-Gm-Message-State: AOAM530Qjf5oIKjMxno6O6mxJOzajtQBznZ37qXUp3AfFP3ENPqgi+zU
 rPzLeit9bOQ7Qfelitn1s964noa5+T0=
X-Google-Smtp-Source: ABdhPJy3UFEpndFL5FsjtcL1kS6/wCAUQW/da293rFIl+IJ1+OxYcJms7cgG+WmkodbJmV0TjhUYKg==
X-Received: by 2002:ac8:6c6:: with SMTP id j6mr9464586qth.129.1599232017105;
 Fri, 04 Sep 2020 08:06:57 -0700 (PDT)
Received: from [192.168.2.29]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.gmail.com with ESMTPSA id x126sm3162448qka.91.2020.09.04.08.06.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Sep 2020 08:06:56 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Fri, 4 Sep 2020 11:06:55 -0400
Message-Id: <1F2B17CD-633A-4A64-8DB2-34E32CD87A56@gmail.com>
References: <30dc3ba4-1f68-448d-2f24-3bc3855302aa@opensdr.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <30dc3ba4-1f68-448d-2f24-3bc3855302aa@opensdr.com>
To: Philip Balister <philip@opensdr.com>
X-Mailer: iPhone Mail (17G80)
Subject: Re: [USRP-users] GPS Antenna for E310
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
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

QW55IDVWIGFjdGl2ZSBHUFMgYW50ZW5uYSB3aWxsIGRvLiBUaGV54oCZcmUgYSBkaW1lIGEgZG96
ZW4gdGhlc2UgZGF5cy4gR2V0IHR3by4gCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIFNlcCA0
LCAyMDIwLCBhdCAxMTowMyBBTSwgUGhpbGlwIEJhbGlzdGVyIHZpYSBVU1JQLXVzZXJzIDx1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4g77u/SXMgdGhlcmUgYSByZWNvbW1l
bmRlZCBHUEEgYW50ZW5uYSBmb3IgdGhlIEUzMTA/IEkgaGFkIG9uZSBidXQgdGhlIGRvZgo+IGF0
ZSBpdCA6KAo+IAo+IFBoaWxpcAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91
c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
