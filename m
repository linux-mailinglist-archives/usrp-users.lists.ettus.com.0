Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 411481F707E
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2020 00:43:41 +0200 (CEST)
Received: from [::1] (port=37906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjVv8-00051S-Aq; Thu, 11 Jun 2020 18:43:38 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:34935)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjVv4-0004sG-Jf
 for usrp-users@lists.ettus.com; Thu, 11 Jun 2020 18:43:34 -0400
Received: by mail-qt1-f170.google.com with SMTP id z1so5796100qtn.2
 for <usrp-users@lists.ettus.com>; Thu, 11 Jun 2020 15:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=hcbSvSZQLMZIFkpNmJefw5KSMXM/9byK35kX18neZDQ=;
 b=hgI9Yq2tUDOWIC6cy6i6TPRiyBLZLv6OrtnKM10IarKVyihNBE2ENhkjRl93r/ZcmZ
 RqGUQpBiYrcOwrSHttvO3ajgYsL5mvfRbI3P24o3g9SFCEHmxUFLZrnVHgX5ZNZ3Gowq
 Xm1kFJcZAPmz/QQQt5JDdC9Q4C1lic1YH3SThTMQVPPsUueNRrYcgNOdvoMOIxYUPrAA
 LwHNPFeTuwkLiK8fmkJfdJzFN8hYSxTzwavYgYCIYYj7CYBcUKgSZLNdwzpfhhSosIZI
 wc005l10cUlh8NhVAQnR3s6xu6Y7f3Jcq7hzRB+loNBhrYSxTqIbaqTa29AnbS3sNkqs
 AWeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=hcbSvSZQLMZIFkpNmJefw5KSMXM/9byK35kX18neZDQ=;
 b=fzMAAriN/90giQ7LkFfAmt0j5G73j2GFxSl/0XkT3P1iTy0Osc4pKtUthjvF3a5fbv
 yE2/SL3T0Krio81F75I41gojlf6pS71k0HGgK/ddc6if0fHvG2yD0iSlItjLgZsuXiF9
 d+QEXPUGZl7fGAJ5O+rC619NtV99fJk9Q+py7uYbt8z63/vGSrMnZj+R5WXfqOrKK1Lg
 aj6NdIV2XuLEodFoO1TuiGC13/T9ruc5IBHQcjaPxeM51f/gB2BdYRsHPPKgWShhHZmY
 //TohhdtCqM3VXYop9MMhh0+H5L10tBJl3pUfiNnGMtTLhkGZs8UB47qK/EJRRV1VgVK
 yw4Q==
X-Gm-Message-State: AOAM532P8NQG93aeKOzVe54ArVhr77AiALQfF530Eb2F3UzyFizsW0At
 GYGHxOXUeXiWsKC9fidZ9WusbrV29g4=
X-Google-Smtp-Source: ABdhPJxEyYf9dRM5ir2IEFQsPObV2O1OcMtAVLHScLddgfEupi70kt15FfWkFrFV/csSYjSfjNGFfw==
X-Received: by 2002:aed:29e6:: with SMTP id o93mr245191qtd.135.1591915373737; 
 Thu, 11 Jun 2020 15:42:53 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.gmail.com with ESMTPSA id m10sm3272506qtg.94.2020.06.11.15.42.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 15:42:53 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 11 Jun 2020 18:42:52 -0400
Message-Id: <35250406-823B-42B6-BA3D-6F67E1DDC668@gmail.com>
References: <trinity-698bf8e0-f382-4350-99d9-e2bf4b5ef8d4-1591908381370@3c-app-gmx-bap40>
Cc: "USRP-userslists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <trinity-698bf8e0-f382-4350-99d9-e2bf4b5ef8d4-1591908381370@3c-app-gmx-bap40>
To: Lukas Haase <lukashaase@gmx.at>
X-Mailer: iPhone Mail (17E262)
Subject: Re: [USRP-users] How to debug timed commands on FPGA side?
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

SSBzdXNwZWN0IHRoYXQgYSBtb3JlIGR5bmFtaWMgYW5hbHlzaXMgd291bGQgYmUgcmVxdWlyZWQu
IAoKRnVydGhlciwgYWxsb3dpbmcgb25seSAybXMgZm9yIHRoZSBQTEwgdG8gbG9jayBpcyBjdXR0
aW5nIGl0IHdheSBjbG9zZeKAlGRlcGVuZGluZyBvbiB0aGUgcGFydGljdWxhciBkYXVnaHRlciBj
YXJkLiAKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24gSnVuIDExLCAyMDIwLCBhdCA0OjQ3IFBN
LCBMdWthcyBIYWFzZSA8bHVrYXNoYWFzZUBnbXguYXQ+IHdyb3RlOgo+IAo+IO+7v0hpIE1hcmN1
cywKPiAKPiBDYW4gd2UgcXVhbnRpZnkgdGhpcyBpbiB0aGUgZm9sbG93aW5nIHdheT8KPiAKPiBJ
ZiBJIHNlbmQgdGltZWQgY29tbWFuZHMgZXZlcnkgMm1zIGFuZCBzYW1wbGluZyByYXRlIGlzIDVN
Uy9zLCB0aGF0J3MgMTAwMDAgc2FtcGxlcyBwZXIgY29tbWFuZCBvciA1MDAwMCBmb3IgdGhlIGNv
bW1hbmQgcXVldWUgKGFzc3VtaW5nIGEgZGVwdGggb2YgNSkuCj4gCj4gQ2FuIHdlIHNheSB0aGUg
dGltZWQgY29tbWFuZHMgd2lsbCBndWFyYW50ZWVkIHRvIGJlIGV4ZWN1dGVkIG9uIHRpbWUgaWYg
d2UgbmV2ZXIgYnVmZmVyIG1vcmUgdGhhbiA1MDAwMCBzYW1wbGVzICg9MjAwMDAwIGJ5dGVzKSBv
biB0aGUgaG9zdD8KPiAKPiBDYW4gdGhpcyBiZSB0dW5lZCBzb21laG93PyBJIHRyaWVkIHNldHRp
bmcgc2VuZF9idWZmX3NpemUgWzFdIHRvIGEgc21hbGwgdmFsdWUgKHNlbmRfYnVmZl9zaXplPTEw
MDAwIGV0Yy4pIGJ1dCB0aGF0IGRpZG4ndCBzZWVtIHRvIG1ha2UgYW55IGRpZmZlcmVuY2UuCj4g
Cj4gVGhhbmtzLAo+IEx1a2FzCj4gCj4gCj4gWzFdIGh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21h
bnVhbC9wYWdlX3RyYW5zcG9ydC5odG1sCj4gCj4gCj4gCj4+IEdlc2VuZGV0OiBEb25uZXJzdGFn
LCAxMS4gSnVuaSAyMDIwIHVtIDE2OjMyIFVocgo+PiBWb246ICJNYXJjdXMgRCBMZWVjaCIgPHBh
dGNodm9uYnJhdW5AZ21haWwuY29tPgo+PiBBbjogIkx1a2FzIEhhYXNlIiA8bHVrYXNoYWFzZUBn
bXguYXQ+Cj4+IENjOiAiVVNSUC11c2Vyc2xpc3RzLmV0dHVzLmNvbSIgPHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tPgo+PiBCZXRyZWZmOiBSZTogW1VTUlAtdXNlcnNdIEhvdyB0byBkZWJ1ZyB0
aW1lZCBjb21tYW5kcyBvbiBGUEdBIHNpZGU/Cj4+IAo+PiBTbyBvbmUgb2YgdGhlIHRoaW5ncyBU
aGF0IGNhbiBoYXBwZW4gaXMgdGhhdCB5b3VyIGNvbW1hbmQgcGFja2V0cyB3aWxsIGhhdmUgdG8g
d2FpdCBGb3IgYSBtdWNoLWxhcmdlciBkYXRhIHBhY2tldC4gVGhlIGxpbmsgaXMgc2hhcmVkLiAK
Pj4gCj4+IEnigJlkIHRpbWVkIGNvbW1hbmRzIGFyZSBzY2hlZHVsZWQg4oCcdGlnaHTigJ0gdGhp
cyBjYW4gaGFwcGVuLiAKPj4gCj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4gCj4+Pj4gT24gSnVu
IDExLCAyMDIwLCBhdCAzOjM0IFBNLCBMdWthcyBIYWFzZSA8bHVrYXNoYWFzZUBnbXguYXQ+IHdy
b3RlOgo+Pj4gCj4+PiDvu79IaSBNYXJjdXMsCj4+PiAKPj4+Pj4gT24gMDYvMTAvMjAyMCAwOTow
MCBQTSwgTHVrYXMgSGFhc2UgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+Pj4+IFsuLi5dCj4+Pj4+
IEZvciBleGFtcGxlLCB3aGF0IGlzIHRoZSBmYXN0ZXN0IHJhdGUgSSBjYW4gaXNzdWUgdGltZWQg
Y29tbWFuZHMKPj4+Pj4gKGlnbm9yaW5nIHNldHRsaW5nIHRpbWVzIGV0Yykgb24gYSBYMzEwIG92
ZXIgMTBHYmU/Cj4+Pj4gVGhpcyBpcyBhY3R1YWxseSBhbiBhbWJpZ3VvdXMgcXVlc3Rpb24uICBE
byB5b3UgbWVhbiAid2hhdCBpcyB0aGUKPj4+PiBzbWFsbGVzdCBzY2hlZHVsaW5nIGludGVydmFs
IGZvciB0aGUgY29tbWFuZHMgdGhhdCB3aWxsIGJlIGV4ZWN1dGVkCj4+Pj4gaW4gdGhlIGZ1dHVy
ZT8iIG9yICJob3cgZmFzdCBjYW4gSSBpc3N1ZSBjb21tYW5kcyB0aGF0IHdpbGwKPj4+PiB1bHRp
bWF0ZWx5IGJlIHNjaGVkdWxlZCBhdCBhIGxhdGVyIHRpbWU/IiAgSW4gdGhlIGZvcm1lciwgdGhh
dAo+Pj4+IGRlcGVuZHMgb24gdGhlIGV4YWN0IG5hdHVyZSBvZiB0aGUgY29tbWFuZHMsIHNpbmNl
IHRoZXkgZW5kIHVwCj4+Pj4gYWN0dWFsbHkgYmVpbmcgZXhlY3V0ZWQgYnksIGZvciBleGFtcGxl
LCBhbiBTUEkgb3IgSTJDIGVuZHBvaW50LAo+Pj4+IHdoaWNoIG9wZXJhdGVzIHZlcnkgdmVyeSBt
dWNoIHNsb3dlciB0aGFuIGEgMTBHaUdlIGludGVyZmFjZS4gIEluIHRoZQo+Pj4+IGxhdHRlciwg
bXkgZ3Vlc3MgaXMgdGhhdCB0aGUgRlBHQSBjYW4gc3dhbGxvdyBjb21tYW5kcyBhbmQgcGxhY2Ug
dGhlbQo+Pj4+IG9uIHRoZSBxdWV1ZSBwcmV0dHktbXVjaCBhcyBmYXN0IGFzIHlvdSBjYW4gaXNz
dWUgdGhlbSBvdmVyIDEwR2lHLgo+Pj4+IEhvdyBmYXN0IHlvdSBjYW4gZG8gdGhhdCBkZXBlbmRz
IHZlcnkgbXVjaCBvbiB5b3VyIGhvc3Qtc2lkZQo+Pj4+IGVudmlyb25tZW50LCBuZXR3b3JrIHN0
YWNrLCBrZXJuZWwgbmV0d29yayBkcml2ZXJzLCBrZXJuZWwgbGF0ZW5jaWVzLAo+Pj4+IGV0Yy4K
Pj4+IAo+Pj4gTXkgcXVlc3Rpb25zIGNvbmNlcm5zIHRoZSBsYXR0ZXIgKGZvciBub3cpLgo+Pj4g
U2luY2UgdGhlIEZQR0EgaGFzIGEgKHNtYWxsKSBmaW5pdGUgRklGTyBmb3IgdGhlc2UgdGltZWQg
Y29tbWFuZHMgSSBhc3N1bWUqZCogdGhlcmUgd291bGQgYmUgYSBsaW1pdCBvbiBob3cgZmFzdCBJ
IGNhbiBzZW5kIHRoZXNlIGNvbW1hbmRzLgo+Pj4gCj4+PiBCYXNlZCBvbiBKb25hdGhvbidzIGFu
c3dlciBob3dldmVyLCBpdCBzZWVtcyB0aGF0IFVIRCBvbiB0aGUgaG9zdCBlbnN1cmVzIHRoYXQg
aXQgb25seSBzZW5kcyBhIG1heGltdW0gbnVtYmVyIG9mIHRpbWVkIGNvbW1hbmRzIHN1Y2ggdGhh
dCB0aGUgY29tbWFuZCBxdWV1ZXMgZG8gbm90IG92ZXJmbG93Lgo+Pj4gCj4+PiBCdXQgaXQgc2Vl
bXMgdG8gYnJpbmcgYW5vdGhlciBpc3N1ZTogSWYgVUhEIGhvbGRzIGJhY2sgdGhlc2UgbWVzc2Fn
ZXMgdG9vIGxvbmcgdGhleSB3aWxsIGV2ZW50dWFsbHkgYXJyaXZlIGxhdGUgYW5kIChzaWxlbnRs
eSkgZXhlY3V0ZSBub24tdGltZWQgKHRoZXJlYnkgZGVzdHJveWluZyBhbnkgY29oZXJlbmNlIHRo
ZSBhcHBsaWNhdGlvbiBtaWdodCByZXF1aXJlKS4KPj4+IAo+Pj4gSSBhbSB0cnlpbmcgdG8gZGVi
dWcgV0hZIHRoaXMgY2FuIGhhcHBlbiwgd2h5IGl0IGRvZXMgTk9UIGhhcHBlbiB0byB0aGUgZGF0
YSBzdHJlYW0gKGFsbCBkYXRhIGFycml2ZXMgb24gdGltZSEpIGFuZCB3aGF0IEkgY2FuIGRvIHRo
YXQgSSBlbnN1cmUgbXkgdGltZWQgY29tbWFuZHMgd2lsbCBleGVjdXRlICpvbiB0aW1lKi4KPj4+
IAo+Pj4gVGhhbmtzLAo+Pj4gTHVrYXMKPj4+IAo+Pj4gCj4+PiAKPj4+IAo+Pj4gCj4+PiAKPj4g
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVz
ZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
