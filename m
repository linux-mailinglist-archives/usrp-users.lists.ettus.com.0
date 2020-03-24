Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D461903FB
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 04:54:31 +0100 (CET)
Received: from [::1] (port=59484 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGae3-0006ft-Rg; Mon, 23 Mar 2020 23:54:27 -0400
Received: from mout.gmx.net ([212.227.17.20]:43501)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <lukashaase@gmx.at>) id 1jGadz-0006Zh-Rp
 for usrp-users@lists.ettus.com; Mon, 23 Mar 2020 23:54:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585022022;
 bh=/bXbT7KJXTP9XqDpzW0ZEqX90TTq1WyXLPJrDfoKJUE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SasWs00dkGyDf3yrcxUdobG9Au+5Uwtl9H5nJPAQWXKe53O/UkP81tzOHUaoFsOMD
 Llv2CtWjeOG6U3/Svxx2ekHCw8hYsvc9tWxpxB4/ECp72CeblNG2T60MwKu+CIm2LJ
 ZW8s03/FG3t3O0S8e95/PjGmFSmmmCIKgFmO3YNk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [67.216.63.255] ([67.216.63.255]) by web-mail.gmx.net
 (3c-app-gmx-bs25.server.lan [172.19.170.77]) (via HTTP); Tue, 24 Mar 2020
 04:53:42 +0100
MIME-Version: 1.0
Message-ID: <trinity-8a4afc9a-c9ff-426e-a6a7-ec6963a37102-1585022022604@3c-app-gmx-bs25>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Date: Tue, 24 Mar 2020 04:53:42 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <5E798004.4040903@gmail.com>
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <38CFC8D2-9645-4412-9873-9612B897C5EB@gmail.com>
 <trinity-c8914290-4845-4675-98c6-2e02b41f536e-1584075584965@3c-app-gmx-bap08>
 <CAB__hTRm4hNPnfX4usHGA-hdc5WZ_=AnHVjJnZj7rGYM8xb0Tw@mail.gmail.com>
 <CAB__hTQOdK3Y3rEbVOGtkS9L-SE2aQ3JkyfueQZAmS_h4ULETg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <5E6BC2E8.20108@gmail.com>
 <trinity-d7f908f5-bedb-43b2-b687-8e8632475dc0-1585019285999@3c-app-gmx-bap77>
 <5E798004.4040903@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:MBauZuD/rCmxIZ7wbuSLHDlMxEQ82CbaYgd6MIouewo3fCvVHc4AyWqW4B4J4nxrIfM6/
 uidAl6ENYxgE3AQJtLOcdFysmBe5QLhjNdXM1Tltn2CFdLUPWxWGdIk51nhHGyHJ36yOYRujpFqK
 ylJKv17STpg4aq+kgxCH4iBYhqBAnXNCQ0ChmGc+i2kwaOe76MF5YdYpQBaW5CGwcHZvTeKmZViC
 Wsqnf1infVgV8su+FNWXPU6kgtuICEjr+QwpG99sceP+PlLwLkbOWosQUux7eAgiWJMuHduMlgM7
 2M=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PYux4rIDWEc=:56GVRZL6bAwSCvqcxbeJ/v
 LL5yCEoB0VNT3dxviAdryyf9BE7kHKU5rAU8fM+32v3wjredLbm8AWZSH4lFIVTQ8qt39GRun
 cIINTY0KtIamhCCOTA3DXgXyTXbumOZvb2QT2GVlFcqTkVUrGpaoz/sKiWKWgGNR2L2OizikZ
 zimpgVIhH6dyDEbbiLWDDA+YdvqI3RRnK5d4V5llavwpjSxKqHEpX7damzEhOn4ywCDticxEb
 KHMW3RQwOO2OjoMDNM7Dd8CG24whJde1bFwkUSMJ8hCT5YhzOTB8/umB9V6PLaB3jfku43D/N
 BXZouXHhcRIWowlZFpojoI4kMYYzeqQ2JJ9JJ1ufMJNQRgFSv2i/IR8R0H2t7s1KoO8XSyOt+
 3gAcuqUtXfQFCT/S5F+Yso5vqbqwNAXr7GJQvDFXtZSw7m+RDAWvSRz9BRQ4ROPEMGqsHIpUn
 ZyPiR8Xwi2x0kJf5eFg3sTZEWeR7ohNqVG77ss/2YbNVy4h8TSezKvwARdA6gI5Fj3RRs+Cle
 WzVQRbz5DLwE8suV4ByV0C8MNGYhfxWcjLMYs1J0Irfgt8okCcwqKpijjGty288/rWcnhnzYL
 WU7Xq612EJDt5jRXJzWLoovSLorFTbQKRIHvUc9f5qDg2qOTCPc9PU9cuOkBrAkAnoLAMRjtw
 0Rs5L4JZYhaDxMhoARLjM/JbELWkljHU6E5Jq7pvxHWgkn94CZzTo66ufZFXaHqzLvic=
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Rob Kossler <rkossler@nd.edu>
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

SGkgTWFyY3VzLAoKPiBHZXNlbmRldDogTW9udGFnLCAyMy4gTcOkcnogMjAyMCB1bSAyMzozNSBV
aHIKPiBWb246ICJNYXJjdXMgRC4gTGVlY2giIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4KPiBB
bjogIkx1a2FzIEhhYXNlIiA8bHVrYXNoYWFzZUBnbXguYXQ+Cj4gQ2M6ICJSb2IgS29zc2xlciIg
PHJrb3NzbGVyQG5kLmVkdT4sICJVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgPHVzcnAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPgo+IEJldHJlZmY6IFJlOiBbVVNSUC11c2Vyc10gVVNSUCBYMzEw
IGlnbm9yZWQgRFNQIHJldHVuaW5nIG9uIFRYIHdoZW4gdXNpbmcgYSB0aW1lZCBjb21tYW5kCj4K
PiBPbiAwMy8yMy8yMDIwIDExOjA4IFBNLCBMdWthcyBIYWFzZSB3cm90ZToKPiA+IEhpIE1hcmN1
cywKPiA+Cj4gPj4gR2VzZW5kZXQ6IEZyZWl0YWcsIDEzLiBNw6RyeiAyMDIwIHVtIDEzOjI5IFVo
cgo+ID4+IFZvbjogIk1hcmN1cyBELiBMZWVjaCIgPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPgo+
ID4+IEFuOiAiTHVrYXMgSGFhc2UiIDxsdWthc2hhYXNlQGdteC5hdD4sICJSb2IgS29zc2xlciIg
PHJrb3NzbGVyQG5kLmVkdT4KPiA+PiBDYzogIlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiA8
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+Cj4gPj4gQmV0cmVmZjogUmU6IFtVU1JQLXVzZXJz
XSBVU1JQIFgzMTAgaWdub3JlZCBEU1AgcmV0dW5pbmcgb24gVFggd2hlbiB1c2luZyBhIHRpbWVk
IGNvbW1hbmQKPiA+Pgo+ID4+IE9uIDAzLzEzLzIwMjAgMTA6NTIgQU0sIEx1a2FzIEhhYXNlIHdy
b3RlOgo+ID4+PiBIaSBhZ2FpbiBSb2IsCj4gPj4+Cj4gPj4+IFllcywgSSBjb25maXJtOgo+ID4+
Pgo+ID4+PiAxLikgRmluYWxseSBJIGdldCB0aGUgY29tbWFuZHMgdG8gZXhlY3V0ZSBhdCB0aGUg
c2FtZSB0aW1lIChUWCBhbmQgUlggaW5kaXZpZHVhbGx5IGFuZCBib3RoIGF0IHRoZSBzYW1lIHRp
bWUpCj4gPj4+IDIuKSBZZXMsIHRoZSBwaGFzZSBpcyByYW5kb20gYWZ0ZXIgZWFjaCByZXR1bmUs
IGV2ZW4gd2hlbiBJIHJldHVuZSBiYWNrIHRvIHRoZSBzYW1lIGZyZXF1ZW5jeQo+ID4+PiAzLikg
KDIpIGlzIG9ubHkgdHJ1ZSBpZiBpdCBpbmNsdWRlcyAqRFNQKiByZXR1bmluZy4gV2l0aCBuYWFs
b2cgcmV0dW5pbmcgKCtpbnRlZ2VyLU4gcmV0dW5pbmcpIEkgZ2V0IHBoYXNlIGNvaGVyZW5jZSwg
YXMgZXhwZWN0ZWQuCj4gPj4+Cj4gPj4+IEkgYWN0dWFsbHkgZXhwZWN0ZWQgdGhlIFBMTCByZXR1
bmluZyBtdWNoIG1vcmUgY2hhbGxlbmdpbmcgdGhhbiB0aGUgRFNQIHJldHVuaW5nIGJ1dCBmb3Ig
c29tZSByZWFzb24gaXQgc2VlbXMgdG8gYmUgdGhlIG9wcG9zaXRlLi4uCj4gPj4gSXQgZGVwZW5k
cyBvbiB3aGV0aGVyIHRoZSBwaGFzZS1hY2N1bXVsYXRvciBpbiB0aGUgRFNQIGlzIHJlc2V0IHRv
IHplcm8sCj4gPj4gb3Igd2hldGhlciBqdXN0IHRoZSBpbmNyZW1lbnQgcmVnaXN0ZXIgaXMgdXBk
YXRlZCB3aXRoIHRoZQo+ID4+ICAgICBuZXcgcGhhc2UgaW5jcmVtZW50LiAgIFRoZXJlIGFyZSBn
b29kIGFyZ3VtZW50cyBmb3IgYm90aCBhcHByb2FjaGVzLgo+ID4gSSBqdXN0IHdhbnRlZCB0byBj
aGVjayBpbiBhZ2FpbiBpZiB5b3Uga25vdyBob3cgdGhpcyBpcyBpbXBsZW1lbnRlZCBhbmQgaG93
IHlvdXIgdGhvdWdodHMgYXJlIHJlZ2FyZGluZyB0dW5pbmcgaW4gYm90aCBjYXNlcy4gTXkgdGFr
ZToKPiA+Cj4gPiBDYXNlICMxOiBQaGFzZSBhY2N1bXVsYXRvciBhbmQgaW5jcmVtZW50IHJlZ2lz
dGVyIGlzIHJlc2V0Lgo+ID4gICAgIC0gVGhpcyByZXN1bHRzIGluIHRyYW5zaWVudHMgd2hlbiBy
ZS10dW5pbmcgZnJlcXVlbmN5IGJlY2F1c2UgdGhlIG1peGVyIExPIGFsd2F5cyAocmUtKXN0YXJ0
cyBhdCB6ZXJvIHBoYXNlLgo+ID4gICAgIC0gU2luY2UgdGhpcyBjb21wbGV0ZWx5IGRlZmluZXMg
dGhlIHN0YXRlIG9mIHRoZSBEREMvRFVDLCBJIGltYWdpbmUgcGhhc2UgY29oZXJlbmNlIG11c3Qg
YmUgcHJlc2VydmVkIGFzc3VtaW5nIHRoZSByZXNldHMgaW4gVFggYW5kIFJYIGhhcHBlbiBleGFj
dGx5IGF0IHRoZSBzYW1lIHRpbWUgKHdoaWNoIGlzIHN0aWxsIG5vdCBjZXJ0YWluIHRvIG1lKQoK
CgoKSSBoYXZlIGFjdHVhbGx5IGFsd2F5cyB3b25kZXJlZCBIT1cgdGhlc2UgbWFnaWMgdGltZWQg
Y29tbWFuZHMgYWN0dWFsbHkgd29yay4KClRoZSBGUEdBIGhhcyBhIGNsb2NrIHdoaWNoIHRvIG15
IGtub3dsZWRnZSBpcyB0aGUgc3lzdGVtIGNsb2NrIHdoaWNoIGlzIDIwMCBNSHouIENhbGwgdGhp
cyBjbG9jayAiY2xrIi4KQnV0IHRoaXMgaXMgYWxzbyB0aGUgc2FtcGxlIHJhdGUuClNvIGV2ZXJ5
dGhpbmcgdGhhdCBvcGVyYXRlcyBvbiBhIHNhbXBsZSBsZXZlbCBhY2N1cmFjeSBtdXN0IGV4ZWN1
dGUgd2l0aGluIG9uZSBjbG9jayBjeWNsZSB3aGljaCBzZWVtcyBoYXJkIHRvIG1lLgoKSWYgSSBx
dWV1ZSAxNiB0aW1lZCBjb21tYW5kcyBob3cgY2FuIHRoZXkgcmVhbGx5IGJlIGV4ZWN1dGVkIGF0
IHRoZSBzYW1lIGNsb2NrIGN5Y2xlPwoKPiBBY2NvcmRpbmcgdG8gbXkgc3R1ZHkgb2YgdGhlIEZQ
R0EgY29kZSwgdGhlIHJlZ2lzdGVyIHNldHMgYXJlIHNlcmlhbGl6ZWQgCj4gd2l0aGluIHRoZSB0
aW1lZC1jb21tYW5kIEZJRk8sIHdoaWNoIGlzIGFuIEFYSSBGSUZPLCB3aGljaCBtZWFucwo+ICAg
IHRoYXQgc2FpZCBjb21tYW5kcyBtYXkgYmUgc3ByZWFkIG92ZXIgc2V2ZXJhbCAxMHMgb2YgbmFu
b3NlY29uZHMgaW4gCgpJcyB0aGlzIGFuIGFsdGVybmF0aXZlIHdheSBvZiBzYXlpbmcgInRpbWVk
IGNvbW1hbmRzIGFjdHVhbGx5IGRvIE5PVCBleGVjdXRlIGF0IHRoZSBzYW1lIHRpbWUgb24gdGhl
IHgzMTAiIG9yIGFsdGVybmF0aXZlbHkgIlRoZSB4MzEwIGRvZXMgYWN0dWFsbHkgTk9UIHN1cHBv
cnQgcGhhc2UgY29oZXJlbnQgb3BlcmF0aW9uIj8KClRoYXQgd291bGQgY29tZSBwcmV0dHkgbXVj
aCB0byBhIHNob2NrLgoKSXQgd291bGQgZXhwbGFpbiB3aHkgcGhhc2UgY29oZXJlbmNlIHdvcmtz
IHdpdGggYW5hbG9nLW9ubHkgdHVuaW5nIChhc3N1bWluZyBvbmUgc2luZ2xlIHJlZ2lzdGVyIHNl
dCBpcyBzdWZmaWNpZW50IGZvciBhbmFsb2cgdHVuaW5nKS4KCk9uIHRoZSBvdGhlciBoYW5kLCBp
dCB3b3VsZCBub3QgZXhwbGFpbiB3aHkgUlgtUlggcGhhc2UgY29oZXJlbmNlIChvciBUWC1UWCkg
d29ya3MuIEluIHRoYXQgY2FzZSwgb25seSB0aGUgdHdvIEREQ3MgYXJlIHVzZWQuIEJ1dCB0aGVy
ZSBhcmUgc3RpbGwgc2V2ZXJhbCByZWdpc3RlciBzZXRzIHdoaWNoIHdvdWxkIGVxdWFsbHkgYnJl
YWsgc3R1ZmYuCgpMdWthcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdApVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb20K
