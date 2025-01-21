Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA8BA185A5
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 20:31:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1065E38607E
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jan 2025 14:31:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737487881; bh=jGPu+4OOFT3aFmd67Htx0Z1eXbjyKUKoSvfnf09aLJE=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=PZTZCXcI7Ktwea/zPOxTLhQXejeoOIMSDS9E7BZkvUNuSvyJC0cPtK3L0iv3rxTAo
	 NtvubIbROt6IvFCkHOeyaTmx5RI2RduTm93KlGMNCXBHiaxim4j+6+frVqeDI/9VUp
	 /S/P/dI50+fh5NqB2ZrU1X904TPQUjzlilTE7F3ndmUZ8dkyC5DNEy17M0lLEKG7uE
	 ouGQJUrJYdSa9ohESWq/ZPajp5ofwEVXCMAFxhiJ7PsRRp2I4MAjF85AdrkVWaeK/c
	 e3fDvoIuj/um0U+PJnKdnUsA4fGv6PnBsTiGh7/I1N4oGjLBmtbyof/MkqVKabcHUT
	 xUuMX0FYmDPyA==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id D9819385B63
	for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 14:30:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bcOZR7EP";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-467a37a2a53so66178621cf.2
        for <usrp-users@lists.ettus.com>; Tue, 21 Jan 2025 11:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737487853; x=1738092653; darn=lists.ettus.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Su1ovjCigqQXjb3ZdykM1CqhgOPVVweFgwnPeIi2Rbk=;
        b=bcOZR7EPWoYD5kHqk4js7t2gmcCePyg3SPs2MMo2OTzvwfuQa5Y3vq4ja9hZ8PzLiH
         0Bgl3FD0llPR10budXAbwaAz8d6+nP/LqNcTaNKPsNSCBpFRidqBH/CnSUSJGGVGW6zY
         BXPWG3f+PPUVD4sVaBimiTlNLnEUfpLHoNup8SCTEynYkid05XH/1MY7SiDkfWLbkDzt
         W5T7NwPsGMmUCJF2Cqp6pLAdOzMcoaiklUs2Qw5t4oN017FpKKeBSYbSJfiAhO9SRlUs
         Z+kAvGeBWu8wou//8UNi4f5f8GaZUO+yKBoHK6f37Z2xlZFHfFwz3UQrBDNn+c1w+h1T
         g5Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737487853; x=1738092653;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Su1ovjCigqQXjb3ZdykM1CqhgOPVVweFgwnPeIi2Rbk=;
        b=SkTQoNEDmW/gptM8n6FhiFeY3gtmy5505rlTpf3zkoJ4acKifpsO56uy/fRqFBF4gQ
         GmwIoxTBzMfHLw4JuWHsL7qctF8opZCak5UbZ2kWCzRlv3/KRAubTCx6RLyGLARSvAod
         qpiFOCwaI1otaWeAAhbQbK/TKHEN4n0I88dFH34bEmSk02FlCmx9C7Q1FauF0L7zr19d
         uytbERkfdMj2VUoDfC66agFKWs1LlAXahM88NoNYgi1x88S/WasAd+rDUDCWSDsVKq3G
         o80saq/8ayaJdBsbj+AmJZyFl9uX21u1OLAdqo7gKoGIKPy+k94BmaMAVvoDZFPrMm8Y
         qfaw==
X-Gm-Message-State: AOJu0Yxe0vwF5aDVkYHcFlUgvkXN9KFzzatCyOg9NHakpxSRQNV60Tsj
	1fjaIpRVGUcompyT3ARyh5VMilL4ap5T0m8d9XrXB2kJkkhridLl2ol1JQ==
X-Gm-Gg: ASbGncvhGemIrrkELN+nPo+6BLSsDKo1Wb8YczS8N4LPs8YVJFLGqZGGjwyP4vU0djg
	8UeaO/NNDJWk+fhvkrR1liZ49Jy8lxPVn4ZsXGYsfATyOASSKrjFBb1Rq/tZxXN1+51WS1CnPUv
	bqouBL03eAOlGXLJN4ZOMFbA1zOKMVH4JMANcCWJQ6ivSM+Rw7FzAJ7EeW1WdbapFG/eRYRjdk/
	A0bk88r9I/AWxYgHiHnonfbKV5WwE+TZDlukQdnZL0TmvY+RXSKzWrFn9DMCG4ffzIOGZMJToUW
	90f0+5odPyMejtknh1jRS6gXNoi/0VyFJNCuDzBk3hpKs/0Jza4KwOzTGI7Z5eUSMdm5
X-Google-Smtp-Source: AGHT+IHU+sAARBd0mVW33xSZWXqLr3aZ/Li47nhZlvilrfFE8bNSw/O/7Rf/M/SgB9LVXpe+51eVUg==
X-Received: by 2002:a05:622a:354:b0:467:6e45:2177 with SMTP id d75a77b69052e-46e12a3f3efmr273052231cf.12.1737487853596;
        Tue, 21 Jan 2025 11:30:53 -0800 (PST)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-46e261b8023sm36032151cf.79.2025.01.21.11.30.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jan 2025 11:30:53 -0800 (PST)
Message-ID: <4b85f8f2-a3ca-4a47-8680-be8c07798bde@gmail.com>
Date: Tue, 21 Jan 2025 14:30:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: KDPEREWW4AX6ANGZHS2HSCCOMSLO53HK
X-Message-ID-Hash: KDPEREWW4AX6ANGZHS2HSCCOMSLO53HK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] files.ettus.com is back up
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KDPEREWW4AX6ANGZHS2HSCCOMSLO53HK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SnVzdCB0byBsZXQgZXZlcnlvbmUgaGVyZSBrbm93IHRoYXQgZmlsZXMuZXR0dXMuY29tIGlzIG5v
dyBiYWNrICJvbiB0aGUgDQphaXIiLCBzbyB0b29scyBsaWtlIHVoZF9pbWFnZXNfZG93bmxvYWRl
ciB3aWxsDQogwqAgd29yayBhZ2Fpbi4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJz
LWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
