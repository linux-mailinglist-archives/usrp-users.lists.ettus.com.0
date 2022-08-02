Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB323588343
	for <lists+usrp-users@lfdr.de>; Tue,  2 Aug 2022 22:59:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 205E6380B99
	for <lists+usrp-users@lfdr.de>; Tue,  2 Aug 2022 16:59:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659473988; bh=hAMXx/UV7tl3a4VFfc0piz/T3DxjR13INziZgpKPCPQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=nGh9V7wq72B/YomiQPbk725ocIopUh4TVS0JQWgx8+uT54F3zq7mO8nXd5FTPklch
	 1tGjCVkwXmdCxCn4S8ztnpVlF/g5erlUEgeO0SFr4qa7/boskiBTkFL3yzhRm97CIY
	 T+WRCBsIYbiMhA5l209GOtz80ZO50X23E66Th5Lpntz5Eif/1PHTU0CHArSx6y4yqr
	 Zef1XyEfCbJKVciv7OudK3yvt6mEzXNDmaV5KV1bTMq4lvpSdRAZux0rcEJfVef4XN
	 D+tyWUugx9tTb2oOSfoCt4gTL+2SRpTc5we91KMlFRCju8ctLIMobMqNJhkEBogOPb
	 jMqKgM3M2U8Fg==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 7726D380B7C
	for <usrp-users@lists.ettus.com>; Tue,  2 Aug 2022 16:57:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AbEAZwPB";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id n2so11539837qkk.8
        for <usrp-users@lists.ettus.com>; Tue, 02 Aug 2022 13:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=mC2df9wrvu7A4B+ceoxT8LkIlLVrwKdWbSUXx7FiaT8=;
        b=AbEAZwPBKJrm5ZMD5UYZTrLm9nhRR/yYGaP84p9A/Jak9P+a9qA0/RCoMMfkYShlo8
         pC2zPXn5+Kav6bQzBvPvyFBdHl/b5qsUgFqMwAL8y9lM0bvKqR2kr7KDPCcYubV87gEF
         8vMkXJJ8QuAMhMxjozQr4hb0vchejWH5eBI8GOR8o/KAt9LMJxfPpeJIZq4UqpsOjpvv
         tcYOfS49VdB991eejX3Z97PExJGkyNTjYy/ng4ZmDQWPM0PwazmDWbGSQ5ye95XorOjM
         KqLvDvc3l1s1Es5WBTbm5JoD9rMBCxHidmwjigQkiGkfzt3HpwA+2qXQzI8vKfY02cOV
         DVsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=mC2df9wrvu7A4B+ceoxT8LkIlLVrwKdWbSUXx7FiaT8=;
        b=QJ2stcNlXHUnBc0yHcI2FV5bhqzQ83AzLCA57Z+AoyydTrhukIyyAJ9yYRAdsN9vJZ
         3qcYcbFB1202J5xr5qk7HyiOmOnkULgV86yUQ4hTCUdAZZfVRNBEw3wWHqvHtQ4OTVMU
         8MDEfsgGnZ00DKKvwXC+u9C+2rFXUd+aiznLKHT/rZx23HcyuceR7alioUCO1Kn1Svwl
         ATJmPqLz3RUutF90EawcR49+VkO4QMRbHtveSc2MFBLH2g+i+sWnEGZ2wr+H1AjVG25j
         E8fqMjBPOLnEosYf9g6+vwhUXLRx6FPAVFvgtWELOUNTdpNLFAiY7RC2SHXoaBC4+aWq
         L67Q==
X-Gm-Message-State: ACgBeo0hHQvtMuWvsoe8dZi+RY809QO+sJSc0hJVdgd5fVYNzSwRO414
	crWIUNwUeM6NgheC//mC4q/pNfVSbWM=
X-Google-Smtp-Source: AA6agR66btjWSae51R5pcYYb3/MFApdOfiKbO1LVtx6sKjOXfHlet9EjHb/b/WgSJU9WqRTJa1WFCQ==
X-Received: by 2002:a37:43d4:0:b0:6b8:e3ba:ddfc with SMTP id q203-20020a3743d4000000b006b8e3baddfcmr1510010qka.192.1659473853908;
        Tue, 02 Aug 2022 13:57:33 -0700 (PDT)
Received: from [192.168.2.183] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id x18-20020ac87312000000b0033ae41bd326sm1395144qto.73.2022.08.02.13.57.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 13:57:32 -0700 (PDT)
Message-ID: <de859e91-6629-2b0c-be7c-75ab89f3d68f@gmail.com>
Date: Tue, 2 Aug 2022 16:57:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: David Raeman <david@SynopticEngineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <DGTT1gkdzjUFIP5Jril9sRDzclNJARs6DBQLGzpsgoM@lists.ettus.com>
 <20220801090014.ekedafqill4f5lvp@barbe>
 <1d76991d-dc80-17a8-ed6a-b00533613b2a@gmail.com>
 <BN2P110MB1747F4040EB79A727F6C42E9B79D9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BN2P110MB1747F4040EB79A727F6C42E9B79D9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: THGF4O2WQQRGZPY5I65P6HTRQ6WR5MD7
X-Message-ID-Hash: THGF4O2WQQRGZPY5I65P6HTRQ6WR5MD7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Sample Rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/THGF4O2WQQRGZPY5I65P6HTRQ6WR5MD7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOC0wMiAxNjo0NSwgRGF2aWQgUmFlbWFuIHdyb3RlOg0KPj4+IEkgZG9uJ3Qga25v
dyB0aGUgbGltaXRhdGlvbiBvZiB0aGUgTjMxMCBlbWJlZGRlZCBBUk0gdG8gaGF2ZSBhbg0KPj4+
IG9waW5pb24gaW4gZW1iZWRkZWQgbW9kZS4NCj4+IE5vdCBhIGNoYW5jZSB0aGF0IGl0IGNvdWxk
IHN1cHBvcnQgYW55dGhpbmcgbW9yZSB0aGFuIGFib3V0IDEwTXNwcyBhdCB0aGUNCj4+IG91dHNp
ZGUuDQo+IFRoZSBFMzIwIGRvY3MgYWxzbyBtZW50aW9uIDEwTXNwcyBtYXggdG8gdGhlIGVtYmVk
ZGVkIEFSTSBwcm9jZXNzb3IsIGFuZCBJIGZvdW5kIHRoYXQgdG8gYmUgc3RyYW5nZS4gV2hhdCdz
IHRoZSBhcmNoaXRlY3R1cmFsIGNhdXNlIG9mIHRoYXQgbGltaXRhdGlvbj8gSSdtIG5vdCBmYW1p
bGlhciBlbm91Z2ggd2l0aCB0aGUgVVNSUCBkYXRhIGFyY2hpdGVjdHVyZSwgYnV0IEkndmUgd29y
a2VkIG9uIG90aGVyIFp5bnEtYmFzZWQgU0RScyB0aGF0IGNvdWxkIG1vdmUgc2FtcGxlcyBmcm9t
IHRoZSBQTCB0byB0aGUgUFMgYXQgZmFyIGhpZ2hlciBkYXRhIHJhdGVzIHVzaW5nIGEgRE1BIElQ
IGJsb2NrIGFuZCBzaGFyZWQgbWVtb3J5LiBUaGUgMTBNc3BzIHVwcGVyLWJvdW5kIHNlZW1zIGxp
a2UgaXQnZCBsaW1pdCB0aGUgYXBwbGljYXRpb25zIHRoYXQgY291bGQgYmUgZGV2ZWxvcGVkIGlu
IGVtYmVkZGVkIG1vZGUgZm9yIHRoZSBFLXNlcmllcy4uDQo+DQo+IC1EYXZpZA0KSSBkaWRuJ3Qg
ZGVzaWduIGl0LsKgwqAgQnV0IGV2ZW4gaWYgdGhlIGludGVyZmFjZSBjb3VsZCBzdXBwb3J0IGhp
Z2hlciANCnJhdGVzLCBpdCdzIHVubGlrZWx5IHRoYXQgdGhlIEFSTSBDUFVzIGNvdWxkIGRvIGFu
eXRoaW5nDQogwqAgdmVyeSBpbnRlcmVzdGluZyBhdCBoaWdoZXIgcmF0ZXMuwqAgSSBoYXZlIGRl
dmVsb3BlZCBhcHBzIGZvciBlbWJlZGRlZCANCkFSTSBib2FyZHMgbGlrZSB0aGUgWFU0USwgd2hp
Y2ggaXMgTVVDSCBtb3JlDQogwqAgY2FwYWJsZSB0aGFuIHRoZSAocGFpcj8pIG9mIEFSTSBDUFVz
IGluIHRoZSBaeW5xIG9uIHRoZSBOMzEwLCBhbmQgDQpldmVuIHRoZXJlLCB0aGV5IHN0cnVnZ2xl
IHdpdGggaGlnaGVyIHNhbXBsZSByYXRlcywNCiDCoCBkZXBlbmRpbmcgb24gd2hhdCB5b3UncmUg
ZG9pbmcuDQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMu
ZXR0dXMuY29tCg==
