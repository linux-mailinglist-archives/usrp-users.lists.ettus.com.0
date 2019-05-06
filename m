Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C42F1467E
	for <lists+usrp-users@lfdr.de>; Mon,  6 May 2019 10:38:14 +0200 (CEST)
Received: from [::1] (port=38480 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNZ8S-0005LV-99; Mon, 06 May 2019 04:38:08 -0400
Received: from mail-relay.contabo.net ([213.136.95.143]:33242)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <fabian@opencode.eu>) id 1hNZ7t-0005EI-Ni
 for usrp-users@lists.ettus.com; Mon, 06 May 2019 04:38:03 -0400
Received: by mail-relay.contabo.net (Postfix, from userid 103)
 id 6B9552048B; Mon,  6 May 2019 10:36:52 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vmd4985.contabo.net
X-Spam-Level: 
Received: from m1331.contabo.net (m1331.contabo.net [91.194.91.204])
 by mail-relay.contabo.net (Postfix) with ESMTPS id 6A3962032B
 for <usrp-users@lists.ettus.com>; Mon,  6 May 2019 10:36:51 +0200 (CEST)
Received: from [134.169.78.184] (port=58188)
 by m1331.contabo.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <fabian@opencode.eu>) id 1hNZ7D-00BrlX-5M
 for usrp-users@lists.ettus.com; Mon, 06 May 2019 10:36:53 +0200
To: usrp-users@lists.ettus.com
References: <2c7da2ef-26f6-84e4-a012-fc6ad4690e2e@opencode.eu>
 <5CC31FEC.5030409@gmail.com>
 <029a5484-a76e-c1b4-2e34-b43573b1e2a8@opencode.eu>
 <5CC32BA0.6090600@gmail.com>
 <f393a357-1b36-19a6-a7b1-4af0fa08b412@opencode.eu>
 <5CC33227.2050308@gmail.com>
Message-ID: <00aada01-a9e2-e85c-25d7-c5d4a1d8c8f2@opencode.eu>
Date: Mon, 6 May 2019 10:36:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5CC33227.2050308@gmail.com>
X-Antivirus: AVG (VPS 190505-8, 05.05.2019), Outbound message
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

U29ycnkgZm9yIHRoZSBsYXRlIGFuc3dlciwgSSB3YXMgYnVzeS4KSSB0cmllZCB0aGF0IGluY2x1
ZGluZyBhIG9uZSBzZWNvbmQgc2xlZXAgYWZ0ZXIgaXQgYnV0IGl0IGRvZXMgbm90IGhlbHAuCgpB
bSAyNi4wNC4yMDE5IHVtIDE4OjMwIHNjaHJpZWIgTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVz
ZXJzOgo+IE9uIDA0LzI2LzIwMTkgMTI6MDcgUE0sIEZhYmlhbiBTY2h3YXJ0YXUgdmlhIFVTUlAt
dXNlcnMgd3JvdGU6Cj4+IE9oaC4uIHlvdSBhcmUgcmlnaHQsIEkgZGlkIG5vdCBkbyB0aGF0IGlu
IHRoZSBleGFtcGxlIGNvZGUuIEJ1dCB0aGUgCj4+IHByb2JsZW0gaXMgdGhlIHNhbWUgaW4gbXkg
bWFpbiBhcHBsaWNhdGlvbiwgd2hlcmUgSSBkby4gQXMgSSBzYWlkLCB0aGUgCj4+IDE4MMKwIHBo
YXNlIHNoaWZ0IGlzIHByb2JhYmx5IHNvbWVob3cgcmVsYXRlZCBhbmQgbm90IHRoYXQgZWFzeSB0
byAKPj4gcmVwb3JkdWNlLiBTbyB0aGUgc3BlY3RydW0gb3IgSS9RIHN3YXAgc2hvdWxkIGJlIHRo
ZSBtYWluIGlzc3VlIGhlcmUgCj4+IGFuZCBJIGhvcGUgdGhhdCB0aGlzIHdpbGwgYWxzbyBzb2x2
ZSB0aGUgMTgwwrAgcGhhc2Ugc3dhcC4KPj4gSW50ZXJlc3RpbmdseSB0aGUgcGhhc2UgaXMgY29y
cmVjdCwgaWYgSSBzZXQgdGhlIGZyZXF1ZW5jeSB0d2ljZSBmb3IgCj4+IGVhY2ggY2hhbm5lbCB3
aXRoIGEgbGl0dGxlIGRlbGF5IGluIGJldHdlZW4uCj4gQ291bGQgeW91IHRyeSBzb21ldGhpbmc/
wqDCoCBJbnNlcnQgYSBzZXRfdGltZV9uZXh0X3BwcygpIGludG8gdGhlIGNvZGUgaW4gCj4gaW5p
dGFsaXphdGlvbi0tdGhpcyBzaG91bGQgYWxpZ24gdGhlIFRPRCBjbG9ja3MgaW4gYm90aCBpbnRl
cm5hbCBEU1AgcmFkaW8KPiAgwqAgbW9kdWxlcy4KPiAKPiAKPj4KPj4gQW0gMjYuMDQuMjAxOSB1
bSAxODowMiBzY2hyaWViIE1hcmN1cyBELiBMZWVjaCB2aWEgVVNSUC11c2VyczoKPj4+IE9uIDA0
LzI2LzIwMTkgMTE6MzYgQU0sIEZhYmlhbiBTY2h3YXJ0YXUgdmlhIFVTUlAtdXNlcnMgd3JvdGU6
Cj4+Pj4gSGksCj4+Pj4KPj4+PiBJIGFtIGFtIHVzaW5nIExPIHNoYXJpbmcuIFNvIHRoZXJlIHNo
b3VsZCBub3QgYmUgYW55IHBoYXNlIG9mZnNldCAKPj4+PiBhbmQgbm8gbWlycm9yZWQgc3BlY3Ry
dW0sIG5vIG1hdHRlciB3aGVuIHRoZSBVU1JQIGNvbWVzIGFyb3VuZCB0byAKPj4+PiBjaGFuZ2Ug
dGhlIGZyZXF1ZW5jeS4gRXZlbiBub3QgdXNpbmcgTE8tc2hhcmluZywgdGhlIHNwZWN0cnVtIHNo
b3VsZCAKPj4+PiBOT1QgYmUgbWlycm9yZWQuCj4+PiBUaGUgYXBwYXJlbnQgSS9RIHN3YXAgaXNz
dWUgSSBhZ3JlZSBzaG91bGQgbm90IGhhcHBlbiwgYW5kIEkgaGF2ZSBhIAo+Pj4gcXVlcnkgaW4g
dG8gUiZEIGFib3V0IGl0Lgo+Pj4KPj4+Cj4+Pj4KPj4+PiBBbSAyNi4wNC4yMDE5IHVtIDE3OjEy
IHNjaHJpZWIgTWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzOgo+Pj4+PiBPbiAwNC8yNi8y
MDE5IDA1OjEzIEFNLCBGYWJpYW4gU2Nod2FydGF1IHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+Pj4+
Pj4gSGksCj4+Pj4+Pgo+Pj4+Pj4gYSBjb3VwbGUgb2YgZGF5cyBhZ28gSSBmaWxlZCBhIGJ1ZyBy
ZXBvcnQgd2hpY2ggY2F1c2VkIHRoZSBVU1JQcyAKPj4+Pj4+IHRvIHN3aXRjaCBidXQgbm9vbmUg
aGFzIHJlc3BvbmRlZCB5ZXQuIEkgZGlkIG5vdyBlbmNvdW50ZXJlZCBvdGhlciAKPj4+Pj4+IHBy
b2JsZW1zIHdpY2ggbWlnaHQgYmUgcmVsYXRlZCB0byB0aGF0IGlzc3VlLiBDYW4gc29tb25lIGZy
b20gCj4+Pj4+PiBFdHR1cyAob3Igc29tZW9uZSBlbHNlKSB0YWtlIGEgbG9vayBhdCB0aGF0Pwo+
Pj4+Pj4gQnVnIHJlcG9ydCBpcyBoZXJlOiBodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJj
aC91aGQvaXNzdWVzLzI3MQo+Pj4+Pj4KPj4+Pj4+IEJlc3QgcmVnYXJkcywKPj4+Pj4+Cj4+Pj4+
PiBGYWJpYW4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+PiBTbywgdGhlIG9yaWdpbmFsIGRlc2lnbiByZWFz
b24gZm9yIHRpbWVkLWNvbW1hbmRzIHdhcyB0byBzdXBwb3J0IAo+Pj4+PiBzaW11bHRhbmVvdXMg
dHVuaW5nIChhbmQgYXNzZXJ0aW9uIG9mIGEgcmVzeW5jaCBwdWxzZSkgYWNyb3NzIAo+Pj4+PiAq
bXVsdGlwbGUgVVNSUHMqLAo+Pj4+PiDCoMKgIGluIHN1cHBvcnQgb2YgcmVkdWNpbmcvZWxpbWlu
YXRpbmcgbXV0dWFsIHBoYXNlIG9mZnNldCBhbW9uZyAKPj4+Pj4gaWRlbnRpY2FsbHktaGFyZHdh
cmVkIFVTUlBzLCBmb3IgZGF1Z2h0ZXJjYXJkcyB0aGF0IHN1cHBvcnRlZCAKPj4+Pj4gcGhhc2Ut
cmVzeW5jaC4KPj4+Pj4KPj4+Pj4gV2hlbiB5b3UgdXNlIHRpbWVkIGNvbW1hbmRzIHdpdGhpbiBh
IHNpbmdsZSBVU1JQLCBob3BpbmcgZm9yIAo+Pj4+PiBzaW1pbGFyIGVmZmVjdHMsIHlvdSB3b24n
dCBnZXQgdGhlbSwgYmVjYXVzZSB0aGUgY29tbWFuZHMgaW4gdGhlIHF1ZXVlCj4+Pj4+IMKgwqAg
YXJlICpuZWNlc3NhcmlseSogZXhlY3V0ZWQgc2VxdWVudGlhbGx5LsKgIEV2ZW4gaWYgdGhlcmUg
d2FzIGEgCj4+Pj4+ICJwYXJhbGxlbCBleGVjdXRpb24iIHN0cnVjdHVyZSB3aXRoaW4gdGhlIEZQ
R0EgdG8gaGFuZGxlIHRoZSAKPj4+Pj4gY29tbWFuZHMsIG1vc3Qgb2YKPj4+Pj4gwqDCoCB0aGUg
Y29tbWFuZHMgeW91IGNhcmUgYWJvdXQgdWx0aW1hdGVseSBlbmQgdXAgb24gYW4gU1BJIG9yIEky
QyAKPj4+Pj4gYnVzLCBhbmQgdGhvc2UgYXJlIGluaGVyZW50bHkgc2VyaWFsLCBhbmQgbXVsdGlw
bGUgZGV2aWNlcyAKPj4+Pj4gKHN5bnRoZXNpemVycywKPj4+Pj4gwqDCoCB2YXJpYWJsZS1nYWlu
IGFtcGxpZmllcnMsIGNsb2NrLXBsbHMpIHR5cGljYWxseSBzaGFyZSBhIHNpbmdsZSAKPj4+Pj4g
c3VjaCBidXMgb24gYSBwZXItc2xvdCBiYXNpcy7CoCBJbiBvcmRlciB0byBoYXZlICJ0cnVlIHBh
cmFsbGVsaXNtIiAKPj4+Pj4gKndpdGhpbiogYSBzaW5nbGUKPj4+Pj4gwqDCoCBVU1JQLCB5b3Un
ZCBuZWVkIGRlZGljYXRlZCBjb250cm9sIGJ1c2VzIHRvIGVhY2ggZGV2aWNlIHRoYXQgaXMgCj4+
Pj4+IGNvbnRyb2xsZWQgYnkgSTJDL1NQSS93aGF0ZXZlciwgKmluIGFkZGl0aW9uKiB0byBwYXJh
bGxlbCBleGVjdXRpb24gCj4+Pj4+IHdpdGhpbiB0aGUKPj4+Pj4gwqDCoCBGUEdBLgo+Pj4+Pgo+
Pj4+PiBXaGVuIHlvdSdyZSBzZXR0aW5nIGEgYnVuY2ggb2YgUExMIHN5bnRoZXNpemVycyBzZXF1
ZW50aWFsbHksIHlvdSAKPj4+Pj4gY2FuIGV4cGVjdCB0aGF0IHRoZXkgd29uJ3QgYWdyZWUgb24g
cGhhc2UsIGV2ZW4gd2hlbiBiZWluZyBkcml2ZW4KPj4+Pj4gwqDCoCBieSBhIGNvbW1vbiBjbG9j
ay7CoMKgIFRoZSBtZWNoYW5pc20gZm9yIGFjaGlldmluZyBwaGFzZSBjb2hlcmVuY2UgCj4+Pj4+
IHdpdGggVHdpblJ4IGlzIHRvIHVzZSBMTyBzaGFyaW5nLgo+Pj4+Pgo+Pj4+PiBodHRwczovL2ti
LmV0dHVzLmNvbS9Ud2luUlgKPj4+Pj4KPj4+Pj4gVGhpcyBhcHAtbm90ZSB0YWxrcyBhYm91dCBM
TyBzaGFyaW5nIHdpdGggVHdpblJYCj4+Pj4+Cj4+Pj4+IGh0dHBzOi8va2IuZXR0dXMuY29tL0Rp
cmVjdGlvbl9GaW5kaW5nX3dpdGhfdGhlX1VTUlAlRTIlODQlQTJfWC1TZXJpZXNfYW5kX1R3aW5S
WCVFMiU4NCVBMiAKPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QKPj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+Pj4gaHR0cDov
L2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMu
Y29tCj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KPj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNy
cC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4+
PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4gaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+Cj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0Cj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCj4+IGh0dHA6Ly9saXN0cy5l
dHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+IAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+IGh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xp
c3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29t
Cg==
