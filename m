Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BA75004C1
	for <lists+usrp-users@lfdr.de>; Thu, 14 Apr 2022 05:45:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15E4738448F
	for <lists+usrp-users@lfdr.de>; Wed, 13 Apr 2022 23:45:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649907933; bh=zeQhO0QHjA9RGKoqkqJqNEVRtDxacr+DkDu9oXRmdP0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RtEN2bVzzyzf3wsGiUOuwVFUNgUbxnSk17rwE79h4boL7279b6VNns6uWVD2siFlE
	 2grIthWPueW6DksDDtojokb4Gxc3eEgB1u2Fxqzuj1QtBQ8EptxmlHltp1tth3w2su
	 haS3b3QlrM5Md54Z2Y7Iyc5Yj8b4IuIqPF9Z8rJF6VRsY1FEjFK49rvbQVAMI36OB+
	 4bAswohOpMkp4LsHsR7vv//ZZnSB78mt4i/DyNBxUV2/7rON/7XQoHa9JqYA7q7qQ2
	 2Jh445qNF6lfHg9HURxXOla81932Go1Z0qdp7kmG2OH3UnPjTF7JrzF3LIbmqChxw9
	 Oa7vZMkynwsjQ==
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B76F384BDF
	for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 23:44:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nnGdTGWg";
	dkim-atps=neutral
Received: by mail-qt1-f178.google.com with SMTP id bb38so2797787qtb.3
        for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 20:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=gYvbMCCGBcO53qz9oMkuuBKJz5qh74c2dqE20has4SA=;
        b=nnGdTGWghVUOD4u7QS0mL6OzeB2JLtO/DfJc9m9jb2mfQgIKz3zx1KRu6kR+oLZt/N
         njut9hkHfyCac+kvgAnkGXNVmuJKKAvr+5e1nGhnnS3RKFAP8AtABaoLE6ju5ySI4BUr
         CV74xeBlcI+jGJcLaxsMs4NqeBjCW0C9GnSo/fBWlfQ+4j5s2UwpTsI1On5NhjWqj3rP
         QxWT2fBWJliwQd9ENYWkE+HZnt//glQbwwJl9I6/KjqtXlVNS8e4NY8AEvH3uX3DpQRK
         8nKl2GX5ZcF+SimBiR4L9PAcK5P5/qH0n4p05x+4czZ+VD5ll2EPMHYO6gfv4epjoHgT
         wl+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gYvbMCCGBcO53qz9oMkuuBKJz5qh74c2dqE20has4SA=;
        b=6fPAy79DdbStyDvJG3yaH51ACfW4vMHDvfIR+o9eEj9ZY7BgTnBDQB68xaeE074Rep
         fhcYtCT5cfLu8xsDMzwYhDQKLRSNQrLngEzAEUS6H64XDEkSE+y4mtW1CqhqQD/RdE7+
         coasZmRlaAhAp5K0FBWCImcnyFbWj3Oc7mlzhrlQBS64qzB+IqnqP9LurJr05THZWDrT
         Uz7zFX5qkqYdAnhkWb4TbEbpcaQ4dwwZvn019hKKZi3sl5sxxrub+6QEBdgpyxlIp9MI
         gN9JRWEGLnCZ/t7Vu/HiIaiG351/IMUKufRn80lpq+nzlQg4n+EEGI8KOXmwlrUKY++b
         4pPQ==
X-Gm-Message-State: AOAM532jxlICUrMRBui7QWjCbdy3ORl8LRwAo/OCLLb2eVoW3duAV4SC
	0M+SudHeXV+uCqsfG8Xd6g+0GZTJYBg=
X-Google-Smtp-Source: ABdhPJzhnXpMdcD/9U12icQnGrdBrPZXIIs/ysCnNROu1xUePd7Pe0rMIRjirMt4F0JjIauYC0aaIg==
X-Received: by 2002:ac8:4f12:0:b0:2eb:de47:e30 with SMTP id b18-20020ac84f12000000b002ebde470e30mr427408qte.193.1649907866354;
        Wed, 13 Apr 2022 20:44:26 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id z8-20020ac87f88000000b002e1cecad0e4sm542894qtj.33.2022.04.13.20.44.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 20:44:25 -0700 (PDT)
Message-ID: <c7263000-294f-d506-f0e5-63c6e135795b@gmail.com>
Date: Wed, 13 Apr 2022 23:44:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <f0df6216-554d-8f17-ceea-0688751b4a88@gmx.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <f0df6216-554d-8f17-ceea-0688751b4a88@gmx.de>
Message-ID-Hash: KNORACOA4K7UZXYODWWM2QAGGQUQJVZ5
X-Message-ID-Hash: KNORACOA4K7UZXYODWWM2QAGGQUQJVZ5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USP B205mini-i with external clock using Leo Bodnar GPSDO on srsRan eNodeB
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KNORACOA4K7UZXYODWWM2QAGGQUQJVZ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wNC0xMSAxMjoxNCwgS2Fyc3RlbiBPaG1lIHdyb3RlOg0KPiBIaSwNCj4NCj4NCj4g
SSBoYXZlIHB1cmNoYXNlZCBhIFByZWNpc2lvbiBHUFMgUmVmZXJlbmNlIENsb2NrDQo+IChodHRw
Oi8vd3d3Lmxlb2JvZG5hci5jb20vc2hvcC9pbmRleC5waHA/bWFpbl9wYWdlPWluZGV4JmNQYXRo
PTEwNw0KPiApIGJ1dCBoYXZlIHRyb3VibGVzIHRvIG1ha2UgaXQgd29yayB3aXRoIGFuIEV0dHVz
IFVTUlAgQjIwNW1pbmktaS4NCj4NCj4gSSBhc3N1bWUgZXZlcnl0aGluZyBpcyBjb25maWd1cmVk
IGNvcnJlY3RseSwgMTAgTUh6LCBzcXVhcmUgd2F2ZSBpbnB1dCwNCj4gSSBoYXZlIGEgR1BTIHNp
Z25hbCwgMy4zIFZvbHQsIDEzLjMgZEIgYXR0ZW51YXRpb24sIHRoZSBVU1JQIGlzDQo+IGNvbm5l
Y3RlZCBvbiBvdXRwdXQgMSBvbiB0aGUgTGVvIEJvZG5hciBHUFNETywgYnV0IG5laXRoZXIgb24g
VUhEDQo+IHZlcnNpb24gMy4xNS4wIG5vciBvbiB2ZXJzaW9uIDQgdGhlIGV4dGVybmFsIGNsb2Nr
IGlzIHVzZWQuIEkgY29uZmlndXJlZA0KPiB0aGUgVVNSUCB0byB1c2UgdGhlIGV4dGVybmFsIGNs
b2NrIHdpdGggImRldmljZV9hcmdzID0gY2xvY2s9ZXh0ZXJuYWwiDQo+IGluIHNyc1JBTiBlTm9k
ZUIgYnV0IEkgZ2V0IGFzIGVycm9yOg0KPg0KPg0KPiBDb3VsZCBub3QgbG9jayByZWZlcmVuY2Ug
Y2xvY2sgc291cmNlLiBTZW5zb3I6IHJlZl9sb2NrZWQ9ZmFsc2UNCj4NCj4NCj4gSSBjb3VsZCBu
b3QgZmluZCBhbnkgdXNlZnVsIGluZm9ybWF0aW9uIGFib3V0IGEgcmVhc29uIGZvciB0aGlzIGVy
cm9yLg0KPiBDb3VsZCB5b3UgcGxlYXNlIHByb3ZpZGUgc29tZSBpZGVhcyBhYm91dCBwb3NzaWJs
ZSByZWFzb25zIGZvciB0aGlzDQo+IGJlaGF2aW9yPw0KPg0KPg0KPiBSZWdhcmRzLA0KPg0KPiBL
YXJzdGVuDQo+DQpOb3Qgc3VyZSBob3cgc3JzUkFOIG1hcHMgdGhlIGNvbmZpZ3VyYXRpb24gZmls
ZSBpdCB1c2VzIHRvIGFjdHVhbCBVSEQgDQpjYWxscywgYnV0IGEgInNldF9jbG9ja19zb3VyY2Uo
ImV4dGVybmFsIikiIHNob3VsZCB3b3JrIGp1c3QgZmluZSANCmFjY29yZGluZyB0bw0KIMKgIGV4
cGVyaW1lbnRzIEkndmUgZG9uZSBpbiB0aGUgcGFzdC4NCg0KQmUgd2FybmVkIHRoYXQgdGhlIGNs
b2NrICJzZXJ2byIgaW4gdGhlIG1pbmkgc2VyaWVzIGRvZXNuJ3QgYWN0IGxpa2UgYSANCnNtb290
aCBhbmFsb2cgUExMLCBzbyB0aGUgY2xvc2UtaW4gcGhhc2Utbm9pc2Ugd2lsbCBiZSBwb29yLg0K
DQpJIGFwb2xvZ2l6ZSBmb3IgdGhlIGRlbGF5IGluIHJlc3BvbmRpbmctLW15IGUtbWFpbCBjbGll
bnQgaGFzIHRha2VuIHRvIA0KbWFya2luZyBhIGxvdCBvZiB1c3JwLXVzZXJzIHRyYWZmaWMgYXMg
InNwYW0iLCBhbmQgSSdtIG5vdCBzdXJlIHdoeS4NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=
