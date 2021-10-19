Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF70433472
	for <lists+usrp-users@lfdr.de>; Tue, 19 Oct 2021 13:12:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77235384B9F
	for <lists+usrp-users@lfdr.de>; Tue, 19 Oct 2021 07:12:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="fGbXUtIr";
	dkim-atps=neutral
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id ED0E33845E7
	for <usrp-users@lists.ettus.com>; Tue, 19 Oct 2021 07:12:06 -0400 (EDT)
Received: by mail-wr1-f48.google.com with SMTP id e12so47054583wra.4
        for <usrp-users@lists.ettus.com>; Tue, 19 Oct 2021 04:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=VsRJ4BEc9Cjklfj0Ckump5sWgMySwhI+r4yr2zlUdUw=;
        b=fGbXUtIr9NWs+8DmW6c4apF+PWBZ8Fg7msi64hMFe14v1MpXgxbNFTzbqP9zVuTPje
         lnQDIHC2k9GY6vi3++y4lyehBaUYNFyv733ugzy21sGPeV0MWIFEKgy2nku6y5sZcZt5
         fojRWMWHyvTKUYdnH69Kzq5A5qtGHQB3nArEHGNHqPa/ilmrzx6/tDkrbalKdrzhrxud
         LCSkfzHWvFqeBrdQmcvq+LBmEkR7QsFxpxBi0VLto47WTIasQ95UJY8HVnFMxekOLpYn
         pEzEYjBAmSzyGKvUOR2uPMKw8JiCr+d2znLLSLLi/q8xTNCa1PsrMimyt8NVtCmXLXxg
         q3AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=VsRJ4BEc9Cjklfj0Ckump5sWgMySwhI+r4yr2zlUdUw=;
        b=mflNwRZ7IYHNiErTIyeTfcsWRxGBXmVmQDAK5BSZiIjEej/9qAA69Tdx7iPXGqG6uE
         xOMNLDqUrH/gvGGfeijYkZ0Lxph6rECPma8L6LeJ3YhD5PC/Y/pwcjDEXdpg77+a2Xor
         PGlQBAFcNjaWuX6NBT7PqkOdK2TGYdpDO0TNA2FYGRpvLAfIXo4lmDz2FzpfVRjTwqJz
         DT0G36JlRawkkeu/t1tOAldb6BdPGBDSCHohaHI+z3rQBtnBQCIFayurNIN+Fp6kJZ/k
         LOjlTf1kYX/dBR69VjEK8Ym7p+XOS9u6WCjaJvf9o3L9/spdeIi31FS78ShEmU9I3ILa
         og9A==
X-Gm-Message-State: AOAM532ArrUp3nrUpnL/UnZV/DB+jyFtfBZC28xn3RxQCr55u4WYHp3u
	byXw9Wh7mlo33IIR2+nfQorfFV1m
X-Google-Smtp-Source: ABdhPJxIdZYznNcAxYYEAJf8AmLVVaT6LM8ED8OWe83mq7JAcdrOFnjJ04BLXod6G+CV/Km2jyHhow==
X-Received: by 2002:adf:a38d:: with SMTP id l13mr42949624wrb.103.1634641925982;
        Tue, 19 Oct 2021 04:12:05 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-45.hsi.kabel-badenwuerttemberg.de. [46.223.163.45])
        by smtp.gmail.com with ESMTPSA id p3sm1942262wmp.43.2021.10.19.04.12.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 04:12:05 -0700 (PDT)
To: fan <fyt201460@163.com>, usrp-users@lists.ettus.com
References: <4cee7359.592e.17c97cfb9d4.Coremail.fyt201460@163.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <8f096c91-ced3-f7f1-0100-8c1f4f497ca0@ettus.com>
Date: Tue, 19 Oct 2021 13:12:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <4cee7359.592e.17c97cfb9d4.Coremail.fyt201460@163.com>
Content-Language: en-US
Message-ID-Hash: 6LE7RNIK7DYADJGUDJECM5PHCKKAZLTR
X-Message-ID-Hash: 6LE7RNIK7DYADJGUDJECM5PHCKKAZLTR
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: alekhgupta1441@gmail.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to receive the output of B210 Tx's PA?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6LE7RNIK7DYADJGUDJECM5PHCKKAZLTR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgZmFuLA0KDQpJbiAyMDIwLCBBbGVraCBHdXB0YSB3cm90ZSBhIHByZWRpc3RvcnRpb24gbW9k
dWxlIGZvciBleGFjdGx5IHRoYXQgcHVycG9zZS4NCg0KaHR0cHM6Ly9naXRodWIuY29tL2dudXJh
ZGlvL2dyLWRwZA0KDQpZb3VyIHF1ZXN0aW9ucyByZWdhcmRpbmcgZ2FpbiBtYWtlIG5vIHNlbnNl
LCBiZWNhdXNlIHRoZSB3aG9sZSBwb2ludCBvZiBub25saW5lYXJpdHkgaXMNCnRoYXQgeW91IGNh
bid0IHJlcHJlc2VudCBpdCBhcyBhIHNpbmdsZSBnYWluIG51bWJlciwgc28geW91IG1pZ2h0IG5l
ZWQgdG8gcmVhZCB1cCBvbiB0aGUNCnRoZW9yeSBhIGJpdCBtb3JlIQ0KDQpBbGwgdGhlIHF1ZXN0
aW9ucyB5b3UncmUgYXNraW5nIGFib3V0ICJob3cgZG8gSSBkbyBpdCIgYXJlIGFuc3dlcmVkIGlu
IFdlZWsgMSB0byAxMyBvZg0KQWxla2gncyBibG9nOg0KDQpodHRwczovL2dyZHBkLndvcmRwcmVz
cy5jb20vDQoNCkJlc3QgcmVnYXJkcywNCk1hcmN1cw0KDQpPbiAxOS4xMC4yMSAxMTowOSwgZmFu
IHdyb3RlOg0KPiBIae+8jGV2ZXJ5b25lLkkgYW0gdHJ5aW5nIHRvIHN0dWR5IGhvdyB0byBwcmUg
ZGlzdG9ydCB0aGUgc2lnbmFsIG9uIGIyMTAgdG8gZWxpbWluYXRlIHRoZQ0KPiBlcnJvciBvZiBu
b25saW5lYXIgUEEuIEJlZm9yZSB0aGF0LCBJIG5lZWQgdG8gZGV0ZXJtaW5lOiBkb2VzIHRoZSBU
WCBQQSBvZiBiMjEwIGhhdmUNCj4gbm9ubGluZWFyIGNoYXJhY3RlcmlzdGljcyAod2hlbiBUWCBn
YWluIGlzIHRvbyBoaWdoLCB0aGUgc2lnbmFsIGFtcGxpdHVkZSB3aWxsIGJlDQo+IGxpbWl0ZWQg
YmVsb3cgMS4gSXMgdGhpcyBiZWNhdXNvZiBpdHMgbm9ubGluZWFyaXR5KT8gSWYgeWVzLCB3aGF0
IHZhbHVlIGlzIHRoZSBUWCBnYWluDQo+IHNldCB0byB3aGVuIFRYIFBBIGlzIG5vbmxpbmVhcj8g
SG93IGRvIEkgZ2V0IHRoZSBvdXRwdXQgdmFsdWUgb2YgUEE/IChjb25uZWN0IFRYIHBvcnQNCj4g
YW5kIFJ4IHBvcnQgd2l0aCBhIFNNQSBjYWJsZSBhbmQgb2JzZXJ2ZSB0aGUgaW5wdXQgb2YgUlg/
KQ0KPg0KPg0KPg0KPiDCoA0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAt
dXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
