Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C335F1CC8
	for <lists+usrp-users@lfdr.de>; Wed,  6 Nov 2019 18:50:21 +0100 (CET)
Received: from [::1] (port=60400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iSPRk-0004Uw-7p; Wed, 06 Nov 2019 12:50:20 -0500
Received: from mail-qk1-f178.google.com ([209.85.222.178]:42167)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iSPRg-0004Nw-1h
 for USRP-users@lists.ettus.com; Wed, 06 Nov 2019 12:50:16 -0500
Received: by mail-qk1-f178.google.com with SMTP id m4so25362099qke.9
 for <USRP-users@lists.ettus.com>; Wed, 06 Nov 2019 09:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=Irf4nuHDVZG7wAwyeiQ0E1GFr5oO5wZVRgMZkCSRB4k=;
 b=WU4koSpiPm4E6jO5EH7OqXtEOVgQeli7XsOKGdjMsCKtYMxb1aIPckcO8Ys2QWNJXS
 YZ2jLGiLDRLdzJmvIdIb5uJFewMSGAuDogRObsadyjTUu9/NBOT8ediz9j2AMwUWLa7k
 XGQ8YJfxA/doUn2d+Sr8YoipGUsmdca9EFvRnDasO4BmSnOcuDP6hY/xCGxKA/pSNmkz
 Gw0/fWNxJ5CgWRCSJrytgFsDrBkOjCm10mhp9tnLFCs62eXKN339wYEpq3bu6NM6Lt0Z
 a/enH3xHzOAVvpVkFqlrh2UBFQhshoBjAtNW+rbixGsSTeV6EWIJHTECAASDQVxn9Cfl
 WN0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=Irf4nuHDVZG7wAwyeiQ0E1GFr5oO5wZVRgMZkCSRB4k=;
 b=li4ZjrRYlUrswjPtnbZEvmh78/mUWs5MBkOTG4YqgBtE/NbGDq4h8y1L7jz2IIC+AY
 MVYxUK5uWDWgmuJgUCZ0QIwfL0IoRDkvyeCCce1yOhzUbcIuSCaWYLw9Rd/234WbEs51
 BxixyLNNOLT5XHrP0EVqvpXpws1pLy6TCWjFEnmtvZxqYHl6ojg0dNgrEVrRp1Xi1K3b
 gkwmWkIVPs6D4jtciuCDpdXpMcN41oCK1WD9GamskGDpJo9H5JED5dIgWKFunjeXYDwx
 MYCiukDj9Ha1MmNH3oCvkskMRWYEKHaxW90gqVBOl4pYPI0NcjpCT0drGBxSWI7AD1IX
 YKoA==
X-Gm-Message-State: APjAAAV3TUmjLP+fbZ7f1mdxnlsT/rlWpzfe2xXTSZRso5tR18cAP6xL
 THAs3/yXYd5ry855cRQowTQysdiZUIw=
X-Google-Smtp-Source: APXvYqxw3DGepZ8jDP4UDAatMjxOMbrn1mwIIm8VNFzvbAnB/hojQSoqa5KYfSIIxysCGxfUUbIEKw==
X-Received: by 2002:ae9:dd07:: with SMTP id r7mr3227579qkf.248.1573062575166; 
 Wed, 06 Nov 2019 09:49:35 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-228.dsl.bell.ca.
 [174.95.14.228])
 by smtp.googlemail.com with ESMTPSA id n56sm15451903qtb.73.2019.11.06.09.49.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 09:49:34 -0800 (PST)
Message-ID: <5DC307AD.5030704@gmail.com>
Date: Wed, 06 Nov 2019 12:49:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Olivier Ravard <olivier.ravard@novagrid.com>
References: <978d5f24-1129-7f41-1a63-9e219b0f2fee@novagrid.com>
 <DC77B03C-58E3-4BD9-81AA-750F82B2C917@gmail.com>
 <6377ea27-7921-8d88-c40e-d9f202d39b05@novagrid.com>
In-Reply-To: <6377ea27-7921-8d88-c40e-d9f202d39b05@novagrid.com>
Subject: Re: [USRP-users] TwinRx transfert function
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
Cc: USRP-users@lists.ettus.com
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

T24gMTEvMDYvMjAxOSAxMjoyOCBQTSwgT2xpdmllciBSYXZhcmQgd3JvdGU6Cj4gMS4gVGhlIHR1
bmUgZnJlcXVlbmN5IGlzIDEyMDAgTUh6IGluIHRoaXMgY2FzZSBidXQgd2Ugb2J0YWluIHNhbWUg
b3JkZXIgb2YgbWFnbml0dWRlCj4gZm9yIGZsdWN0dWF0aW9ucyBpZiBhbm90aGVyIGZyZXF1ZW5j
eSBpcyB0dW5lZCAoYnV0IHRyYW5zZmVydCBmdW5jdGlvbiBjb3VsZCBiZSBkaWZmZXJlbnQpLgo+
IE91ciB0ZXN0cyBpbmNsdWRlcyBMIGJhbmQgYWNxdWlzaXRpb25zICg5NTAgLSAyMTUwIE1Ieiku
Cj4KPiAyLiBUaGUgZ2FpbiBpbiB0aGlzIGNhc2UgaXMgc2V0IGluIG9yZGVyIHRvIGhhdmUgMTUg
ZEIgYmFja29mZiAod2hpY2ggaXMgbWFyZ2luIHJlbGF0aXZlCj4gdG8gdGhlCj4gbWF4aW11bSBB
REMgYW1wbGl0dWRlKS4gSW4gdGhpcyBjYXNlLCB3ZSB1c2UgODVkQiBnYWluIGJlY2F1c2UgdGhl
IG5vaXNlIGdlbmVyYXRvciBnaXZlcwo+IGEgbGV2ZWwgYXJvdW5kIC0xMzUgZEJtL0h6LiBCdXQg
d2Ugb2JzZXJ2ZWQgdGhlIHNhbWUgdGhpbmdzIHdoZW4gd2Ugc2FtcGxlIHNhdGVsbGl0ZQo+IHNp
Z25hbHMgdXNpbmcgNjVkQiBnYWluLgo+Cj4gMy4gd2hhdCBkbyB5b3UgbWVhbiBieSAib3ZlcnJ1
bnMiLgpodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV9nZW5lcmFsLmh0bWwjZ2Vu
ZXJhbF9vdW5vdGVzCgpBbHNvLCBIb3cgd2FzIHRoaXMgc3BlY3RydW0gYWN0dWFsbHkgY2FwdHVy
ZSAoaW4gdGhlIHNvZnR3YXJlIHNlbnNlKT8gIApJJ2xsIG5vdGUgdGhhdCA4ME1zcHMgaXMgbm90
IGEgdmFsaWQgZGVsaXZlcmVkIHNhbXBsZS1yYXRlIGZvciB0aGUKICAgWDMxMCB3aXRoIGFueSBv
ZiB0aGUgc3RhbmRhcmQgbWFzdGVyIGNsb2Nrcywgc28gdG8gY2FwdHVyZSA4ME1oeiBvZiAKKGFu
YWxvZykgYmFuZHdpZHRoLCB5b3UnZCBuZWVkIGEgMTAwTXNwcyBzYW1wbGUgcmF0ZSwgd2hpY2gg
SVMKICAgc3VwcG9ydGVkLgoKCj4KPiByZWdhcmRzLAo+Cj4gT2xpdmllcgo+Cj4gTGUgMDYvMTEv
MjAxOSDDoCAxNzo1OSwgTWFyY3VzIEQgTGVlY2ggYSDDqWNyaXQgOgo+PiBUaGF0IGlzIG1vcmUg
cGFzc2JhbmQgcmlwcGxlIHRoYW4gSSB3b3VsZCBleHBlY3QuCj4+Cj4+IFdoYXQgaXMgeW91ciB0
dW5lcyBmcmVxdWVuY3kuIFdoYXQgZ2FpbiBzZXR0aW5nPyBBcmUgeW91IGdldHRpbmcgb3ZlcnJ1
bnMgZHVyaW5nIHRoZQo+PiBtZWFzdXJlbWVudD8KPj4KPj4KPj4gU2VudCBmcm9tIG15IGlQaG9u
ZQo+Pgo+Pj4gT24gTm92IDYsIDIwMTksIGF0IDY6MzIgQU0sIE9saXZpZXIgUmF2YXJkIHZpYSBV
U1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPj4+IHdyb3RlOgo+Pj4KPj4+
IO+7vwo+Pj4KPj4+IEhlbGxvLAo+Pj4KPj4+IFdlIHVzZSBYMzAwIHdpdGggMiBUd2luUnggYm9h
cmRzIGZvciBhY3F1aXNpdGlvbnMgaW4gTCBiYW5kIChVSEQgMy4xMC4zKS4KPj4+Cj4+PiBJdCBz
ZWVtcyB0aGF0IHRoZSB0cmFuc2ZlcnQgZnVuY3Rpb24gb2YgdGhlIGNvdXBsZSAoWDMwMCAtIFR3
aW5SeCkgc2hvd3Mgc3Ryb25nCj4+PiBmbHVjdHVhdGlvbnMuCj4+PiBUbyBtZWFzdXJlIHRoZXNl
IGZsdWN0dWF0aW9ucywgd2UgcHV0IGEgd2hpdGUgbm9pc2UgZ2VuZXJhdG9yIGF0IHRoZSBpbnB1
dCAodGhpcwo+Pj4gZ2VuZXJhdG9yIHdhcwo+Pj4gbWVhc3VyZWQgYmVmb3JlIHdpdGggYSBzcGVj
dHJ1bSBhbmFseXNlciBhbmQgaXQgc2hvdyBhIHZlcnkgZmxhdCB0cmFuc2ZlcnQgZnVuY3Rpb24K
Pj4+IG92ZXIgMSBHSHopCj4+PiBhbmQgd2UgbWVhc3VyZSB0aGUgUFNEIG9mIHRoZSBzYW1wbGVk
IDgwTUh6IGJ3IHNpZ25hbCBmb3IgdGhlIDQgaW5wdXRzLgo+Pj4gaHR0cHM6Ly9maWxlcy5ldHR1
cy5jb20vbWFudWFsL3BhZ2VfZ2VuZXJhbC5odG1sI2dlbmVyYWxfb3Vub3Rlcwo+Pj4gVGhlIHJl
c3VsdCBpcyBzaG93biBvbiBmaWd1cmVzIGJlbG93Ogo+Pj4KPj4+IGlucHV0cyAxIGFuZCAyIChm
aXJzdCBUd2luUngpOgo+Pj4KPj4+IDxiYmhuZWhtYmxpa2FwaWVtLnBuZz4KPj4+IDxmcG5wZ2Rk
bmNua2xoa21hLnBuZz4KPj4+Cj4+PiBpbnB1dHMgMyBhbmQgNCAoc2Vjb25kIFR3aW5SeCk6Cj4+
Pgo+Pj4gPGxma29qbGtwaWFkZmdubWwucG5nPgo+Pj4gPGJub2tib25hYWhsZGtva24ucG5nPgo+
Pj4KPj4+IEFyZSB0aGVzZSBmbHVjdHVhdGlvbnMgbm9ybWFsID8KPj4+Cj4+PiByZWdhcmRzLAo+
Pj4KPj4+IC0tIAo+Pj4gT2xpdmllcgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+PiBVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xp
c3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
