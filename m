Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 88076571885
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 13:29:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8299A38307F
	for <lists+usrp-users@lfdr.de>; Tue, 12 Jul 2022 07:29:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657625396; bh=atdUGjWLFttD73pTxNZcJLi+3vXvaBXqbpdfE2qfzeo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vD8ShGUP8FfWlw16XZV/pPkH989zix75JGvOSJppIQfAL5Ippmfnt05jyhrfpXMqO
	 elWjs2qsWaGkz/lO1FsvvSBIQNTnuNdERWCX6mWpAvDRe61pWefiXTbpwvw1s83c/g
	 sjkzFDHg7q8bycV+MoPP0Wwd+CAxYFn7eFQN0WgAnO6Lo0ChWv4DSuopQN0hNRMK01
	 6mWkLn+Ff43VDUvGBCzfp1/lEonAUTsaOFoTagkOX+Jo4uHRH6Latb+XUzGyM00yl0
	 zXAhkeRIPIildNxd1UQP06iQwYpzw/vbTtfD1AFHTV8KjZvlwbS8iySm21RC18BhxC
	 QDgbSJvVrG6vA==
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D6223819B1
	for <usrp-users@lists.ettus.com>; Tue, 12 Jul 2022 07:28:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="azwpG0/1";
	dkim-atps=neutral
Received: by mail-qv1-f51.google.com with SMTP id d17so2315667qvs.0
        for <usrp-users@lists.ettus.com>; Tue, 12 Jul 2022 04:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=lWK9k2wdHxDt+nbjuaca9nMAV0uRiCrBhpMLarud07Q=;
        b=azwpG0/1Akl/r0UuO8niHcRk7H2HHBfYR9rGV1OuTXNP3xuceOYwKh4IAcaYzvjKpW
         R7wbc/5XMkomtgM32XA3CMK+ja1gwDx749C51y3g8WrubMvoOZS6zsTPv5jJXyNE/8Rh
         puSrn77xn+m+zdy0ww38BzDqqUT7uBbksrYHvBlbJgpX6zpeCV3bf8A1MjvLtNSAng/8
         SaCOsyreSj3EzEYat/fZSJ+IteK3pT5MQEfYxnubNRdhwIqVk0btnzaN1LJwzNEvBrcM
         7YtQ84xNd8tQ/NePwJqRSQIRT//Z5I0dEsyfHVfDAW7HBvG3GOdDO6nWZxU//25YpwSm
         xjtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lWK9k2wdHxDt+nbjuaca9nMAV0uRiCrBhpMLarud07Q=;
        b=ZfDFls/cNHqkjH0E1DjtFHrk1y8Ksg71fQ6aPVmTScxXQJvml3BY25Y+DxcvObBAzR
         iJ09zBsSTA2+Lq5lch/x/VCjT7uWxcvF9dr+kCiDEiTz/RCrXICgNVqfgIkV0SYaYKJS
         SJAKDCi93EYKu6u+EhbaA+kBRdFzk65HZ2wtu18rBsT6IlpNMvjRXr+dNtTURpySpQkg
         dKSkGowTtCchny7gpka6XiWZefNsjpw+cj/zH0WTmeLRyx7ux9LDSNPq8EtodfLDPnKM
         Ydc+494JAGqDhlbVgLQgRNDLZVdvtw6uDCGlyJs+RfMFFZ1U5ZPaotiSzzEMaS0vKx/F
         TLcw==
X-Gm-Message-State: AJIora9EnxHiUYTC5uPOwgwj6oG2TLStPXjRT23SYj8v9EXTJvKgHzhF
	/D0ArshFG2qEIQmz2DNtcHxHyvvzIQs=
X-Google-Smtp-Source: AGRyM1sVA3XjsGSjvQT6WXdAUX/oZV+OQQR1WmhCZy7PwWTc3tKps6JxjZVMWxLqk0HqM0sF44wewg==
X-Received: by 2002:a0c:e0cc:0:b0:473:383c:314 with SMTP id x12-20020a0ce0cc000000b00473383c0314mr17345116qvk.126.1657625327296;
        Tue, 12 Jul 2022 04:28:47 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id j9-20020ac85c49000000b0031eac31e630sm7410527qtj.49.2022.07.12.04.28.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 04:28:46 -0700 (PDT)
Message-ID: <6eaf5d4f-77f6-5872-5f73-e95b31ad7c30@gmail.com>
Date: Tue, 12 Jul 2022 07:28:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <m5FQ7PJuZCFN5wwWxMDd8xvXsySCyh5kHX53asf2A@lists.ettus.com>
 <20220712093808.dog33qimva7ipyjo@barbe>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <20220712093808.dog33qimva7ipyjo@barbe>
Message-ID-Hash: C33YKA4E5VSAZFJ2HCIPPMTPM4FFCSTD
X-Message-ID-Hash: C33YKA4E5VSAZFJ2HCIPPMTPM4FFCSTD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem installing UHD dependencies
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C33YKA4E5VSAZFJ2HCIPPMTPM4FFCSTD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNy0xMiAwNTozOCwgQ8OpZHJpYyBIYW5ub3RpZXIgdmlhIFVTUlAtdXNlcnMgd3Jv
dGU6DQo+IEhpIGsxYmFycmV0dCwNCj4NCj4gT24gMjAyMi0wNy0xMSAyMTo0NCArMDAwMCwgazFi
YXJyZXR0LS0tIHZpYSBVU1JQLXVzZXJzIHdyb3RlOg0KPj4gSSBhbSBydW5uaW5nIHVidW50dSAy
Mi4wNC4gSSBhbSB0cnlpbmcgdG8gYnVpbGQgVUhEIGZyb20gc291cmNlIHVzaW5nIHRoaXMgZ3Vp
ZGUgaGVyZS4NCj4+DQo+PiAgIGh0dHBzOi8va2IuZXR0dXMuY29tL0J1aWxkaW5nX2FuZF9JbnN0
YWxsaW5nX3RoZV9VU1JQX09wZW4tU291cmNlX1Rvb2xjaGFpbl8oVUhEX2FuZF9HTlVfUmFkaW8p
X29uX0xpbnV4DQo+Pg0KPj4gSG93ZXZlciwgd2hlbiBJIHJ1biB0aGUgZm9sbG93aW5nIGNvbW1h
bmQ6DQo+Pg0KPj4gICBzdWRvIGFwdC1nZXQgLXkgaW5zdGFsbCBhdXRvY29uZiBhdXRvbWFrZSBi
dWlsZC1lc3NlbnRpYWwgY2NhY2hlIGNtYWtlIGNwdWZyZXF1dGlscyBkb3h5Z2VuIGV0aHRvb2wg
Zm9ydDc3IGcrKyBnaXIxLjItZ3RrLTMuMCBnaXQgZ29iamVjdC1pbnRyb3NwZWN0aW9uIGdwc2Qg
Z3BzZC1jbGllbnRzIGluZXR1dGlscy10b29scyBsaWJhc291bmQyLWRldiBsaWJib29zdC1hbGwt
ZGV2IGxpYmNvbWVkaS1kZXYgbGliY3BwdW5pdC1kZXYgbGliZmZ0dzMtYmluIGxpYmZmdHczLWRl
diBsaWJmZnR3My1kb2MgbGliZm9udGNvbmZpZzEtZGV2IGxpYmdtcC1kZXYgbGliZ3BzLWRldiBs
aWJnc2wtZGV2IGxpYmxvZzRjcHA1LWRldiBsaWJuY3Vyc2VzNSBsaWJuY3Vyc2VzNS1kZXYgbGli
cHVsc2UtZGV2IGxpYnF0NW9wZW5nbDUtZGV2IGxpYnF3dC1xdDUtZGV2IGxpYnNkbDEuMi1kZXYg
bGlidG9vbCBsaWJ1ZGV2LWRldiBsaWJ1c2ItMS4wLTAgbGlidXNiLTEuMC0wLWRldiBsaWJ1c2It
ZGV2IGxpYnhpLWRldiBsaWJ4cmVuZGVyLWRldiBsaWJ6bXEzLWRldiBsaWJ6bXE1IG5jdXJzZXMt
YmluIHB5dGhvbjMtY2hlZXRhaCBweXRob24zLWNsaWNrIHB5dGhvbjMtY2xpY2stcGx1Z2lucyBw
eXRob24zLWNsaWNrLXRocmVhZGluZyBweXRob24zLWRldiBweXRob24zLWRvY3V0aWxzIHB5dGhv
bjMtZ2kgcHl0aG9uMy1naS1jYWlybyBweXRob24zLWdwcyBweXRob24zLWx4bWwgcHl0aG9uMy1t
YWtvIHB5dGhvbjMtbnVtcHkgcHl0aG9uMy1udW1weS1kYmcgcHl0aG9uMy1vcGVuZ2wgcHl0aG9u
My1weXF0NSBweXRob24zLXJlcXVlc3RzIHB5dGhvbjMtc2NpcHkgcHl0aG9uMy1zZXR1cHRvb2xz
IHB5dGhvbjMtc2l4IHB5dGhvbjMtc3BoaW54IHB5dGhvbjMteWFtbCBweXRob24zLXptcSBweXRo
b24zLXJ1YW1lbC55YW1sIHN3aWcgd2dldA0KPj4NCj4+IEkgZ2V0IHRoZSBlcnJvciBFOiBVbmFi
bGUgdG8gbG9jYXRlIHBhY2thZ2UgcHl0aG9uMy1udW1weS1kYmcNCj4gSSBkb24ndCBrbm93IGlm
IHNvbWVvbmUgaXMgdXBkYXRpbmcvY29ycmVjdGluZyBpbmZvcm1hdGlvbiBvbg0KPiB0aGlzIGti
IHBhZ2UgKHdoeSBwdWxsaW5nIE51bVB5IGRlYnVnZ2luZyBzeW1ib2xzPykuDQpUaGUgQXBwIE5v
dGVzIHRlbmQgdG8gYmUgInNuYXBzaG90IGluIHRpbWUiLS1jbGVhcmx5IHNvbWUgb2YgdGhlbSBu
ZWVkIA0KdG8gYmUgcmV2aXNlZCBmcm9tIHRpbWUgdG8gdGltZS4NCg0KPiBZb3UgY2FuIGZpbmQg
dGhlIG5lY2Vzc2FyeSBkZXBlbmRlbmNpZXMgZm9yIFVIRCA0LjIgZm9yIFVidW50dSBpbiBbMV0u
DQo+DQo+IFsxXSBodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV9idWlsZF9ndWlk
ZS5odG1sI2J1aWxkX2RlcGVuZGVuY2llc191YnVudHUNCj4NCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
