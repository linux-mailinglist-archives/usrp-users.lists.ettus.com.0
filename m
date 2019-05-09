Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE1918A4A
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 15:06:43 +0200 (CEST)
Received: from [::1] (port=39338 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOil0-0007xh-9B; Thu, 09 May 2019 09:06:42 -0400
Received: from mail-relay.contabo.net ([213.136.95.143]:41698)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <fabian@opencode.eu>) id 1hOikS-0007YG-Ce
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 09:06:38 -0400
Received: by mail-relay.contabo.net (Postfix, from userid 103)
 id 66F2A2021D; Thu,  9 May 2019 15:05:27 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vmd4985.contabo.net
X-Spam-Level: 
Received: from m1331.contabo.net (m1331.contabo.net [91.194.91.204])
 by mail-relay.contabo.net (Postfix) with ESMTPS id 8348320153
 for <usrp-users@lists.ettus.com>; Thu,  9 May 2019 15:05:26 +0200 (CEST)
Received: from [134.169.78.184] (port=57117)
 by m1331.contabo.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <fabian@opencode.eu>) id 1hOijk-00FAI5-IL
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 15:05:27 +0200
To: usrp-users@lists.ettus.com
References: <2c7da2ef-26f6-84e4-a012-fc6ad4690e2e@opencode.eu>
 <5CC31FEC.5030409@gmail.com>
 <029a5484-a76e-c1b4-2e34-b43573b1e2a8@opencode.eu>
 <5CC32BA0.6090600@gmail.com>
 <f393a357-1b36-19a6-a7b1-4af0fa08b412@opencode.eu>
 <5CC33227.2050308@gmail.com>
 <00aada01-a9e2-e85c-25d7-c5d4a1d8c8f2@opencode.eu>
Message-ID: <519a5d62-fa06-060b-c5be-56f429b0f04f@opencode.eu>
Date: Thu, 9 May 2019 15:05:21 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <00aada01-a9e2-e85c-25d7-c5d4a1d8c8f2@opencode.eu>
X-Antivirus: AVG (VPS 190509-2, 09.05.2019), Outbound message
X-Antivirus-Status: Clean
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - m1331.contabo.net
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - opencode.eu
X-Get-Message-Sender-Via: m1331.contabo.net: authenticated_id:
 fabian@opencode.eu
X-Authenticated-Sender: m1331.contabo.net: fabian@opencode.eu
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
From: Fabian Schwartau via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Fabian Schwartau <fabian@opencode.eu>
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

SGksCmlzIHRoZXJlIGFueSB1cGRhdGUgcmVnYXJkaW5nIHRoaXMgaXNzdWU/CgpBbSAwNi4wNS4y
MDE5IHVtIDEwOjM2IHNjaHJpZWIgRmFiaWFuIFNjaHdhcnRhdSB2aWEgVVNSUC11c2VyczoKPiBT
b3JyeSBmb3IgdGhlIGxhdGUgYW5zd2VyLCBJIHdhcyBidXN5Lgo+IEkgdHJpZWQgdGhhdCBpbmNs
dWRpbmcgYSBvbmUgc2Vjb25kIHNsZWVwIGFmdGVyIGl0IGJ1dCBpdCBkb2VzIG5vdCBoZWxwLgo+
IAo+IEFtIDI2LjA0LjIwMTkgdW0gMTg6MzAgc2NocmllYiBNYXJjdXMgRC4gTGVlY2ggdmlhIFVT
UlAtdXNlcnM6Cj4+IE9uIDA0LzI2LzIwMTkgMTI6MDcgUE0sIEZhYmlhbiBTY2h3YXJ0YXUgdmlh
IFVTUlAtdXNlcnMgd3JvdGU6Cj4+PiBPaGguLiB5b3UgYXJlIHJpZ2h0LCBJIGRpZCBub3QgZG8g
dGhhdCBpbiB0aGUgZXhhbXBsZSBjb2RlLiBCdXQgdGhlIAo+Pj4gcHJvYmxlbSBpcyB0aGUgc2Ft
ZSBpbiBteSBtYWluIGFwcGxpY2F0aW9uLCB3aGVyZSBJIGRvLiBBcyBJIHNhaWQsIAo+Pj4gdGhl
IDE4MMKwIHBoYXNlIHNoaWZ0IGlzIHByb2JhYmx5IHNvbWVob3cgcmVsYXRlZCBhbmQgbm90IHRo
YXQgZWFzeSB0byAKPj4+IHJlcG9yZHVjZS4gU28gdGhlIHNwZWN0cnVtIG9yIEkvUSBzd2FwIHNo
b3VsZCBiZSB0aGUgbWFpbiBpc3N1ZSBoZXJlIAo+Pj4gYW5kIEkgaG9wZSB0aGF0IHRoaXMgd2ls
bCBhbHNvIHNvbHZlIHRoZSAxODDCsCBwaGFzZSBzd2FwLgo+Pj4gSW50ZXJlc3RpbmdseSB0aGUg
cGhhc2UgaXMgY29ycmVjdCwgaWYgSSBzZXQgdGhlIGZyZXF1ZW5jeSB0d2ljZSBmb3IgCj4+PiBl
YWNoIGNoYW5uZWwgd2l0aCBhIGxpdHRsZSBkZWxheSBpbiBiZXR3ZWVuLgo+PiBDb3VsZCB5b3Ug
dHJ5IHNvbWV0aGluZz/CoMKgIEluc2VydCBhIHNldF90aW1lX25leHRfcHBzKCkgaW50byB0aGUg
Y29kZSAKPj4gaW4gaW5pdGFsaXphdGlvbi0tdGhpcyBzaG91bGQgYWxpZ24gdGhlIFRPRCBjbG9j
a3MgaW4gYm90aCBpbnRlcm5hbCAKPj4gRFNQIHJhZGlvCj4+IMKgwqAgbW9kdWxlcy4KPj4KPj4K
Pj4+Cj4+PiBBbSAyNi4wNC4yMDE5IHVtIDE4OjAyIHNjaHJpZWIgTWFyY3VzIEQuIExlZWNoIHZp
YSBVU1JQLXVzZXJzOgo+Pj4+IE9uIDA0LzI2LzIwMTkgMTE6MzYgQU0sIEZhYmlhbiBTY2h3YXJ0
YXUgdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+Pj4+IEhpLAo+Pj4+Pgo+Pj4+PiBJIGFtIGFtIHVz
aW5nIExPIHNoYXJpbmcuIFNvIHRoZXJlIHNob3VsZCBub3QgYmUgYW55IHBoYXNlIG9mZnNldCAK
Pj4+Pj4gYW5kIG5vIG1pcnJvcmVkIHNwZWN0cnVtLCBubyBtYXR0ZXIgd2hlbiB0aGUgVVNSUCBj
b21lcyBhcm91bmQgdG8gCj4+Pj4+IGNoYW5nZSB0aGUgZnJlcXVlbmN5LiBFdmVuIG5vdCB1c2lu
ZyBMTy1zaGFyaW5nLCB0aGUgc3BlY3RydW0gCj4+Pj4+IHNob3VsZCBOT1QgYmUgbWlycm9yZWQu
Cj4+Pj4gVGhlIGFwcGFyZW50IEkvUSBzd2FwIGlzc3VlIEkgYWdyZWUgc2hvdWxkIG5vdCBoYXBw
ZW4sIGFuZCBJIGhhdmUgYSAKPj4+PiBxdWVyeSBpbiB0byBSJkQgYWJvdXQgaXQuCj4+Pj4KPj4+
Pgo+Pj4+Pgo+Pj4+PiBBbSAyNi4wNC4yMDE5IHVtIDE3OjEyIHNjaHJpZWIgTWFyY3VzIEQuIExl
ZWNoIHZpYSBVU1JQLXVzZXJzOgo+Pj4+Pj4gT24gMDQvMjYvMjAxOSAwNToxMyBBTSwgRmFiaWFu
IFNjaHdhcnRhdSB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4+Pj4+PiBIaSwKPj4+Pj4+Pgo+Pj4+
Pj4+IGEgY291cGxlIG9mIGRheXMgYWdvIEkgZmlsZWQgYSBidWcgcmVwb3J0IHdoaWNoIGNhdXNl
ZCB0aGUgVVNSUHMgCj4+Pj4+Pj4gdG8gc3dpdGNoIGJ1dCBub29uZSBoYXMgcmVzcG9uZGVkIHll
dC4gSSBkaWQgbm93IGVuY291bnRlcmVkIAo+Pj4+Pj4+IG90aGVyIHByb2JsZW1zIHdpY2ggbWln
aHQgYmUgcmVsYXRlZCB0byB0aGF0IGlzc3VlLiBDYW4gc29tb25lIAo+Pj4+Pj4+IGZyb20gRXR0
dXMgKG9yIHNvbWVvbmUgZWxzZSkgdGFrZSBhIGxvb2sgYXQgdGhhdD8KPj4+Pj4+PiBCdWcgcmVw
b3J0IGlzIGhlcmU6IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9pc3N1ZXMv
MjcxCj4+Pj4+Pj4KPj4+Pj4+PiBCZXN0IHJlZ2FyZHMsCj4+Pj4+Pj4KPj4+Pj4+PiBGYWJpYW4K
Pj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+PiBTbywgdGhlIG9yaWdpbmFsIGRlc2lnbiByZWFzb24gZm9y
IHRpbWVkLWNvbW1hbmRzIHdhcyB0byBzdXBwb3J0IAo+Pj4+Pj4gc2ltdWx0YW5lb3VzIHR1bmlu
ZyAoYW5kIGFzc2VydGlvbiBvZiBhIHJlc3luY2ggcHVsc2UpIGFjcm9zcyAKPj4+Pj4+ICptdWx0
aXBsZSBVU1JQcyosCj4+Pj4+PiDCoMKgIGluIHN1cHBvcnQgb2YgcmVkdWNpbmcvZWxpbWluYXRp
bmcgbXV0dWFsIHBoYXNlIG9mZnNldCBhbW9uZyAKPj4+Pj4+IGlkZW50aWNhbGx5LWhhcmR3YXJl
ZCBVU1JQcywgZm9yIGRhdWdodGVyY2FyZHMgdGhhdCBzdXBwb3J0ZWQgCj4+Pj4+PiBwaGFzZS1y
ZXN5bmNoLgo+Pj4+Pj4KPj4+Pj4+IFdoZW4geW91IHVzZSB0aW1lZCBjb21tYW5kcyB3aXRoaW4g
YSBzaW5nbGUgVVNSUCwgaG9waW5nIGZvciAKPj4+Pj4+IHNpbWlsYXIgZWZmZWN0cywgeW91IHdv
bid0IGdldCB0aGVtLCBiZWNhdXNlIHRoZSBjb21tYW5kcyBpbiB0aGUgCj4+Pj4+PiBxdWV1ZQo+
Pj4+Pj4gwqDCoCBhcmUgKm5lY2Vzc2FyaWx5KiBleGVjdXRlZCBzZXF1ZW50aWFsbHkuwqAgRXZl
biBpZiB0aGVyZSB3YXMgYSAKPj4+Pj4+ICJwYXJhbGxlbCBleGVjdXRpb24iIHN0cnVjdHVyZSB3
aXRoaW4gdGhlIEZQR0EgdG8gaGFuZGxlIHRoZSAKPj4+Pj4+IGNvbW1hbmRzLCBtb3N0IG9mCj4+
Pj4+PiDCoMKgIHRoZSBjb21tYW5kcyB5b3UgY2FyZSBhYm91dCB1bHRpbWF0ZWx5IGVuZCB1cCBv
biBhbiBTUEkgb3IgSTJDIAo+Pj4+Pj4gYnVzLCBhbmQgdGhvc2UgYXJlIGluaGVyZW50bHkgc2Vy
aWFsLCBhbmQgbXVsdGlwbGUgZGV2aWNlcyAKPj4+Pj4+IChzeW50aGVzaXplcnMsCj4+Pj4+PiDC
oMKgIHZhcmlhYmxlLWdhaW4gYW1wbGlmaWVycywgY2xvY2stcGxscykgdHlwaWNhbGx5IHNoYXJl
IGEgc2luZ2xlIAo+Pj4+Pj4gc3VjaCBidXMgb24gYSBwZXItc2xvdCBiYXNpcy7CoCBJbiBvcmRl
ciB0byBoYXZlICJ0cnVlIHBhcmFsbGVsaXNtIiAKPj4+Pj4+ICp3aXRoaW4qIGEgc2luZ2xlCj4+
Pj4+PiDCoMKgIFVTUlAsIHlvdSdkIG5lZWQgZGVkaWNhdGVkIGNvbnRyb2wgYnVzZXMgdG8gZWFj
aCBkZXZpY2UgdGhhdCBpcyAKPj4+Pj4+IGNvbnRyb2xsZWQgYnkgSTJDL1NQSS93aGF0ZXZlciwg
KmluIGFkZGl0aW9uKiB0byBwYXJhbGxlbCAKPj4+Pj4+IGV4ZWN1dGlvbiB3aXRoaW4gdGhlCj4+
Pj4+PiDCoMKgIEZQR0EuCj4+Pj4+Pgo+Pj4+Pj4gV2hlbiB5b3UncmUgc2V0dGluZyBhIGJ1bmNo
IG9mIFBMTCBzeW50aGVzaXplcnMgc2VxdWVudGlhbGx5LCB5b3UgCj4+Pj4+PiBjYW4gZXhwZWN0
IHRoYXQgdGhleSB3b24ndCBhZ3JlZSBvbiBwaGFzZSwgZXZlbiB3aGVuIGJlaW5nIGRyaXZlbgo+
Pj4+Pj4gwqDCoCBieSBhIGNvbW1vbiBjbG9jay7CoMKgIFRoZSBtZWNoYW5pc20gZm9yIGFjaGll
dmluZyBwaGFzZSAKPj4+Pj4+IGNvaGVyZW5jZSB3aXRoIFR3aW5SeCBpcyB0byB1c2UgTE8gc2hh
cmluZy4KPj4+Pj4+Cj4+Pj4+PiBodHRwczovL2tiLmV0dHVzLmNvbS9Ud2luUlgKPj4+Pj4+Cj4+
Pj4+PiBUaGlzIGFwcC1ub3RlIHRhbGtzIGFib3V0IExPIHNoYXJpbmcgd2l0aCBUd2luUlgKPj4+
Pj4+Cj4+Pj4+PiBodHRwczovL2tiLmV0dHVzLmNvbS9EaXJlY3Rpb25fRmluZGluZ193aXRoX3Ro
ZV9VU1JQJUUyJTg0JUEyX1gtU2VyaWVzX2FuZF9Ud2luUlglRTIlODQlQTIgCj4+Pj4+Pgo+Pj4+
Pj4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+Pj4+
Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pj4+Pgo+Pj4+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBV
U1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+Pj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+
Pj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb20KPj4+Pgo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+Pj4+IFVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+Pj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWls
bWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+Pgo+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0Cj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4gaHR0cDovL2xpc3Rz
LmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+
Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+
IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3Rz
LmV0dHVzLmNvbQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJz
X2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlz
dHMuZXR0dXMuY29tCg==
