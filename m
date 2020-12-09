Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EC82D4888
	for <lists+usrp-users@lfdr.de>; Wed,  9 Dec 2020 19:04:52 +0100 (CET)
Received: from [::1] (port=33354 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kn3pU-0001Cs-0b; Wed, 09 Dec 2020 13:04:44 -0500
Received: from mail-lf1-f48.google.com ([209.85.167.48]:40997)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <saptarshiv2hazra@gmail.com>)
 id 1kn3pQ-00017f-UD
 for usrp-users@lists.ettus.com; Wed, 09 Dec 2020 13:04:41 -0500
Received: by mail-lf1-f48.google.com with SMTP id r24so4333080lfm.8
 for <usrp-users@lists.ettus.com>; Wed, 09 Dec 2020 10:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=qa/1RmvDD2PKru6JzaBoA6AEm1PbRLNgn1YLhCD0IPQ=;
 b=OPPba8EGAFqeHwAlw9q61l6MYFiln/4rtbyzjFMzBEfGN82lVEkji5J56C4R5HEI/V
 jP41/tjZ8SjKwdSJZlzQR0SvW01xU2w7vSmEjejn2ZZGnBbE/Vo8FTMa16Ur0uJqTzPP
 nzoGBno68T7JhpRu/mGU+JJDDCa93QAWqWIp7Z4f7tYUfMlVoPj9/coMDn1rEK5jX0YR
 +dn7PrjLTyTEX+/aLMv9q0pKrBb9cy283LKS7hlAbwZp4AqIhpyxp3ls21dpdZYVKlLH
 C1kFIy/bZ+Btq7Vb3lO8y7Dmoo97FBPp67MFpL3+XQUXL9IV4W1eXe5HlJqwu8WrhCHd
 eK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=qa/1RmvDD2PKru6JzaBoA6AEm1PbRLNgn1YLhCD0IPQ=;
 b=UTNx9dlFPtPuY9XzLJA3v/+0Rl0STM6Rn8g6tsDndpDDDRoe23gaYkiAFZwaUbUdBm
 LmEXUyDX0cxy5KqA70BlZsxvTljuUYFhKfDbCMMw7W/OpB989hZXJnInYxQBppI0cVF5
 0hAX2xboDZaZ/G5505qvogXBxJ2t7Z0brRXr6CSoQIe4XRVNvFAaW2bFQOO6/7slj1a1
 oyYd43+LN8wF6JvN98KJxJrrnZsxyc33F5QZGJ9c7/VgVGlX7qKytk+FjWwTklE0iP/n
 HROtcp0zwRubqiqxFTvUE3QTtSOftUEvZ/fJmRvCLLtgmZmKBVtfg+5zXD9wOHWLP7gM
 tKHg==
X-Gm-Message-State: AOAM530kEvbE10sPWCtEIUauYT7f0S7ZbYWhTHKElKLKziY8DG8RXQat
 rca4M4xnmoTKiBV9tGy5r24qiyFJVXPKEg==
X-Google-Smtp-Source: ABdhPJybyPesla0WViUqnrHxtf1S4j5Sv4I2Wqagt4HB65E1h8s+98Y252b3NkOLsV6cw1n6kgP5gg==
X-Received: by 2002:a19:950:: with SMTP id 77mr1280288lfj.133.1607537039382;
 Wed, 09 Dec 2020 10:03:59 -0800 (PST)
Received: from [10.112.2.45] (ymer.sics.se. [193.10.64.23])
 by smtp.gmail.com with ESMTPSA id p6sm255290lfh.50.2020.12.09.10.03.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 09 Dec 2020 10:03:58 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
In-Reply-To: <59356f83-3ab3-0916-676e-f049a417141c@elitecoding.org>
Date: Wed, 9 Dec 2020 19:03:56 +0100
Cc: usrp-users@lists.ettus.com
Message-Id: <B77978B7-CAE3-447D-81CB-12049C556CBD@gmail.com>
References: <7A9E93AA-5955-4874-94DC-AEA1FE4339FD@gmail.com>
 <59356f83-3ab3-0916-676e-f049a417141c@elitecoding.org>
To: Julian Arnold <julian@elitecoding.org>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [USRP-users] Receiving on multiple subdevs using USRP B210
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
From: Saptarshi Hazra via USRP-users <usrp-users@lists.ettus.com>
Reply-To: saptarshiv2hazra@gmail.com
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

SGkgSnVsaWFuLAoKVGhhbmtzIGZvciB5b3VyIHJlcGx5LgpJIGFtIGJhc2ljYWxseSB0cnlpbmcg
dG8gcmVjZWl2ZSBzaWduYWxzIG9mIEJXIDVNSHogYXQgdHdvIGRpZmZlcmVudCBjZW50cmUgZnJl
cXVlbmNpZXMgKDIuNDc1R0h6IGFuZCAyLjQ4R0h6KSB1c2luZyB0aGUgdHdvIHN1YmRldnMgb2Yg
dGhlIEIyMTAuCgpUaGUgbWFzdGVyIGNsb2NrIHJhdGUgZ2V0cyBzZXQgdG8gMjBNSHogd2hpY2gg
bWFrZXMgbWUgYXNzdW1lIHRoYXQgdGhlIGFuYWxvZyBiYW5kd2lkdGggZm9yIHRoZSBVU1JQIHNv
dXJjZSBpcyAyMCBNSHouCldpdGggYSBjZW50cmUgZnJlcXVlbmN5IG9mIDIuNDc1R0h6LCBpdCBz
aG91bGQgY292ZXIgZnJvbSAyLjQ2NUdIeiB0byAyLjQ4NUdIei4gCgpUaGUgbWFpbiBwcm9ibGVt
IEkgaGF2ZSBkaWZmaWN1bHR5IHVuZGVyc3RhbmRpbmcgaXMgd2h5IGl0IHdvcmtzIGluIENhc2Ug
MSBhbmQgd2h5IGl0IGJlaGF2ZXMgcmFuZG9tbHkgaW4gQ2FzZSAyLgoKVGhhbmtzLApTYXB0YXJz
aGkKCj4gT24gOSBEZWMgMjAyMCwgYXQgMTU6NDksIEp1bGlhbiBBcm5vbGQgPGp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc+IHdyb3RlOgo+IAo+IFNhcHRhcnNoaSwKPiAKPiBJJ20gbm90IGVudGlyZWx5
IHN1cmUgSSBmdWxseSB1bmRlcnN0YW5kIHdoYXQgeW91IGFyZSBkb2luZy4gWW91IHByb2JhYmx5
IG5lZWQgdG8gcHJvdmlkZSBzb21lIG1vcmUgZGV0YWlscy4KPiAKPiBIb3dldmVyLCBpbiBnZW5l
cmFsLCBkZXBlbmRpbmcgb24gd2hhdCB5b3UgbWFzdGVyLWNsb2NrLXJhdGUgaXMsCj4gZG9pbmcg
YSA1TUh6IHNoaWZ0IGluIHRoZSBEU1AgZG9lcyBub3QgbWFrZSBtdWNoIHNlbnNlIGlmIHlvdXIK
PiBzYW1wbGUtcmF0ZSBhbmQgeW91ciBhbmFsb2cgYmFuZHdpZHRoIGFyZSBvbmx5IDUgTUh6LiBU
aGVyZSBpcyBqdXN0IG5vIHNpZ25hbCBhdCB5b3VyIDVNSHogb2Zmc2V0IHlvdSBjb3VsZCBwb3Nz
aWJseSBzaGlmdCBkb3duIHRvIGJhc2UtYmFuZC4KPiAKPiBDaGVlcnMsCj4gSnVsaWFuCj4gCj4g
T24gMTIvOS8yMCAxMDo0MSBBTSwgU2FwdGFyc2hpIEhhenJhIHZpYSBVU1JQLXVzZXJzIHdyb3Rl
Ogo+PiBIaSwKPj4gSSBhbSB0cnlpbmcgdG8gcmVjZWl2ZSBvbiB0d28gZGlmZmVyZW50IGNlbnRy
ZSBmcmVxdWVuY2llcyAoMi40NzVlOSBhbmQgMi40OGU5KSB1c2luZyB0aGUgdHdvIHJlY2VpdmVy
IGNoYWlucyBvbiBCMjEwLiBTaW5jZSB0aGV5IGFyZSBjbG9zZSBieSwgSSB0aG91Z2h0ICBjYW4g
cmVjZWl2ZSB0aGVtIGJ5IHNldHRpbmcgdGhlIOKAnGRzcF9mcmVx4oCdIHBhcmFtZXRlci4KPj4g
Q2FzZSAxOgo+PiBTdWJkZXY6IEE6QSBvciBBOkIKPj4gTmNoYW5uZWwgOiAxCj4+IENlbnRyZSBG
cmVxdWVuY3k6IDIuNDc1ZTkKPj4gU2FtcGxpbmcgUmF0ZTogNWU2Cj4+IEJXOiA1ZTYKPj4gSWYg
SSB1c2UgdGhlIGNvbW1hbmQgcG9ydCB0aGUgVVNSUCBzb3VyY2UgYmxvY2sgdG8gcGFzcyBhIHBt
dCBkaWN0aW9uYXJ5Ogo+PiBwbXQudG9fcG10KHvigJxsb19mcmVx4oCdOjIuNDc1ZTksIOKAnGRz
cF9mcmVx4oCdOiAtNWU2fSkKPj4gSSBhbSBhYmxlIHRvIHJlY2VpdmUgcmFkaW8gcGFja2V0cyBz
ZW50IGJ5IG5vZGVzIG9uIDIuNDhlOSBIego+PiBDYXNlIDI6Cj4+IFN1YmRldjogQTpBICBBOkIK
Pj4gTmNoYW5uZWwgOiAyCj4+IFNhbXBsaW5nIFJhdGU6IDVlNgo+PiBDZW50cmUgRnJlcXVlbmN5
IDE6IDIuNDc1ZTkKPj4gQ2VudHJlIEZyZXF1ZW5jeSAyOiAyLjQ3NWU5Cj4+IEJXOiA1ZTYKPj4g
SSB1c2UgdGhlIHBtdCBkaWN0aW9uYXJ5Ogo+PiBwbXQudG9fcG10KHvigJxjaGFu4oCdOjAsIOKA
nGxvX2ZyZXHigJ06Mi40NzVlOSwg4oCcZHNwX2ZyZXHigJ06IC01ZTZ9KQo+PiBXaGVuIEkgZG8g
dGhpcyBzb21ldGltZXMgSSByZWNlaXZlIGRhdGEgZnJvbSBub2RlcyB0cmFuc21pdHRpbmcgb24g
Mi40OGU5SHouICBhbmQgc29tZXRpbWVzIG9uIDIuNDc1SHouIFRoZSBiZWhhdmlvdXIgYmVjb21l
cyBlbnRpcmVseSByYW5kb20uCj4+IEkgd291bGQgcmVhbGx5IGFwcHJlY2lhdGUgYW55IGhlbHAg
aW4gZmlndXJpbmcgb3V0IGhvdyB0byByZWNlaXZlIHNpbXVsdGFuZW91c2x5IG9uIHRoZXNlIHR3
byBjZW50cmUgZnJlcXVlbmNpZXMuCj4+IFRoYW5rcywKPj4gU2FwdGFyc2hpCj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+IGh0dHA6Ly9saXN0cy5l
dHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1
cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
