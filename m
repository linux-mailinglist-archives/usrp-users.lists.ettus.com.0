Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CA152ECF1
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 15:17:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77C42384702
	for <lists+usrp-users@lfdr.de>; Fri, 20 May 2022 09:17:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653052650; bh=ySSjL4M6MbvXjzviyObrXyQ151RHVvYX6ApRuLaeT3w=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0kmDrhrBCw9Ym3a+3rX37zRGcCrK+mvRj3H3fPPEFSxVU624Xf6h/w+5e+Df8AVhZ
	 ETWOSroBqswEmukxQ8tg8RfltLYAMNdFjwM5KIQ6koLfYVw5s/G0kRHTo0feXK1zT8
	 y98sUCcqXXOCUHcpvBctmiz86V5BaZTFZXM+qIWrsZimauSDBZo/UVTXsPMN0dmmNY
	 Q6/EHAk3R1w2/n99MX2kbKPk4RCOI3NoIcgB+Oyr8maIdu7OZ3TnC4thmahVfjcRGa
	 XsSfHUmdVipS7EmnHM2HwVzYriKgQpzH9SH+ScGg9d/REniiq0qwoWpTgZTp3ur1gt
	 PspG64hRChSQA==
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 3378F384B91
	for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 09:16:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kTAsy50c";
	dkim-atps=neutral
Received: by mail-qk1-f176.google.com with SMTP id bs17so6896283qkb.0
        for <usrp-users@lists.ettus.com>; Fri, 20 May 2022 06:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=jWwDd8QjDBdtj2+lVBIpj4hYdNTgp1VtFltEEXfl2o4=;
        b=kTAsy50cVtFMDv2nJbqPLN3Misc5SRCOogbNGj9AldaxM0dW4GdnjrIZ3dDxwRjUcn
         mAE/1moW4zGmeMOaB74Bp/wAuGIL2zlIRRa4/FpO9v/cHkMM1QFlU2eV9s2xgjBAvf5+
         AJJi9YUnmjMAEwraMzMLYUixg9Ve6GGUKvjUnE0pJSynQ168ePkO8rvMwpPGEtJwr30N
         V37wROdIko0Ub4W0UT+iATsitQTKMvKXQHS3PFD6wGV0zBsfJUO7k6AnTLf9xl6Pqtz1
         cMZSbBV9CgW1kS94qVW7ctWjR1SXhvJ4LxpNcgjZ8fAdvSfXthMvdrtbtMo7JjkLAjG3
         v6Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jWwDd8QjDBdtj2+lVBIpj4hYdNTgp1VtFltEEXfl2o4=;
        b=kVWYNGk+sPggwIme2ZQpGlRfT+qK0PuX1uu86DGMzFqwvWEQ2U6dUoWYpzTquRDyn/
         qXLk97GMQrTHka/1xbDg34iKON8pMnNSVytCLFDoW2FNry2jCLO6q2VWKxTvT4jQI83v
         wN2+mXcreLy9kJqzr+R5ZmduP7dQGHwITUcn1aV7cAJmcNMOzoAOfliQE5gMvrIvsHcE
         zj4Tjqg8GLa4XeROOTBOFy5Y1L2rLROWOv0SO1R//fYXXq247TdzluKcHPaabhC7g0EE
         CL+oywzcWi7ZqItk7n1qinaXNv1EI6qrIUU7D98SlfPsAenRTiQHP6X/fCeyJFoyJGr6
         h4Ng==
X-Gm-Message-State: AOAM5329orZvkqr0KnYr0BrP6mhOVOlCaNkeZiKpnLtFiM6KLfmgOEA4
	VpJK7YzNaWKj7SVNhoEhcxc1k4GDTs4=
X-Google-Smtp-Source: ABdhPJxTSLa36ddAi/jvRuhAW1QLOuacvzTEVVMmjijhnuEHd1F90Smf1lw5HWhdbyEFKV768g5X5Q==
X-Received: by 2002:a37:a45:0:b0:69f:b7c1:3019 with SMTP id 66-20020a370a45000000b0069fb7c13019mr6414659qkk.701.1653052585411;
        Fri, 20 May 2022 06:16:25 -0700 (PDT)
Received: from [192.168.2.203] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id e19-20020a05622a111300b002f90544c7ddsm3323941qty.50.2022.05.20.06.16.24
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 06:16:24 -0700 (PDT)
Message-ID: <6d8b3dc4-fd8d-7fba-2137-66e0e454ad4a@gmail.com>
Date: Fri, 20 May 2022 09:16:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <AM8P191MB1155991673B8AE1E1B597A30F8D39@AM8P191MB1155.EURP191.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <AM8P191MB1155991673B8AE1E1B597A30F8D39@AM8P191MB1155.EURP191.PROD.OUTLOOK.COM>
Message-ID-Hash: HGH7CHUWGUROUVTS35CEJBNMOXALAWVN
X-Message-ID-Hash: HGH7CHUWGUROUVTS35CEJBNMOXALAWVN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receiver and Transmitter at the same time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HGH7CHUWGUROUVTS35CEJBNMOXALAWVN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNS0yMCAwOToxNCwgT8SfdXpoYW4gR2VkaWtsaSB3cm90ZToNCj4gSGVsbG8sIEkg
aGF2ZSBVU1JQIEIyMDAgYW5kIGkgd2FudCB0byB1c2UgbXkgdXNycCBhcyB0cmFuc21pdHRlciBh
bmQgDQo+IHJlY2VpdmVyIGF0IHRoZSBzYW1lIHRpbWUuIEkgbWVhbiBvbmUgb2YgdGhlIHBvcnRz
IHdvcmtzIGFzIA0KPiB0cmFuc21pdHRlciBhbmQgdGhlIG90aGVyIG9uZSByZWNlaXZlci4gSSBo
YXZlIHRvIHRyYW5zbWl0IGRhdGEgZnJvbSANCj4gZmlsZSBhbmQgcmVjZWl2ZSBpdCB0byBhbm90
aGVyIGZpbGUuIFNpbXBseSwgSSB3b25kZXIsIElzIGl0IHBvc3NpYmxlIA0KPiBvbiB0aGUgc2Ft
ZSB1c3JwLiBJIGFtIHNlYXJjaGluZyBmb3IgZG9jdW1lbnQgb3Igd2hhdGV2ZXIgZWxzZSBmb3Ig
DQo+IGxlYXJuaW5nLiBJZiB5b3UgaGVscCBtZSwgSSB3b3VsZCBiZSBncmF0ZWZ1bC4gVGhhbmtz
Lg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tDQpZZXMsIHRoaXMgaXMgYWJzb2x1dGVseSBwb3NzaWJsZS7CoMKgwqAgR2VuZXJh
bGx5IHRoZSB0cmFuc21pdCBhbmQgcmVjZWl2ZSANCnBhcnRzIGFyZSBkb25lIGluIGEgZGlmZmVy
ZW50IHRocmVhZC4NCg0KWW91IG1pZ2h0IHdhbnQgdG8gbG9vayBpbnRvIEdudSBSYWRpbyB3aGlj
aCBtYWtlcyB0aGlzIHR5cGUgb2YgdGhpbmcgDQp2ZXJ5IGVhc3ksIHBhcnRpY3VsYXJseSBmb3Ig
ZWFybHkgZXhwZXJpbWVudGF0aW9uLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
