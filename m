Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8645718FD5
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 20:02:58 +0200 (CEST)
Received: from [::1] (port=53184 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOnNf-0005Y9-Ju; Thu, 09 May 2019 14:02:55 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:37427)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hOnN7-0005Ov-Oz
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 14:02:51 -0400
Received: by mail-qt1-f174.google.com with SMTP id o7so3577967qtp.4
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 11:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=k8pn9E+MPGG4R+ydPDGNFB2dpMh41Arz3fG+L+dA30Q=;
 b=OB9dtTPGMOxmobFaLV+xvtz4I3tAN+sQPWvjm3ou8ay8IDoYVoglIsyaVHN3v8zGIj
 BCIbw2CAI09AzMgzdJF1Ek9LE2GbDXeIsK4CQPCZV2BtElTSk8qBF0Gw70ycgudJksqv
 +PucrZq9u1sLvFJ6NA+nfONvZfy7XZ+2uEflQ07Z2+XcoV1gfrYRnh5xUiliGtaHJkSJ
 VNhnLYXBnhCfOMeOA7WuUItR/JBhlylxyI0H9r05JOtB7aeAGtQJ7KdCvLXvLDHqkYvo
 cD6CC4oWZqV1fxL2J4WQ1Vk1zl1Dw4lZPpeDWdJiXHRlsxYvuLUcZ9yw4llhUc903odj
 ozIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=k8pn9E+MPGG4R+ydPDGNFB2dpMh41Arz3fG+L+dA30Q=;
 b=U49ZjXUMwxFQRAsmePu1MfoAvtWKQvswvE4Sr8pvai+gzwNputEfI/aHA9q6y4x3VG
 FnGBUatCTLjmiruHfcUwgmSRoruaHuk+8EdT6+OT+i5836vWIFU/+nDiu1yZ9JIZSrNK
 gPfyXUlYFZ4XFzS/B0PzD+sf6SahD3W0UjFDw1OzGqeGWCNeMpU0Z1/r5KpTNbUHe1Dc
 MAZ9Dezn6JyCiHs+MU9jXNFKZpUgm+m1btdSVidaqju+aXsSb/WoHyMlYFRf/VejSLtJ
 mf+T51MoHaddoSxY+KIfRJswRUKHHSVRKt0hTAeH9sg66uErAbywdCSjfbDY0li25HbR
 K+EQ==
X-Gm-Message-State: APjAAAW0D8wRJ7aMjcR4rFsQm09ZeXCF/aqHr8coxR6eRmN1w+wfNuow
 nh6zSI/zGesByt/8doVnrbEWHFEMQX8=
X-Google-Smtp-Source: APXvYqztdAdNHDVYoG2koocTr8Xym9qA/TjIgHHh4q3qXqJHpoV52vG9Se37RwlSHShzRJpRC7GhKQ==
X-Received: by 2002:ac8:2fa8:: with SMTP id l37mr5039701qta.52.1557424901068; 
 Thu, 09 May 2019 11:01:41 -0700 (PDT)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id w184sm1433023qkc.48.2019.05.09.11.01.39
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 11:01:40 -0700 (PDT)
Message-ID: <5CD46B03.6080006@gmail.com>
Date: Thu, 09 May 2019 14:01:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <2c7da2ef-26f6-84e4-a012-fc6ad4690e2e@opencode.eu>
 <5CC31FEC.5030409@gmail.com>
 <029a5484-a76e-c1b4-2e34-b43573b1e2a8@opencode.eu>
 <5CC32BA0.6090600@gmail.com>
 <f393a357-1b36-19a6-a7b1-4af0fa08b412@opencode.eu>
 <5CC33227.2050308@gmail.com>
 <00aada01-a9e2-e85c-25d7-c5d4a1d8c8f2@opencode.eu>
 <519a5d62-fa06-060b-c5be-56f429b0f04f@opencode.eu>
In-Reply-To: <519a5d62-fa06-060b-c5be-56f429b0f04f@opencode.eu>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Timed frequency switching on multiple channels not
 possible
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

T24gMDUvMDkvMjAxOSAwOTowNSBBTSwgRmFiaWFuIFNjaHdhcnRhdSB2aWEgVVNSUC11c2VycyB3
cm90ZToKPiBIaSwKPiBpcyB0aGVyZSBhbnkgdXBkYXRlIHJlZ2FyZGluZyB0aGlzIGlzc3VlPwpF
dHR1cyBSJkQgaXMgYXdhcmUsIGFuZCB0aGV5J3JlIGJlaW5nIGxvb2tlZCBhdC4KCgo+Cj4gQW0g
MDYuMDUuMjAxOSB1bSAxMDozNiBzY2hyaWViIEZhYmlhbiBTY2h3YXJ0YXUgdmlhIFVTUlAtdXNl
cnM6Cj4+IFNvcnJ5IGZvciB0aGUgbGF0ZSBhbnN3ZXIsIEkgd2FzIGJ1c3kuCj4+IEkgdHJpZWQg
dGhhdCBpbmNsdWRpbmcgYSBvbmUgc2Vjb25kIHNsZWVwIGFmdGVyIGl0IGJ1dCBpdCBkb2VzIG5v
dCBoZWxwLgo+Pgo+PiBBbSAyNi4wNC4yMDE5IHVtIDE4OjMwIHNjaHJpZWIgTWFyY3VzIEQuIExl
ZWNoIHZpYSBVU1JQLXVzZXJzOgo+Pj4gT24gMDQvMjYvMjAxOSAxMjowNyBQTSwgRmFiaWFuIFNj
aHdhcnRhdSB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4+PiBPaGguLiB5b3UgYXJlIHJpZ2h0LCBJ
IGRpZCBub3QgZG8gdGhhdCBpbiB0aGUgZXhhbXBsZSBjb2RlLiBCdXQgdGhlIAo+Pj4+IHByb2Js
ZW0gaXMgdGhlIHNhbWUgaW4gbXkgbWFpbiBhcHBsaWNhdGlvbiwgd2hlcmUgSSBkby4gQXMgSSBz
YWlkLCAKPj4+PiB0aGUgMTgwwrAgcGhhc2Ugc2hpZnQgaXMgcHJvYmFibHkgc29tZWhvdyByZWxh
dGVkIGFuZCBub3QgdGhhdCBlYXN5IAo+Pj4+IHRvIHJlcG9yZHVjZS4gU28gdGhlIHNwZWN0cnVt
IG9yIEkvUSBzd2FwIHNob3VsZCBiZSB0aGUgbWFpbiBpc3N1ZSAKPj4+PiBoZXJlIGFuZCBJIGhv
cGUgdGhhdCB0aGlzIHdpbGwgYWxzbyBzb2x2ZSB0aGUgMTgwwrAgcGhhc2Ugc3dhcC4KPj4+PiBJ
bnRlcmVzdGluZ2x5IHRoZSBwaGFzZSBpcyBjb3JyZWN0LCBpZiBJIHNldCB0aGUgZnJlcXVlbmN5
IHR3aWNlIAo+Pj4+IGZvciBlYWNoIGNoYW5uZWwgd2l0aCBhIGxpdHRsZSBkZWxheSBpbiBiZXR3
ZWVuLgo+Pj4gQ291bGQgeW91IHRyeSBzb21ldGhpbmc/ICAgSW5zZXJ0IGEgc2V0X3RpbWVfbmV4
dF9wcHMoKSBpbnRvIHRoZSAKPj4+IGNvZGUgaW4gaW5pdGFsaXphdGlvbi0tdGhpcyBzaG91bGQg
YWxpZ24gdGhlIFRPRCBjbG9ja3MgaW4gYm90aCAKPj4+IGludGVybmFsIERTUCByYWRpbwo+Pj4g
ICAgbW9kdWxlcy4KPj4+Cj4+Pgo+Pj4+Cj4+Pj4gQW0gMjYuMDQuMjAxOSB1bSAxODowMiBzY2hy
aWViIE1hcmN1cyBELiBMZWVjaCB2aWEgVVNSUC11c2VyczoKPj4+Pj4gT24gMDQvMjYvMjAxOSAx
MTozNiBBTSwgRmFiaWFuIFNjaHdhcnRhdSB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4+Pj4+IEhp
LAo+Pj4+Pj4KPj4+Pj4+IEkgYW0gYW0gdXNpbmcgTE8gc2hhcmluZy4gU28gdGhlcmUgc2hvdWxk
IG5vdCBiZSBhbnkgcGhhc2Ugb2Zmc2V0IAo+Pj4+Pj4gYW5kIG5vIG1pcnJvcmVkIHNwZWN0cnVt
LCBubyBtYXR0ZXIgd2hlbiB0aGUgVVNSUCBjb21lcyBhcm91bmQgdG8gCj4+Pj4+PiBjaGFuZ2Ug
dGhlIGZyZXF1ZW5jeS4gRXZlbiBub3QgdXNpbmcgTE8tc2hhcmluZywgdGhlIHNwZWN0cnVtIAo+
Pj4+Pj4gc2hvdWxkIE5PVCBiZSBtaXJyb3JlZC4KPj4+Pj4gVGhlIGFwcGFyZW50IEkvUSBzd2Fw
IGlzc3VlIEkgYWdyZWUgc2hvdWxkIG5vdCBoYXBwZW4sIGFuZCBJIGhhdmUgCj4+Pj4+IGEgcXVl
cnkgaW4gdG8gUiZEIGFib3V0IGl0Lgo+Pj4+Pgo+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEFtIDI2LjA0
LjIwMTkgdW0gMTc6MTIgc2NocmllYiBNYXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtdXNlcnM6Cj4+
Pj4+Pj4gT24gMDQvMjYvMjAxOSAwNToxMyBBTSwgRmFiaWFuIFNjaHdhcnRhdSB2aWEgVVNSUC11
c2VycyB3cm90ZToKPj4+Pj4+Pj4gSGksCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGEgY291cGxlIG9mIGRh
eXMgYWdvIEkgZmlsZWQgYSBidWcgcmVwb3J0IHdoaWNoIGNhdXNlZCB0aGUgCj4+Pj4+Pj4+IFVT
UlBzIHRvIHN3aXRjaCBidXQgbm9vbmUgaGFzIHJlc3BvbmRlZCB5ZXQuIEkgZGlkIG5vdyAKPj4+
Pj4+Pj4gZW5jb3VudGVyZWQgb3RoZXIgcHJvYmxlbXMgd2ljaCBtaWdodCBiZSByZWxhdGVkIHRv
IHRoYXQgaXNzdWUuIAo+Pj4+Pj4+PiBDYW4gc29tb25lIGZyb20gRXR0dXMgKG9yIHNvbWVvbmUg
ZWxzZSkgdGFrZSBhIGxvb2sgYXQgdGhhdD8KPj4+Pj4+Pj4gQnVnIHJlcG9ydCBpcyBoZXJlOiAK
Pj4+Pj4+Pj4gaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2lzc3Vlcy8yNzEK
Pj4+Pj4+Pj4KPj4+Pj4+Pj4gQmVzdCByZWdhcmRzLAo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBGYWJpYW4K
Pj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+PiBTbywgdGhlIG9yaWdpbmFsIGRlc2lnbiByZWFzb24g
Zm9yIHRpbWVkLWNvbW1hbmRzIHdhcyB0byBzdXBwb3J0IAo+Pj4+Pj4+IHNpbXVsdGFuZW91cyB0
dW5pbmcgKGFuZCBhc3NlcnRpb24gb2YgYSByZXN5bmNoIHB1bHNlKSBhY3Jvc3MgCj4+Pj4+Pj4g
Km11bHRpcGxlIFVTUlBzKiwKPj4+Pj4+PiAgICBpbiBzdXBwb3J0IG9mIHJlZHVjaW5nL2VsaW1p
bmF0aW5nIG11dHVhbCBwaGFzZSBvZmZzZXQgYW1vbmcgCj4+Pj4+Pj4gaWRlbnRpY2FsbHktaGFy
ZHdhcmVkIFVTUlBzLCBmb3IgZGF1Z2h0ZXJjYXJkcyB0aGF0IHN1cHBvcnRlZCAKPj4+Pj4+PiBw
aGFzZS1yZXN5bmNoLgo+Pj4+Pj4+Cj4+Pj4+Pj4gV2hlbiB5b3UgdXNlIHRpbWVkIGNvbW1hbmRz
IHdpdGhpbiBhIHNpbmdsZSBVU1JQLCBob3BpbmcgZm9yIAo+Pj4+Pj4+IHNpbWlsYXIgZWZmZWN0
cywgeW91IHdvbid0IGdldCB0aGVtLCBiZWNhdXNlIHRoZSBjb21tYW5kcyBpbiB0aGUgCj4+Pj4+
Pj4gcXVldWUKPj4+Pj4+PiAgICBhcmUgKm5lY2Vzc2FyaWx5KiBleGVjdXRlZCBzZXF1ZW50aWFs
bHkuICBFdmVuIGlmIHRoZXJlIHdhcyBhIAo+Pj4+Pj4+ICJwYXJhbGxlbCBleGVjdXRpb24iIHN0
cnVjdHVyZSB3aXRoaW4gdGhlIEZQR0EgdG8gaGFuZGxlIHRoZSAKPj4+Pj4+PiBjb21tYW5kcywg
bW9zdCBvZgo+Pj4+Pj4+ICAgIHRoZSBjb21tYW5kcyB5b3UgY2FyZSBhYm91dCB1bHRpbWF0ZWx5
IGVuZCB1cCBvbiBhbiBTUEkgb3IgCj4+Pj4+Pj4gSTJDIGJ1cywgYW5kIHRob3NlIGFyZSBpbmhl
cmVudGx5IHNlcmlhbCwgYW5kIG11bHRpcGxlIGRldmljZXMgCj4+Pj4+Pj4gKHN5bnRoZXNpemVy
cywKPj4+Pj4+PiAgICB2YXJpYWJsZS1nYWluIGFtcGxpZmllcnMsIGNsb2NrLXBsbHMpIHR5cGlj
YWxseSBzaGFyZSBhIAo+Pj4+Pj4+IHNpbmdsZSBzdWNoIGJ1cyBvbiBhIHBlci1zbG90IGJhc2lz
LiAgSW4gb3JkZXIgdG8gaGF2ZSAidHJ1ZSAKPj4+Pj4+PiBwYXJhbGxlbGlzbSIgKndpdGhpbiog
YSBzaW5nbGUKPj4+Pj4+PiAgICBVU1JQLCB5b3UnZCBuZWVkIGRlZGljYXRlZCBjb250cm9sIGJ1
c2VzIHRvIGVhY2ggZGV2aWNlIHRoYXQgCj4+Pj4+Pj4gaXMgY29udHJvbGxlZCBieSBJMkMvU1BJ
L3doYXRldmVyLCAqaW4gYWRkaXRpb24qIHRvIHBhcmFsbGVsIAo+Pj4+Pj4+IGV4ZWN1dGlvbiB3
aXRoaW4gdGhlCj4+Pj4+Pj4gICAgRlBHQS4KPj4+Pj4+Pgo+Pj4+Pj4+IFdoZW4geW91J3JlIHNl
dHRpbmcgYSBidW5jaCBvZiBQTEwgc3ludGhlc2l6ZXJzIHNlcXVlbnRpYWxseSwgCj4+Pj4+Pj4g
eW91IGNhbiBleHBlY3QgdGhhdCB0aGV5IHdvbid0IGFncmVlIG9uIHBoYXNlLCBldmVuIHdoZW4g
YmVpbmcgCj4+Pj4+Pj4gZHJpdmVuCj4+Pj4+Pj4gICAgYnkgYSBjb21tb24gY2xvY2suICAgVGhl
IG1lY2hhbmlzbSBmb3IgYWNoaWV2aW5nIHBoYXNlIAo+Pj4+Pj4+IGNvaGVyZW5jZSB3aXRoIFR3
aW5SeCBpcyB0byB1c2UgTE8gc2hhcmluZy4KPj4+Pj4+Pgo+Pj4+Pj4+IGh0dHBzOi8va2IuZXR0
dXMuY29tL1R3aW5SWAo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBhcHAtbm90ZSB0YWxrcyBhYm91dCBM
TyBzaGFyaW5nIHdpdGggVHdpblJYCj4+Pj4+Pj4KPj4+Pj4+PiBodHRwczovL2tiLmV0dHVzLmNv
bS9EaXJlY3Rpb25fRmluZGluZ193aXRoX3RoZV9VU1JQJUUyJTg0JUEyX1gtU2VyaWVzX2FuZF9U
d2luUlglRTIlODQlQTIgCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+Pgo+
Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
Pj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+Pj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbQo+Pj4+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91
c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdAo+Pj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+Pj4+IGh0dHA6Ly9saXN0
cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+
Pj4+Pgo+Pj4+Pgo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+Pj4+PiBVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQo+Pj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGlu
Zm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QKPj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1
cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pj4KPj4+
Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4g
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+
PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4gVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KPj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAt
dXNlcnNfbGlzdHMuZXR0dXMuY29tCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20K
