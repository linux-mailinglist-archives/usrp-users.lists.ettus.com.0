Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF9054E0E5
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 14:34:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2048438418C
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jun 2022 08:34:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655382889; bh=6HC8BuckV8ebcpDk4vnnCEoFoe4cUowpAFF36MtmSrQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=K4xrcsTNvyg5F7NlPV8AC0PxTs3P0nO7ORI/hfnBHh/rPndbtF/dKQ6ZDEL05UMWL
	 h7AVgPZswQ/wugy1m+gZYIasjo20DJgvuRyRLpJlDMkLkMy3KRm1DUVnlS9TNyv8td
	 DVH61+DLEy3XTdto6ouCQAGi3iMrX+jFo6msJSfl0ZTn1EzQptVs3QdGTk9e0x2EEG
	 XDKaYjC19eyImHVnbaHGyNeIiZrB+UaVKc6IgAPFjt1tbesQCZ9/EbXcK3L4tvadfm
	 vG/nRbPhFWhyAkPMEANOzXtBm+MzB8+l6Bo88XujDF9DbBt68Pv2sIiNPMULknOAIN
	 sVGjpATa/om8A==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id DA695383DBC
	for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 08:33:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Lz7TP9Xv";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id c144so844860qkg.11
        for <usrp-users@lists.ettus.com>; Thu, 16 Jun 2022 05:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=a4qhk0aT4Aj69L8Vo0vf79i/kwdXliU6QPpSjctqjx0=;
        b=Lz7TP9XvzEv11hyJQe0MDb6NVwORfY58axAQF/EA8B5bKEYCr+JnshkhkD0/DIkR5X
         v2NR5oIXUufo1fNmdfvbHU7InzHjDA26xv+jzcq6hioBFiuiDDCVsd6tv+ukZrxZsnfR
         4Fq/WVBngQacupE4A6lQIOVF59RXW87f+2txGpenmnkyEvlbO3OSdefYUtAWI1fFG88A
         JFShEyoFH2YTy1S0LlbMfUjccYALdvehYDg4j2MRsG+6fxKeCyAq7x9GkbfBda205P3J
         NjaSss/gPCfNOJCI2rDu+cYn8aPv7yCtvSwR8/cX/rZW8KlEBmVpxR/6mK/H3zsRVXxU
         bbjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=a4qhk0aT4Aj69L8Vo0vf79i/kwdXliU6QPpSjctqjx0=;
        b=RhCKYBwlshNF/QOw0ihnZ8SFZ85RW3yjeMyMe1lLF25zDXIihXWzsDzi36qcWAdnQR
         aToO2UjQb3UMnLRaARy9rume0qQIBrm1pXAioS6jxUBs6NM9SpPZ9TrglwkicEwvFrc7
         ubKPWPhLPO04eCceXLZJwRoVOwyimt2wPQQuqpazdQMNmUjELymd77DJEEEmZrdRuUUe
         ivmbYSo91NmAjpHl/JrCX/QMMAEEr5g4aj5r1tTTaJF4jsOLHzGf9TzxozbDFJMHSZhj
         adBCMiUs/+YmCs74Y5rIw5vyBMMaR39nO/Emku+Wftyo8dlDaJVefO2KwlXK1YafNn+f
         XrXg==
X-Gm-Message-State: AJIora8L7aD1dAtQmRgzMPmQUPXNjBrL54gyaPeTiFeGsfnlL/+6+Xux
	+M7MFPY9Yp4ldNvc9wqH8pSVH/fWKjlwlQOb
X-Google-Smtp-Source: AGRyM1vTxUbZ6OM0CLUC8Q2inLkSaLjTCHV/OPR9bjJizpEM7EtZPGvjHd9ndtagWhhYRbMpvnqxTw==
X-Received: by 2002:a05:620a:318a:b0:6a7:4d95:3526 with SMTP id bi10-20020a05620a318a00b006a74d953526mr3183881qkb.648.1655382805914;
        Thu, 16 Jun 2022 05:33:25 -0700 (PDT)
Received: from [192.168.2.210] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id z13-20020a05622a060d00b00304eb8e880dsm1876669qta.23.2022.06.16.05.33.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jun 2022 05:33:25 -0700 (PDT)
Message-ID: <b7a7531e-ab1b-3fe0-b5d5-6297d4492b0e@gmail.com>
Date: Thu, 16 Jun 2022 08:33:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <22d579be-d594-698b-fc5d-576aceb3eab5@discreteintegration.ca>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <22d579be-d594-698b-fc5d-576aceb3eab5@discreteintegration.ca>
Message-ID-Hash: TUGJDZ7AHHNUZGD57KM47N56KWAH5VJ3
X-Message-ID-Hash: TUGJDZ7AHHNUZGD57KM47N56KWAH5VJ3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX port return loss limits? (USRP-2974)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TUGJDZ7AHHNUZGD57KM47N56KWAH5VJ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNi0xNiAwMTowMywgRG9taW5pYyBTY2hhdWIgdmlhIFVTUlAtdXNlcnMgd3JvdGU6
DQo+IFBsZWFzZSBmb3JnaXZlIG1lIGlmIHRoaXMgaW5mb3JtYXRpb24gaXMgb3V0IHRoZXJlIGFu
ZCBJIGp1c3QgaGFwcGVuZWQgDQo+IHRvIG1pc3MgaXQuIEkgaGF2ZSBhbiBhcHBsaWNhdGlvbiB3
aGVyZSBJIHdvbid0IGhhdmUgYSBnb29kIG1hdGNoIA0KPiBiZXR3ZWVuIG9uZSBvZiB0aGUgb3V0
cHV0IFRYIHBvcnRzIG9uIHRoZSBVU1JQIDI5NzQgYW5kIHRoZSBjb25uZWN0ZWQgDQo+IGxvYWQg
LiBXaGF0IGlzIHRoZSBtYXhpbXVtIHBlcm1pdHRlZCByZWZsZWN0ZWQgcG93ZXI/IENhbiBJIGdv
IGFsbCB0aGUgDQo+IHdheSB0byAyMCBkQm0gVFggb3V0IHdpdGggYSBzaG9ydCBvciBubyBsb2Fk
PyBUaGUgUlggcG9ydHMgb24gdGhlIA0KPiBvdGhlciBoYW5kIHNlZW0gdG8gaGF2ZSB0aGVpciBt
YXhpbXVtIGlucHV0IHBvd2VycyBzcGVjaWZpZWQgKDEwIGRCbSkgDQo+IGluIHRoZSBVU1JQIDI5
NzQncyBkYXRhc2hlZXQuIEEgcG9pbnRlciB0byB0aGUgcmlnaHQgcGxhY2UgaW4gdGhlIA0KPiBk
b2N1bWVudGF0aW9uIHdvdWxkIGJlIG11Y2ggYXBwcmVjaWF0ZWQhDQo+DQo+IERvbWluaWMNCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11
c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQ0KVGhlIG91dHB1dCBzdGFnZSBvZiB0aGUgVUJYLTE2MCBpcyBhIG1pbmljaXJjdWl0cyBQSEEt
MSsgTU1JQyANCmFtcGxpZmllci7CoMKgwqAgSSB3b3VsZCBhYnNvbHV0ZWx5IE5PVCBydW4gdGhp
cyBhbXBsaWZpZXIgaW50byBhIA0Kc2hvcnQtY2lyY3VpdCBvciBhbiBvcGVuIGF0IGZ1bGwgcG93
ZXIgZm9yIG1vcmUNCiDCoCB0aGFuIG1pbGxpc2Vjb25kcyBhdCBhIHRpbWUuCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBs
aXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
