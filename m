Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E531903DC
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 04:36:25 +0100 (CET)
Received: from [::1] (port=55628 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGaMU-0005bj-OO; Mon, 23 Mar 2020 23:36:18 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:36372)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jGaMR-0005Ph-L4
 for usrp-users@lists.ettus.com; Mon, 23 Mar 2020 23:36:15 -0400
Received: by mail-qt1-f174.google.com with SMTP id m33so13910552qtb.3
 for <usrp-users@lists.ettus.com>; Mon, 23 Mar 2020 20:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=XYtuU5sF1BPFRxjQ0ddeV61D8LQjmbDzkqwKIHkfJXA=;
 b=KhzvmqIwar0aGVeabnsmIEEY6MywfLJeZlu7ruUmlUl4cokdZWoUbzuA5NrEyrsg9A
 3v7K9VDEBZbHFNDhvt19ggjluGMSaDvEWIF7G/QaOT7PCaTZRoi6+pbOwZgS7Tkyfh6i
 YYoXaA1Or/W66LTVePOzVGhulJwLTRDFpaSfQU7/nDaj63PFTvgQPOMhv5dHvY5K8VS/
 weuohyHWJNnEdt/eF9yCDoDiFALGXNokEJURbT9A+ZR59jUneSI5ypIs/jsQTl2NlLi0
 YxZkaawpowXFvTLIqE5tWHCDogqZzLobwN7PSs169QQggCn960ldoIvUf2FGkh3wmAnz
 bDTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=XYtuU5sF1BPFRxjQ0ddeV61D8LQjmbDzkqwKIHkfJXA=;
 b=VXbhV7LoUzK+mNPG/BBrbfCeMX2MYq7STTNd+DRluQuKh3Qc5/NiXwZ0ic9plGmFLn
 ZMUnjND0zkjH3muQTS7YmKhFeSwX1x0EcsiHGuI4iZkFYhw2roZaXDdvLtmd3BV3PpWW
 o80Mtfc9Odup+0GRjZmGKhV5Vucox8QDIltf7jmgcVochWPFmybOoOdMTYNEY6iuRIDU
 errO9P4wqKy+ki3vFxyfQdOU3D/HXe19wJrTPEG0htjfVucRGj0+QbwDM5le21bj9T3x
 aTPgl+P8PABrOlJLpdqWElKyVjJSwBG5Qw5EPZQDhQpyKXNYMTmoHA7veOOpM4f9Gttv
 bQCg==
X-Gm-Message-State: ANhLgQ0L4LajLfDKw/WHjqhpshUmZygD7romM1MCaosBgtv/a7vuLprV
 ejSo3Z7tPkoUsD14BGDCyx8L8Cnn
X-Google-Smtp-Source: ADFU+vv4/3+jLv7wVlw8Stu3x7TBNzhtSBOmFCbnRDJafbX4UYQaJBTrc/ax62X4nRHZkYsyV4vSPQ==
X-Received: by 2002:aed:3e8e:: with SMTP id n14mr25396443qtf.245.1585020934705; 
 Mon, 23 Mar 2020 20:35:34 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id i13sm12021103qke.56.2020.03.23.20.35.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2020 20:35:34 -0700 (PDT)
Message-ID: <5E798004.4040903@gmail.com>
Date: Mon, 23 Mar 2020 23:35:32 -0400
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
In-Reply-To: <trinity-d7f908f5-bedb-43b2-b687-8e8632475dc0-1585019285999@3c-app-gmx-bap77>
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

T24gMDMvMjMvMjAyMCAxMTowOCBQTSwgTHVrYXMgSGFhc2Ugd3JvdGU6Cj4gSGkgTWFyY3VzLAo+
Cj4+IEdlc2VuZGV0OiBGcmVpdGFnLCAxMy4gTcOkcnogMjAyMCB1bSAxMzoyOSBVaHIKPj4gVm9u
OiAiTWFyY3VzIEQuIExlZWNoIiA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+Cj4+IEFuOiAiTHVr
YXMgSGFhc2UiIDxsdWthc2hhYXNlQGdteC5hdD4sICJSb2IgS29zc2xlciIgPHJrb3NzbGVyQG5k
LmVkdT4KPj4gQ2M6ICJVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgPHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tPgo+PiBCZXRyZWZmOiBSZTogW1VTUlAtdXNlcnNdIFVTUlAgWDMxMCBpZ25v
cmVkIERTUCByZXR1bmluZyBvbiBUWCB3aGVuIHVzaW5nIGEgdGltZWQgY29tbWFuZAo+Pgo+PiBP
biAwMy8xMy8yMDIwIDEwOjUyIEFNLCBMdWthcyBIYWFzZSB3cm90ZToKPj4+IEhpIGFnYWluIFJv
YiwKPj4+Cj4+PiBZZXMsIEkgY29uZmlybToKPj4+Cj4+PiAxLikgRmluYWxseSBJIGdldCB0aGUg
Y29tbWFuZHMgdG8gZXhlY3V0ZSBhdCB0aGUgc2FtZSB0aW1lIChUWCBhbmQgUlggaW5kaXZpZHVh
bGx5IGFuZCBib3RoIGF0IHRoZSBzYW1lIHRpbWUpCj4+PiAyLikgWWVzLCB0aGUgcGhhc2UgaXMg
cmFuZG9tIGFmdGVyIGVhY2ggcmV0dW5lLCBldmVuIHdoZW4gSSByZXR1bmUgYmFjayB0byB0aGUg
c2FtZSBmcmVxdWVuY3kKPj4+IDMuKSAoMikgaXMgb25seSB0cnVlIGlmIGl0IGluY2x1ZGVzICpE
U1AqIHJldHVuaW5nLiBXaXRoIG5hYWxvZyByZXR1bmluZyAoK2ludGVnZXItTiByZXR1bmluZykg
SSBnZXQgcGhhc2UgY29oZXJlbmNlLCBhcyBleHBlY3RlZC4KPj4+Cj4+PiBJIGFjdHVhbGx5IGV4
cGVjdGVkIHRoZSBQTEwgcmV0dW5pbmcgbXVjaCBtb3JlIGNoYWxsZW5naW5nIHRoYW4gdGhlIERT
UCByZXR1bmluZyBidXQgZm9yIHNvbWUgcmVhc29uIGl0IHNlZW1zIHRvIGJlIHRoZSBvcHBvc2l0
ZS4uLgo+PiBJdCBkZXBlbmRzIG9uIHdoZXRoZXIgdGhlIHBoYXNlLWFjY3VtdWxhdG9yIGluIHRo
ZSBEU1AgaXMgcmVzZXQgdG8gemVybywKPj4gb3Igd2hldGhlciBqdXN0IHRoZSBpbmNyZW1lbnQg
cmVnaXN0ZXIgaXMgdXBkYXRlZCB3aXRoIHRoZQo+PiAgICAgbmV3IHBoYXNlIGluY3JlbWVudC4g
ICBUaGVyZSBhcmUgZ29vZCBhcmd1bWVudHMgZm9yIGJvdGggYXBwcm9hY2hlcy4KPiBJIGp1c3Qg
d2FudGVkIHRvIGNoZWNrIGluIGFnYWluIGlmIHlvdSBrbm93IGhvdyB0aGlzIGlzIGltcGxlbWVu
dGVkIGFuZCBob3cgeW91ciB0aG91Z2h0cyBhcmUgcmVnYXJkaW5nIHR1bmluZyBpbiBib3RoIGNh
c2VzLiBNeSB0YWtlOgo+Cj4gQ2FzZSAjMTogUGhhc2UgYWNjdW11bGF0b3IgYW5kIGluY3JlbWVu
dCByZWdpc3RlciBpcyByZXNldC4KPiAgICAgLSBUaGlzIHJlc3VsdHMgaW4gdHJhbnNpZW50cyB3
aGVuIHJlLXR1bmluZyBmcmVxdWVuY3kgYmVjYXVzZSB0aGUgbWl4ZXIgTE8gYWx3YXlzIChyZS0p
c3RhcnRzIGF0IHplcm8gcGhhc2UuCj4gICAgIC0gU2luY2UgdGhpcyBjb21wbGV0ZWx5IGRlZmlu
ZXMgdGhlIHN0YXRlIG9mIHRoZSBEREMvRFVDLCBJIGltYWdpbmUgcGhhc2UgY29oZXJlbmNlIG11
c3QgYmUgcHJlc2VydmVkIGFzc3VtaW5nIHRoZSByZXNldHMgaW4gVFggYW5kIFJYIGhhcHBlbiBl
eGFjdGx5IGF0IHRoZSBzYW1lIHRpbWUgKHdoaWNoIGlzIHN0aWxsIG5vdCBjZXJ0YWluIHRvIG1l
KQpBY2NvcmRpbmcgdG8gbXkgc3R1ZHkgb2YgdGhlIEZQR0EgY29kZSwgdGhlIHJlZ2lzdGVyIHNl
dHMgYXJlIHNlcmlhbGl6ZWQgCndpdGhpbiB0aGUgdGltZWQtY29tbWFuZCBGSUZPLCB3aGljaCBp
cyBhbiBBWEkgRklGTywgd2hpY2ggbWVhbnMKICAgdGhhdCBzYWlkIGNvbW1hbmRzIG1heSBiZSBz
cHJlYWQgb3ZlciBzZXZlcmFsIDEwcyBvZiBuYW5vc2Vjb25kcyBpbiAKdGhlIFgzMTAgKGJhc2Vk
IG9uIGEgMjAwTUh6IHN5c3RlbSBjbG9jaykuCj4KPiBDYXNlICMyOiBPbmx5IGluY3JlbWVudCBy
ZWdpc3RlciBpcyB1cGRhdGVkCj4gICAgIC0gVGhpcyByZXN1bHRzIGluIGEgc21vb3RoIHRyYW5z
aXRpb24KPiAgICAgLSBJIHdvdWxkIGd1ZXNzIHRoYXQgdGhpcyBpcyB3aGF0IFVTUlAgaW1wbGVt
ZW50cwo+ICAgICAtIFNpbmNlIG5vdCB0aGUgd2hvbGUgc3RhdGUgb2YgRFVDL0REQyBpcyByZXNl
dCBJIGNhbiBpbWFnaW5lIHRoZXJlIGlzIGEgcG90ZW50aWFsIGZvciBwaGFzZSBjb2hlcmVuY2Ug
cHJvYmxlbXMuCj4gICAgIC0gaWYgSSB1cGRhdGUgdGhlIHBoYXNlIGluY3JlbWVudCByZWdpc3Rl
ciBmb3IgRFVDIHRvIGZkc3A9NTAwZTMgYW5kIHRoZSBwaGFzZSBpbmNyZW1lbnQgcmVnaXN0ZXIg
Zm9yIEREQyB0byBmZHNwPS01MDBlMyBjYW4gdGhlcmUgYmUgYW55IHdheSBvZiBicmVha2luZyBw
aGFzZSBjb2hlcmVuY2U/IEkganVzdCBjYW4ndCB0aGluayBvZiBhIGF3YXkgKGJlY2F1c2Ugd2hp
bGUgdGhlIGZyZXF1ZW5jeSBpcyBkaWZmZXJlbnQsIGl0J3MgZXhhY3RseSB0aGUgbWlycm9yIGZy
ZXF1ZW5jeSBhbmQgcmVzdWx0cyBpbiB0aGUgc2FtZSBhYnNvbHV0IHZhbHVlKQo+Cj4gVGhhbmtz
LAo+IEx1a2FzCj4KPgo+Cj4KV2VsbCwgdXBkYXRpbmcgdGhlIGluY3JlbWVudCByZWdpc3RlciBv
bmx5IGlzICJzbW9vdGhlciIsIGJ1dCBub3QgCnBlcmZlY3RseSBzbW9vdGgsIHJlYWxseS4gIEJl
Y2F1c2UgeW91J3JlIGJvdW5kIHRvIGFicnVwdGx5IGNoYW5nZSB0aGUgCnBoYXNlLgoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBt
YWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVz
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==
