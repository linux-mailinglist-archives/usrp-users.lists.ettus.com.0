Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECCB85E43B
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 18:15:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3B849384BF4
	for <lists+usrp-users@lfdr.de>; Wed, 21 Feb 2024 12:15:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708535708; bh=1wd0WK2PNX+8h2WBEuzcogvnwi6jSzoVAAZifffI2t4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=lA3h6wJP5yqui33iiqskcNLVspvKmNzMOgHMky0KPmBDgFYkdroLb2vcc/TEs40l+
	 erfUONHgB2d8Kn+IKJ3M7hPRq2rKiSAIQbcUS7E5Z8gzH1r8wo44pUoW5CbLXFDI13
	 G5EKjfLXOI0L2E5CWIjf2VKb+Sws4IE29lkUc4fohhFMx9KPgZAGiL8WtknKkzFzfp
	 9RvMMmho6StO2Bfy1BQSnay0cuY8Cj1ckHJ/f0TfSd8j1EkTIfl9BkoGLlYqg01uNg
	 pIrh/RxE5mqmMXvuOyyELE4AgiajPbBdxHXOzwEzL1pUkjPwbPVVpU/zDK9WnVDCuA
	 hCrM0StxjRQhA==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id CAB11383BCE
	for <usrp-users@lists.ettus.com>; Wed, 21 Feb 2024 12:14:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CC2urNmq";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-785db3fe7feso56861385a.1
        for <usrp-users@lists.ettus.com>; Wed, 21 Feb 2024 09:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708535689; x=1709140489; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OAQ8nd1tXCUcEdhly76XWeiJXUwUru55ryRH/WX9Z4k=;
        b=CC2urNmqMw9XkdZ1ip8duXL92VDDeJ7Ho4pm3nlS9ZyDp+21c8JenxKAzFmWUwKQHx
         3IdgQenl4WHrTp01uS3NYwN9KJjxizHs4KGZ4encFlr5EwpUv98Btj8Wa/89kFDmaoaZ
         3ej3hFzP6HcWIPB0y5VWmvXKtuful3XhEv0iEJY+dVIwp8dc3Ygmy8MNJrE4n/sLYFBe
         S/du5RWRr2WO5GNmZngOJ8TlZn+4vRnqBjOOIS+/CIMe9q0BXckOpiD/KOKKAqpnPUDw
         GRtldvFztAIVT9q3UnuF71vHsl/k+BXSN0oEg61iLzhmHQLs+wqfRkzbzTWG9QzxwDWM
         mAqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708535689; x=1709140489;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OAQ8nd1tXCUcEdhly76XWeiJXUwUru55ryRH/WX9Z4k=;
        b=T9yBl8M/mEk20MpqiYeu77suUI46kJ/VgROODK++fWnDJeu91fySnWDjYaEQpRMa62
         NDsDBq+vY4r4VbwhoLRLaTyyytcpsxW5Mr5SxgfawLK4+Ncb6Go+Jqntg4rZ0/WDufvH
         VOWzE8OyxMZyWQtWy3IOnTRmPZzXtfxDIUlAE0k1NMKKkVf3s0r+F05zcDltrgoIerVj
         d+M5+5TThY4xBXpFM8aQK3xYKqSRMV4/ENSv23Ulye2agF54IHmZG82QQZgc9ANGpZ5M
         ZCPnS07l8u/Gpp/bJfFBZIaHt4GNac03gFALrM7RIHyfRaiGuLLAWyimwTKyCWPq/wnl
         UiGA==
X-Gm-Message-State: AOJu0YxmG5Kc6dBIyIRnsMdWE6sK0PbfiD7h44YNJaf+X3TE3UkCqqrO
	t6+OSWww9mYZ3mH09nVw4J3VTbXnmlvfmQSZuvxDLCvo9rpeWlmbdMsjtNZAc1s=
X-Google-Smtp-Source: AGHT+IEzSb2mza+ELKeop+q6qZWBDO+GsQo7o5uutfGe9TyxXQSR929eV9I40qWr7AKUe4Wn+0Fp+A==
X-Received: by 2002:a05:620a:7f1:b0:784:b12:ba1c with SMTP id k17-20020a05620a07f100b007840b12ba1cmr20186634qkk.78.1708535689030;
        Wed, 21 Feb 2024 09:14:49 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id 17-20020a05620a04d100b00787346f1edasm4448826qks.54.2024.02.21.09.14.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 09:14:48 -0800 (PST)
Message-ID: <a1d6e2fc-5510-4fff-9b38-e33b98da1062@gmail.com>
Date: Wed, 21 Feb 2024 12:14:39 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1aWVQGIbcUggHN87wOgTxu4ntD0PAhrOcrg1f10@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <1aWVQGIbcUggHN87wOgTxu4ntD0PAhrOcrg1f10@lists.ettus.com>
Message-ID-Hash: MAMR2VTYNC7NVX6O7D7HP2ACYBNE5XPR
X-Message-ID-Hash: MAMR2VTYNC7NVX6O7D7HP2ACYBNE5XPR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Compatibility of NI USRP 2943R RF daughterboard (CBX-40) with Ettus N210 product
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MAMR2VTYNC7NVX6O7D7HP2ACYBNE5XPR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjEvMDIvMjAyNCAwMzowMCwgaG9vc2FjMTlAaG90bWFpbC5jb20gd3JvdGU6DQo+DQo+IEkg
b3duIGEgTmF0aW9uYWwgSW5zdHJ1bWVudHMgVVNSUCAyOTQzUiwgZXF1aXBwZWQgd2l0aCB0d28g
RXR0dXMgDQo+IENCWC00MCBkYXVnaHRlciBib2FyZHMsIHdoaWNoIEkgdXNlZCBmb3IgTGFiVklF
VyBhY2FkZW1pYyB3b3JrLg0KPg0KPiBJJ20gbm93IGludGVyZXN0ZWQgaW4gcHVyY2hhc2luZyBh
biBFdHR1cyBOMjEwIGZvciBHTlUgUmFkaW8gDQo+IGFwcGxpY2F0aW9ucy4gSeKAmW0gdGhpbmtp
bmcgb2YgYm9ycm93aW5nIG9uZSBvZiB0aGVzZSB0d28gQ0JYIGJvYXJkcyANCj4gYW5kIGluc3Rh
bGxpbmcgaXQgaW50byBhbiBOMjEwIGZvciBub3cuIE15IGxvbmdlciB0ZXJtIHBsYW4gd291bGQg
YmUgDQo+IHRvIHB1cmNoYXNlIGFuIEV0dHVzIFVCWC00MCBkYXVnaHRlcmJvYXJkIGZvciB0aGUg
TjIxMC4NCj4NCj4gQ291bGQgc29tZW9uZSBwbGVhc2UgYWR2aXNlIG1lIGFzIHRvIHdoZXRoZXIg
bXkgQ0JYLTQwIHdpbGwgYmUgDQo+IGVsZWN0cmljYWxseSBjb21wYXRpYmxlIHdpdGggYW4gRXR0
dXMgTjIxMCBhbmQgcHJvdmlkZSB0aGUgc2FtZSANCj4gcGVyZm9ybWFuY2UgYXMgYW4gRXR0dXMt
cHVyY2hhc2VkIENCWC00MCBib2FyZD8gSSB0cmllZCBmb3J3YXJkaW5nIG15IA0KPiBxdWVzdGlv
biBvbiB0aGUgRXR0dXMgUmVzZWFyY2ggd2Vic2l0ZSBjb250YWN0IGZvcm0gYnV0IHRoZSBzdWJt
aXQgDQo+IGJ1dHRvbiB3YXMgbm90IHJlc3BvbnNpdmUuDQo+DQo+IFRoYW5rIHlvdSB2ZXJ5IG11
Y2ghDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20NClRoZSBDQlgtNDAgZnJvbSB5b3VyIDI5NDMgKGVxdWl2YWxlbnQgdG8g
YW4gWDMxMCBJIGJlbGlldmUpIHNob3VsZCBiZSANCmVudGlyZWx5IGNvbXBhdGlibGUgd2l0aCB5
b3VyIE4yMTAuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20K
