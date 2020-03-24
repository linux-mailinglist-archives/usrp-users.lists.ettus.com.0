Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB227190412
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 05:05:07 +0100 (CET)
Received: from [::1] (port=34698 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGaoM-0007ag-E6; Tue, 24 Mar 2020 00:05:06 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:39593)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jGaoI-0007UC-5V
 for usrp-users@lists.ettus.com; Tue, 24 Mar 2020 00:05:02 -0400
Received: by mail-qt1-f175.google.com with SMTP id f20so13939889qtq.6
 for <usrp-users@lists.ettus.com>; Mon, 23 Mar 2020 21:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=Yn0BQmM2Hl8DET3upPKr8MDb92zX9wpKm8Cg0KdhzYw=;
 b=BKzNr13nU7SRZnNIQ3AQsmKfhd10sIWi3r5skyz6Fy02E4m7Yfd4X0bhtcMcAfoDAX
 TQRTpM5UtHAWKUPniLWNJ3we9yG0WqJl2jJb1fIxEY9qPFE+kdd0ZnP/7HJ3qioEcBrt
 X45ke0IGYSACdm5DJwudEbOWqoqaKzyGsASUonsFIV2+mULqYSip4Gf0HSWIeib/BArz
 nDphOJVAH/fn32wVzZqJEQU/gxCY0TjBrSDrD1hWVVXW/VIWonCUFV+H/bdDEB/pdZ3f
 JkuyIdX6G1+7+5GKR4UUSyCqczyPXgCqX5LUl6P6P222LcNdsu1A62Q784NHSUt4Jht4
 FZHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=Yn0BQmM2Hl8DET3upPKr8MDb92zX9wpKm8Cg0KdhzYw=;
 b=US+FAIhLRHq2udAII/CTWe2iYgXjraMRSA6WIifMsewLUcWnXVJBz9ojPS4V12plLr
 Af9NX5pTFCjkS4MWDR5l2Kf3r7RFranpCj2Q6K2n9i4dBNMONXWa01rn/j7adaA7DOlX
 I8nSBUZ4wD4TrPRLficO5GsclSpLow1dYoJEqDB4+opTdO7SHaSMI/I6wVMRs9wRK6+P
 PRjulmOnvNCLZf4dD+ceOeMcj2kbIY+ghj9Pa8JCn+K5TiUUH1BqwNgVJeMQtE/Fwv9O
 rJvQObRnWVe9Rb2yJBBKcriuuCwbvk+7/R17KUqzAz0LBcbSssZXQ83Bfk/PcN7+TskN
 GnBg==
X-Gm-Message-State: ANhLgQ1MOFfa7IBIr3LOhMgQ7yLzxtai7S9MnBhK1eQqliLBQ7SgbzIZ
 452ISElMDkGtj/VakOMPTAVymOXQ
X-Google-Smtp-Source: ADFU+vte2noboFki3SkMJ2Bojqy6XG3ELD45wy3fvnjf12MzSyjo5Qa1JcW58zuyVtoJ8YjCcpDf3Q==
X-Received: by 2002:ac8:60d7:: with SMTP id i23mr8912275qtm.381.1585022661282; 
 Mon, 23 Mar 2020 21:04:21 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id d22sm14110497qte.93.2020.03.23.21.04.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 21:04:20 -0700 (PDT)
Message-ID: <5E7986C3.7040406@gmail.com>
Date: Tue, 24 Mar 2020 00:04:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Lukas Haase <lukashaase@gmx.at>
References: <CAB__hTT=qkX=vq7tuG9ugXnL57o_YXzig1j1d9Cf3sB-vhzdfg@mail.gmail.com>
 <38CFC8D2-9645-4412-9873-9612B897C5EB@gmail.com>
 <trinity-c8914290-4845-4675-98c6-2e02b41f536e-1584075584965@3c-app-gmx-bap08>
 <CAB__hTRm4hNPnfX4usHGA-hdc5WZ_=AnHVjJnZj7rGYM8xb0Tw@mail.gmail.com>
 <CAB__hTQOdK3Y3rEbVOGtkS9L-SE2aQ3JkyfueQZAmS_h4ULETg@mail.gmail.com>
 <trinity-f6784e7e-a386-4c2d-9853-5909919d6c1c-1584111163445@3c-app-gmx-bs31>
 <5E6BC2E8.20108@gmail.com>
 <trinity-d7f908f5-bedb-43b2-b687-8e8632475dc0-1585019285999@3c-app-gmx-bap77>
 <5E798004.4040903@gmail.com>
 <trinity-8a4afc9a-c9ff-426e-a6a7-ec6963a37102-1585022022604@3c-app-gmx-bs25>
In-Reply-To: <trinity-8a4afc9a-c9ff-426e-a6a7-ec6963a37102-1585022022604@3c-app-gmx-bs25>
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Rob Kossler <rkossler@nd.edu>
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

T24gMDMvMjMvMjAyMCAxMTo1MyBQTSwgTHVrYXMgSGFhc2Ugd3JvdGU6Cj4gSGkgTWFyY3VzLAo+
Cj4+IEdlc2VuZGV0OiBNb250YWcsIDIzLiBNw6RyeiAyMDIwIHVtIDIzOjM1IFVocgo+PiBWb246
ICJNYXJjdXMgRC4gTGVlY2giIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4KPj4gQW46ICJMdWth
cyBIYWFzZSIgPGx1a2FzaGFhc2VAZ214LmF0Pgo+PiBDYzogIlJvYiBLb3NzbGVyIiA8cmtvc3Ns
ZXJAbmQuZWR1PiwgIlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiA8dXNycC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20+Cj4+IEJldHJlZmY6IFJlOiBbVVNSUC11c2Vyc10gVVNSUCBYMzEwIGlnbm9y
ZWQgRFNQIHJldHVuaW5nIG9uIFRYIHdoZW4gdXNpbmcgYSB0aW1lZCBjb21tYW5kCj4+Cj4+IE9u
IDAzLzIzLzIwMjAgMTE6MDggUE0sIEx1a2FzIEhhYXNlIHdyb3RlOgo+Pj4gSGkgTWFyY3VzLAo+
Pj4KPj4+PiBHZXNlbmRldDogRnJlaXRhZywgMTMuIE3DpHJ6IDIwMjAgdW0gMTM6MjkgVWhyCj4+
Pj4gVm9uOiAiTWFyY3VzIEQuIExlZWNoIiA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+Cj4+Pj4g
QW46ICJMdWthcyBIYWFzZSIgPGx1a2FzaGFhc2VAZ214LmF0PiwgIlJvYiBLb3NzbGVyIiA8cmtv
c3NsZXJAbmQuZWR1Pgo+Pj4+IENjOiAiVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIDx1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPj4+PiBCZXRyZWZmOiBSZTogW1VTUlAtdXNlcnNdIFVT
UlAgWDMxMCBpZ25vcmVkIERTUCByZXR1bmluZyBvbiBUWCB3aGVuIHVzaW5nIGEgdGltZWQgY29t
bWFuZAo+Pj4+Cj4+Pj4gT24gMDMvMTMvMjAyMCAxMDo1MiBBTSwgTHVrYXMgSGFhc2Ugd3JvdGU6
Cj4+Pj4+IEhpIGFnYWluIFJvYiwKPj4+Pj4KPj4+Pj4gWWVzLCBJIGNvbmZpcm06Cj4+Pj4+Cj4+
Pj4+IDEuKSBGaW5hbGx5IEkgZ2V0IHRoZSBjb21tYW5kcyB0byBleGVjdXRlIGF0IHRoZSBzYW1l
IHRpbWUgKFRYIGFuZCBSWCBpbmRpdmlkdWFsbHkgYW5kIGJvdGggYXQgdGhlIHNhbWUgdGltZSkK
Pj4+Pj4gMi4pIFllcywgdGhlIHBoYXNlIGlzIHJhbmRvbSBhZnRlciBlYWNoIHJldHVuZSwgZXZl
biB3aGVuIEkgcmV0dW5lIGJhY2sgdG8gdGhlIHNhbWUgZnJlcXVlbmN5Cj4+Pj4+IDMuKSAoMikg
aXMgb25seSB0cnVlIGlmIGl0IGluY2x1ZGVzICpEU1AqIHJldHVuaW5nLiBXaXRoIG5hYWxvZyBy
ZXR1bmluZyAoK2ludGVnZXItTiByZXR1bmluZykgSSBnZXQgcGhhc2UgY29oZXJlbmNlLCBhcyBl
eHBlY3RlZC4KPj4+Pj4KPj4+Pj4gSSBhY3R1YWxseSBleHBlY3RlZCB0aGUgUExMIHJldHVuaW5n
IG11Y2ggbW9yZSBjaGFsbGVuZ2luZyB0aGFuIHRoZSBEU1AgcmV0dW5pbmcgYnV0IGZvciBzb21l
IHJlYXNvbiBpdCBzZWVtcyB0byBiZSB0aGUgb3Bwb3NpdGUuLi4KPj4+PiBJdCBkZXBlbmRzIG9u
IHdoZXRoZXIgdGhlIHBoYXNlLWFjY3VtdWxhdG9yIGluIHRoZSBEU1AgaXMgcmVzZXQgdG8gemVy
bywKPj4+PiBvciB3aGV0aGVyIGp1c3QgdGhlIGluY3JlbWVudCByZWdpc3RlciBpcyB1cGRhdGVk
IHdpdGggdGhlCj4+Pj4gICAgICBuZXcgcGhhc2UgaW5jcmVtZW50LiAgIFRoZXJlIGFyZSBnb29k
IGFyZ3VtZW50cyBmb3IgYm90aCBhcHByb2FjaGVzLgo+Pj4gSSBqdXN0IHdhbnRlZCB0byBjaGVj
ayBpbiBhZ2FpbiBpZiB5b3Uga25vdyBob3cgdGhpcyBpcyBpbXBsZW1lbnRlZCBhbmQgaG93IHlv
dXIgdGhvdWdodHMgYXJlIHJlZ2FyZGluZyB0dW5pbmcgaW4gYm90aCBjYXNlcy4gTXkgdGFrZToK
Pj4+Cj4+PiBDYXNlICMxOiBQaGFzZSBhY2N1bXVsYXRvciBhbmQgaW5jcmVtZW50IHJlZ2lzdGVy
IGlzIHJlc2V0Lgo+Pj4gICAgICAtIFRoaXMgcmVzdWx0cyBpbiB0cmFuc2llbnRzIHdoZW4gcmUt
dHVuaW5nIGZyZXF1ZW5jeSBiZWNhdXNlIHRoZSBtaXhlciBMTyBhbHdheXMgKHJlLSlzdGFydHMg
YXQgemVybyBwaGFzZS4KPj4+ICAgICAgLSBTaW5jZSB0aGlzIGNvbXBsZXRlbHkgZGVmaW5lcyB0
aGUgc3RhdGUgb2YgdGhlIEREQy9EVUMsIEkgaW1hZ2luZSBwaGFzZSBjb2hlcmVuY2UgbXVzdCBi
ZSBwcmVzZXJ2ZWQgYXNzdW1pbmcgdGhlIHJlc2V0cyBpbiBUWCBhbmQgUlggaGFwcGVuIGV4YWN0
bHkgYXQgdGhlIHNhbWUgdGltZSAod2hpY2ggaXMgc3RpbGwgbm90IGNlcnRhaW4gdG8gbWUpCj4K
Pgo+Cj4gSSBoYXZlIGFjdHVhbGx5IGFsd2F5cyB3b25kZXJlZCBIT1cgdGhlc2UgbWFnaWMgdGlt
ZWQgY29tbWFuZHMgYWN0dWFsbHkgd29yay4KPgo+IFRoZSBGUEdBIGhhcyBhIGNsb2NrIHdoaWNo
IHRvIG15IGtub3dsZWRnZSBpcyB0aGUgc3lzdGVtIGNsb2NrIHdoaWNoIGlzIDIwMCBNSHouIENh
bGwgdGhpcyBjbG9jayAiY2xrIi4KPiBCdXQgdGhpcyBpcyBhbHNvIHRoZSBzYW1wbGUgcmF0ZS4K
PiBTbyBldmVyeXRoaW5nIHRoYXQgb3BlcmF0ZXMgb24gYSBzYW1wbGUgbGV2ZWwgYWNjdXJhY3kg
bXVzdCBleGVjdXRlIHdpdGhpbiBvbmUgY2xvY2sgY3ljbGUgd2hpY2ggc2VlbXMgaGFyZCB0byBt
ZS4KPgo+IElmIEkgcXVldWUgMTYgdGltZWQgY29tbWFuZHMgaG93IGNhbiB0aGV5IHJlYWxseSBi
ZSBleGVjdXRlZCBhdCB0aGUgc2FtZSBjbG9jayBjeWNsZT8KV2VsbCwgeW91IGhhdmUgdG8gcmVt
ZW1iZXIgdGhhdCBGUEdBcyBhcmUgaW5oZXJlbnRseSBtYXNzaXZlbHktcGFyYWxsZWwgCm5hbm8t
Y29tcHV0ZXJzLiAgQnV0IGluIFRISVMgY2FzZSwgaXQgbG9va3MgdG8gbWUgbGlrZSB0aGVyZSdz
CiAgIGEgRklGTywgYW5kIGVsZW1lbnRzIG9uIGl0IGFyZSBwcm9jZXNzZWQgb25lIGF0IGEgdGlt
ZS4gIEluIGFuIEZQR0EsIAphbGwga2luZHMgb2YgInN0dWZmIiBjYW4gaGFwcGVuIGF0IHRoZSBz
YW1lIHRpbWUsIGJlY2F1c2UgaXQncwogICBhIHdoYWNrIG9mIHNvbWV3aGF0LWluZGVwZW5kZW50
IGxvZ2ljIGNlbGxzIChvciwgYWN0dWFsbHksIExVVHMsIGJ1dCAKdGhhdCdzIGFuIGltcGxlbWVu
dGF0aW9uIGlzc3VlKS4KCgo+Cj4+IEFjY29yZGluZyB0byBteSBzdHVkeSBvZiB0aGUgRlBHQSBj
b2RlLCB0aGUgcmVnaXN0ZXIgc2V0cyBhcmUgc2VyaWFsaXplZAo+PiB3aXRoaW4gdGhlIHRpbWVk
LWNvbW1hbmQgRklGTywgd2hpY2ggaXMgYW4gQVhJIEZJRk8sIHdoaWNoIG1lYW5zCj4+ICAgICB0
aGF0IHNhaWQgY29tbWFuZHMgbWF5IGJlIHNwcmVhZCBvdmVyIHNldmVyYWwgMTBzIG9mIG5hbm9z
ZWNvbmRzIGluCj4gSXMgdGhpcyBhbiBhbHRlcm5hdGl2ZSB3YXkgb2Ygc2F5aW5nICJ0aW1lZCBj
b21tYW5kcyBhY3R1YWxseSBkbyBOT1QgZXhlY3V0ZSBhdCB0aGUgc2FtZSB0aW1lIG9uIHRoZSB4
MzEwIiBvciBhbHRlcm5hdGl2ZWx5ICJUaGUgeDMxMCBkb2VzIGFjdHVhbGx5IE5PVCBzdXBwb3J0
IHBoYXNlIGNvaGVyZW50IG9wZXJhdGlvbiI/Ckkgd29uJ3QgZ28gdGhhdCBmYXIsIGJlY2F1c2Ug
SSdtIG5vdCBhbiBGUEdBIGV4cGVydC4gIEJ1dCB0aGUgd2hvbGUgCiJzeW5jaHJvbml6ZSB0aGUg
dGhpbmdzIiB2aWEgdGltZWQgY29tbWFuZHMgd2FzIG9yaWdpbmFsbHkgaW50ZW5kZWQgdG8KICAg
YWxsb3cgc3luY2hyb25pemF0b24gKmFjcm9zcyogbXVsdGlwbGUgVVNSUCB1bml0cy4gIFdoaWNo
IHdpbGwgd29yaywgCmFjY29yZGluZyB0byBteSBhbmFseXNpcywgYmVjYXVzZSB0aG9zZSBGSUZP
cyB3aWxsIGFsbCBiZSBleGVjdXRlZAogICBpbiBsb2NrLXN0ZXAgKmFjcm9zcyogdGhlIFVTUlBz
IGludm9sdmVkLiAgQnV0IHdpdGhpbiBhIFVTUlAsIEkgdGhpbmsgCnRoaW5ncyBhcmUgYSBiaXQg
bXVya2llci4KPgo+IFRoYXQgd291bGQgY29tZSBwcmV0dHkgbXVjaCB0byBhIHNob2NrLgo+Cj4g
SXQgd291bGQgZXhwbGFpbiB3aHkgcGhhc2UgY29oZXJlbmNlIHdvcmtzIHdpdGggYW5hbG9nLW9u
bHkgdHVuaW5nIChhc3N1bWluZyBvbmUgc2luZ2xlIHJlZ2lzdGVyIHNldCBpcyBzdWZmaWNpZW50
IGZvciBhbmFsb2cgdHVuaW5nKS4KPgo+IE9uIHRoZSBvdGhlciBoYW5kLCBpdCB3b3VsZCBub3Qg
ZXhwbGFpbiB3aHkgUlgtUlggcGhhc2UgY29oZXJlbmNlIChvciBUWC1UWCkgd29ya3MuIEluIHRo
YXQgY2FzZSwgb25seSB0aGUgdHdvIEREQ3MgYXJlIHVzZWQuIEJ1dCB0aGVyZSBhcmUgc3RpbGwg
c2V2ZXJhbCByZWdpc3RlciBzZXRzIHdoaWNoIHdvdWxkIGVxdWFsbHkgYnJlYWsgc3R1ZmYuCkxp
a2UgSSBzYWlkLCBJJ20gbm90IGFuIGV4cGVydCBhdCBGUEdBIHN0dWZmLCBhbmQgSSdtIGhvcGlu
ZyBzb21lb25lIAptb3JlIHByaWVzdGx5IHRoYW4gbWUgY2FuIGNvbW1lbnQuCgpBYnNvbHV0ZSBw
aGFzZSBjb2hlcmVuY2UgKHdpdGggcHJlZGljdGFibGUvemVybyBwaGFzZS1vZmZzZXQpIGlzLCBp
biAKcHJhY3RpY2UsIGluY3JlZGlibHkgaGFyZCB0byBhY2hpZXZlLS1QQVJUSUNVTEFSTFkgUEhB
U0UgT0ZGU0VULgogICBXaGljaCBpcyB3aHkgbW9zdCBmaWVsZGVkIFJGIHN5c3RlbXMgd29yayBq
dXN0IGZpbmUgd2l0aCAid29iYmx5IiAKcGhhc2Utb2Zmc2V0LCB3aXRoIG1lY2hhbmlzbXMgdG8g
ZmFjdG9yIGl0IG91dCAiYXQgc3RhcnR1cCIgKGZvciB3aGF0ZXZlcgogICBkZWZpbml0aW9uIG9m
ICJzdGFydCB1cCIgaXMgYXBwcm9wcmlhdGUpLgoKSSBob3BlIHRoYXQgc29tZW9uZSB3aXRoIGJl
dHRlciB1bmRlcnN0YW5kaW5nIG9mIHRoZSB0aW1lZC1jb21tYW5kIEZJRk8gCmNhbiBjaGltZSBp
biBhbmQgdGVsbCBtZSB0aGF0IEknbSBjb21wbGV0ZWx5IHdyb25nLgoKCgoKPgo+IEx1a2FzCj4K
PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0
cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=
