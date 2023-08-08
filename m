Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8E6774874
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 21:33:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A63A4384AFD
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 15:33:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691523200; bh=V7Iz6Nx6G347ScTzxZsnUDs5FgWLS1JJNJgIGx0GROQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=IeY9Hk/w2QpXZiy16zLNs1QE+PRPMXRUlXJ/qUnaDQ3tnzN6xtlXvDe+CmBfg7G7h
	 Ntf26pp/LspbYdS/+E+O+xvS3a/d8GuTNnwEKL5qqu4iL0KA9kYgRuiHdBYqafZNdP
	 5ILcRiN/756EbnaXQxKN2rh9uIsOWstb6Tew5wlfnnha0HaKuCQUdR2XJAdQfiFzxY
	 hBsHFLpZWE4Ipom74b3hyH/+81n5XFJt8ZqskyU1NBr1yVtuzMG4chLlpwHwBP12pu
	 8Vs85W7GYQY9JypmFLFlNvTpE/YbVmscP94QBJcS+JL+RFXZspAj4IunHBlYVv9EqZ
	 oss9YZuB6w6XQ==
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 9852A383F38
	for <usrp-users@lists.ettus.com>; Tue,  8 Aug 2023 15:33:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F0EJjcCp";
	dkim-atps=neutral
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-1bfb91ac4edso3118118fac.3
        for <usrp-users@lists.ettus.com>; Tue, 08 Aug 2023 12:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691523185; x=1692127985;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IzvyRAeCWjwZkug21VczVl8/N7KJM8Moc58ThioXg2o=;
        b=F0EJjcCpW5vmHyA0HipVBSj+AlLnLuss/YtocEQKC7IYW3xFHF0Rrl+NpjxyjsCDa3
         jZEivkLUus8eNwScOgbNd26d9AkepFiJAlbIkjrbc4D1OnOKo67M2SR3wXofeTNgFFi0
         Vwzo8skeKulp/UyZ7Km+yqx/z0JFTVuLZPmF1bfh+wHPVrfVrBFMRCbQ1JwNVfwP5nzI
         0uraukQCQwQyE2lbmU81CwUJmd0UcdVMHxvAsX76qFbv+OCf81PtZ+8hiEQdQOU1wKYE
         QDdkULIjWoRvujOEGi4uVieId9AvLkU8/X9QOgPRttUdYPzDao25BjAR3yb1MsGRbFUo
         RZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691523185; x=1692127985;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IzvyRAeCWjwZkug21VczVl8/N7KJM8Moc58ThioXg2o=;
        b=l9tlqDeqGz0p0Lcj+BZcFhVZDJ64Srx9/RRxvJpC3qvq0rJJbOZ1OGdcNDqC+R43bR
         1u9ZLrGLj+5d1E/iNtx219hJpPutRBUnzKbYFGmXtKizxrovVJKM0PfewazQIzTz+BQ8
         D16uwwpMl8d0E1YtIyGMZlrP04AJOArfJZatVFFMTeFnj6DX5vEfj6Jeg+RL0APfuCYY
         p/KS0e4po32ER7D3ZFAjMt51sOGkqr3OhAd5AVJDxXKTG4hSE2FP6mA9w95Xs5Txfx9B
         fX7fi9RmVFkv1YjQZg+CMwrtK9PGw+bylRMxvlobWlwovgs9Qp7veCJRuK3JU5Xyq5u1
         +q/Q==
X-Gm-Message-State: AOJu0YzfmkVvRgZTyRYGS7IGpUYyYUhHXVfPBs7KwJ9WLw6D2NpoBrwO
	e4fZ5e/S77Nob1ij5MjjnKewwolckvo=
X-Google-Smtp-Source: AGHT+IH2oYX94Ng9xhiRFUCjnjHvsMzjxCKy7+jHk64h1ab+fw1rl5PF9gQL8HxDmuz3OnwekJejiw==
X-Received: by 2002:a05:6870:4725:b0:1bf:607:e0f2 with SMTP id b37-20020a056870472500b001bf0607e0f2mr714573oaq.29.1691523184738;
        Tue, 08 Aug 2023 12:33:04 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id t22-20020a05622a181600b0040fe7e22639sm3572456qtc.75.2023.08.08.12.33.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 12:33:04 -0700 (PDT)
Message-ID: <a171d061-16c9-f4ee-d368-1c7821f48bdd@gmail.com>
Date: Tue, 8 Aug 2023 15:32:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <HBwGLaxrkIvGeOun7uWJ8eui9XEWBCpBLk59L0leDA@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <HBwGLaxrkIvGeOun7uWJ8eui9XEWBCpBLk59L0leDA@lists.ettus.com>
Message-ID-Hash: DGYRUAOITSNLP3GNYX6EMHT5B7TZMSLP
X-Message-ID-Hash: DGYRUAOITSNLP3GNYX6EMHT5B7TZMSLP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Device Serial, Name and Product ID Corruption Issue on Misusage of b2xx_fx3_utils for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DGYRUAOITSNLP3GNYX6EMHT5B7TZMSLP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDgvMDgvMjAyMyAxNToyOCwgZWRlbm1jbGF1Z2hsaW4xMjNAZ21haWwuY29tIHdyb3RlOg0K
Pg0KPiBPaCwgaXQgaXMgbG9jYXRlZCB1bmRlciB0aGUgaW5zdGFsbF9wcmVmaXgvc2hhcmUvdWhk
L2ltYWdlcy8uIGZvciBtZS4NCj4NCj4gSSBoYXZlIGEgVUhELTQuMyBpbnN0YWxsYXRpb24gYW5k
IGl0IGlzIGJ1aWx0IGZyb20gdGhlIHNvdXJjZS4gSXQgZ29lcyANCj4gYnkgdGhlIG5hbWUgdXNy
cF9iMjEwX2ZwZ2EucnB0IGFuZCBpdCBjYW1lIGJ1bmRsZWQgd2l0aCANCj4gdWhkX2ltYWdlc19k
b3dubG9hZGVyLiBJIGRvbuKAmXQgcmVjYWxsIGluc3RhbGxpbmcgYW55IGltYWdlIGZyb20gYW4g
DQo+IG91dHNpZGUgc291cmNlLg0KPg0KPiBSZWdhcmRzLA0KPg0KPiBFZGVuLg0KPg0KPg0KPg0K
SW50ZXJlc3RpbmcuwqAgSSBkb24ndCBzZWUgYW55IC5ycHQgZmlsZXMgaW4gdGhlIChzb21ld2hh
dCBuZXdlcikgVUhEIA0Kc291cmNlIHRyZWUgdGhhdCBJIGhhdmUuwqAgQXJlIHlvdSBhbHNvIGJ1
aWxkaW5nIHRoZSBGUEdBDQogwqAgaW1hZ2VzIGZyb20gc291cmNlP8KgIFRoYXQgd291bGQgZXhw
bGFpbiB3aHkgeW91IGhhdmUgdGhlIA0KY29ycmVzcG9uZGluZyAucnB0IGZpbGUuwqAgUmVnYXJk
bGVzcywgdGhvc2UgZmlsZXMgYXJlIHRleHQsIGFuZA0KIMKgIGFyZSBhICJyZXNvdXJjZSByZXBv
cnQiIGZyb20gdGhlIEZQR0EgdG9vbHMuDQoNCklmIHlvdSBjb3VsZCBzaGFyZSBhbiAibHMgLWwi
IG9uIHRoYXQgZmlsZSwgdGhhdCBjYW4gaGVscCBtZSB1bmRlcnN0YW5kIA0Kd2hhdCBtaWdodCBo
YXZlIGhhcHBlbmVkLi4uLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCg==
