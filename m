Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB01320EA4
	for <lists+usrp-users@lfdr.de>; Mon, 22 Feb 2021 01:01:40 +0100 (CET)
Received: from [::1] (port=49900 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lDyfQ-0007PZ-2m; Sun, 21 Feb 2021 19:01:36 -0500
Received: from mail-ed1-f50.google.com ([209.85.208.50]:43266)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ganciogm@gmail.com>) id 1lDyfM-0007Ks-Bv
 for usrp-users@lists.ettus.com; Sun, 21 Feb 2021 19:01:32 -0500
Received: by mail-ed1-f50.google.com with SMTP id d2so19656947edq.10
 for <usrp-users@lists.ettus.com>; Sun, 21 Feb 2021 16:01:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=lL991ApKRmJ+3BmL5J9wh6bIn5yMOqgzgkGTN4qSWzc=;
 b=YOj7S5M0oUcX4X9PJywtulrPhiFprAcX+EcrWzRaHlv/qNTaIrQWcCo4ao23bD8gPq
 abxTxx57pQsmmpaGXhsgIeK5gHeAN/yqYErQA9o2Y2za9qFYKnEmpDS9gkJyJ7qBZgRb
 P1lube2TR/04xTLrRuQ8T/DbNFMa4Uf5le8VlsWQvCGmwwMbt5gZukoJfEuHOuCAfhsq
 dr5pJthDr9qgOzDMWZ3dIkwdgWkHto1TjGW6wNFpu5C2JoZlKj0at4JwamMMFFTvWJcx
 p8Cbitlw6krVnDpqPlhghnVdx6+4UuVPkUqd2hm58D+MseQt6P1pCk7CHyCjEleIC3T3
 joDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=lL991ApKRmJ+3BmL5J9wh6bIn5yMOqgzgkGTN4qSWzc=;
 b=eWlD6dONOvrkvZ22Cc7VL8SBGB4qQJs8XnZETg1oY48Q1ZaxtSUmY53SldQWFu1Jhc
 TW9GYIzV1eYQn5fTbZ9x4NObF9Dg6MXNazw1NlrxOjvORrxYv17EuiFGO8IabfsIYWIV
 7XwoAlG1V3f105LtSqLr2gIQZsc7ezuWbdVP8ckvKWn1gqAFgFC3B4fBUeqSBF5Uf6/8
 wadyGV62+Wt/BoPOIlaIR3XOB1r7gNuiu9XFki+HHbEdz+Py2SWRDX4YPXqfEx7MoFaL
 ddSXQc74N/EJewofqQjEVdpztn4gvCmQwDnBYdYUl42SeTavjPva95MKV14jeWDTJlnW
 JpSg==
X-Gm-Message-State: AOAM533qtgkEZkQOUNRUGJykWvnc6I8anal+9t69SflCqc/LN07MmTis
 OocQ5oZXUFI/oV5DuMyrfVhFlpEkq+NpeQCEYBACEr2LIK2etg==
X-Google-Smtp-Source: ABdhPJw5GP7qmPM+DecuPV1zDydbipwlPQNmuPuVmykH2PNOQx3RnjFr48dfc0XbL48RB7hP8fvubD6WGSP+6C4LFFo=
X-Received: by 2002:aa7:da0c:: with SMTP id r12mr11667704eds.362.1613952050776; 
 Sun, 21 Feb 2021 16:00:50 -0800 (PST)
MIME-Version: 1.0
References: <CA+EePfQ=qcn=P7hT9+dze2oEj0Ya08mKRP-tJW6CteNcrHUAkg@mail.gmail.com>
 <60302634.1080503@gmail.com>
In-Reply-To: <60302634.1080503@gmail.com>
Date: Sun, 21 Feb 2021 21:00:38 -0300
Message-ID: <CA+EePfQTw05tDFN6YenQMKCtt3WM2JvYCBvzbfUBabzLGx0fBA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Problem with tx_waveform reference lock
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
From: Guillermo Gancio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Guillermo Gancio <ganciogm@gmail.com>
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

RGVhciBNYXJjdXMsCgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIGFuc3dlciwKdGhlIHJl
ZmVyZW5jZSB0aGF0IEkgdXNlIGNvbWVzIGZyb20gYSAxME1IeiBHUFNEU08sIHRoYXQgSSBhbHNv
IHVzZQp3aXRoIG90aGVyIGV0dHVzIGJvYXJkcyB3aXRob3V0IGFueSBwcm9ibGVtIGFzIHJlY2Vp
dmVycy4KSSBkaWQgc29tZSB0ZXN0cyB1c2luZyB0aGUgUHl0aG9uIEFQSXMgYW5kIHRoZSByZWZl
cmVuY2Ugc2Vuc29yIHNob3dzCmEgbG9ja2VkIHN0YXRlLCB0aGVuIEkgYWRkIGEgNSBzZWNvbmRz
IGRlbGF5IG9uIHRoZSB0eF93YXZlZm9ybS5jcHAKcmlnaHQgYWZ0ZXIgc2V0dGluZyB0aGUgcmVm
ZXJlbmNlIHZhbHVlLCBhbmQgdGhlIHJlZmVyZW5jZSBub3cgYXBwZWFycwpsb2NrZWQuLgoKQ29k
ZToKaWYgKHZtLmNvdW50KCJyZWYiKSkgewogICAgICAgIHVzcnAtPnNldF9jbG9ja19zb3VyY2Uo
cmVmKTsKICAgIH0KIHVzbGVlcCgxMDAwMDAwKjUpOwoKQW5kIHRoZSByZXN1bHQgaXMuLi46ClNl
dHRpbmcgZGV2aWNlIHRpbWVzdGFtcCB0byAwLi4uCkNoZWNraW5nIFRYOiBMTzogbG9ja2VkIC4u
LgpDaGVja2luZyBUWDogUmVmOiBsb2NrZWQgLi4uClByZXNzIEN0cmwgKyBDIHRvIHN0b3Agc3Ry
ZWFtaW5nLi4uCgp3aXRob3V0IHRoZSA1IHNlY29uZCBkZWxheSAsIEkgZ290OgoKU2V0dGluZyBk
ZXZpY2UgdGltZXN0YW1wIHRvIDAuLi4KQ2hlY2tpbmcgVFg6IExPOiBsb2NrZWQgLi4uCkNoZWNr
aW5nIFRYOiBSZWY6IHVubG9ja2VkIC4uLgpFcnJvcjogQXNzZXJ0aW9uRXJyb3I6IHJlZl9sb2Nr
ZWQudG9fYm9vbCgpCiAgaW4gaW50IF9tYWluKGludCwgY2hhcioqKQogIGF0IC9ob21lL3VzZXIv
dWhkL2hvc3QvZXhhbXBsZXMvdHhfd2F2ZWZvcm1zLmNwcDoyODYKCgpUaGFua3MgYWdhaW4gISEK
CkFsbCB0aGUgYmVzdC4KCkVsIHZpZSwgMTkgZmViIDIwMjEgYSBsYXMgMTc6NTgsIE1hcmN1cyBE
LiBMZWVjaCB2aWEgVVNSUC11c2VycwooPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPikgZXNj
cmliacOzOgo+Cj4gT24gMDIvMTkvMjAyMSAxMjozMSBQTSwgR3VpbGxlcm1vIEdhbmNpbyB2aWEg
VVNSUC11c2VycyB3cm90ZToKPiA+IERlYXIgYWxsLAo+ID4KPiA+IEknbSB1c2luZyBhIEIyMDUg
YXMgYSBDVyBzaWduYWwgZ2VuZXJhdG9yIHdpdGggdGhlIGV4YW1wbGUKPiA+IHR4X3dhdmVmb3Jt
LCBpbiBnZW5lcmFsIGl0IHdvcmtzIG9rLCBidXQgaWYgSSB0cnkgdG8gdXNlIGEgMTBNSHoKPiA+
IGV4dGVybmFsIHJlZmVyZW5jZSAob3B0aW9uIC0tcmVmIGV4dGVybmFsKSBJIGdvdCB0aGUgZXJy
b3IsIHNhbWUgaXNzdWUKPiA+IGlmIEkgcmVwbGFjZSB0aGUgMTBNSHogd2l0aCBhIFBQUywgKC0t
cHBzIGV4dGVybmFsKSwgcG93ZXIgbGV2ZWxzIGFyZQo+ID4gb2suCj4gPgo+ID4KPiA+IENoZWNr
aW5nIFRYOiBSZWY6IHVubG9ja2VkIC4uLgo+ID4gRXJyb3I6IEFzc2VydGlvbkVycm9yOiByZWZf
bG9ja2VkLnRvX2Jvb2woKQo+ID4gICAgaW4gaW50IF9tYWluKGludCwgY2hhcioqKQo+ID4gICAg
YXQgL2hvbWUvZ2dhbmNpby91aGQvaG9zdC9leGFtcGxlcy90eF93YXZlZm9ybXMuY3BwOjI4NQo+
ID4KPiA+IFRoaXMgaXMgd2l0aCBhIGZyZXNoIGluc3RhbGwKPiA+IFtJTkZPXSBbVUhEXSBsaW51
eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4wOyBCb29zdF8xMDY1MDE7Cj4gPiBVSERfNC4wLjAuMC05
My1nM2I5Y2VkOGYKPiA+Cj4gPiBBbnkgaWRlYSBvbiB0aGlzPyBUaGFuayB5b3UgdmVyeSBtdWNo
IQo+ID4KPiA+IENoZWVycy4KPiA+Cj4gPgo+IFlvdSBzaG91bGQgcHJvYmFibHkgY2hlY2sgdGhl
IHF1YWxpdHkgb2YgeW91ciAxME1IeiBzaWduYWwgZ29pbmcgaW50bwo+IHRoZSBCMjEwLiBJJ3Zl
IHVzZWQgYWxsIGtpbmRzIG9mIGV4dGVybmFsIDEwTUh6IHJlZmVyZW5jZXMgZm9yIEIyMTAKPiAg
ICBhbmQgaXQgaGFzIG5ldmVyIGNvbXBsYWluZWQuICAgMTBNSHogT0NYTyB3aXRoIGEgVFRMIGJ1
ZmZlci4gUnViaWRpdW0KPiBjbG9jayB3aXRoIGEgVFRMIGJ1ZmZlci4gICAgT2N0b2Nsb2NrLUcu
ICBOZXZlciBoYWQgYSBwcm9ibGVtLgo+Cj4gQ2hlY2sgd2hhdCB5b3VyIDEwTUh6IHNpZ25hbCBs
b29rcyBsaWtlIGludG8gYSA1ME9obSB0ZXJtaW5hdGlvbiBvbiBhCj4gZ29vZCBxdWFsaXR5IG9z
Y2lsbG9zY29wZS4gIERvZXMgaXQgbG9vayByZWFzb25hYmx5IHB1cmUsIG9yIGFyZSB0aGVyZQo+
ICAgIHVud2FudGVkIHJpbmdpbmcgYXJ0aWZhY3RzPwo+Cj4gSWYgeW91J3JlIGRyaXZpbmcgdGhl
IHJlZmVyZW5jZSBpbnB1dCAidG9vIGhhcmQiLCB5b3UgbWF5IGJlIGNyZWF0aW5nCj4gdW53YW50
ZWQgc3B1cnMgdGhhdCBjb25mdXNlIHRoZSByZWZlcmVuY2UgUExMLiAgTWFrZSBzdXJlIHRoZSBs
ZXZlbAo+ICAgIGlzIG5vdCB0b28gImxvdWQiLgo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1h
bi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKCgotLSAKSW5zdGl0dXRvIEFy
Z2VudGlubyBkZSBSYWRpb2FzdHJvbm9taWEKW0FyZ2VudGluZSBJbnN0aXR1dGUgb2YgUmFkaW9h
c3Ryb25vbXldCgpHdWlsbGVybW8gTS4gR2FuY2lvClJlc3BvbnNhYmxlIMOBcmVhIE9ic2VydmF0
b3JpbwpbSGVhZCBvZiBPYnNlcnZhdG9yeV0KClRlbDogKDAwNTQtMDIyMSkgNDgyLTQ5MDMgSW50
OiAxMDYKTWFpbCBsYWJvcmFsICAgIGdnYW5jaW9AaWFyLnVubHAuZWR1LmFyCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21h
aWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
