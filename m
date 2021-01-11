Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 679CC2F21E3
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jan 2021 22:37:34 +0100 (CET)
Received: from [::1] (port=58126 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kz4sU-0001lW-Lw; Mon, 11 Jan 2021 16:37:30 -0500
Received: from mail-qt1-f180.google.com ([209.85.160.180]:44159)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kz4sQ-0001h5-Qb
 for usrp-users@lists.ettus.com; Mon, 11 Jan 2021 16:37:26 -0500
Received: by mail-qt1-f180.google.com with SMTP id r9so316576qtp.11
 for <usrp-users@lists.ettus.com>; Mon, 11 Jan 2021 13:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=PAr1DAAFKq7/2tBGz+EE2Eg2xGy2xilZYrVxrJdsfS4=;
 b=IyD3j9gzX1hlF/QpnCbnteXJvmi6yyaf+ZUF5uIxUTbk5cxTrSgMaKDwyWEDl0FWeo
 OaoMiTOxuLyA9aoBr8aA7EnO/qTJAETHAA3Gt9RIFY2O285NoZE0AIxEOMsdH6G5LXHj
 R7B2Rxq7NTeOWgR/nWSc6CNfWoFYP3YM69AuExEqdj2NKDvx2ZczXtKD7JECWNG5zf5B
 KdeInU28a4nvtQ01rs1+plzG983wm2V5N5VLYQdXSVFj6ZEZfOaZ9dEEcbqQZ2QUs1oc
 8taCQS6352Zxg039m9cgC5RxQKhia0+cSGJ7R2Do0l4xBNNJlpsXVgtnML/ro1CXR0Yx
 1F5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=PAr1DAAFKq7/2tBGz+EE2Eg2xGy2xilZYrVxrJdsfS4=;
 b=sAsM2HEhLvdBYjg28AwJjO6fsAMswFAb39QeVa7NJN3/pE6EGTEcMoAwqmdYTXfO15
 jfiqRBaKcCQa2ooEHP77+Z1jwNb5uMs2y3zJmqJ2TD17vBhY0sBXaoTpEP2HFiaWLQcf
 mIF46XIluKZGPojmF1AVhV7evP3dAP0J0V7hyqj6U4nKGcKdhUJ7ShlEg4ExfOrJXwGG
 vvZhyalxpSPx8PAdxMuyTCD59MOKhz3OUQ5u34QEBtllQYjGr+NexFhUnQAaSPepo4bx
 z+J7BSpGMJbvtrPDFnxbjSUHKndQrxBc0emr826rKVAVHN8ETeUVyvLRo7bWFkZb8aT2
 2lNA==
X-Gm-Message-State: AOAM533C+5rHaYQt+5rsVXqYXXAJFFk945HE81Xps62WDPhcnP7oaz3O
 l4Mehk0+1BasEZeexJWRaWrOMZzYJhY=
X-Google-Smtp-Source: ABdhPJwAFYk02SRtPTtVS9Hyzr9X8XQ/Kzvcj7YKaRFiP113QNFbBAoujK1TP9HAH1UGLEDjf+QZgA==
X-Received: by 2002:ac8:4818:: with SMTP id g24mr1686804qtq.252.1610401006056; 
 Mon, 11 Jan 2021 13:36:46 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id c17sm560939qkb.13.2021.01.11.13.36.45
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Jan 2021 13:36:45 -0800 (PST)
Message-ID: <5FFCC4ED.30300@gmail.com>
Date: Mon, 11 Jan 2021 16:36:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1610377863.427298.21618.18137@mail.rambler.ru>
In-Reply-To: <1610377863.427298.21618.18137@mail.rambler.ru>
Subject: Re: [USRP-users] UHD_STREAM_MODE_NUM_SAMPS_AND_DONE
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

T24gMDEvMTEvMjAyMSAxMDoxMSBBTSwg0JDQvdC00YDQtdC5INCQIHZpYSBVU1JQLXVzZXJzIHdy
b3RlOgo+IEhlbGxvCj4KPiBJcyB0aHJlcmUgbmVlZCBzZXQgbnVtX3NhbXBzIGZpZWxkIGluIHVo
ZF9zdHJlYW1fY21kX3Qgd2hlbgo+IHN0cmVhbV9tb2RlID0gVUhEX1NUUkVBTV9NT0RFX05VTV9T
QU1QU19BTkRfRE9ORQo+IGFuZAo+IHN0cmVhbV9ub3cgPSB0cnVlPwo+Cj4gVGhhbmsgeW91Lgo+
Cj4KWWVzLCBJIGJlbGlldmUgc28uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCg==
