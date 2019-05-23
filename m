Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0C928476
	for <lists+usrp-users@lfdr.de>; Thu, 23 May 2019 19:03:39 +0200 (CEST)
Received: from [::1] (port=46262 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hTr7t-0000Y8-6R; Thu, 23 May 2019 13:03:33 -0400
Received: from mail-wr1-f43.google.com ([209.85.221.43]:33438)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <vladicasark@gmail.com>)
 id 1hTr7M-0000Py-2M
 for usrp-users@lists.ettus.com; Thu, 23 May 2019 13:03:30 -0400
Received: by mail-wr1-f43.google.com with SMTP id d9so7111928wrx.0
 for <usrp-users@lists.ettus.com>; Thu, 23 May 2019 10:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=+yeQ6kxJqNdREsX0trTEebGQB3t6gQbEiS+R3433/Bk=;
 b=m//eABKVHxFFKDlnSjIBqXQqMM9BnrhZuRsRBbaW5hg4EvPoVGpF20PDx1Cm3d41YW
 Y13ROi1LezB3g8KzjsbZUXmxR6CXZGVD2zEh0x/AshFuG0NiQJzN0url6M7l3Ay/zkrC
 +c7j1PCyDUFugHWMuKlwx112lLZQTdsH/sRrTnrbZMDqRoMZvTeOcdSY1P4EWN8DUT4D
 x0tC0KM60Ygi1FBEoRS0fmUlRgo+oLfBrXfS+BNhTw1vAq/IocKtKx3fJTUdxyHU9jIj
 Fs+pTl6V3XH1F+NiU6BWzrbcHfXpj7cWxVPNTMdcg/WRDgSFP/BnxVvbisNHrMNTcaao
 e6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+yeQ6kxJqNdREsX0trTEebGQB3t6gQbEiS+R3433/Bk=;
 b=SV+5EDfQ8K6duFXzgOgp6fTo3pBccjtGtHMqQjjzjxA12kdbQaDm1Zi6aYtTTkJ6NP
 MyHtRCbBxWC9qP4s5IrBDUPv/2t3BcXbTx9f4h4aww09ydER1kDHdHVkH20+2B59cz9u
 YoexDEbQAXq90Zoxz7VA/apyBdtgi3OG/s7CwAwkvobq01E8zB6qBuI/Cu9FRJyDL3ia
 5CoOZ5oDQexBjPWwkoEcp1HjDpx9QiInLSE6rBB3yk4uYx+MJ1AtN/YD9puXgzh3lc+o
 GYKIoQDOXfBZjPKFf39DDwzDnSbwkdRS9ezu1CuNIG55IEa5QparH4yBzYBj4WjgsUDC
 Q6BA==
X-Gm-Message-State: APjAAAXsSE/Ou61GgcMYNP6wtAPFRKzrEd8JcF37+xCII0NzmA+AUvqP
 w8cnVv8dALSBH1+jTYMeJY2TFm8b
X-Google-Smtp-Source: APXvYqw4Vur3WiYNuiyibVy3AtchsyuozYg2oIHzsG5xNyx5gT7ERfvIK+oGupr78WwLD2q+G989lw==
X-Received: by 2002:adf:c149:: with SMTP id w9mr49605757wre.40.1558630938781; 
 Thu, 23 May 2019 10:02:18 -0700 (PDT)
Received: from [192.168.0.16] (46.128.161.107.dynamic.cablesurf.de.
 [46.128.161.107])
 by smtp.gmail.com with ESMTPSA id u129sm105253wmb.22.2019.05.23.10.02.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 10:02:17 -0700 (PDT)
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
References: <e83f1284-23a4-ac57-8943-993b9d6201b5@gmail.com>
 <f57ef582-b99a-aaf9-0f0c-0e724dffacad@gmail.com> <5CE6C08E.8050302@gmail.com>
Message-ID: <61986861-6b31-6286-6d98-7e4d4f66c8da@gmail.com>
Date: Thu, 23 May 2019 19:02:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5CE6C08E.8050302@gmail.com>
Content-Language: en-US
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Multiple TX streams
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
From: Vladica Sark via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Vladica Sark <vladicasark@gmail.com>
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

SSBhbSB1c2luZyAxIEdiIEVUSCBpbnRlcmZhY2UuIFRoZSBzYW1wbGUgcmF0ZSBpcyB0aGUgZGVm
YXVsdCBmb3IgCnR4X3RpbWVkX3NhbXBsZXMsIGkuZS4gNi4yNSBNU3BzLiBJIGFtIGdldHRpbmcg
bm8gdW5kZXJydW4gaW5kaWNhdGlvbi4KVGhlIHR4X3RpbWVkX3NhbXBsZXMgc2VuZHMgdGhlIHNh
bXBsZXMgdG8gdGhlIHJhZGlvIGFuZCBzY2hlZHVsZXMgdGhlIAp0cmFuc21pc3Npb24gMS41IHNl
Y29uZHMgaW4gZnV0dXJlLiBJZiBJIHB1dCBvbmx5IDEgcmFkaW8sIGkuZS4gb25lIElQIAphZGRy
ZXNzLCBldmVyeXRoaW5nIHdvcmtzIHBlcmZlY3QuCldpdGggMiBJUCBhZGRyZXNzZXMgKHR3byBy
YWRpb3MpLCBzb21ldGltZXMgcmVwb3J0cyBzdWNjZXNzIHNvbWV0aW1lcyAKZmFpbC4gSXQgc2Vl
bXMgY29tcGxldGVseSB1bmRldGVybWluZWQuCgpCUiwKVmxhZGljYQoKCk9uIDIzLjA1LjE5IDE3
OjQ3LCBNYXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gT24gMDUvMjMvMjAx
OSAwNTozOSBBTSwgVmxhZGljYSBTYXJrIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+PiBIaSBhZ2Fp
biwKPj4KPj4gSSBmb3VuZCBhbiBlYXN5IHdheSB0byByZXByb2R1Y2UgdGhlIHByb2JsZW0uIEkg
dXNlIHR3byB4MzEwJ3MgYW5kIHJ1biAKPj4gdGhlIHR4X3RpbWVkX3NhbXBsZXMgYXM6Cj4+Cj4+
IHR4X3RpbWVkX3NhbXBsZXMgLS1hcmdzICJhZGRyMD0xOTIuMTY4LjUwLjIsYWRkcjE9MTkyLjE2
OC4xMzAuMiIgCj4+IC0tc2VjcyAwLjUgLS1uc2FtcHMgMTAwMDAwMAo+Pgo+PiBzb21ldGltZXMg
aXQgZmFpbHMsIHNvbWV0aW1lcyBpdCB3b3Jrcy4gSSB1c2UgbGFyZ2VyIG51bWJlciBvZiBzYW1w
bGVzIAo+PiB0byBiZSBhYmxlIHRvIG5vdGljZSB0aGUgTEVEIGJsaW5raW5nLgo+Pgo+PiBCUiwK
Pj4gVmxhZGljYQo+IEFyZSB5b3UgZ2V0dGluZyBhbnkgdW5kZXItcnVuIGluZGljYXRpb24/wqAg
V2hhdCB0eXBlIG9mIGV0aGVybmV0IAo+IGludGVyZmFjZSBhcmUgeW91IHVzaW5nLCBhbmQgYXQg
d2hhdCBzYW1wbGUgcmF0ZXM/Cj4gCj4gCj4+Cj4+Cj4+IE9uIDIzLjA1LjE5IDA4OjM2LCBWbGFk
aWNhIFNhcmsgd3JvdGU6Cj4+PiBIaSBmb2xrcywKPj4+Cj4+PiBJIGhhdmUgMnggWDMxMCBjb25u
ZWN0ZWQgdG8gT2N0b2Nsb2NrICgxMCBNSHogKyBQUFMpLCBlYWNoIHdpdGggMnggCj4+PiBVQlgg
ZnJvbnRlbmRzLiBJIGNvbnRyb2wgdGhlbSBmcm9tIGEgQy9DKysgcHJvZ3JhbS4gU2luY2UgdGhl
cmUgYXJlIDQgCj4+PiBjaGFubmVscywgSSBjcmVhdGUgNCB0eCBzdHJlYW1lcnMgaW4gb3JkZXIg
dG8gdHJhbnNtaXQgdGltZWQgc2FtcGxlcyAKPj4+IG9uIGVhY2ggb2YgdGhlbS4gVGhlIHRyYW5z
bWlzc2lvbnMgYXJlIG5vdCBhdCB0aGUgc2FtZSB0aW1lIGFuZCB0aGlzIAo+Pj4gaXMgdGhlIHJl
YXNvbiBmb3IgdXNpbmcgNCB0eCBzdHJlYW1lcnMuIFRoZSBwcm9ibGVtIGlzIHRoYXQgd2hlbiBJ
IAo+Pj4gc2NoZWR1bGUgdGltZWQgdHJhbnNtaXNzaW9ucyBvbiBhbGwgb2YgdGhlIGNoYW5uZWxz
IChhdCB0aGUgc2FtZSB0aW1lIAo+Pj4gZm9yIHRlc3QpLCBzb21ldGltZXMgSSBkbyBub3QgZ2V0
IGFueXRoaW5nIHdpdGggcmVjdl9hc3luY19tc2csIGkuZS4gCj4+PiB0aGUgdGltZW91dCBleHBp
cmVzLiBUaGlzIGFsc28gaGFwcGVucyBldmVuIHdoZW4gSSBzY2hlZHVsZSBvbmx5IGEgCj4+PiBz
aW5nbGUgdHJhbnNtaXNzaW9uIGZyb20gc2luZ2xlIHR4IHN0cmVhbWVyIChhbGwgNCBzdHJlYW1l
cnMgYXJlIAo+Pj4gY3JlYXRlZCkuCj4+PiBTb21ldGltZXMgaXQgaGFwcGVucyB0aGF0IGV2ZXJ5
dGhpbmcgaXMgd29ya2luZyB3aXRob3V0IHByb2JsZW1zLCAKPj4+IGkuZS4gSSBtYWtlIDIwMCB0
cmFuc21pc3Npb25zIG9uIGVhY2ggb2YgdGhlIGNoYW5uZWxzIGFuZCBJIGdldCB0aGUgCj4+PiBw
cm9wZXIgcmVzcG9uc2UgZnJvbSB0aGUgcmVjdl9hc3luY19tc2csIGJ1dCBtYW55IHRpbWVzLCBy
ZXN0YXJ0aW5nIAo+Pj4gdGhlIHNhbWUgcHJvZ3JhbSBsZWFkcyB0byBqdXN0IHJlY3ZfYXN5bmNf
bXNnIHdpdGggZXhwaXJlZCB0aW1lb3V0LiBJIAo+Pj4gYW0gdXNpbmcgVUhEIDMuMTMuMC4KPj4+
Cj4+PiBJIGNhbiBwcm9iYWJseSB1c2Ugb25lIHN0cmVhbWVyIGFuZCB0cmFuc21pdHRpbmcgMCdz
IG9uIHRoZSByZXN0IG9mIAo+Pj4gdGhlIGNoYW5uZWxzLCBidXQgSSB3b3VsZCBsaWtlIHRvIGF2
b2lkIExPIGxlYWthZ2UgaW4gdGhlIGFpci4KPj4+Cj4+PiBCZXN0IHJlZ2FyZHMsCj4+PiBWbGFk
aWNhCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
Cj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xp
c3RzLmV0dHVzLmNvbQo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3Jw
LXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCg==
