Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BB337488E
	for <lists+usrp-users@lfdr.de>; Wed,  5 May 2021 21:16:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8464384056
	for <lists+usrp-users@lfdr.de>; Wed,  5 May 2021 15:16:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BBtL0Vvq";
	dkim-atps=neutral
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A515383E53
	for <usrp-users@lists.ettus.com>; Wed,  5 May 2021 15:15:25 -0400 (EDT)
Received: by mail-oo1-f43.google.com with SMTP id s24-20020a4aead80000b02901fec6deb28aso711229ooh.11
        for <usrp-users@lists.ettus.com>; Wed, 05 May 2021 12:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=M8qVyNIxPp0zePMejyQ+v5WRIWKQZ5j/QoDf0rDUsPw=;
        b=BBtL0VvqooNJajZVwyBbH9hTR0KlHqBBl2BbnlajsF4YBB+JtCeBARUIR9buDDkRZ7
         px8i/uFAfTsZwdm7tfOodurXC1AXPmUrZZOvvx2Y6uBNx1cb+KP12ImmSuJwRFKO5b88
         ZBvsM7dFpW1DBMVnMj55IGwhhOH/oqeBV0CwYyWvK42lyVO4uNbngc83rLahuHa8IsAI
         R254qN78qfryPLp6+JPMz1Ez9gDApQNf2FC1qyB22wbq39vTVhzPRDcm4QeavjgPbw+s
         Tf05ylYxQp0Z1pXFNsl4vk/xAaBvdhSN2isRo4odG+jGR3hcZS8u/UrDpEVpKO9giZNN
         wWKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=M8qVyNIxPp0zePMejyQ+v5WRIWKQZ5j/QoDf0rDUsPw=;
        b=nK8/aEIWi8FVS5+z0gZ8cvLKvPAVjPQeMaaAmVFuIDZZGw0e1ab/7PDNpCeRrknntM
         z1+Mq5JfaaAhTwg3Kb7ylr3cY3oKB2z4TkvStk8oZi7T1hsBYsgl8K8bBIuO1ZXmGM13
         O87gYIxLSnckt/2GuDlnvv+ysH9hxdzva3K54Y8cQ0Mi69EXfuWPHWafba7NPwZgjTTg
         SZI9hGH7jHJfqdd/v/UxWjVNAnxdZaThLJFrjgfwylPqL3PSLieKBCj4id5zoXlPoAJJ
         7RMk63GaLxIBGF9a4N0hkWqekzNU0c3r+nordmRm27ybnbVB8ixnIjAAOU6REQTTQq7Q
         2QdQ==
X-Gm-Message-State: AOAM530aodj1k/TlJz2xMIuIsnM6khjtOliNHv9nrhy/lroVdVdWZHC1
	IEdFGUDss5/YOBiw8juMeMVu+p/Q8COSRcZWFHcBK1k3lYE=
X-Google-Smtp-Source: ABdhPJyV9k7Rx94cdqusnfG2cGn0xlg0BS0tyBhvlWoMIEnAo+sFYKmeD44Q8wrX+vN6npgeDvU9ml7cGrZ0Ewr99HU=
X-Received: by 2002:a4a:b997:: with SMTP id e23mr145980oop.13.1620242124458;
 Wed, 05 May 2021 12:15:24 -0700 (PDT)
MIME-Version: 1.0
References: <d49767f2c24d46afb9c3546118083d2f@external.thalesgroup.com>
 <CAB__hTQE5wbeM-hqS2SmY0MzCbm+4zhtgEPff4RdO9GkYGsvLA@mail.gmail.com> <f9535aed04ea4bd188d0385199dccd43@external.thalesgroup.com>
In-Reply-To: <f9535aed04ea4bd188d0385199dccd43@external.thalesgroup.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 5 May 2021 15:15:13 -0400
Message-ID: <CAB__hTSrsMRtgYpFTkqa1=T1qaNdBs_NH2FWwr_W7ZtBM10uqQ@mail.gmail.com>
To: COURANT Frederique - Contractor <frederique.courant@external.thalesgroup.com>
Message-ID-Hash: QVBS4TZIW2ABFJYSOEF7KV4QAN4R5EQ3
X-Message-ID-Hash: QVBS4TZIW2ABFJYSOEF7KV4QAN4R5EQ3
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read and write register personal RFNOC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QVBS4TZIW2ABFJYSOEF7KV4QAN4R5EQ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

eWVzLiB0aGUgcHJvYmxlbSBpcyBsaWtlbHkgb24gdGhlIEZQR0Egb3IgcGVyaGFwcyB0aGUgcHJv
YmxlbSBpcw0KY29uY2VwdHVhbC4gIFRoZSBGUEdBIHNldHRpbmdzIGJ1cyByZWdpc3RlciBpcyBl
c3NlbnRpYWxseSAid3JpdGUNCm9ubHkiLiBZb3UgbmVlZCB0byBpbXBsZW1lbnQgYWRkaXRpb25h
bCBsb2dpYyBvbiB0aGUgRlBHQSB0byBiZSBhYmxlDQp0byByZWFkIHRoaXMgc2V0dGluZyB2aWEg
YSByZWFkYmFjayBhZGRyZXNzLiAgVGFrZSBhIGxvb2sgYXQgdGhlIEV0dHVzDQpGRlQgYmxvY2sg
aW1wbGVtZW50YXRpb24uICBJbiB0aGlzIGltcGxlbWVudGF0aW9uLCB5b3UgY2FuIHdyaXRlIGEN
CnNldHRpbmcgdG8gYW4gYWRkcmVzcyBuZWFyIDEzMCBidXQgd2hlbiB5b3UgcmVhZCB0aGUgc2Ft
ZSBzZXR0aW5nIHRoZQ0KYWRkcmVzcyBpcyBuZWFyIDAuIE9uIHRoZSBvdGhlciBoYW5kLCBzb21l
dGltZXMgeW91IGRvbid0IG5lZWQgdG8gcmVhZA0KaXQgYmFjayBpZiB5b3UgY2FuIGp1c3Qgc3Rv
cmUgdGhlIG1vc3QgcmVjZW50bHkgd3JpdHRlbiB2YWx1ZSBpbg0Kc29mdHdhcmUgKHN1Y2ggYXMg
aW4gdGhlIHByb3BlcnR5IHRyZWUpLiBUaGlzIGlzIGEgZGVzaWduIGRlY2lzaW9uLg0KDQpPbiBX
ZWQsIE1heSA1LCAyMDIxIGF0IDExOjQ2IEFNIENPVVJBTlQgRnJlZGVyaXF1ZSAtIENvbnRyYWN0
b3INCjxmcmVkZXJpcXVlLmNvdXJhbnRAZXh0ZXJuYWwudGhhbGVzZ3JvdXAuY29tPiB3cm90ZToN
Cj4NCj4gVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciBoZWxwIFJvYi4NCj4NCj4gSWYgSSBo
YXZlIHVuZGVyc3RhbmQgdGhpcyBpcyBhIEZQR0EgcHJvYmxlbSA/DQo+IEJlY2F1c2UgSSBoYXZl
IHRyaWVkIHRvIGRvIHRoaXMgd2l0aCB0aGUgRERDIGJsb2NrcyBhbmQgaXQgaXMgdGhlIHNhbWUg
cHJvYmxlbSB3aGVuIEkgdXNlIHdyaXRlIGZvciB0aGUgcmVnaXN0ZXIgQ09ORklHIGF0IHRoZSBh
ZGRyZXNzIDEzMCBJIGRvbid0IGZpbmQgZmluZCB0aGUgdmFsdWUgdGhhdCBJIGhhZCB3cml0ZSBp
biBub25lIG9mIGFkZHJlc3MuDQo+DQo+IFNvcnJ5IGlmIEkgaGF2ZSBkaWZmaWN1bHRpZXMgdG8g
dW5kZXJzdGFuZCBidXQgSSdtIG5vdCBpbiBjaGFyZ2Ugb2YgdGhlIEZQR0EgSSBvbmx5IGRldmVs
b3AgdGhlIGFwcGxpY2F0aW9uIHdpdGggdGhlIEZQR0EgdGhhdCBvbmUgb2YgbXkgdGVhbW1hdGUg
cHJvdmlkZWQgZm9yIG1lLg0KPg0KPiBGcmVkDQo+DQo+IC0tLS0tTWVzc2FnZSBkJ29yaWdpbmUt
LS0tLQ0KPiBEZSA6IFJvYiBLb3NzbGVyIDxya29zc2xlckBuZC5lZHU+DQo+IEVudm95w6kgOiBt
ZXJjcmVkaSA1IG1haSAyMDIxIDE1OjE2DQo+IMOAIDogQ09VUkFOVCBGcmVkZXJpcXVlIC0gQ29u
dHJhY3RvciA8ZnJlZGVyaXF1ZS5jb3VyYW50QGV4dGVybmFsLnRoYWxlc2dyb3VwLmNvbT4NCj4g
Q2MgOiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBPYmpldCA6IFJlOiBbVVNSUC11c2Vy
c10gUmVhZCBhbmQgd3JpdGUgcmVnaXN0ZXIgcGVyc29uYWwgUkZOT0MgYmxvY2sNCj4NCj4gSGkg
RnJlZGVyaXF1ZSwNCj4gSSB0aGluayB0aGF0IHRoZSBmaXJzdCBzdGVwIGlzIHRvIGZvcmdldCBh
Ym91dCBzZXRfYXJnIGFuZCBnZXRfYXJnIGZvciBub3cgKHVudGlsIHlvdSBnZXQgdGhpbmdzIGJl
aGF2aW5nIHByb3Blcmx5KS4gIFRoZSBnZXQvc2V0IGFyZyBhcmUgdXNlZCB0byBhY2Nlc3MgdmFs
dWVzIGluIHRoZSBVSEQgcHJvcGVydHkgdHJlZSBhbmQgdGhlIGNvbmZpZ3VyYXRpb24gb2YgeW91
ciB4bWwgbWVhbnMgdGhhdCB3aGVuIHlvdSB1c2Ugc2V0X2FyZywgaXQgd2lsbCBhdXRvbWF0aWNh
bGx5IGNhbGwgc3Jfd3JpdGUuIEJ1dCBnZXRfYXJnIGRvZXMgbm90IGludGVyYWN0IHdpdGggdGhl
IEZQR0EgaW4geW91ciBjYXNlLg0KPg0KPiBTbywgY29uc2lkZXJpbmcgc3Jfd3JpdGUsIHNyX3Jl
YWQzMiBhbmQgeW91ciBGUEdBIHJlZ2lzdGVyIGltcGxlbWVudGF0aW9uLCB5b3VyIEZQR0EgaW1w
bGVtZW50YXRpb24gdHlwaWNhbGx5IGhhcyBzZXBhcmF0ZSBzZWN0aW9ucyBmb3Igc2V0dGluZyBy
ZWdpc3RlcnMgYW5kIHJlYWRiYWNrIG9mIHJlZ2lzdGVycy4gIExvb2sgYXQgc29tZSBvZiB0aGUg
RXR0dXMgZXhhbXBsZXMuICBBbmQsIGl0IGlzIGNvbW1vbiBmb3IgdGhlIHNldCBhZGRyZXNzIGFu
ZCB0aGUgZ2V0IGFkZHJlc3MgdG8gYmUgZGlmZmVyZW50LiAgUGVyaGFwcyB0aGlzIGlzIGJlY2F1
c2UgRXR0dXMgaGFzIHJlc2VydmVkIGFkZHJlc3NlcyAwLTEyNyBmb3IgdGhlICJzZXQiIGZ1bmN0
aW9uYWxpdHksIGJ1dCB0aGUgc2FtZSBpcyBub3QgdHJ1ZSBmb3IgImdldCIgYWRkcmVzc2VzIHdo
aWNoIG9mdGVuIHN0YXJ0IGF0IDAuICBCb3R0b20gbGluZSBpcyB0aGF0IHlvdXIgRlBHQSBjdXN0
b20gY29kZSBuZWVkcyB0byBoYW5kbGUgc2VwYXJhdGVseSBib3RoIGdldCAmIHNldCBmdW5jdGlv
bmFsaXR5Lg0KPg0KPiBPbmNlIGltcGxlbWVudGVkLCB5b3Ugc2hvdWxkIGJlIGFibGUgdG8gdmVy
aWZ5IHByb3BlciBvcGVyYXRpb24gb2YgeW91ciByZWdpc3RlcnMgaW4gYSB0ZXN0YmVuY2guIFRo
aXMgd2lsbCB0ZWxsIHlvdSBpZiB5b3VyIGltcGxlbWVudGF0aW9uIGlzIHdvcmtpbmcgYXMgeW91
IGV4cGVjdC4NCj4gUm9iDQo+DQo+IE9uIFdlZCwgTWF5IDUsIDIwMjEgYXQgODo1NSBBTSBDT1VS
QU5UIEZyZWRlcmlxdWUgLSBDb250cmFjdG9yIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBIZWxsbyBVc2VycywNCj4gPg0KPiA+DQo+
ID4NCj4gPiBJIGhhdmUgY3JlYXRpbmcgYSBwZXJzb25uYWwgYmxvY2sgYnV0IHdoZW4gSSByZWFk
IHRoZSB2YWx1ZSBvZiBteSByZWdpc3RlciBpdCByZXR1cm4gYWx3YXlzIHRoZSBzYW1lIHZhbHVl
Lg0KPiA+DQo+ID4gV2hlbiBJIHVzZSBzZXRfYXJnIGFuZCBnZXRfYXJnIHRoZSB2YWx1ZSBjaGFu
Z2UgbGlrZSBJIHdhbnQgYnV0IHdoZW4gSSB0cnkgdG8gcmVhZCB0aGUgcmVnaXN0ZXIgdGhhdCBp
cyBhc3NvY2lhdGluZyB3aXRoIHRoZSBwcmVjZWRlbnQgYXJnIHdpdGggc3JfcmVhZDMyIGl0IGxv
b2sgbGlrZXMgdGhhdCB0aGUgdmFsdWUgZGlkbuKAmXQgY2hhbmdlLg0KPiA+DQo+ID4gRm9yIGV4
YW1wbGUgaW4gbXkgeG1sIGZpbGUgSSBoYXZlIDoNCj4gPg0KPiA+IDxyZWdpc3RlcnM+DQo+ID4N
Cj4gPiAgICAgICAgICAgICAgIDxzZXRyZWc+DQo+ID4NCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPG5hbWU+UkVHX0NGRzwvbmFtZT4NCj4gPg0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8YWRkcmVzcz4xMzA8L25hbWU+DQo+ID4NCj4gPiAgICAgICAgICAgICAgIDwv
c2V0cmVnPg0KPiA+DQo+ID4gPC9yZWdpc3RlcnM+DQo+ID4NCj4gPg0KPiA+DQo+ID4gPGFyZ3M+
DQo+ID4NCj4gPiAgICAgICAgICAgICAgIDxhcmc+DQo+ID4NCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPG5hbWU+Y29uZmlnPC9uYW1lPg0KPiA+DQo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDx0eXBlPmludDwvdHlwZT4NCj4gPg0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8dmFsdWU+MDwvdmFsdWU+DQo+ID4NCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPGFjdGlvbj4NCj4gPg0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFNSX1dSSVRFKOKAnFJFR19DRkfigJ0sICRjb25maWcpDQo+ID4NCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgPC9hY3Rpb24+DQo+ID4NCj4gPiAgICAgICAgICAg
ICAgIDxhcmc+DQo+ID4NCj4gPiA8L2FyZ3M+DQo+ID4NCj4gPg0KPiA+DQo+ID4gSWYgSSB1c2Ug
c3JfcmVhZDMyIGZvciByZWFkIGF0IHRoZSBhZGRyZXNzIDEzMCBpdCBhbHdheXMgcmV0dXJuIDEw
DQo+ID4gZXZlbiBpZiBJIGhhdmUgdHJ5IHRvIG1vZGlmeSB0aGUgdmFsdWUgd2l0aCBzcl93cml0
ZSjigJxSRUdfQ0ZH4oCdLCAxMDAwKQ0KPiA+IG9yIHNyX3dyaXRlKDEzMCwgMTAwMCkNCj4gPg0K
PiA+IEl0IGlzIHRoZSBzYW1lIHByb2JsZW0gaWYgSSBjaGFuZ2UgdGhlIHZhbHVlIHdpdGggc2V0
X2FyZyjigJxjb25maWfigJ0sIDEwMDApLCBpdOKAmXMgb2theSB3aGVuIEkgcmVhZCB3aXRoIGdl
dF9hcmco4oCcY29uZmln4oCdKSBJIG9idGFpbiAxMDAwIGJ1dCBzcl93cml0ZSByZXR1cm4gYWx3
YXlzIDEwLg0KPiA+DQo+ID4NCj4gPg0KPiA+IEnigJltIHdvcmtpbmcgd2l0aCBVSEQgMy4xMyBp
biBDKysuDQo+ID4NCj4gPg0KPiA+DQo+ID4gVGhhbmtzIGZvciB5b3VyIGhlbHAuDQo+ID4NCj4g
Pg0KPiA+DQo+ID4gUmVnYXJkcy4NCj4gPg0KPiA+DQo+ID4NCj4gPiBGcmVkDQo+ID4NCj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIFRvIHVuc3Vi
c2NyaWJlDQo+ID4gc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==
