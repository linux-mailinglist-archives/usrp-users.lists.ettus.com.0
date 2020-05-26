Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB5F1E30C5
	for <lists+usrp-users@lfdr.de>; Tue, 26 May 2020 22:58:13 +0200 (CEST)
Received: from [::1] (port=49768 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jdgeI-0006on-JQ; Tue, 26 May 2020 16:58:10 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:34891)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jdgeE-0006kU-GM
 for USRP-users@lists.ettus.com; Tue, 26 May 2020 16:58:06 -0400
Received: by mail-qk1-f176.google.com with SMTP id n141so9791492qke.2
 for <USRP-users@lists.ettus.com>; Tue, 26 May 2020 13:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=EGp/MAnhoR3jEAitB5VawbNhK7F9epd8riaY4rT8UE8=;
 b=ov5z6XQPtxID3EhPR2qWnFyLSfgb2LVDM5DWkKb+KzC5e19Nx5f2mhjZYcVYx+bs9y
 RJr+Ymn0EPi8P77Du/Qeg1jciF9G1jxqsPlPkcGGun+GuGi1DCs9FPmH8zHm52On3eKW
 D7H/BKbXRZXFU4qBPvgfyvpuHeWtghMHb9DcafFLebtfn4DeSyCFDF6OAUuKC7XBRU9f
 N5gF3XT1a9CjJmU7uHlPLAsDQ+wX2EDjns1f6tStBE94vUEqj6UT2QrSvbzB9cv1Ykhj
 5uHvy/pQSkmQqD/WqoY4XucjRjiwuO2fZ3PdK1SqIol8UPho0gLSU+OCnN701uB6b0CB
 IYmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=EGp/MAnhoR3jEAitB5VawbNhK7F9epd8riaY4rT8UE8=;
 b=FdnNj5sbF0NAX2jt59nQS0SfvyaQivfyL5fXt7IltH4EvvTDnYiRr1MyYyIsrTmo61
 prWl5vkmzD3DUrz3D/PQfXb5U1PgMceWomHLjXUdx+QdTqM7XzvOMB3RSoc5PuYo4uNc
 l+PM+jyXtQHT4NtwTEXor/zno43VkemSr2uIVE0MUy53ezNsUEtH4N2zXv9wh197cWnl
 ZNwnUjTq6JfRyecOQM0lJeVYSfCufMWy/ExoWcrNUcz6OQsZU8B35VPZudZzQ1p2OSTd
 HJsWxJFl9SQuiu8Nw7rHVVgZoqT0LJTAI6hc5xItk68x7fABGPim46B0xOW9eXZuC8ol
 /ajg==
X-Gm-Message-State: AOAM533FBfmJvxEgBAGXTCAS0ahJ1IY+oIbP2ZMWpKZCQON9cQeyGWrL
 YOqf1KCADHocv6eBJRzuQ9RcTNLsQXQ=
X-Google-Smtp-Source: ABdhPJyK4jng+siTJfn1Jkx0AAg1OW40UulvLT8Ji6xZD86n9xITEiMmFWcl/TFZ41hQO2Zravgvsw==
X-Received: by 2002:a37:7244:: with SMTP id n65mr708088qkc.483.1590526645879; 
 Tue, 26 May 2020 13:57:25 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-12-103.dsl.bell.ca.
 [174.95.12.103])
 by smtp.gmail.com with ESMTPSA id e16sm755281qtc.71.2020.05.26.13.57.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 13:57:25 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 26 May 2020 16:57:24 -0400
Message-Id: <E63B9B93-9DB2-43B7-AFE2-6FED99F0CAA2@gmail.com>
References: <bf9eab97-2417-8754-3627-77a3a73ffaaa@softwareradiosystems.com>
In-Reply-To: <bf9eab97-2417-8754-3627-77a3a73ffaaa@softwareradiosystems.com>
To: Andre Puschmann <andre.puschmann@softwareradiosystems.com>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] B210 initialization error - device left unusable
 after some time
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
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

SSB0ZW5kIHRvIHVzZSBtb3JlIHJlY3ZfZnJhbWVzIGF0IGhpZ2hlciByYXRlcy4gV2hldGhlciB0
aGlzIGlzIHJlbGF0ZWQgdG8gdGhlIGRldmljZSBiZWNvbWluZyBjYXRhdG9uaWMgaXMgYSBzaGl0
IGluIHRoZSBkYXJrLiAKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gTWF5IDI2LCAyMDIwLCBh
dCA0OjUxIFBNLCBBbmRyZSBQdXNjaG1hbm4gPGFuZHJlLnB1c2NobWFubkBzb2Z0d2FyZXJhZGlv
c3lzdGVtcy5jb20+IHdyb3RlOgo+IAo+IO+7v09uIDI2LzUvMjAgMjI6MzksIE1hcmN1cyBEIExl
ZWNoIHdyb3RlOgo+PiBXaGF0IHNhbXBsZSByYXRlPwo+IAo+IEFsbCBMVEUgc2FtcGxlcyByYXRl
cywgcmFuZ2luZyBmcm9tIDEuOTJlNiB0byAzMC43MmU2Lgo+IAo+IEkgaGF2ZSB0byBub3RlIHRo
YXQgdHJhZmZpYyBpcyBhbHdheXMgZnVsbC1kdXBsZXgsIHdlIHNlbmQgYW5kIHJlY2VpdmUKPiBh
dCB0aGUgc2FtZSByYXRlLiBBbHNvIHdlIGFsd2F5cyBzZW5kL3JlY2VpdmUgaW4gMW1zIGNodW5r
cywgc28KPiBkZXBlbmRpbmcgZGVwZW5kaW5nIG9uIHRoZSBzYW1wbGUgcmF0ZSB0aGF0IGlzIDFt
cyB3b3J0aCBvZiBzYW1wbGVzLgo+IAo+PiAKPj4gWW91IGNvdWxkIHRyeSBudW1fcmVjdl9mcmFt
ZXM9MTI4IG9yIGhpZ2hlciBmb3IgaGlnaGVyIHNhbXBsZSByYXRlcy4gCj4gCj4gV2UgYWx0ZXIg
dGhlIHNlbmRfZnJhbWVfc2l6ZSBhbmQgcmVjdl9mcmFtZV9zaXplIGRlcGVuZGluZyBvbiB0aGUg
YmFuZHdpZHRoLgo+IAo+IEZvciAxMS41MmU2LCBmb3IgZXhhbXBsZSwgd2UgdXNlCj4gJ3NlbmRf
ZnJhbWVfc2l6ZT0xMDI0LHJlY3ZfZnJhbWVfc2l6ZT0xMDI0Jy4KPiAKPiBGb3IgMjMuMDRlNiB3
ZSBkZWNyZWFzZSB0aGUgc2l6ZSBhbmQgdXNlCj4gYG51bV9yZWN2X2ZyYW1lcz02NCxudW1fc2Vu
ZF9mcmFtZXM9NjRgLgo+IAo+IEJ1dCB3ZSBkb24ndCBhbHRlciB0aGUgbnVtX3JlY3ZfZnJhbWVz
LiBJIGd1ZXNzIHRoaXMgbWVhbnMgd2UgdXNlCj4gbnVtX3JlY3ZfZnJhbWVzPTMyIGZvciBhbGwg
YmFuZHdpZHRocy4KPiAKPiBJIGNhbiBnaXZlIHlvdXIgc3VnZ2VzdGlvbiBhIHRyeSBhcyBzb29u
IGFzIHRoZSBkZXZpY2UgaXMgdXAgYWdhaW4uIEJ1dAo+IGluIGdlbmVyYWwsIGRvIHlvdSByZWNr
b24gd2Ugc2hvdWxkIHVzZSBkaWZmZXJlbnQgcGFyYW1ldGVycyBmb3Igc3RyZWFtaW5nPwo+IAo+
IFRoYW5rcwo+IEFuZHJlCj4gCj4gCj4gCj4+IAo+PiBTZW50IGZyb20gbXkgaVBob25lCj4+IAo+
Pj4+IE9uIE1heSAyNiwgMjAyMCwgYXQgMzo1MiBQTSwgQW5kcmUgUHVzY2htYW5uIDxhbmRyZS5w
dXNjaG1hbm5Ac29mdHdhcmVyYWRpb3N5c3RlbXMuY29tPiB3cm90ZToKPj4+IAo+Pj4g77u/SGV5
IE1hcmN1cywKPj4+IAo+Pj4gdGhhbmtzIGZvciB0aGUgcmVzcG9uc2UuCj4+PiAKPj4+PiBPbiAy
NS81LzIwIDIzOjQ0LCBNYXJjdXMgRCBMZWVjaCB3cm90ZToKPj4+PiBNaWdodCBzZWVtIHNpbGx5
Cj4+Pj4gQnV0IGhhdmUgeW91IHRyaWVkIGEgZGlmZmVyZW50IFVTQiBjYWJsZSEKPj4+PiAKPj4+
PiBEb2VzIGl0IGV4aGliaXQgdGhpcyBiZWhhdmlvciBpbiBhIGRpZmZlcmVudCBob3N0Pwo+Pj4+
IAo+Pj4+IElzIGl0IGp1c3QgdGhpcyBvbmUgZGV2aWNlPwo+Pj4gCj4+PiBBY3R1YWxseSB3ZSBo
YXZlIGFub3RoZXIgc2V0dXAgd2l0aCBhIGRpZmZlcmVudCBob3N0IGFuZCBkaWZmZXJlbnQgQjIx
MAo+Pj4gdGhhdCBzaG93cyBhIHNpbWlsYXIgYmVoYXZpb3IuCj4+PiAKPj4+IEkgaGFkIHRoZSBm
ZWVsaW5nIHRoYXQgd2hlbiB1c2luZyAib3R3LWZvcm1hdD1zYzEyIiBmb3Igc29tZSBvZiB0aGUK
Pj4+IGNvbmZpZ3Mgd2UgYXJlIHJ1bm5pbmcsIHRoZSBwcm9ibGVtIGhhcHBlbnMgcXVpY2tlci4g
QnV0IGl0J3MganVzdCBhCj4+PiBmZWVsaW5nLiBJcyB0aGVyZSBhbnkga25vd24gdW5zdWl0YWJp
bGl0eSBvciBjYXZlYXQgd2hlbiB1c2luZyBzYzEyPwo+Pj4gCj4+PiBJbiBhbnkgY2FzZSwgSSds
bCB0cnkgdG8gYXBwcm9hY2ggdGhlIGlzc3VlIGEgYml0IG1vcmUgc3lzdGVtYXRpYyBvdmVyCj4+
PiB0aGUgY29taW5nIGRheXMvd2Vla3MgYW5kIGNhcmVmdWxseSBzd2FwIGNhYmxlL1VTUlBzL2hv
c3RzIHRvIHNlZSBpZiB3ZQo+Pj4gY2FuIGlkZW50aWZ5IGEgcGF0dGVybi4gVGhpcyBtYXkgdGFr
ZSBhIHdoaWxlIHRob3VnaCBkdWUgdG8gdGhlIGN1cnJlbnQKPj4+IHNpdHVhdGlvbiB3aXRoIGxh
YiBhY2Nlc3MsIGV0Yy4KPj4+IAo+Pj4gQW55d2F5LCBpZiB0aGVyZSBpcyBhbnl0aGluZyBlbHNl
IHRoYXQgSSBjb3VsZCB0cnksIGxldCBtZSBrbm93Lgo+Pj4gCj4+PiBUaGFua3MKPj4+IEFuZHJl
Cj4+PiAKPj4+IAo+Pj4gCj4+Pj4gCj4+Pj4gCj4+Pj4gCj4+Pj4gU2VudCBmcm9tIG15IGlQaG9u
ZQo+Pj4+IAo+Pj4+Pj4gT24gTWF5IDI1LCAyMDIwLCBhdCA0OjU1IFBNLCBBbmRyZSBQdXNjaG1h
bm4gdmlhIFVTUlAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPiB3cm90ZToKPj4+
Pj4gCj4+Pj4+IO+7v0hleSBndXlzLAo+Pj4+PiAKPj4+Pj4gSSBhbSBmYWNpbmcgYSB3ZWlyZCBp
c3N1ZSB3aXRoIG9uZSBvZiB0aGUgQjIxMCB3ZSB1c2UgaW4gb3VyIENJIHNldHVwLgo+Pj4+PiBJ
dCB1c2VkIGFsbCBkYXkgbG9uZyB3aXRoIHNob3J0ZXIgYW5kIGxvbmdlciBydW5zLCB3aXRoIGRp
ZmZlcmVudAo+Pj4+PiBiYW5kd2lkdGggY29uZmlndXJhdGlvbnMsIG51bWJlciBvZiBjaGFubmVs
cywgc3RyZWFtIHBhcmFtZXRlcnMsIGV0Yy4KPj4+Pj4gCj4+Pj4+IFRoYXQgd29ya3MgZmluZSBp
biBwcmluY2lwbGUgYnV0IGFmdGVyIGEgd2hpbGUgdGhlIGRldmljZSBzaW1wbHkKPj4+Pj4gd291
bGRuJ3Qgd29yayBhbnkgbG9uZ2VyLiBUaGUgYXBwIGlzIHVuYWJsZSB0byBpbml0IHRoZSBkZXZp
Y2UuCj4+Pj4+IAo+Pj4+PiAkIHVoZF91c3JwX3Byb2JlCj4+Pj4+IFtJTkZPXSBbVUhEXSBsaW51
eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4wOyBCb29zdF8xMDY1MDE7Cj4+Pj4+IFVIRF8zLjE1LjAu
SEVBRC0wLWdhZWEwZTJkZQo+Pj4+PiBbSU5GT10gW0IyMDBdIExvYWRpbmcgZmlybXdhcmUgaW1h
Z2U6Cj4+Pj4+IC91c3Ivc2hhcmUvdWhkL2ltYWdlcy91c3JwX2IyMDBfZncuaGV4Li4uCj4+Pj4+
IFtFUlJPUl0gW1VIRF0gRGV2aWNlIGRpc2NvdmVyeSBlcnJvcjogRW52aXJvbm1lbnRFcnJvcjog
SU9FcnJvcjogQ291bGQKPj4+Pj4gbm90IGxvYWQgZmlybXdhcmU6Cj4+Pj4+IEVudmlyb25tZW50
RXJyb3I6IElPRXJyb3I6IGloZXhfcmVhZGVyOjpyZWFkKCk6IHJlY29yZCBoYW5kZXIgcmV0dXJu
ZWQKPj4+Pj4gZmFpbHVyZSBjb2RlCj4+Pj4+IEVycm9yOiBMb29rdXBFcnJvcjogS2V5RXJyb3I6
IE5vIGRldmljZXMgZm91bmQgZm9yIC0tLS0tPgo+Pj4+PiBFbXB0eSBEZXZpY2UgQWRkcmVzcwo+
Pj4+PiAKPj4+Pj4gVHJ5aW5nIHRvIHJlc2V0IGdpdmVzIHRoZSBzYW1lIGVycm9yOgo+Pj4+PiAK
Pj4+Pj4gJCAvdXNyL2xpYi91aGQvdXRpbHMvYjJ4eF9meDNfdXRpbHMgLUQKPj4+Pj4gRGV2aWNl
IG9wZW5lZCAoVklEPTB4MjUwMCxQSUQ9MHgwMDIwKQo+Pj4+PiBCMnh4IGRldGVjdGVkLi4uIENv
bnRyb2wgb2YgQjJ4eCBncmFudGVkLi4uCj4+Pj4+IAo+Pj4+PiBMb2FkaW5nIGZpcm13YXJlCj4+
Pj4+IFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDcuNS4wOyBCb29zdF8xMDY1
MDE7Cj4+Pj4+IFVIRF8zLjE1LjAuSEVBRC0wLWdhZWEwZTJkZQo+Pj4+PiBbSU5GT10gW0IyMDBd
IExvYWRpbmcgZmlybXdhcmUgaW1hZ2U6Cj4+Pj4+IC91c3Ivc2hhcmUvdWhkL2ltYWdlcy91c3Jw
X2IyMDBfZncuaGV4Li4uCj4+Pj4+IEV4Y2VwdGlvbiB3aGlsZSBsb2FkaW5nIGZpcm13YXJlOiBF
bnZpcm9ubWVudEVycm9yOiBJT0Vycm9yOiBDb3VsZCBub3QKPj4+Pj4gbG9hZCBmaXJtd2FyZToK
Pj4+Pj4gRW52aXJvbm1lbnRFcnJvcjogSU9FcnJvcjogaWhleF9yZWFkZXI6OnJlYWQoKTogcmVj
b3JkIGhhbmRlciByZXR1cm5lZAo+Pj4+PiBmYWlsdXJlIGNvZGUKPj4+Pj4gCj4+Pj4+IAo+Pj4+
PiBBZnRlciB0aGF0IGhhcHBlbmVkIHRoZSBvbmx5IHdheSB0byByZWNvdmVyIHRoZSBkZXZpY2Ug
aXMgdW5wbHVnIHRoZQo+Pj4+PiBVU1JQLiBBIHNpbXBsZSByZWJvb3QgZG9lc24ndCBoZWxwLiBE
bWVzZyBkb2Vzbid0IHNob3cgYW55IGlzc3Vlcy4KPj4+Pj4gCj4+Pj4+IFVIRCBpcyAzLjE1IGNv
bXBpbGVkIGZyb20gc291cmNlIG9uIGEgdmFuaWxsYSBVYnVudHUgMTguMDQgTFRFIChzaWRlCj4+
Pj4+IG5vdGU6IHRoZXJlIGFyZSBubyBwcmUtYnVpbHQgcGFja2FnZXMgZm9yIDMuMTUgaW4gdGhl
IDE4LjA0IFBQQSkuIFN5c3RlbQo+Pj4+PiBpcyBhIEludGVsIE5VQyBTa3VsbCBDYW55b24uIENh
YmxlcyBhcmUgc3RvY2sgb25lcy4gTGV0IG1lIGtub3cgaWYgeW91Cj4+Pj4+IG5lZWQgYW55IGZ1
cnRoZXIgaW5mb3JtYXRpb24gb24gdGhlIHNldHVwLgo+Pj4+PiAKPj4+Pj4gQW55IHBvaW50ZXJz
IG9uIHdoYXQgbWlnaHQgYmUgd3JvbmcgaGVyZSBhcmUgaGlnaGx5IGFwcHJlY2lhdGVkLgo+Pj4+
PiAKPj4+Pj4gQ2hlZXJzCj4+Pj4+IEFuZHJlCj4+Pj4+IAo+Pj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdAo+Pj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4+PiBodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4+
IAo+Pj4gCj4+PiAtLSAKPj4+IEFuZHJlIFB1c2NobWFubgo+Pj4gCj4+PiBTb2Z0d2FyZSBSYWRp
byBTeXN0ZW1zIChTUlMpCj4+PiBodHRwOi8vd3d3LnNvZnR3YXJlcmFkaW9zeXN0ZW1zLmNvbQo+
Pj4gCj4+PiBQR1AvR251UEcga2V5OiA2QzQyQUIzMQo+Pj4gZmluZ2VycHJpbnQ6IDEzN0EgQUU0
OSA3ODVCIEE0NDUgMjU3QyA4QUQ3IEQ4NzcgQTQ5OCA2QzQyIEFCMzEKPiAKPiAKPiAtLSAKPiBB
bmRyZSBQdXNjaG1hbm4KPiAKPiBTb2Z0d2FyZSBSYWRpbyBTeXN0ZW1zIChTUlMpCj4gaHR0cDov
L3d3dy5zb2Z0d2FyZXJhZGlvc3lzdGVtcy5jb20KPiAKPiBQR1AvR251UEcga2V5OiA2QzQyQUIz
MQo+IGZpbmdlcnByaW50OiAxMzdBIEFFNDkgNzg1QiBBNDQ1IDI1N0MgOEFENyBEODc3IEE0OTgg
NkM0MiBBQjMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRw
Oi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1
cy5jb20K
