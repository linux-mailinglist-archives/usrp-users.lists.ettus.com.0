Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4FA340BA
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jun 2019 09:53:01 +0200 (CEST)
Received: from [::1] (port=38304 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hY4FZ-0001Dd-9H; Tue, 04 Jun 2019 03:52:53 -0400
Received: from mail-relay.contabo.net ([213.136.95.143]:43054)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <fabian@opencode.eu>) id 1hY4FV-00018F-Qx
 for usrp-users@lists.ettus.com; Tue, 04 Jun 2019 03:52:50 -0400
Received: by mail-relay.contabo.net (Postfix, from userid 103)
 id 495ED20C93; Tue,  4 Jun 2019 09:52:08 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vmd4985.contabo.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=4.0 tests=BAYES_00 autolearn=ham
 autolearn_force=no version=3.4.2
Received: from m12305.contabo.net (m12305.contabo.net [213.136.93.162])
 by mail-relay.contabo.net (Postfix) with ESMTPS id 5E10720C85
 for <usrp-users@lists.ettus.com>; Tue,  4 Jun 2019 09:52:07 +0200 (CEST)
Received: from [134.169.78.184] (port=57904)
 by m12305.contabo.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <fabian@opencode.eu>) id 1hY4Eo-0000j3-Gs
 for usrp-users@lists.ettus.com; Tue, 04 Jun 2019 09:52:07 +0200
To: usrp-users@lists.ettus.com
References: <2c7da2ef-26f6-84e4-a012-fc6ad4690e2e@opencode.eu>
 <5CC31FEC.5030409@gmail.com>
 <029a5484-a76e-c1b4-2e34-b43573b1e2a8@opencode.eu>
 <5CC32BA0.6090600@gmail.com>
 <f393a357-1b36-19a6-a7b1-4af0fa08b412@opencode.eu>
 <5CC33227.2050308@gmail.com>
 <00aada01-a9e2-e85c-25d7-c5d4a1d8c8f2@opencode.eu>
 <519a5d62-fa06-060b-c5be-56f429b0f04f@opencode.eu>
 <5CD46B03.6080006@gmail.com>
Message-ID: <2f8a8147-fa4d-7f3e-774a-3e004e8ef23d@opencode.eu>
Date: Tue, 4 Jun 2019 09:52:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5CD46B03.6080006@gmail.com>
X-Antivirus: AVG (VPS 190603-6, 03.06.2019), Outbound message
X-Antivirus-Status: Clean
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - m12305.contabo.net
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - opencode.eu
X-Get-Message-Sender-Via: m12305.contabo.net: authenticated_id:
 fabian@opencode.eu
X-Authenticated-Sender: m12305.contabo.net: fabian@opencode.eu
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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

SXMgdGhlcmUgYW55IHVwZGF0ZSBmcm9tIEV0dHVzIG9uIHRoaXMgaXNzdWU/IEl0IGlzIGJvdGhl
cmluZyBtZSBxdWl0ZSBhIApsb3QuLi4KCkFtIDA5LjA1LjIwMTkgdW0gMjA6MDEgc2NocmllYiBN
YXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtdXNlcnM6Cj4gT24gMDUvMDkvMjAxOSAwOTowNSBBTSwg
RmFiaWFuIFNjaHdhcnRhdSB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4gSGksCj4+IGlzIHRoZXJl
IGFueSB1cGRhdGUgcmVnYXJkaW5nIHRoaXMgaXNzdWU/Cj4gRXR0dXMgUiZEIGlzIGF3YXJlLCBh
bmQgdGhleSdyZSBiZWluZyBsb29rZWQgYXQuCj4gCj4gCj4+Cj4+IEFtIDA2LjA1LjIwMTkgdW0g
MTA6MzYgc2NocmllYiBGYWJpYW4gU2Nod2FydGF1IHZpYSBVU1JQLXVzZXJzOgo+Pj4gU29ycnkg
Zm9yIHRoZSBsYXRlIGFuc3dlciwgSSB3YXMgYnVzeS4KPj4+IEkgdHJpZWQgdGhhdCBpbmNsdWRp
bmcgYSBvbmUgc2Vjb25kIHNsZWVwIGFmdGVyIGl0IGJ1dCBpdCBkb2VzIG5vdCBoZWxwLgo+Pj4K
Pj4+IEFtIDI2LjA0LjIwMTkgdW0gMTg6MzAgc2NocmllYiBNYXJjdXMgRC4gTGVlY2ggdmlhIFVT
UlAtdXNlcnM6Cj4+Pj4gT24gMDQvMjYvMjAxOSAxMjowNyBQTSwgRmFiaWFuIFNjaHdhcnRhdSB2
aWEgVVNSUC11c2VycyB3cm90ZToKPj4+Pj4gT2hoLi4geW91IGFyZSByaWdodCwgSSBkaWQgbm90
IGRvIHRoYXQgaW4gdGhlIGV4YW1wbGUgY29kZS4gQnV0IHRoZSAKPj4+Pj4gcHJvYmxlbSBpcyB0
aGUgc2FtZSBpbiBteSBtYWluIGFwcGxpY2F0aW9uLCB3aGVyZSBJIGRvLiBBcyBJIHNhaWQsIAo+
Pj4+PiB0aGUgMTgwwrAgcGhhc2Ugc2hpZnQgaXMgcHJvYmFibHkgc29tZWhvdyByZWxhdGVkIGFu
ZCBub3QgdGhhdCBlYXN5IAo+Pj4+PiB0byByZXBvcmR1Y2UuIFNvIHRoZSBzcGVjdHJ1bSBvciBJ
L1Egc3dhcCBzaG91bGQgYmUgdGhlIG1haW4gaXNzdWUgCj4+Pj4+IGhlcmUgYW5kIEkgaG9wZSB0
aGF0IHRoaXMgd2lsbCBhbHNvIHNvbHZlIHRoZSAxODDCsCBwaGFzZSBzd2FwLgo+Pj4+PiBJbnRl
cmVzdGluZ2x5IHRoZSBwaGFzZSBpcyBjb3JyZWN0LCBpZiBJIHNldCB0aGUgZnJlcXVlbmN5IHR3
aWNlIAo+Pj4+PiBmb3IgZWFjaCBjaGFubmVsIHdpdGggYSBsaXR0bGUgZGVsYXkgaW4gYmV0d2Vl
bi4KPj4+PiBDb3VsZCB5b3UgdHJ5IHNvbWV0aGluZz/CoMKgIEluc2VydCBhIHNldF90aW1lX25l
eHRfcHBzKCkgaW50byB0aGUgCj4+Pj4gY29kZSBpbiBpbml0YWxpemF0aW9uLS10aGlzIHNob3Vs
ZCBhbGlnbiB0aGUgVE9EIGNsb2NrcyBpbiBib3RoIAo+Pj4+IGludGVybmFsIERTUCByYWRpbwo+
Pj4+IMKgwqAgbW9kdWxlcy4KPj4+Pgo+Pj4+Cj4+Pj4+Cj4+Pj4+IEFtIDI2LjA0LjIwMTkgdW0g
MTg6MDIgc2NocmllYiBNYXJjdXMgRC4gTGVlY2ggdmlhIFVTUlAtdXNlcnM6Cj4+Pj4+PiBPbiAw
NC8yNi8yMDE5IDExOjM2IEFNLCBGYWJpYW4gU2Nod2FydGF1IHZpYSBVU1JQLXVzZXJzIHdyb3Rl
Ogo+Pj4+Pj4+IEhpLAo+Pj4+Pj4+Cj4+Pj4+Pj4gSSBhbSBhbSB1c2luZyBMTyBzaGFyaW5nLiBT
byB0aGVyZSBzaG91bGQgbm90IGJlIGFueSBwaGFzZSBvZmZzZXQgCj4+Pj4+Pj4gYW5kIG5vIG1p
cnJvcmVkIHNwZWN0cnVtLCBubyBtYXR0ZXIgd2hlbiB0aGUgVVNSUCBjb21lcyBhcm91bmQgdG8g
Cj4+Pj4+Pj4gY2hhbmdlIHRoZSBmcmVxdWVuY3kuIEV2ZW4gbm90IHVzaW5nIExPLXNoYXJpbmcs
IHRoZSBzcGVjdHJ1bSAKPj4+Pj4+PiBzaG91bGQgTk9UIGJlIG1pcnJvcmVkLgo+Pj4+Pj4gVGhl
IGFwcGFyZW50IEkvUSBzd2FwIGlzc3VlIEkgYWdyZWUgc2hvdWxkIG5vdCBoYXBwZW4sIGFuZCBJ
IGhhdmUgCj4+Pj4+PiBhIHF1ZXJ5IGluIHRvIFImRCBhYm91dCBpdC4KPj4+Pj4+Cj4+Pj4+Pgo+
Pj4+Pj4+Cj4+Pj4+Pj4gQW0gMjYuMDQuMjAxOSB1bSAxNzoxMiBzY2hyaWViIE1hcmN1cyBELiBM
ZWVjaCB2aWEgVVNSUC11c2VyczoKPj4+Pj4+Pj4gT24gMDQvMjYvMjAxOSAwNToxMyBBTSwgRmFi
aWFuIFNjaHdhcnRhdSB2aWEgVVNSUC11c2VycyB3cm90ZToKPj4+Pj4+Pj4+IEhpLAo+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+IGEgY291cGxlIG9mIGRheXMgYWdvIEkgZmlsZWQgYSBidWcgcmVwb3J0IHdo
aWNoIGNhdXNlZCB0aGUgCj4+Pj4+Pj4+PiBVU1JQcyB0byBzd2l0Y2ggYnV0IG5vb25lIGhhcyBy
ZXNwb25kZWQgeWV0LiBJIGRpZCBub3cgCj4+Pj4+Pj4+PiBlbmNvdW50ZXJlZCBvdGhlciBwcm9i
bGVtcyB3aWNoIG1pZ2h0IGJlIHJlbGF0ZWQgdG8gdGhhdCBpc3N1ZS4gCj4+Pj4+Pj4+PiBDYW4g
c29tb25lIGZyb20gRXR0dXMgKG9yIHNvbWVvbmUgZWxzZSkgdGFrZSBhIGxvb2sgYXQgdGhhdD8K
Pj4+Pj4+Pj4+IEJ1ZyByZXBvcnQgaXMgaGVyZTogCj4+Pj4+Pj4+PiBodHRwczovL2dpdGh1Yi5j
b20vRXR0dXNSZXNlYXJjaC91aGQvaXNzdWVzLzI3MQo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEJlc3Qg
cmVnYXJkcywKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBGYWJpYW4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+
Pj4+Pj4+PiBTbywgdGhlIG9yaWdpbmFsIGRlc2lnbiByZWFzb24gZm9yIHRpbWVkLWNvbW1hbmRz
IHdhcyB0byBzdXBwb3J0IAo+Pj4+Pj4+PiBzaW11bHRhbmVvdXMgdHVuaW5nIChhbmQgYXNzZXJ0
aW9uIG9mIGEgcmVzeW5jaCBwdWxzZSkgYWNyb3NzIAo+Pj4+Pj4+PiAqbXVsdGlwbGUgVVNSUHMq
LAo+Pj4+Pj4+PiDCoMKgIGluIHN1cHBvcnQgb2YgcmVkdWNpbmcvZWxpbWluYXRpbmcgbXV0dWFs
IHBoYXNlIG9mZnNldCBhbW9uZyAKPj4+Pj4+Pj4gaWRlbnRpY2FsbHktaGFyZHdhcmVkIFVTUlBz
LCBmb3IgZGF1Z2h0ZXJjYXJkcyB0aGF0IHN1cHBvcnRlZCAKPj4+Pj4+Pj4gcGhhc2UtcmVzeW5j
aC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gV2hlbiB5b3UgdXNlIHRpbWVkIGNvbW1hbmRzIHdpdGhpbiBh
IHNpbmdsZSBVU1JQLCBob3BpbmcgZm9yIAo+Pj4+Pj4+PiBzaW1pbGFyIGVmZmVjdHMsIHlvdSB3
b24ndCBnZXQgdGhlbSwgYmVjYXVzZSB0aGUgY29tbWFuZHMgaW4gdGhlIAo+Pj4+Pj4+PiBxdWV1
ZQo+Pj4+Pj4+PiDCoMKgIGFyZSAqbmVjZXNzYXJpbHkqIGV4ZWN1dGVkIHNlcXVlbnRpYWxseS7C
oCBFdmVuIGlmIHRoZXJlIHdhcyBhIAo+Pj4+Pj4+PiAicGFyYWxsZWwgZXhlY3V0aW9uIiBzdHJ1
Y3R1cmUgd2l0aGluIHRoZSBGUEdBIHRvIGhhbmRsZSB0aGUgCj4+Pj4+Pj4+IGNvbW1hbmRzLCBt
b3N0IG9mCj4+Pj4+Pj4+IMKgwqAgdGhlIGNvbW1hbmRzIHlvdSBjYXJlIGFib3V0IHVsdGltYXRl
bHkgZW5kIHVwIG9uIGFuIFNQSSBvciAKPj4+Pj4+Pj4gSTJDIGJ1cywgYW5kIHRob3NlIGFyZSBp
bmhlcmVudGx5IHNlcmlhbCwgYW5kIG11bHRpcGxlIGRldmljZXMgCj4+Pj4+Pj4+IChzeW50aGVz
aXplcnMsCj4+Pj4+Pj4+IMKgwqAgdmFyaWFibGUtZ2FpbiBhbXBsaWZpZXJzLCBjbG9jay1wbGxz
KSB0eXBpY2FsbHkgc2hhcmUgYSAKPj4+Pj4+Pj4gc2luZ2xlIHN1Y2ggYnVzIG9uIGEgcGVyLXNs
b3QgYmFzaXMuwqAgSW4gb3JkZXIgdG8gaGF2ZSAidHJ1ZSAKPj4+Pj4+Pj4gcGFyYWxsZWxpc20i
ICp3aXRoaW4qIGEgc2luZ2xlCj4+Pj4+Pj4+IMKgwqAgVVNSUCwgeW91J2QgbmVlZCBkZWRpY2F0
ZWQgY29udHJvbCBidXNlcyB0byBlYWNoIGRldmljZSB0aGF0IAo+Pj4+Pj4+PiBpcyBjb250cm9s
bGVkIGJ5IEkyQy9TUEkvd2hhdGV2ZXIsICppbiBhZGRpdGlvbiogdG8gcGFyYWxsZWwgCj4+Pj4+
Pj4+IGV4ZWN1dGlvbiB3aXRoaW4gdGhlCj4+Pj4+Pj4+IMKgwqAgRlBHQS4KPj4+Pj4+Pj4KPj4+
Pj4+Pj4gV2hlbiB5b3UncmUgc2V0dGluZyBhIGJ1bmNoIG9mIFBMTCBzeW50aGVzaXplcnMgc2Vx
dWVudGlhbGx5LCAKPj4+Pj4+Pj4geW91IGNhbiBleHBlY3QgdGhhdCB0aGV5IHdvbid0IGFncmVl
IG9uIHBoYXNlLCBldmVuIHdoZW4gYmVpbmcgCj4+Pj4+Pj4+IGRyaXZlbgo+Pj4+Pj4+PiDCoMKg
IGJ5IGEgY29tbW9uIGNsb2NrLsKgwqAgVGhlIG1lY2hhbmlzbSBmb3IgYWNoaWV2aW5nIHBoYXNl
IAo+Pj4+Pj4+PiBjb2hlcmVuY2Ugd2l0aCBUd2luUnggaXMgdG8gdXNlIExPIHNoYXJpbmcuCj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IGh0dHBzOi8va2IuZXR0dXMuY29tL1R3aW5SWAo+Pj4+Pj4+Pgo+Pj4+
Pj4+PiBUaGlzIGFwcC1ub3RlIHRhbGtzIGFib3V0IExPIHNoYXJpbmcgd2l0aCBUd2luUlgKPj4+
Pj4+Pj4KPj4+Pj4+Pj4gaHR0cHM6Ly9rYi5ldHR1cy5jb20vRGlyZWN0aW9uX0ZpbmRpbmdfd2l0
aF90aGVfVVNSUCVFMiU4NCVBMl9YLVNlcmllc19hbmRfVHdpblJYJUUyJTg0JUEyIAo+Pj4+Pj4+
Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBVU1JQLXVzZXJz
IG1haWxpbmcgbGlzdAo+Pj4+Pj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4+Pj4+
PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20KPj4+Pj4+Pgo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+Pj4+
PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+Pj4+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pj4+Pj4KPj4+
Pj4+Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+Pj4+IFVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tCj4+Pj4+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxp
c3QKPj4+Pj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+Pj4gaHR0cDovL2xpc3RzLmV0
dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4+Pj4K
Pj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQo+Pj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVz
ZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+Pj4gVVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KPj4+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9s
aXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+Pgo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dAo+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQo+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29t
L21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KPiAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMg
bWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1
cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
