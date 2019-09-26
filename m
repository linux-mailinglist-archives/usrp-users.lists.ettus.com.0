Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3DBBF3ED
	for <lists+usrp-users@lfdr.de>; Thu, 26 Sep 2019 15:18:49 +0200 (CEST)
Received: from [::1] (port=39162 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iDTfS-0001RI-2N; Thu, 26 Sep 2019 09:18:46 -0400
Received: from sidious.ihf.ing.tu-bs.de ([134.169.78.12]:54462)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fabian.schwartau@ihf.tu-bs.de>)
 id 1iDTfM-0000qg-Lv
 for usrp-users@lists.ettus.com; Thu, 26 Sep 2019 09:18:40 -0400
Received: from localhost (localhost [127.0.0.1])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTP id 672E383D2BA8
 for <usrp-users@lists.ettus.com>; Thu, 26 Sep 2019 15:17:59 +0200 (CEST)
X-Virus-Scanned: by amavisd-new-2.10.1 (20141025) (Debian) at ihf.ing.tu-bs.de
Received: from sidious.ihf.ing.tu-bs.de ([127.0.0.1])
 by localhost (sidious.ihf.ing.tu-bs.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DsI_CDwc1jvV; Thu, 26 Sep 2019 15:17:58 +0200 (CEST)
Received: from [134.169.78.184] (unknown [134.169.78.184])
 by sidious.ihf.ing.tu-bs.de (Postfix) with ESMTPSA id B903583D2BA2
 for <usrp-users@lists.ettus.com>; Thu, 26 Sep 2019 15:17:58 +0200 (CEST)
To: usrp-users@lists.ettus.com
References: <4f9463d7bc9747498b2f2bda40f7b2ec@tudelft.nl>
 <512807eb-9b64-0580-3425-b6016754157a@ihf.tu-bs.de>
 <CA+Zwmn5tGM_i2Y-PtFAKiGtXY+9pMUMZ5LWV82bA8KnvpmHTTg@mail.gmail.com>
Message-ID: <077ec45a-e337-8116-c1b3-e98c25432a24@ihf.tu-bs.de>
Date: Thu, 26 Sep 2019 15:17:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+Zwmn5tGM_i2Y-PtFAKiGtXY+9pMUMZ5LWV82bA8KnvpmHTTg@mail.gmail.com>
X-Antivirus: AVG (VPS 190926-0, 26.09.2019), Outbound message
X-Antivirus-Status: Clean
Subject: Re: [USRP-users] One sample - 5 ns delay between the two RF
 signals/ X310
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
Reply-To: Fabian Schwartau <fabian.schwartau@ihf.tu-bs.de>
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

SXQgaXMgYSBzZWxmIGJ1aWxkIGRldmljZSB1c2luZyBhIDc0TFMxMjVEIGFzIGJ1ZmZlci4gVGhl
IGxldmVsIGlzIDMuM1YgCmRpZ2l0YWwuCkFzIHRoZXJlIHdlcmUgbm8gc3BlY2lmaWNhdGlvbnMg
YXJvdW5kIGZvciB0aGUgcmVxdWlyZWQgaW5wdXQgbGV2ZWxzIGF0IAp0aGUgdGltZSB3ZSBuZWVk
ZWQgdGhlIGRldmljZSwgd2UganVzdCBtZWFzdXJlZCB0aGUgbGV2ZWxzIGNvbWluZyBmcm9tIAp0
aGUgMVBQUyBvdXRwdXQgYW5kIHJlcGxpY2F0ZWQgdGhlbS4KCkFtIDI2LjA5LjIwMTkgdW0gMTM6
NTEgc2NocmllYiBEYW5pZWwgSmVwc29uIHZpYSBVU1JQLXVzZXJzOgo+IEhpIEZhYmlhbiwgQ2hl
cmlmLAo+IAo+IFdoYXQgaXMgdGhlIGV4dGVybmFsIFBQUyBkZXZpY2UgeW91IGFyZSB1c2luZz8K
PiAKPiAtRGFuaWVsCj4gCj4gT24gVGh1LCBTZXAgMjYsIDIwMTkgYXQgOToxOCBBTSBGYWJpYW4g
U2Nod2FydGF1IHZpYSBVU1JQLXVzZXJzIAo+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8
bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4gd3JvdGU6Cj4gCj4gICAgIEhpLAo+
ICAgICBJIGhhdmUgdmVyeSBzaW1pbGFyIHByb2JsZW0gd2l0aCBYMzEwLiBJIGFtIHJ1bm5pbmcg
YSBDKysgYXBwbGljYXRpb24sCj4gICAgIHNvIEkgaGF2ZSBhIGJpdCBtb3JlIGZsZXhpYmlsaXR5
IEkgZ3Vlc3MuIEFmdGVyIEkgZG8gdGhlCj4gICAgIHNldF90aW1lX3Vua25vd25fcHBzIHRvIHN5
bmMgdG8gdGhlIDFQUFMgc2lnbmFsLCBJIHJ1biB0aGUgZnVuY3Rpb24KPiAgICAgZ2V0X3RpbWVf
bGFzdF9wcHMgYW5kIGl0IHNvbWV0aW1lcyBoYXMgYW4gb2Zmc2V0IG9mIDEwbnMgKGl0IHdhcyA1
bnMKPiAgICAgZm9yCj4gICAgIGFuIG9sZCBmaXJtd2FyZSBkdWUgdG8gYSBidWcsIHdoaWNoIHdh
cyBmaXhlZCBhIGZldyB3ZWVrcyBhZ28pLiBJZiB0aGF0Cj4gICAgIGlzIHRoZSBjYXNlIEkganVz
dCBkbyB0aGUgc3luYyBhZ2FpbiB1bnRpbCB0aGUgb2Zmc2V0IGlzIHplcm8uCj4gICAgIEkgZG9u
J3Qga25vdyBpZiBpdCBpcyBhbiBmaXJtYXdyZSBwcm9ibGVtIG9yIGlmIGl0IGlzIGJlY2F1c2Ug
dGhlCj4gICAgIHNpZ25hbAo+ICAgICBpbnRlZ3JldHkgb2YgdGhlIDFQUFMgc2lnbmFsIGlzIG5v
dCBnb29kIGVub3VnaC4KPiAgICAgTWF5YmUgdGhhdCBpcyBhbHNvIGEgc29sdXRpb24gZm9yIHlv
dS4KPiAgICAgQmVzdCByZWdhcmRzLAo+ICAgICBGYWJpYW4KPiAKPiAgICAgQW0gMjUuMDkuMjAx
OSB1bSAxMToxNiBzY2hyaWViIENoZXJpZiBEaW91ZiB2aWEgVVNSUC11c2VyczoKPiAgICAgID4g
SGVsbG8sCj4gICAgICA+IEkgYW0gd29ya2luZyB3aXRoIHRoZSBYMzEwIFVTUlAuIEkgaGF2ZSB0
d28gaWRlbnRpY2FsIGN1c3RvbSBibG9ja3MKPiAgICAgID4gZmVlZGluZyB0aGUgUkYgZnJvbnRl
bmRzLgo+ICAgICAgPgo+ICAgICAgPiBmbG93Y2hhcnQKPiAgICAgID4gLS0tLS0tLS0tLS0tLS0t
LS0KPiAgICAgID4gSFcgQmxvY2sxIC0+IFJGMC1UWDEgfC0tLTwKPiAgICAgID4gSFcgQmxvY2sy
IC0+IFJGMS1UWDEgfC0tLTwKPiAgICAgID4KPiAgICAgID4gVGhlIHN5c3RlbSBpcyBzeW5jaHJv
bml6ZWQgdG8gYW4gZXh0ZXJuYWwgUFBTIHJlZmVyZW5jZS4gVGhlCj4gICAgIHNhbXBsaW5nCj4g
ICAgICA+IHJhdGUgaXMgMjAwIE1TcHMgYW5kIHRoZSBzaWduYWwgYmFuZHdpZHRoIGlzIDE2MCBN
SHogZm9yIGJvdGgKPiAgICAgY2hhbm5lbHMuCj4gICAgICA+IFRoZSB0d28gSFcgYmxvY2tzIHN0
YXJ0wqAgdHJhbnNtaXR0aW5nIGF0IHRoZSBleGFjdGx5IHNhbWUgdGltZS4gVGltZQo+ICAgICAg
PiByZXNvbHV0aW9uIGlzIDVucy4KPiAgICAgID4gSW4gbW9zdCBjYXNlcyB0aGUgdHdvIG91dGdv
aW5nIFJGIHNpZ25hbHMgcHJlc2VudCBhIDFucyB0aW1lIG9mZnNldC4KPiAgICAgID4gV2hpY2gg
Y2FuIGJlIHVuZGVyc3Rvb2QgYXMgYSBwaGFzZSBvZmZzZXQuCj4gICAgICA+Cj4gICAgICA+IEJ1
dCBGcm9tIHRpbWUgdG8gdGltZSB0aGVyZSBpcyBhIDZucyBkZWxheSBiZXR3ZWVuIHRoZSBjaGFu
bmVscy4gSQo+ICAgICAgPiBhc3N1bWUgdGhpcyA2bnMgY29tcHJpc2VzIHRoZSAxbnMgZGVsYXkg
ZHVlIHRvIHBoYXNlIG9mZnNldCArIDUKPiAgICAgbnMgZGVsYXkKPiAgICAgID4gZHVlIHRvIG1p
c2FsaWdubWVudCBvZiBvdXRnb2luZyBzYW1wbGVzLgo+ICAgICAgPgo+ICAgICAgPiBXaGF0IGNv
dWxkIGJlIHRoZSBvcmlnaW4gb2YgdGhpcyBvbmUgc2FtcGxlIG1pc2FsaWduZW1lbnQ/IElzIGl0
Cj4gICAgIGEgd2F5Cj4gICAgICA+IHRvIGZpeCBpdD8gT3Igd29ya2luZyBjbG9zZSB0byB0aGUg
bGltaXRzIG9mIHRoZSBkZXZpY2Ugc2hvdWxkIHN1Y2gKPiAgICAgID4gYmVoYXZpb3IgYmUgZXhw
ZWN0ZWQ/Cj4gICAgICA+Cj4gICAgICA+IFRoYW5rcyBpbiBhZHZhbmNlCj4gICAgICA+Cj4gICAg
ICA+IEJlc3QgUmVnYXJkcwo+ICAgICAgPiBDaGVyaWYKPiAgICAgID4KPiAgICAgID4KPiAgICAg
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiAgICAg
ID4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiAgICAgID4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20gPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPiAgICAgID4gaHR0cDov
L2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMu
Y29tCj4gICAgICA+Cj4gCj4gICAgIC0tIAo+ICAgICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgICBNLi1TYy4gRmFiaWFuIFNjaHdhcnRhdQo+
ICAgICBUZWNobmlzY2hlIFVuaXZlcnNpdMOkdCBCcmF1bnNjaHdlaWcKPiAgICAgSW5zdGl0dXQg
ZsO8ciBIb2NoZnJlcXVlbnp0ZWNobmlrCj4gICAgIFNjaGxlaW5pdHpzdHIuIDIyCj4gICAgIDM4
MTA2IEJyYXVuc2Nod2VpZwo+ICAgICBHZXJtYW55Cj4gCj4gICAgIFRlbC46wqAgwqArNDktKDAp
NTMxLTM5MS0yMDE3Cj4gICAgIEZheDrCoCDCoCArNDktKDApNTMxLTM5MS0yMDQ1Cj4gICAgIEVt
YWlsOiBmYWJpYW4uc2Nod2FydGF1QGloZi50dS1icy5kZQo+ICAgICA8bWFpbHRvOmZhYmlhbi5z
Y2h3YXJ0YXVAaWhmLnR1LWJzLmRlPgo+ICAgICBXV1c6IGh0dHA6Ly93d3cudHUtYnJhdW5zY2h3
ZWlnLmRlL2loZgo+ICAgICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQo+IAo+ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ICAgICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdAo+ICAgICBVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbSA8bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPgo+ICAg
ICBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0
cy5ldHR1cy5jb20KPiAKPiAKPiAKPiAtLSAKPiAKPiBEYW5pZWwgSmVwc29uCj4gCj4gRGlnaXRh
bCBIYXJkd2FyZSBFbmdpbmVlcgo+IAo+IE5hdGlvbmFsIEluc3RydW1lbnRzCj4gCj4gTzogKzEu
NTEyLjY4My42MTYzCj4gCj4gZGFuaWVsLmplcHNvbkBuaS5jb20gPG1haWx0bzpkYW5pZWwuamVw
c29uQG5pLmNvbT4KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KPiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11
c2Vyc19saXN0cy5ldHR1cy5jb20KPiAKCi0tIAotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpNLi1TYy4gRmFiaWFuIFNjaHdhcnRhdQpUZWNobmlzY2hl
IFVuaXZlcnNpdMOkdCBCcmF1bnNjaHdlaWcKSW5zdGl0dXQgZsO8ciBIb2NoZnJlcXVlbnp0ZWNo
bmlrClNjaGxlaW5pdHpzdHIuIDIyCjM4MTA2IEJyYXVuc2Nod2VpZwpHZXJtYW55CgpUZWwuOiAg
ICs0OS0oMCk1MzEtMzkxLTIwMTcKRmF4OiAgICArNDktKDApNTMxLTM5MS0yMDQ1CkVtYWlsOiAg
ZmFiaWFuLnNjaHdhcnRhdUBpaGYudHUtYnMuZGUKV1dXOiAgICBodHRwOi8vd3d3LnR1LWJyYXVu
c2Nod2VpZy5kZS9paGYKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6
Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVz
LmNvbQo=
