Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0F03945BF
	for <lists+usrp-users@lfdr.de>; Fri, 28 May 2021 18:21:35 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C126A383D7E
	for <lists+usrp-users@lfdr.de>; Fri, 28 May 2021 12:21:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="tOpx0ZCb";
	dkim-atps=neutral
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 8BB18383C40
	for <usrp-users@lists.ettus.com>; Fri, 28 May 2021 12:20:43 -0400 (EDT)
Received: by mail-wr1-f42.google.com with SMTP id m18so3866973wrv.2
        for <usrp-users@lists.ettus.com>; Fri, 28 May 2021 09:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=mtM7eirfpCKET3VKNsFPlkbJ0jZujGqfGd9yvxLuF8s=;
        b=tOpx0ZCbof+Fg2iFQCgFTOxQhD6nXVl+y7IFc+baN9KKq6SanSkgHxRk1daFNyE3+E
         NIFyAJLO26sBKC53ykq7gxZZdAEof9XaCBIGQZYGwf8l8UfftaqNkmxwto2W0Pq045BT
         Y7pRQ5PUn9iwGO9Dgm/4kW2fmkJsOR3GZB05F677Zw07IJCuly0/5npYWCxXJSa7l6Rh
         GaH52LoZ+IrWmzG+IzuY8VPfGO0tdyQhYDaAFDVQ9bp6St/RiDIqnltiyH01qPrBRxDm
         28EBnR3Cug+KKBIYilarsuVWJFRqUhzvf64bZdSupOX6MGEMsNolAxhYuptD7Hv9R06m
         EwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=mtM7eirfpCKET3VKNsFPlkbJ0jZujGqfGd9yvxLuF8s=;
        b=BL+TkvV9i5pNuOsF/epvetsY/gmAmArnQ7vsF9I3eqhzxFTsEyiS+w5kyTTPu6rG3L
         d7soLTC7ZOcCGVJhgFm6t48vF2/D8sgNAEZ1aCkOAB2KCtSeFxqOFkl17KSTG5VFXtsG
         jw/Trb6JRjvzPhtTw00MIr7zoqLE6OhPW0VUeuOGBXMU7lavE6E60UOaN3uLeycBXnlw
         OvC70NV8hgR1XfwUw8j98Ae5OohO0FuU9WX7RGVxRYOWxGTeGlckqkugiV29aG3fEM1+
         tVbLLD1l6Li4awFG9iBZysHBEPTV5FPnqaGS8i929c/P1mYFmJjT162/BuGzbJODsjdL
         1sAw==
X-Gm-Message-State: AOAM531XQ041wqBS/Y0yXy7P2bwzUdDNwfiiw3SDG/xpCKE7ebszqWeu
	2Gx2ZWeEfSxLkExZjxZRuW3X1YoCdL1egyUh
X-Google-Smtp-Source: ABdhPJzlLLdirYf6bXDknlKifS3i4aCosbcMAD8A+w+YdYK86xCQ3f70P02Stt/49kbe8YAACpD3VQ==
X-Received: by 2002:adf:fd81:: with SMTP id d1mr9719297wrr.37.1622218842116;
        Fri, 28 May 2021 09:20:42 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-222.hsi.kabel-badenwuerttemberg.de. [46.223.162.222])
        by smtp.gmail.com with ESMTPSA id z5sm7613930wrn.69.2021.05.28.09.20.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 May 2021 09:20:41 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <3wsOWSVff9yG9x5LGHbvsQLEKGLzzeRTFK43RNqRuw@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <ff60421b-423c-2e3e-f947-38421b9a01f5@ettus.com>
Date: Fri, 28 May 2021 18:20:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <3wsOWSVff9yG9x5LGHbvsQLEKGLzzeRTFK43RNqRuw@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: 6AWRSWX4HCEXQVKDQS23C5DNPIDMUV63
X-Message-ID-Hash: 6AWRSWX4HCEXQVKDQS23C5DNPIDMUV63
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tune speed
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6AWRSWX4HCEXQVKDQS23C5DNPIDMUV63/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhDQoNCj4gSSBkb27igJl0IHVuZGVyc3RhbmQgaG93IHVzZSB0aGlzIGlmIGdldF9yeF9zZW5z
b3IgaXMg4oCccXVlcnlpbmcgdGhlIHNlbnNvciBpcyBtdWNoDQpzbG93ZXIgdGhhbiB0aGUgdHVu
aW5nIGlz4oCcDQoNClRoaXMgaXMgYSB3YXkgdG8gYmUgKnN1cmUqIHlvdSd2ZSBmaW5pc2hlZCBs
b2NraW5nIHRoZSBMTyBiZWZvcmUgeW91IGRvIHNvbWV0aGluZyBlbHNlLg0KDQpUaGlzIGlzIE5P
VCBhIHdheSB0byBtZWFzdXJlIGhvdyBxdWlja2x5IHlvdSBjYW4gdHVuZS4NCg0KSW4gYXBwbGlj
YXRpb25zIHdoZXJlIHR1bmluZyBzcGVlZCBpcyBjcml0aWNhbCwgeW91IGNhbm5vdCB1c2UgdGhp
cyBhcHByb2FjaC4NCg0KQmVzdCByZWdhcmRzLA0KDQpNYXJjdXMNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0t
IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
