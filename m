Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3808B4125FA
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 20:50:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02A2D3849D9
	for <lists+usrp-users@lfdr.de>; Mon, 20 Sep 2021 14:50:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QVob4DQQ";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id E2EF238441A
	for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 14:49:27 -0400 (EDT)
Received: by mail-qt1-f180.google.com with SMTP id j13so11723995qtq.6
        for <usrp-users@lists.ettus.com>; Mon, 20 Sep 2021 11:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=WVMMpYF8xLA6P16woutB59ZHiRi2BgfZY4TOSNsX8OY=;
        b=QVob4DQQg9qPsRtILs3JdzxnvaOKEmtpc+5RTGXVZUR+H1gSzAKzepsvoJdiNjaYMI
         +tpT/dbg849BG3Vlpbiuw6pfG/lfeK9xNhMJc3LcSM8aQGf48Gsz91FpVjUZFrt8vaNL
         jmsGnHCRO4pLmLYjttdWbwqmBo17PgZJtwGWAyztcmEVAqF5WhWCOwDhWKLl5q/XQomc
         7fYBdWw7ebVg6a3sHPRvGdjPWCUNM/l+KRcVZLSrMMM5eaz74gy64b1uhnETCMXEa5Lo
         jL/aihMyBrIxDjMzoQCzR5Jcb+rxlSRbSQGL0Ye5MhOXv/itRlnOGhSlTbIOh998OlzC
         Oc3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=WVMMpYF8xLA6P16woutB59ZHiRi2BgfZY4TOSNsX8OY=;
        b=lY41hwtcXjUhkeD31zot8XH99gfsIPjBg8+q5V5NgvSp5fVgqeiCvGwQuFr3YlZ4dN
         pnczQbxzaNmX6L5oYO6KBhU+8RxMboHw245IMx8Buex+goLkEQFflY7p7BbMp6so95N1
         XWtVB9LgZQnW0BwClfUDqOYd8O33h21nQxEZ6QhlV9zpSvOVUsDqcLdHyJD4CeGA8bfa
         VdowRz2HMubG7fciCe32yqEs13w0g/FKq1N5MrGL974jiAAvol/NGNXpcUuKSjnq9Pgc
         88Ik7I3I3B95zq2LGb96IOJxLDhB8B/1UxODZ8su1g7nTuN+c595NARKOkdL2DEi/p5P
         ePOg==
X-Gm-Message-State: AOAM531r3nRFlg8bjABwiYVq4mFB0RV/TE3wQ6z7aay3m/cEKSWjvMd6
	ZvNi73jWAo82OyUV9MvrFUUYIpWeMBW/BA==
X-Google-Smtp-Source: ABdhPJznK5wfpS1VNBF3mZkOVtDVRGAMbZbCiiFMZamR+9CPJkQUfAP5yX4WcR4hWgkhL0Xo+ubzbQ==
X-Received: by 2002:ac8:7ca3:: with SMTP id z3mr24325733qtv.109.1632163766753;
        Mon, 20 Sep 2021 11:49:26 -0700 (PDT)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id t6sm4379483qta.68.2021.09.20.11.49.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 11:49:26 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <HJEQoDKoLiRWNhCUND7luUFQQWflXnSmNFYy49UtSdQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <c1fa6123-3f27-153b-f254-003c719ce835@gmail.com>
Date: Mon, 20 Sep 2021 14:49:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <HJEQoDKoLiRWNhCUND7luUFQQWflXnSmNFYy49UtSdQ@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: 7TPM5E4444EPQ3WONCQHBJ4EJ6KFXGLG
X-Message-ID-Hash: 7TPM5E4444EPQ3WONCQHBJ4EJ6KFXGLG
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Create two stream with python UHD
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7TPM5E4444EPQ3WONCQHBJ4EJ6KFXGLG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0wOS0yMCAxMjozMSBwLm0uLCBjaHJpc3RvcGhlLmdyaW1hdWx0QG5vdmFncmlkLmNv
bSB3cm90ZToNCj4NCj4gTWFyY3VzLA0KPg0KPiBJcyBpcyBub3Qgc3VwcG9ydGVkIGJ5IHRoZSBw
eXRob24gdmVyc2lvbiBvbmx5ID8NCj4NCj4gSW4gdGhlIGV4YW1wbGUsIHdpdGggdHdvIHN0cmVh
bXMsIHRoZSBzdWJkZXYgaXMg4oCcQTpCIEE6QuKAnSBhbmQgc2hhbGwgDQo+IGFsbG93IDIgY2hh
bm5lbHMgPyBBbSBpIHdyb25nID8NCj4NCj4gVGhlcmVmb3JlLCBob3cgY2FuIEkgY3JlYXRlIHRv
IHN0cmVhbXMsIHVzaW5nIHRoZSBERENzIGZyb20gdGhlIERTUCwgDQo+IG9uIHR3byBkaWZmZXJl
bnQgZnJlcXVlbmNpZXMgPyBTaGFsbCBJIHVzZSBvbmx5IG9uZSByeF9zdHJlYW1lciA/DQo+DQo+
IEJlc3QgcmVnYXJkcw0KPg0KPg0KaSBqdXN0IGRpZCB0aGUgZXF1aXZhbGVudCwgdXNpbmcgYSBV
U1JQMiwgQkFTSUNfUlgsIGFuZCBhIEdudSBSYWRpbyANCmZsb3ctZ3JhcGgsIGFuZCBpdCAiZG9l
cyB0aGUgcmlnaHQgdGhpbmciIHdpdGggdGhlIHR3byBERENzIGJvdGggDQpjb25uZWN0ZWQgdG8g
dGhlDQogwqAgc2FtZSAqcmVhbCogbW9kZSBpbnB1dCBvbiB0aGUgQkFTSUNfUlgtLUE6QsKgIHNv
IHdpdGggYSBTVUJERVYgc3BlYyBvZiANCiJBOkIgQTpCIi7CoMKgIFRoaXMgd2FzIHdpdGggYSBt
dWx0aS11c3JwIG9iamVjdCwgYW5kIG9mIGNvdXJzZSB0aGUgDQpHUi9nci1vc21vY29tDQogwqAg
aW50ZXJmYWNlIHdpbGwgcHVsbCB0aGUgbXVsdGktY2hhbm5lbCBzdHJlYW0gYXBhcnQgaW50byB0
d28gY2hhbm5lbHMuDQoNCg0KV2hhdCB2ZXJzaW9uIG9mIFVIRCBhcmUgeW91IHJ1bm5pbmc/DQoN
CnVoZF9jb25maWdfaW5mbyAtLXZlcnNpb24NCg0KQWxzbywgcGxlYXNlIHNoYXJlIHdpdGggdXMg
dGhlIG91dHB1dCBvZjoNCg0KdWhkX3VzcnBfcHJvYmUNCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1
c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
