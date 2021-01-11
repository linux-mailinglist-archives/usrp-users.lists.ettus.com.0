Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE48C2F14E5
	for <lists+usrp-users@lfdr.de>; Mon, 11 Jan 2021 14:32:55 +0100 (CET)
Received: from [::1] (port=54478 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kyxJW-0005nC-TI; Mon, 11 Jan 2021 08:32:54 -0500
Received: from mail-io1-f53.google.com ([209.85.166.53]:42418)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kyxJT-0005fh-Bv
 for USRP-users@lists.ettus.com; Mon, 11 Jan 2021 08:32:51 -0500
Received: by mail-io1-f53.google.com with SMTP id q137so17789590iod.9
 for <USRP-users@lists.ettus.com>; Mon, 11 Jan 2021 05:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=As8DFnXgO8u5mLO6L7RE2uLYPlpdBVNbJ6JoxdStX5U=;
 b=Kt4sIr3IA2adL13Ov7r6sfukW6djr5iD9IQAzRJ8hEbtKEMNjYewIcBIPbsrDoKFtT
 sejtHep4tOqOkHDqU0i2N8ncLHYC3JxpFZvKm91Dy4Ehh/DYy5woww97rlibk+Iu2IB3
 +J2GDjPH4FF6jeD3ZgsH64RyQWrlR3+P4RGbNzgr7rQCxEGV1TaGlyhvibvm8z0QQBXt
 aVBRElAQZd+XsnTC22IhyLbtc3J5qHDXHGNKWZvMoKrYUG5NQgYzp4zR4n0yNbpf9LXP
 52nkLEdEXcyYUcsDtYES2u2HVk1wiUoRNwMODhoT3HngXiG3P6lmnDGpRUBVNFXyA/QM
 pNsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=As8DFnXgO8u5mLO6L7RE2uLYPlpdBVNbJ6JoxdStX5U=;
 b=pHr3QglbxOemPMuS882Gi9apWotdg3gJA2iHJCG065X4bk/9P0BMUd5QKXZl6TWlzG
 8sCao2YJOJDzyvvExTa3mrhVdD1LXWrjJ8Q01gUDhHr5oa5ktwdMAChBJqqJpIcKKGMa
 X+6Cnjv5ertjRUfnpGfZLkjr7zbfeTs98KkEDH1AkMdG9Sty9nWFEzB6oItUyNgxFLNW
 LD08J3kU5ehp2P/dV7ziR2vdZTXu88W87OdMCJENC7BxHPnzyuwfH/sPR5fJMEJmOl6Y
 h1WUm09NnTmaFwHswYubNm/Zt8a1b+f/4tHFToDsz/Gnbmn9njJI8qv/DZelnCTnY7o1
 4NZA==
X-Gm-Message-State: AOAM531CmBZ1qL+lRPfRGmbZ8jjoUvFXcGLe86WrEdrYsLI6c2NyqdUc
 uZ7QYymU/OZA+ETyN9x+ayE=
X-Google-Smtp-Source: ABdhPJzQ/tT0UZ7cMFt1zlh/9A9jpKYm0X6/x+63rws3oy75D6MzcIG0y06s68FkK0V+vzx9FZ2qig==
X-Received: by 2002:a5e:c111:: with SMTP id v17mr14354065iol.29.1610371930621; 
 Mon, 11 Jan 2021 05:32:10 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id h18sm11378249ioh.30.2021.01.11.05.32.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Jan 2021 05:32:10 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 11 Jan 2021 08:32:09 -0500
Message-Id: <B27181C0-978A-4DD4-8BA8-576392F71024@gmail.com>
References: <1610364119.853144.18409.16938@mail.rambler.ru>
Cc: Usrp Users <USRP-users@lists.ettus.com>
In-Reply-To: <1610364119.853144.18409.16938@mail.rambler.ru>
To: =?utf-8?B?0JDQvdC00YDQtdC5INCQ?= <andrew4010@rambler.ru>
X-Mailer: iPhone Mail (18B92)
Subject: Re: [USRP-users] tune speed ussue
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

VGhpcyBpcyBwcm9iYWJseSBqdXN0IGEgcXVpcmsgb2YgdGhlIHdheSB0aGUgY2FsaWJyYXRpb25z
IGNhY2hlIHdvcmtzIGluIHRoZSBBRDkzNjEgY2hpcC4gCgpUaGUgY2hpcCBpc27igJl0IHJlYWxs
eSBkZXNpZ25lZCBmb3IgZmFzdCBmcmVxdWVuY3kgaG9wcGluZywgYW5kIHdoZW4geW91IHJldHVu
ZSwgaW50ZXJuYWwgcmVjYWxpYnJhdGlvbnMgbmVlZCB0byBoYXBwZW4gb24gdGhlIGNoaXAsIGV4
Y2VwdCBmb3Igc21hbGwgZnJlcXVlbmN5IGNoYW5nZXMuCgoKU2VudCBmcm9tIG15IGlQaG9uZQoK
PiBPbiBKYW4gMTEsIDIwMjEsIGF0IDY6MjIgQU0sINCQ0L3QtNGA0LXQuSDQkCB2aWEgVVNSUC11
c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IO+7vwo+IEhlbGxv
IAo+IAo+IEkgdGVzdGluZyBiMjAwbWluaSBpbiByZWNlaXZlciBtb2RlIGFuZCBmb3VuZCBzdHJh
bmdlIHJlc3VsdCB3aXRoIHR1bmUgdGltZSAuCj4gV2hlbiBJIHN0YXJ0IGZyb20gMTAwTUh6IGFu
ZCB0dW5lIHdpdGggc3RlcCAyME1IeiBhdCBmcmVxIDIwMCAtPiAyMjAgYW5kIDEyMCAtPiAxMDAg
Z2V0IGFsbW9zdCAxMDAgdGltZXMgc2xvd2x5IHRpbWUgdGhlbiBvdGhlcnMuCj4gV2hlbiBJIHN0
YXJ0IGZvcm0gMTAxTUh6IHRpbWUgaW5jcmVhc2Ugb25seSBmaXJzdCBwYXNzIGFuZCB0aGVuIGFs
bCBPSy4KPiAKPiBTb3VyY2UgY29kZSBhbmQgdGVybWluYWwgc2NyZWVuc2hvdHMgaW4gYXR0YWNo
bWVudHMuCj4gCj4gVGhhbmsgeW91Cj4gCj4gPG1haW4uYz4KPiA8U2NyZWVuc2hvdCBmcm9tIDIw
MjEtMDEtMTEgMTMtMDMtMDkucG5nPgo+IDxTY3JlZW5zaG90IGZyb20gMjAyMS0wMS0xMSAxMy0w
My01MC5wbmc+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlz
dHMuZXR0dXMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5l
dHR1cy5jb20K
