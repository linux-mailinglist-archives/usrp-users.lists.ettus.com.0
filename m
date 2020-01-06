Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DED16130EB7
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2020 09:36:43 +0100 (CET)
Received: from [::1] (port=52190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ioNsL-0000Ul-I6; Mon, 06 Jan 2020 03:36:37 -0500
Received: from sidious.ihf.ing.tu-bs.de ([134.169.78.12]:43876)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fabian.schwartau@ihf.tu-bs.de>)
 id 1ioNsH-0000RB-2W
 for usrp-users@lists.ettus.com; Mon, 06 Jan 2020 03:36:33 -0500
Received: from localhost (localhost [127.0.0.1])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTP id 4000083D3181;
 Mon,  6 Jan 2020 09:35:51 +0100 (CET)
X-Virus-Scanned: by amavisd-new-2.10.1 (20141025) (Debian) at ihf.ing.tu-bs.de
Received: from sidious.ihf.ing.tu-bs.de ([127.0.0.1])
 by localhost (sidious.ihf.ing.tu-bs.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oE9v5s45lL6Z; Mon,  6 Jan 2020 09:35:50 +0100 (CET)
Received: from [134.169.78.184] (unknown [134.169.78.184])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTPSA id 0701283D3175;
 Mon,  6 Jan 2020 09:35:49 +0100 (CET)
To: Saeid Hashemi <saeidh@gmail.com>
References: <CANQ3h38Ld+PabG4QosHwhyhg4=BYWBC+uEyhZDrTUstaxNAT7g@mail.gmail.com>
 <2d9189fb-9713-f432-e827-c28336f68db4@ihf.tu-bs.de>
 <CANQ3h38SDVKKH0gSmtZ5k2KruMPT_xQvmzVs1Dywi2YcDx0n=Q@mail.gmail.com>
Message-ID: <0fc12ff1-5b19-e56b-d388-78137e0e842a@ihf.tu-bs.de>
Date: Mon, 6 Jan 2020 09:35:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CANQ3h38SDVKKH0gSmtZ5k2KruMPT_xQvmzVs1Dywi2YcDx0n=Q@mail.gmail.com>
X-Antivirus: AVG (VPS 200105-0, 05.01.2020), Outbound message
X-Antivirus-Status: Clean
Subject: Re: [USRP-users] Libuhd issues - "uhd_find_devices: error while
 loading shared libraries"
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
From: Fabian Schwartau via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Fabian Schwartau <fabian.schwartau@ihf.tu-bs.de>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

SGksCnNvcnJ5IGZvciB0aGUgZGVsYXkuClRoaXMgbWlnaHQgYmUgYSBwZXJtaXNzaW9uIGlzc3Vl
LiBJZiBpdCB3b3JrcyBhcyByb290LCBpdCBpcy4KWW91IGhhdmUgdG8gYWRkIHNvbWUgcnVsZXMg
dG8gdWRldiB0byBhbGxvdyBhY2Nlc3MgZm9yIGEgbm9ybWFsIHVzZXIuIEkgCmRvbid0IGtub3cg
dGhlIGV4YWN0IGNvbmZpZ3VyYXRpb24gcmVxdWlyZWQsIGp1c3Qgc2VhcmNoIGZvciB1ZGV2IGFu
ZCAKdWhkIGFuZCB5b3Ugd2lsbCBmaW5kIHdoYXQgeW91IG5lZWQuCgpCZXN0IHJlZ2FyZHMsCkZh
YmlhbgoKQW0gMTAuMTIuMjAxOSB1bSAwMDowNiBzY2hyaWViIFNhZWlkIEhhc2hlbWk6Cj4gVGhh
bmsgeW91IGZvciB5b3VyIGFkdmljZSBGYWJpYW4hCj4gCj4gSXQgc2VlbXMgdGhlcmUgaXMgbm8g
cGFja2FnZSBjYWxsZWQgbGlidWhkLCBqdXN0IHRoZSBmb2xsb3dpbmcgdmVyc2lvbnM6Cj4gbGli
dWhkMDAzIMKgIMKgIGxpYnVoZDMuMTQuMCDCoGxpYnVoZC1kZXYKPiAKPiBTbyBJIGRpZDoKPiAK
PiAkIHN1ZG8gZHBrZyAtUCBsaWJ1aGQzLjE0LjAKPiAoUmVhZGluZyBkYXRhYmFzZSAuLi4gMjkx
Mjk5IGZpbGVzIGFuZCBkaXJlY3RvcmllcyBjdXJyZW50bHkgaW5zdGFsbGVkLikKPiBSZW1vdmlu
ZyBsaWJ1aGQzLjE0LjA6YW1kNjQgKDMuMTQuMC4wLTB1YnVudHUxfnRydXN0eTEpIC4uLgo+IFB1
cmdpbmcgY29uZmlndXJhdGlvbiBmaWxlcyBmb3IgbGlidWhkMy4xNC4wOmFtZDY0IAo+ICgzLjE0
LjAuMC0wdWJ1bnR1MX50cnVzdHkxKSAuLi4KPiBQcm9jZXNzaW5nIHRyaWdnZXJzIGZvciBsaWJj
LWJpbiAoMi4xOS0wdWJ1bnR1Ni4xNSkgLi4uCj4gJCBzdWRvIGFwdC1nZXQgaW5zdGFsbCBsaWJ1
aGQzLjE0LjEKPiAKPiBBbmQgbm93IFVIRCB0b29scyB3b3JrLCBhbHNvIHdpdGhpbiB0aGUgTFRF
IHNvZnR3YXJlLCBidXQgdGhleSB3b24ndCAKPiBmaW5kIG15IEIyMTAgc2F5aW5nOgo+IAo+IFtJ
TkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9uIDQuOC40OyBCb29zdF8xMDU0MDA7IAo+
IFVIRF8zLjE0LjEuMS1yZWxlYXNlCj4gRXJyb3I6IExvb2t1cEVycm9yOiBLZXlFcnJvcjogTm8g
ZGV2aWNlcyBmb3VuZCBmb3IgLS0tLS0+Cj4gRW1wdHkgRGV2aWNlIEFkZHJlc3MKPiAKPiBSZWdh
cmRzLAo+IFNhZWlkCj4gCj4gCj4gCj4gCj4gT24gRnJpLCBEZWMgNiwgMjAxOSBhdCAyOjU4IEFN
IEZhYmlhbiBTY2h3YXJ0YXUgdmlhIFVTUlAtdXNlcnMgCj4gPHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tIDxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+PiB3cm90ZToKPiAKPiAg
ICAgWW91IGhhdmUgYW4gb2xkIHZlcnNpb24gb2YgbGlidWhkIGFscmVhZHkgaW5zdGFsbGVkLiBV
bmluc3RhbGwgaXQgdXNpbmc6Cj4gICAgICQgc3VkbyBkcGtnIC1QIGxpYnVoZAo+ICAgICBUaGVu
IHJldHJ5IGluc3RhbGxpbmcgaXQuIFNvbWV0aW1lcyBsaWJyYXJpZXMgYXJlIG5vdCBmb3VuZCBh
bmQgeW91Cj4gICAgIGhhdmUKPiAgICAgdG8gcnVuCj4gICAgICQgc3VkbyBsZGNvbmZpZwo+ICAg
ICBidXQgdGhhdCBpcyB1c3VhbGx5IGRvbmUgYnkgZHBrZy4KPiAKPiAgICAgQW0gMDYuMTIuMjAx
OSB1bSAwMDozMSBzY2hyaWViIFNhZWlkIEhhc2hlbWkgdmlhIFVTUlAtdXNlcnM6Cj4gICAgICA+
IEhlbGxvIGV2ZXJ5b25lLAo+ICAgICAgPgo+ICAgICAgPiBJIGhhdmUgYW4gSW50ZWwgTlVDIHJ1
bm5pbmcgVWJ1bnR1IDE2LjA0IGFuZCBhIGxvdyBsYXRlbmN5IGtlcm5lbAo+ICAgICB3aGljaAo+
ICAgICAgPiBJIHVzZSBmb3IgT0FJIExURSBzb2Z0d2FyZSBvbiB0b3Agb2YgVUhELgo+ICAgICAg
Pgo+ICAgICAgPiBBZnRlciB1cGRhdGluZyBteSBzeXN0ZW0gcmVwb3NpdG9yaWVzLCBVSEQgYnJv
a2Ugc29tZWhvdyB3aXRoIHRoZQo+ICAgICAgPiBmb2xsb3dpbmcgcmVzdWx0Ogo+ICAgICAgPgo+
ICAgICAgPiBudWM4LTNAbnVjODMtTlVDOGk3QkVIOn4kIHVoZF9maW5kX2RldmljZXMKPiAgICAg
ID4gdWhkX2ZpbmRfZGV2aWNlczogZXJyb3Igd2hpbGUgbG9hZGluZyBzaGFyZWQgbGlicmFyaWVz
Ogo+ICAgICAgPiBsaWJ1aGQuc28uMy4xNC4xOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZp
bGU6IE5vIHN1Y2ggZmlsZSBvcgo+ICAgICBkaXJlY3RvcnkKPiAgICAgID4KPiAgICAgID4gQXR0
ZW1wdGluZyB0byBtYW51YWxseSBpbnN0YWxsIHRoZSB2ZXJzaW9uIGNpdGVkIGluIHRoZSBlcnJv
cgo+ICAgICBnaXZlcyBtZSB0aGlzOgo+ICAgICAgPgo+ICAgICAgPiBVbnBhY2tpbmcgbGlidWhk
My4xNC4xOmFtZDY0ICgzLjE0LjEuMS0wdWJ1bnR1MX50cnVzdHkxKSAuLi4KPiAgICAgID4gZHBr
ZzogZXJyb3IgcHJvY2Vzc2luZyBhcmNoaXZlCj4gICAgICA+Cj4gICAgIC92YXIvY2FjaGUvYXB0
L2FyY2hpdmVzL2xpYnVoZDMuMTQuMV8zLjE0LjEuMS0wdWJ1bnR1MX50cnVzdHkxX2FtZDY0LmRl
Ygo+IAo+ICAgICAgPiAoLS11bnBhY2spOgo+ICAgICAgPsKgIMKgdHJ5aW5nIHRvIG92ZXJ3cml0
ZQo+ICAgICAnL3Vzci9zaGFyZS91aGQvcmZub2MvYmxvY2tzL2tlZXBfb25lX2luX24ueG1sJywK
PiAgICAgID4gd2hpY2ggaXMgYWxzbyBpbiBwYWNrYWdlIGxpYnVoZDMuMTQuMDphbWQ2NCAzLjE0
LjAuMC0wdWJ1bnR1MX50cnVzdHkxCj4gICAgICA+IGRwa2ctZGViOiBlcnJvcjogc3VicHJvY2Vz
cyBwYXN0ZSB3YXMga2lsbGVkIGJ5IHNpZ25hbCAoQnJva2VuIHBpcGUpCj4gICAgICA+IEVycm9y
cyB3ZXJlIGVuY291bnRlcmVkIHdoaWxlIHByb2Nlc3Npbmc6Cj4gICAgICA+IAo+ICAgICAgwqAv
dmFyL2NhY2hlL2FwdC9hcmNoaXZlcy9saWJ1aGQzLjE0LjFfMy4xNC4xLjEtMHVidW50dTF+dHJ1
c3R5MV9hbWQ2NC5kZWIKPiAgICAgID4gRTogU3ViLXByb2Nlc3MgL3Vzci9iaW4vZHBrZyByZXR1
cm5lZCBhbiBlcnJvciBjb2RlICgxKQo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAgPiBXb3VsZCBh
bnlvbmUgaGF2ZSBhbnkgcmVjb21tZW5kYXRpb25zIG9uIHdoYXQgdG8gZG8gdG8gbWFrZSBzdXJl
Cj4gICAgIEkgaGF2ZQo+ICAgICAgPiB0aGUgcmlnaHQgdmVyc2lvbiBvZiBldmVyeXRoaW5nIHBy
ZXNlbnQ/Cj4gICAgICA+Cj4gICAgICA+Cj4gICAgICA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gICAgICA+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
Cj4gICAgICA+IFVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDxtYWlsdG86VVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20+Cj4gICAgICA+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9s
aXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo+ICAgICAgPgo+IAo+ICAgICAtLSAK
PiAgICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiAgICAgTS4tU2MuIEZhYmlhbiBTY2h3YXJ0YXUKPiAgICAgVGVjaG5pc2NoZSBVbml2ZXJzaXTD
pHQgQnJhdW5zY2h3ZWlnCj4gICAgIEluc3RpdHV0IGbDvHIgSG9jaGZyZXF1ZW56dGVjaG5pawo+
ICAgICBTY2hsZWluaXR6c3RyLiAyMgo+ICAgICAzODEwNiBCcmF1bnNjaHdlaWcKPiAgICAgR2Vy
bWFueQo+IAo+ICAgICBUZWwuOsKgIMKgKzQ5LSgwKTUzMS0zOTEtMjAxNwo+ICAgICBGYXg6wqAg
wqAgKzQ5LSgwKTUzMS0zOTEtMjA0NQo+ICAgICBFbWFpbDogZmFiaWFuLnNjaHdhcnRhdUBpaGYu
dHUtYnMuZGUKPiAgICAgPG1haWx0bzpmYWJpYW4uc2Nod2FydGF1QGloZi50dS1icy5kZT4KPiAg
ICAgV1dXOiBodHRwOi8vd3d3LnR1LWJyYXVuc2Nod2VpZy5kZS9paGYKPiAgICAgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAKPiAgICAgX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiAgICAgVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QKPiAgICAgVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPG1haWx0bzpV
U1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiAgICAgaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCj4gCgotLSAKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KTS4tU2MuIEZhYmlh
biBTY2h3YXJ0YXUKVGVjaG5pc2NoZSBVbml2ZXJzaXTDpHQgQnJhdW5zY2h3ZWlnCkluc3RpdHV0
IGbDvHIgSG9jaGZyZXF1ZW56dGVjaG5pawpTY2hsZWluaXR6c3RyLiAyMgozODEwNiBCcmF1bnNj
aHdlaWcKR2VybWFueQoKVGVsLjogICArNDktKDApNTMxLTM5MS0yMDE3CkZheDogICAgKzQ5LSgw
KTUzMS0zOTEtMjA0NQpFbWFpbDogIGZhYmlhbi5zY2h3YXJ0YXVAaWhmLnR1LWJzLmRlCldXVzog
ICAgaHR0cDovL3d3dy50dS1icmF1bnNjaHdlaWcuZGUvaWhmCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8v
dXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
