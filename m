Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC521B2E2B
	for <lists+usrp-users@lfdr.de>; Tue, 21 Apr 2020 19:19:55 +0200 (CEST)
Received: from [::1] (port=34728 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQwYs-0003ks-QO; Tue, 21 Apr 2020 13:19:54 -0400
Received: from mout.gmx.net ([212.227.17.20]:36045)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jQwYp-0003db-2m
 for usrp-users@lists.ettus.com; Tue, 21 Apr 2020 13:19:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587489550;
 bh=3qbqEPT6mMl2TUwx38eefMPnjaLEcbCE/tF0G7nTd4w=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Oej+KJL0po/lhHPqs1wfD9d2mF8QUeeiTY6PFENMhd/7ghFE442ILwjFSwZPsbLUk
 mG8SQfMk8uMjxug/rukyUidhVAbYLLAKkvMeTENdLXA8EVT3F5x+mMuLasn28YmtTK
 +grrmYPVceSaww9zHwt3/8XIVQQ7QcTpbfS9x1d0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.49.189] ([67.216.49.189]) by web-mail.gmx.net
 (3c-app-gmx-bap44.server.lan [172.19.172.114]) (via HTTP); Tue, 21 Apr 2020
 19:19:09 +0200
MIME-Version: 1.0
Message-ID: <trinity-e738f755-a4b3-4eee-9bf0-d76c3ae07302-1587489549838@3c-app-gmx-bap44>
To: "Rob Kossler" <rkossler@nd.edu>
Date: Tue, 21 Apr 2020 19:19:09 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAB__hTQGu_aEH+ntDWB9xCDds7mfbEtf6FK0KdXsr==P8V7DEg@mail.gmail.com>
References: <mailman.47.1587398404.12990.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-f7accbc4-db9b-4912-8e5c-f9c682236c93-1587400437026@3c-app-gmx-bs34>
 <5E9E4751.1090606@gmail.com>
 <trinity-3d608735-14fc-4c76-b755-59be5d062058-1587443012457@3c-app-gmx-bs69>
 <CAB__hTQGu_aEH+ntDWB9xCDds7mfbEtf6FK0KdXsr==P8V7DEg@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:uiiJxuSjDrpmguKDHD3IuwAUHBTy78lzSyer14RkZwJzd8do8q9GEB5AtgvqneH+Cnv/+
 NSSGJGKdj5aTVRJa8DgUYHLcJCN3iyjx2rWRrcCH+I8p6RZI0A9z0cBtBkcP2uE6ZnwZg9Kb+t/f
 X37YorES/Rj0JRBNXe6mzQXxGSCIkMaWjyyGl+pVmePfckzSvYlLnsHrjuBe2RSVeEhrr5Vg/55j
 ObY28krBA8e6hIoeirn0oedZVKxxlw6lObFDeiEC2Zn+wAEJrXjw0btxQkCSdptIsZ8QSSY/I3EY
 9k=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Xbm1TZjBZiE=:okqDZvNFQ8gnqhGQcap+CJ
 WB5oWO+MPOlaVa6bDz1WKYR5eS32Z84BDL1ZinQAxfXpeapX+YXTdCejEq491Dy1r0psJqDWe
 /2jdNVXYfNpFb67fJXAOY+dpePIQ9CtYVR+p89mJZSRuWCMqP3RIY3Xny/DrXiliX07uEp4QT
 68mR2CRwLQK8BwII/GQsDQlTmYxs1qX8TNhk4gXu/Mivvh6xUd4I8ABPyWXpdzIMA9t/bHVd+
 V1Qr32zJtZ6xxBVjRNoLH8xKSZO5hYeZTpPT4AVP45dYSYanWrYP6PFbMQmQ1hHTr5UdsnPOQ
 mxhqXfVErI9vdcY7HMaQ/89TfdlzZdLySzYy6ullagNbxLU7c9sdpPTwoZBarY3bc2gwGAl38
 VWKFI1BONWWHAZetlFA9On5VpxSoeVu06N/2cIObid1SDGda6uu7DkpqMVH7/jj+ZjJ4h3SG3
 i389SATDGZ7yDi/+dQdcxu6vMivXPPnJpGmtHGsw3PtvnmwLsCO1q6JfFILahSec44IxsRCYu
 OiRrCRpotFJwOQg0NL/IbyqdO2WRyeUdlXloxssk9sYI3XDsP92rcn9AN161m93P0D+UUsVvN
 mLWpAIVt+eeRHFqmKkvHUGMFTatUQdHP6WnZcIUirRV+midHVlk6PO2kZC4+mTzATtw4IEJZz
 tFn/7Twp2JgZP6wDNYiWQtGa9c0R+WuOAJ2S8/eGX0qbt+UbYyjofOgKY6VBbee0hiq4=
Subject: Re: [USRP-users] Questions about UBX-160 Noise Figure
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
From: Lukas Haase via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lukas Haase <lukashaase@gmx.at>
Cc: usrp-users <usrp-users@lists.ettus.com>
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

SGkgUm9iLAoKWWVzLCB5b3UgYXJlIHJpZ2h0LiBUaGUgZG93bmNvbnZlcnNpb24gbXVzdCBpbmNs
dWRlIHRoZSBhbnRpIGFsaWFzaW5nIGZpbHRlciB3aGljaCBiYW5kbGltaXRzIHRoZSBzaWduYWwg
dG8gfjQuNSBNSHouCgpCZXN0LApMdWthcwrCoAoKR2VzZW5kZXQ6wqBEaWVuc3RhZywgMjEuIEFw
cmlsIDIwMjAgdW0gMDk6MjggVWhyClZvbjrCoCJSb2IgS29zc2xlciIgPHJrb3NzbGVyQG5kLmVk
dT4KQW46wqAiTHVrYXMgSGFhc2UiIDxsdWthc2hhYXNlQGdteC5hdD4KQ2M6wqAiTWFyY3VzIEQu
IExlZWNoIiA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+LCAidXNycC11c2VycyIgPHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPgpCZXRyZWZmOsKgUmU6IFtVU1JQLXVzZXJzXSBRdWVzdGlvbnMg
YWJvdXQgVUJYLTE2MCBOb2lzZSBGaWd1cmUKCkkgZG9uJ3QgcXVpdGUgdW5kZXJzdGFuZCB3aHkg
aXQgaXMgaW1wb3J0YW50IGlmIGl0IGlzICJhbmFsb2ciIGJhbmR3aWR0aC7CoCBXaGlsZSBJIHVu
ZGVyc3RhbmQgdGhhdCB0aGUgVUJYIGNhbm5vdCBjaGFuZ2UgaXRzIGFuYWxvZyBiYW5kd2lkdGgs
IGl0IHNlZW1zIHRvIG1lIHRoYXQgZGlnaXRhbCBiYW5kd2lkdGggdGhhdCBpcyBpbmhlcmVudCBp
biBkb3duY29udmVyc2lvbiBmcm9tIDIwMCBNUy9zIHRvIDVNUy9zIGlzIHN0aWxsIGdvaW5nIHJl
ZHVjZSB0aGUgbm9pc2UgcG93ZXLCoGJ5IHRoZSByYXRpbyBvZiB0aGUgb3JpZ2luYWwgYmFuZHdp
ZHRoICgxNjAgTUh6KSB0byB0aGUgbmV3IGJhbmR3aWR0aMKgKHNheSwgNC41IE1IeikuwqAKUm9i
wqAKCk9uIFR1ZSwgQXByIDIxLCAyMDIwIGF0IDEyOjI0IEFNIEx1a2FzIEhhYXNlIHZpYSBVU1JQ
LXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbVttYWlsdG86dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb21dPiB3cm90ZTpIaSBNYXJjdXMsCgo+IFZvbjogIk1hcmN1cyBELiBMZWVjaCIg
PHBhdGNodm9uYnJhdW5AZ21haWwuY29tW21haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbV0+
Cj4gWy4uLl0KPiA+IE15IHF1ZXN0aW9uIGlzIGlmIG15IGFwcHJvYWNoL3VuZGVyc3RhbmRpbmcg
aXMgcmlnaHQuCj4gPgo+ID4gSW4gcGFydGljdWxhciBJIGRvIG5vdCB1bmRlcnN0YW5kIFF1ZXN0
aW9uIDQgKHdoeSBkb2VzIG5vaXNlIG5vdCByZWR1Y2UgaWYgSSByZWR1Y2UgYmFuZHdpZHRoKS4K
PiBJZiB5b3UncmUgdmFyeWluZyAqYW5hbG9nKiBiYW5kd2lkdGgsIHJhdGhlciB0aGFuIHNhbXBs
aW5nIHJhdGUsIGJlCj4gYXdhcmUgdGhhdCBVQlggZG9lc24ndCBoYXZlIHZhcmlhYmxlIGFuYWxv
ZyBiYW5kd2lkdGguwqAgSXQncyBhbHdheXMgZml4ZWQuCgpJIHNlZS4KR3JlYXQgcG9pbnQuCgpJ
IGp1c3QgZm91bmQ6IGh0dHA6Ly9ldHR1cy44MDk5Ny54Ni5uYWJibGUuY29tL1VTUlAtdXNlcnMt
V2hpY2gtYmFuZHdpZHRoLWRvZXMtdWhkLXVzcnAtbXVsdGktdXNycC1zZXQtcngtYmFuZHdpZHRo
LXNldC10ZDExODk3Lmh0bWxbaHR0cDovL2V0dHVzLjgwOTk3Lng2Lm5hYmJsZS5jb20vVVNSUC11
c2Vycy1XaGljaC1iYW5kd2lkdGgtZG9lcy11aGQtdXNycC1tdWx0aS11c3JwLXNldC1yeC1iYW5k
d2lkdGgtc2V0LXRkMTE4OTcuaHRtbF0KCkFuZCBpdCBzZWVtcyBzZXRfdHhfYmFuZHdpZHRoKCkg
YW5kIHNldF9yeF9iYW5kd2lkdGgoKSBkbyBub3RoaW5nIHRoZW4gb24gdGhlIFVCWC4KCkkgd3Jv
dGUgYmVmb3JlIG15IG5vaXNlIGxldmVsIHNob3VsZCBiZSAtMTc0K05GKzEwKmxvZzEwKDVlNiku
CgpCdXQgYmFzZWQgb24gdGhpcywgaXQgc2hvdWxkIGJlIG1vcmUgY29ycmVjdGx5IC0xNzQrTkYr
MTAqbG9nMTAoMTYwZTYpIC4uLiBpcyB0aGF0IGNvcnJlY3Q/IChJIGp1c3QgcmVjZWl2ZSB0aGUg
cmF3IHNhbXBsZXMgZnJvbSB0aGUgVVNSUCB2aWEgVVNSUCBTb3VyY2UuIFRoZXJlIGlzIG5vIG90
aGVyIGRpZ2l0YWwgZmlsdGVyPykKCj4gPiBGdXJ0aGVybW9yZSwgSSdkIGJlIGludGVyZXN0ZWQg
aWYgUXVlc3Rpb24gNSBpcyBjb25jZXB0dWFsbHkgY29ycmVjdC4KPiBDb25jZXB0dWFsbHksIEkg
ZG9uJ3Qgc2VlIGFueSBwcm9ibGVtIHdpdGggaXQsIGJ1dCBpdCB2ZXJ5LXNxdWFyZWx5Cj4gZW50
ZXJzwqAgImNvbnNpZGVyIGEgc3BoZXJpY2FsIGNvdyIgdGVycml0b3J5LsKgIFlvdSBDQU5OT1Qg
dXNlIGEgcHVyZWx5Cj7CoCDCoCBhcml0aG1ldGljIGFuYWx5c2lzLCBkdWUgdG8gdW5jZXJ0YWlu
dGllcy7CoCDCoEkgd291bGQsIGluIGZhY3QsCj4gZW5jb3VyYWdlIHlvdSB0byBhY3F1aXJlIGEg
ZGVjZW50IGJyb2FkLWJhbmQsIGNhbGlicmF0ZWQsIG5vaXNlIHNvdXJjZSBmb3IKPsKgIMKgIHlv
dSBsYWIgc28gdGhhdCB5b3UgY2FuIGRvIFktZmFjdG9yIGFuYWx5c2lzLCBpZiBmb3Igbm8gb3Ro
ZXIgcmVhc29uCj4gdGhhbiB0byBzYXRpc2Z5IHlvdXJzZWxmIHRoYXQgdGhlIG5vaXNlIGVxdWF0
aW9ucyB3b3JrLgoKVGhlIGlzc3VlIHdpdGggdGhlIGJhbmR3aWR0aCBjYWxjdWxhdGlvbiBhYm92
ZSB3b3VsZCBiZSBvbmUgb2YgdGhlbSA7LSkKCj4gSSd2ZSB1c2VkIHRoZXNlIG9uIGEgYnVkZ2V0
LXNlbnNpdGl2ZSBwcm9qZWN0IGp1c3QgbGFzdCB5ZWFyOgo+IGh0dHBzOi8vZzhmZWsuY29tL3By
ZWNpc2lvbi1ub2lzZS1zb3VyY2VzLmh0bWxbaHR0cHM6Ly9nOGZlay5jb20vcHJlY2lzaW9uLW5v
aXNlLXNvdXJjZXMuaHRtbF0KClRoYW5rcyBmb3IgdGhlIHBvaW50ZXIuIEkgdGhpbmsgSSdsbCBn
ZXQgb25lIG9mIHRoZXNlLgoKRm9yIGEgcHJvcGVyIHVzZSBJIHdvdWxkIG5lZWQgYSBzdGVlcCBm
aWx0ZXIgdGhvdWdoLCBjb3JyZWN0PyAoaW4gb3JkZXIgdG8gaGF2ZSBhIHdlbGwgZGVmaW5lZCB0
b3RhbCBpbnB1dCBwb3dlciBQaW49LTE3NCtFTlIrMTAqbG9nMTAoRmlsdGVyQ3Vyb2ZmKSBkQm0/
ICkKClRoYW5rcywKTHVrYXMKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb21bbWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tXQpodHRwOi8vbGlzdHMuZXR0
dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
