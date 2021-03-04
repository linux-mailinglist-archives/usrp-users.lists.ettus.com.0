Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC3732D571
	for <lists+usrp-users@lfdr.de>; Thu,  4 Mar 2021 15:38:04 +0100 (CET)
Received: from [::1] (port=36330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lHp73-00023V-E3; Thu, 04 Mar 2021 09:38:01 -0500
Received: from mail-qt1-f171.google.com ([209.85.160.171]:46580)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lHp70-00020p-54
 for usrp-users@lists.ettus.com; Thu, 04 Mar 2021 09:37:58 -0500
Received: by mail-qt1-f171.google.com with SMTP id o1so16090387qta.13
 for <usrp-users@lists.ettus.com>; Thu, 04 Mar 2021 06:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=ZPJBEeN6DOcFQZa9TUc9eITEHcDYzwzJ2UYI3jzTo7c=;
 b=EnqFBG4hUhhE/3guMPZ+3vJufRGVfmVy2wDkU1kgibLaXTr3EVtyAmq2iCIpFbnBV5
 4amj7XUggELB04ImvhgCFJohbbZIOb5XQub6NDUlIrJgszP0jrGaK//KcZT8qeUVnWt/
 C7XMrf8GO5ipwVNxD9xFSg1UTt+de3tu9Azm6MpAuCa+/AM6MEE1m2e8wMeU6tR1JSla
 8zbRkN2Sin0VM+6dWWq1MSr1RiqPKHGE+KLHHtTU4JYEMh8dnb+i4geWrXoRn3/xcQhY
 pal9wNSBLLT6iiGOcF1Bm8WT3HLHbH96m/uu1TVVmJylOqBr+GhVmJHQ0e509a4UvGWR
 XAKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=ZPJBEeN6DOcFQZa9TUc9eITEHcDYzwzJ2UYI3jzTo7c=;
 b=SAEqGup8VJOx/OdXTpIg5uABewzo/cJYFdP/IHt4/7PxGhgRPVMx1+L3/mAWV3lUVV
 U5j+dDxPrWonJziF0JbloTUlISWtbYw76yYMfXmU1J5YPqvXBz9kfvIWAVz76xYBCRF8
 5bVeGB3feqUmIfiOW9VwA0bJAORT7b1zZ6EPgxJdH23Zh37fKz5KVu7N3nHICLgUMBEL
 4Z8Pcmkvj5q9EtmVnCy98vs2F2M3zNuubZ38uApl7G4krEdXmJ/awwuuimehqkPvN44O
 wrXnSbk+gpASI4m51CBpqhQ2lMbxOtuCm4+J67a61RBCZOhOsKTEjLqDVFKLzwO5vKkx
 M3Gg==
X-Gm-Message-State: AOAM531mqRlKdacnKX6qFRthshTcWset1xC8P/Kqhb2q1v+hwSpXZujc
 nMUfL6oy90PRDK2yCouvuVtTDVgZm4U=
X-Google-Smtp-Source: ABdhPJxWzyi+mFdA+2kLTM4lNFSC5oEYyrWyFee5fhDYbx1/gkpmJfOMyDON2fJBscgJbjdPsv96pw==
X-Received: by 2002:ac8:7359:: with SMTP id q25mr4334552qtp.202.1614868637307; 
 Thu, 04 Mar 2021 06:37:17 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
 by smtp.gmail.com with ESMTPSA id y1sm12568223qki.9.2021.03.04.06.37.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 04 Mar 2021 06:37:16 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Thu, 4 Mar 2021 09:37:16 -0500
Message-Id: <B4A98E9D-38E9-442C-B1DE-B27655CB55CF@gmail.com>
References: <65756b3c-e7d1-e327-8d51-3a7a48c69399@ant.uni-bremen.de>
Cc: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
In-Reply-To: <65756b3c-e7d1-e327-8d51-3a7a48c69399@ant.uni-bremen.de>
To: Johannes Demel <demel@ant.uni-bremen.de>
X-Mailer: iPhone Mail (18D52)
Subject: Re: [USRP-users] very low TX power for burst transmission with B210
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

TXkgZ3Vlc3MgaXMgdGhhdCB0aGUgc3RhcnR1cCB0cmFuc2llbnQgdGltZQpPbiB0aGUgQjIxMCBp
cyBzbGlnaHRseSBsb25nZXIgYW5kIHlvdeKAmWxsIG5lZWQgdG8gY29tcGVuc2F0ZSBmb3IgdGhh
dC4gCgpPbiBhdmVyYWdlIHRoZSBCMjEwIG91dHB1dCBwb3dlciB3aWxsIGJlIHBlcmhhcHMgMy00
ZEIgbG93ZXIgdGhhbiBOMzEwLiBCdXQgdGhhdCBzaG91bGQgbm90IG1ha2UgbXVjaCBkaWZmZXJl
bmNlIGF0IGNsb3NlIHJhbmdlLiAKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gTWFyIDQsIDIw
MjEsIGF0IDU6MTggQU0sIEpvaGFubmVzIERlbWVsIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbT4gd3JvdGU6Cj4gCj4g77u/SGkgYWxsLAo+IAo+IEkgc2VlIHNvbWUg
dmVyeSBvZGQgYmVoYXZpb3Igd2l0aCBhIEIyMTAuIEkgaGF2ZSB0aGlzIHNpbXBsZSBzaW5lIGZs
b3dncmFwaCBhdHRhY2hlZC4gTXkgUlggYW5kIFRYIGFudGVubmFlIGFyZSBhcHByb3hpbWF0ZWx5
IDFtIGFwYXJ0LiBJIGp1c3Qgc2VuZCBhIHNpbmUgYW5kIHJlY2VpdmUgaXQgd2l0aCBhbiBhY2Nl
cHRhYmxlIHBvd2VyIGxldmVsLgo+IAo+IFRob3VnaCwgbXkgYXBwbGljYXRpb24gdXNlcyBidXJz
dCB0cmFuc21pc3Npb24uIEhlcmUsIHRoaW5ncyBzdGFydCB0byBmYWlsLiBGb3Igc29tZSByZWFz
b24sIFRYIGJ1cnN0cyBoYXZlIHZlcnkgbG93IG91dHB1dCBwb3dlci4gSSBtYWtlIHN1cmUsIGFs
bCBidXJzdHMgYXJlIHNjYWxlZCB0byBtYXRjaCB0aGUgb3V0cHV0IGxldmVsIGluIG15IGBzaW5l
X3Rlc3QuZ3JjYCBmbG93Z3JhcGguCj4gCj4gV2l0aCAyIE4zMTBzLCBJIGNhbiBvYnNlcnZlIHZl
cnkgcmVsaWFibGUgY29tbXVuaWNhdGlvbi4gSWYgSSBzd2FwIG9uZSBvZiB0aG9zZSBmb3IgYSBC
MjEwLCBJJ20gYmFyZWx5IGFibGUgdG8gcmVjZWl2ZSBhIEIyMTBzIG93biBidXJzdHMuIEkgc2V0
IFRYIGdhaW4gdG8gOTAgYW5kIEkgY291bGQgb2JzZXJ2ZSBhbiBpbXByb3ZlbWVudC4gVGhvdWdo
LCB0aGlzIGlzIHN0aWxsIGZhciBmcm9tIHdoYXQgSSdkIGV4cGVjdCBhZnRlciBteSBzaW5lIHRl
c3QuCj4gCj4gSXMgdGhlcmUgYW4gaXNzdWUgd2l0aCBidXJzdCB0cmFuc21pc3Npb24gYW5kIEIy
MTBzPyBEbyBJIG5lZWQgdG8gdGFrZSBhbnkgc3BlY2lhbCBwcmVjYXV0aW9ucz8KPiAKPiBDaGVl
cnMKPiBKb2hhbm5lcwo+IAo+IAo+IAo+IC0tIAo+IEpvaGFubmVzIERlbWVsIE0uU2MuCj4gUmVz
ZWFyY2ggRW5naW5lZXIKPiAKPiBVbml2ZXJzaXR5IG9mIEJyZW1lbgo+IERlcGFydG1lbnQgb2Yg
Q29tbXVuaWNhdGlvbnMgRW5naW5lZXJpbmcKPiBGYWN1bHR5IDEgLSBQaHlzaWNzIC8gRWxlY3Ry
aWNhbCBFbmdpbmVlcmluZwo+IE5XMSwgTjI0MDAKPiBPdHRvLUhhaG4tQWxsZWUgTlcxCj4gMjgz
NTkgQnJlbWVuCj4gCj4gUGhvbmUgKzQ5IDQyMSAyMTgtNjIzOTMKPiBkZW1lbEBhbnQudW5pLWJy
ZW1lbi5kZQo+IAo+IFNlY3JldGFyaWF0Cj4gVGVsLiArNDkgNDIxIDIxOC02MjM5MAo+IHByZXVz
c0BhbnQudW5pLWJyZW1lbi5kZQo+IAo+IHd3dy51bmktYnJlbWVuLmRlL2VuCj4gCj4gVW5pdmVy
c2l0eSBvZiBCcmVtZW4gLSBFc3RhYmxpc2hlZCAxOTcxCj4gPHNpbmVfdGVzdC5ncmM+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdAo+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4gaHR0cDovL2xpc3Rz
LmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0
dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
