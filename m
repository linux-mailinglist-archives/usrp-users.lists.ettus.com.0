Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB042538FB
	for <lists+usrp-users@lfdr.de>; Wed, 26 Aug 2020 22:16:25 +0200 (CEST)
Received: from [::1] (port=50936 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kB1qG-0001nB-DB; Wed, 26 Aug 2020 16:16:20 -0400
Received: from dd22108.kasserver.com ([85.13.141.232]:59538)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <julian@elitecoding.org>)
 id 1kB1qC-0001jN-Jw
 for usrp-users@lists.ettus.com; Wed, 26 Aug 2020 16:16:16 -0400
Received: from [192.168.2.116] (p5dc23351.dip0.t-ipconnect.de [93.194.51.81])
 by dd22108.kasserver.com (Postfix) with ESMTPSA id CBD6C4420034;
 Wed, 26 Aug 2020 22:15:34 +0200 (CEST)
To: David Carsenat <carsenat@gmail.com>,
 usrp-users <usrp-users@lists.ettus.com>
References: <CA+w2ZysdtLyTCsbY4GaLKGqJ1vGUnV=r8_A5Kzv2LVa8pXfWWA@mail.gmail.com>
 <79405f9e-125a-8947-5530-eca1e909e5b6@elitecoding.org>
 <CA+w2Zyshn2yyJw9b0nhP_xAGSr75RGkJm0C8BvajtaFLG8kLxw@mail.gmail.com>
Message-ID: <94471ce9-11c7-d2c5-98b2-370d9e9c0397@elitecoding.org>
Date: Wed, 26 Aug 2020 22:15:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CA+w2Zyshn2yyJw9b0nhP_xAGSr75RGkJm0C8BvajtaFLG8kLxw@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] List of filters and where they are located
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

RGF2aWQsCgp1bmZvcnR1bmF0ZWx5IG5vdC4gVGhlIGZpbHRlciBBUEkgZG9lcyBvbmx5IGV4cG9y
dCB0aGUgZmlsdGVycyBpbnRlcm5hbCAKdG8gdGhlIEFEOTM2MSBvbiBCMnh4IHNlcmllcyBkZXZp
Y2VzLgpIb3dldmVyLCBpZiB5b3UgbGV0IE1DUiA9IHNhbXBsZSByYXRlIHlvdSBzaG91bGQgYmFz
aWNhbGx5IG9ubHkgaGF2ZSAKZmlsdGVycyBpbnNpZGUgdGhlIEFEOTM2MSBhY3RpdmUuCgpDaGVl
cnMsCkp1bGlhbgoKT24gOC8yNi8yMCA2OjE2IEFNLCBEYXZpZCBDYXJzZW5hdCB3cm90ZToKPiBP
ayB0aGFua3MgYSBsb3RKdWxpYW4sIHRoaXMgaXMgdmVyeSBoZWxwZnVsLgo+IERvZXMgeW91ciBl
eGFtcGxlIGFsbG93IHRvIGxpc3QgRlBHQSBmaWx0ZXJzIGFsc28gPwo+IAo+IExlwqBtYXIuIDI1
IGFvw7t0IDIwMjAgw6DCoDIxOjU3LCBKdWxpYW4gQXJub2xkIDxqdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnIAo+IDxtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZz4+IGEgw6ljcml0wqA6Cj4gCj4g
ICAgIERhdmlkLAo+IAo+ICAgICB0YWtlIGEgbG9vayBhdCB0aGUgYWQ5MzYxIHVzZXIgZ3VpZGUg
WzFdLiBJdCBoYXMgYWxsIHRoZSBpbmZvcm1hdGlvbgo+ICAgICB5b3UKPiAgICAgYXJlIGxvb2tp
bmcgZm9yLgo+IAo+ICAgICBJZiB5b3Ugd2FudCB0byBrbm93IHdoaWNoIGZpbHRlcnMgeW91IGNh
biBjb25maWd1cmUgYW5kIGhvdywgdGFrZSBhCj4gICAgIGxvb2sKPiAgICAgYXQgWzJdLiBJdCdz
IGEgc2ltcGxlIGV4YW1wbGUgSSB3cm90ZSBxdWl0ZSBhIHdoaWxlIGJhY2sgYnV0IGl0IHNob3Vs
ZAo+ICAgICBzdGlsbCBiZSBnb29kIHRvIGdldCB5b3Ugc3RhcnRlZC4KPiAKPiAgICAgSG9wZSB0
aGF0IGhlbHBzIQo+IAo+ICAgICBDaGVlcnMsCj4gICAgIEp1bGlhbgo+IAo+ICAgICBbMV0KPiAg
ICAgaHR0cHM6Ly9mb3JtLmFuYWxvZy5jb20vRm9ybV9QYWdlcy9DYXRhbGluYS9DYXRhbGluYURl
c2lnbi5hc3B4P3Byb2RpZD1BRDkzNjEKPiAgICAgWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9qYXJu
MGxkL3VoZC1maWx0ZXItdG9vbAo+IAo+ICAgICBPbiA4LzI1LzIwIDk6MDkgUE0sIERhdmlkIENh
cnNlbmF0IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+ICAgICAgPiBIaSwgSSBhbSB1c2luZyBhIEIy
MDUgYW5kIEknZCBqdXN0IGxpa2UgdG8ga25vdyB3aGF0IGFyZSB0aGUKPiAgICAgID4gZGlmZmVy
ZW5jZcKgZmlsdGVyIHN0YWdlcyAoYW5hbG9nIGFuZCBkaWdpdGFsKSBzZWVuIGJ5IHRoZSBzaWdu
YWwKPiAgICAgKGJvdGgKPiAgICAgID4gVHggYW5kIFJ4KSwgaW4gdGhlIEFEOTM2eCBhbmQgaW4g
dGhlIEZQR0EuCj4gICAgICA+IEFub3RoZXIgd2F5IHRvIGhlbHAgbWUsIHNob3VsZCBiZSB0byBo
YXZlIGEgZGVzY3JpcHRpb24gb2YgdGhlCj4gICAgIGZpbHRlcgo+ICAgICAgPiB0aGF0IEkgY2Fu
IGFkZHJlc3PCoHdpdGggdGhlIGZpbHRlci5ocHAgZnVuY3Rpb25zwqA6IENhbiBJIGFkZHJlc3PC
oGFuZAo+ICAgICAgPiBjaGFuZ2UgZmlsdGVycyBiZWhhdmlvdXJzIHRoYXQgYXJlIHBhcnQgb25s
eSBvbiBGUEdBIG9yIGFsc28gdGhlCj4gICAgIEFEOTM2MQo+ICAgICAgPiBmaWx0ZXJzID8KPiAg
ICAgID4KPiAgICAgID4gTWFueSB0aGFua3MKPiAgICAgID4KPiAgICAgID4gRGF2aWQKPiAgICAg
ID4KPiAgICAgID4KPiAgICAgID4KPiAgICAgID4KPiAgICAgID4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiAgICAgID4gVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKPiAgICAgID4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPG1haWx0bzpVU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiAgICAgID4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWls
bWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gICAgICA+Cj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1h
aWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMu
Y29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
