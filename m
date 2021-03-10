Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CBE33371F
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 09:17:35 +0100 (CET)
Received: from [::1] (port=39482 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJu27-0007D3-6Q; Wed, 10 Mar 2021 03:17:31 -0500
Received: from dd22108.kasserver.com ([85.13.141.232]:38420)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <julian@elitecoding.org>)
 id 1lJu23-00078V-Bj
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 03:17:27 -0500
Received: from [192.168.2.23] (p5dc234bb.dip0.t-ipconnect.de [93.194.52.187])
 by dd22108.kasserver.com (Postfix) with ESMTPSA id 2886E4420084;
 Wed, 10 Mar 2021 09:16:45 +0100 (CET)
To: =?UTF-8?Q?Maria_Mu=c3=b1oz?= <mamuki92@gmail.com>,
 usrp-users <usrp-users@lists.ettus.com>
References: <CAG16vQX3ubfTZ1sP6VU0-USdwt=H6g7OAH0x9aFBb9wwXWayOw@mail.gmail.com>
Message-ID: <5e562eab-1997-b9be-0229-633c783c9e8a@elitecoding.org>
Date: Wed, 10 Mar 2021 09:16:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAG16vQX3ubfTZ1sP6VU0-USdwt=H6g7OAH0x9aFBb9wwXWayOw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Enable AGC in USRP E320 with RFNoC using GNURadio
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
From: Julian Arnold via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Julian Arnold <julian@elitecoding.org>
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

TWFyaWEsCgpJIG1pZ2h0IG5vdCBiZSB0aGUgcmlnaHQgcGVyc29uIHRvIGFuc3dlciB0aGlzLCBh
cyBteSBleHBlcmllbmNlIHdpdGggClVIRCA0LjAgaXMgcmVsYXRpdmVseSBsaW1pdGVkIGF0IHRo
ZSBtb21lbnQuCgpIb3dldmVyLCBJIGNhbnQgdGVsbCB5b3UgdGhhdCB0aGUgQUdDIG9uIEIyeDAg
ZGV2aWNlcyBpcyBjb250cm9sbGVkIHZpYSAKc29mdHdhcmUgKHVzaW5nIHNldF9yeF9hZ2MoKSku
IFRoZXJlIGlzIG5vIG5lZWQgdG8gZGlyZWN0bHkgbW9kaWZ5IHRoZSAKc3RhdGUgb2YgYW55IHBp
bnMgb2YgdGhlIEZQR0EuCgpJIHZhZ3VlbHkgcmVtZW1iZXIgdGhhdCB0aGVyZSB3YXMgYSBidWcg
aW4gYW4gZWFybGllciB2ZXJzaW9uIG9mIGdyLXVoZCAKKHNvbWV3aGVyZSBpbiAzLjcpIHRoYXQg
bWFkZSBpdCBkaWZmaWN1bHQgdG8gdHVybiBvbiB0aGUgQUdDIHVzaW5nIEdSQy4KVGhhdCBwYXJ0
aWN1bGFyIG9uZSBpcyBmaXhlZCBpbiBnci11aGQuIE5vdCBzdXJlIGFib3V0IGdyLWV0dHVzLCB0
aG91Z2guCgpNYXliZSB0cnkgdXNpbmcgc2V0X3J4X2FnYygpIG1hbnVhbGx5IGluIHlvdSBmbG93
LWdyYXBoICgqLnB5KSBhbmQgc2VlIAppZiB0aGF0IGhlbHBzLgoKQ2hlZXJzLApKdWxpYW4KCk9u
IDMvOS8yMSA1OjExIFBNLCBNYXJpYSBNdcOxb3ogdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4gSGkg
YWxsLAo+IAo+IEkgd2FzIHdvbmRlcmluZyBpZiBpdCBpcyBwb3NzaWJsZSB0byBlbmFibGUgQUdD
IGZyb20gdGhlIFJGTm9DIHJhZGlvIAo+IGJsb2NrIGluIEdOVVJhZGlvLiBJIHVzZSBVSEQgNC4w
IHZlcnNpb24gYW5kIEdOVVJhZGlvIDMuOCB3aXRoIGdyLWV0dHVzLgo+IAo+IEkgc2VlIHRoYXQg
dGhlIFJGTm9DIFJ4IHJhZGlvIGJsb2NrIGhhcyBhbiBlbmFibGUvZGlzYWJsZS9kZWZhdWx0IEFH
QyAKPiBvcHRpb24gaW4gdGhlIEdOVVJhZGlvIGJsb2NrIHdoaWNoIEkgYXNzdW1lIGNhbGxzIHRo
ZSBVSEQgZnVuY3Rpb24gCj4gInNldF9yeF9hZ2MiIAo+IChodHRwczovL2ZpbGVzLmV0dHVzLmNv
bS9tYW51YWwvY2xhc3N1aGRfMV8xdXNycF8xXzFtdWx0aV9fdXNycC5odG1sI2FiZGFiMWY2YzM3
NzVhOTA3MWIxNWM5ODA1Zjg2NjQ4NikKPiAKPiBJIGhhdmUgYWxzbyBjaGVja2VkIG9uIHRoZSBG
UEdBIHNpZGUgdGhhdCB0aGVyZSBpcyBhIHBpbiBmcm9tIEZQR0EgdG8gCj4gQUQ5MzYxIGNhbGxl
ZMKgWENWUl9FTkFfQUdDIHdoaWNoIGlzIHNldCBhbHdheXMgdG8gMSBvbiB0aGUgdG9wIGxldmVs
IG9mIAo+IHRoZSBGUEdBIGltYWdlIChzZWUgYXR0YWNoZWQgZmlsZSAiZTMyMC52IiwgbGluZSA4
NzIpLiBUaGlzIHBpbiwgCj4gYWNjb3JkaW5nIHRvIAo+IGh0dHBzOi8vd3d3LmFuYWxvZy5jb20v
bWVkaWEvZW4vdGVjaG5pY2FsLWRvY3VtZW50YXRpb24vZGF0YS1zaGVldHMvQUQ5MzYxLnBkZiAK
PiBpcyB0aGUgIk1hbnVhbCBDb250cm9sIElucHV0IGZvciBBdXRvbWF0aWMgR2FpbiBDb250cm9s
IChBR0MpIi4KPiBNdXN0IGJlIHRoaXMgcGluIHNldCB0byAwIHRvIGhhdmUgQUdDIHdvcmtpbmc/
Cj4gSWbCoG5vdCwgaG93IGNhbiBJwqBnZXQgQUdDIHdvcmtpbmc/IEkndmUgbWFkZSBzb21lIHRl
c3RzIAo+IGVuYWJsaW5nL2Rpc2FibGluZyB0aGlzIG9wdGlvbiBidXQgSSBkbyBub3Qgc2VlIGFu
eSBjaGFuZ2VzIGJldHdlZW4gdGhlIAo+IHdhdmVmb3JtcyByZWNlaXZlZC4KPiAKPiBBbnkgaGVs
cCB3b3VsZCBiZSBhcHByZWNpYXRlZC4KPiAKPiBLaW5kIFJlZ2FyZHMsCj4gCj4gTWFyaWEKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8v
bGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5j
b20KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9s
aXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bQo=
