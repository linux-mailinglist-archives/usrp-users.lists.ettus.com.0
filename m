Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CABD58521E
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 17:10:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C95F383236
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 11:10:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659107456; bh=0psnehwno7OgUJRRNhOqWS/+HjaCXZCbHKmON2XbA2U=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=P04jF21xJPTRUkx4fw4ivdFu5Ndd2I/kQztRjAuyc0xsc0H2LZGYBE2fcJ5RGiBnP
	 WEM3BC5IUZuSPn7cOAtixNWEyM4Jw1Ik57ZqwNNuDMukOpGoddusZ9YgeIRikrL6AL
	 PxBdLR/FEpg/lCsIN1yDZlKOHwMRevBWARv+gInXy8gYvqVL/Z4n3Y8Y/haedZb+8k
	 2YuRXZSC5/RELt+VHYty0xGBgZ/2KSaMmLLRUWgCJqB8BYItEnhz/dQKvPTD4gGL1r
	 IsJonaOLAE026le7W9ZGUxgAPWn4k5+sJd2RjWOACEMeKqh74x+K0tIWbmef+6Z2pd
	 Vz51j0PjQCF0A==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id D6D07380A1E
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 11:08:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HiWIEVEc";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id os14so9048010ejb.4
        for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 08:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=9Cl6hhXZxT2ly8JAyqa1ElczQOS/LNdFKGbYle5v/u4=;
        b=HiWIEVEca1iztLcGieANe7xvHWdcMtTjzvnN9qlvzKXKaPM8M4EMzHHzrlhGJR9Yx1
         fvA0u7xgN3djn7XVt5poAWET3vnxFFyEjUei8VTyhA6AH+5SresDo/fQGS5By6wb30cZ
         rG/b/pgLn3Z+W5aTh2a6EbQ4kMZKnpNAnqTHoFmsPC0Ll/yLc2Bt/AQDfRqxOMbjam/F
         KX/SrnwyTe3qcy50I5BS+/kc5LUkiyj78pGx1wjj5ox6r5W3HEy6NaPYmSEo+GZ9ch1F
         fXCUB+vB93KTlQQv43z0Hw9iOwT5MD9ENW+wbWGXHAY/E/HCOZRxBVo5KxCvFLiSQfaA
         CzJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=9Cl6hhXZxT2ly8JAyqa1ElczQOS/LNdFKGbYle5v/u4=;
        b=gM33SvYYQE6CabO4XAKao/oSSa5mb+vCEJKloiufnR7ujqXVySPehrLxejaEonFCGa
         94suG/0yih/XWJnHWAfRgfnKeP5TDMlzpatyXRKOiXr3DgNs5toI1m5hP8cz7xAn4Les
         x+kBYZD+tM/7A1G4pgActEt+glXrUuGSnglZx2KlnLz5CmVFQWjFidGTe9J9B4cnWu6m
         riVKi/e9SaO2L03Y/U3lTEl9Lx/R5iT0I3uZ1m+plT0WFOeWHeo9kvcyZkbp9lw5cGD5
         byX/1fH++EFrTzfbUlHv8Q18+BbprFC1T39//A1JXr5wL8NLPYKoWXRKao+6W1EJmRv8
         ZkKA==
X-Gm-Message-State: AJIora/au4qOVxDsoKcrnKk/HU4yFN/qjIWAwFwZTZmEDCN7Zq6Xwi2J
	+7DZkOOu5M5Ajyi6A0oVbnIfw57e0EFRM1G/el8=
X-Google-Smtp-Source: AGRyM1sXviao9U2HZ76e7ivd84fkUY/rXXHjp+NE5iuGPnqmKnbXHBsKrBm/phveHZ27/Ymu6OeD6hhmCMB4Fx+8rG8=
X-Received: by 2002:a17:906:8479:b0:72b:83cf:4cf3 with SMTP id
 hx25-20020a170906847900b0072b83cf4cf3mr3132181ejc.90.1659107320349; Fri, 29
 Jul 2022 08:08:40 -0700 (PDT)
MIME-Version: 1.0
References: <MAXPR01MB43596E4778E0A0DA838DFAF489969@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
 <BN0P110MB101544FAD777E6C1534B1D66B1999@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN0P110MB101544FAD777E6C1534B1D66B1999@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 29 Jul 2022 18:08:28 +0300
Message-ID: <CAAxXO2GnCde1eEcitAwMP1T-mZvk_WjRSVo-a+5sGn+z7P1K3g@mail.gmail.com>
To: "White, Joshua J" <jjwhite@riversideresearch.org>
Message-ID-Hash: H46DVT7SS5CP5DEC3U5QNWXWS4RTSHIB
X-Message-ID-Hash: H46DVT7SS5CP5DEC3U5QNWXWS4RTSHIB
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Saurav Roy <sauravroy@iisc.ac.in>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Python API on windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/H46DVT7SS5CP5DEC3U5QNWXWS4RTSHIB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2luY2UgYnVpbGQgaXMgYSB1c2VyIGRpcmVjdG9yeSwgSSBqdXN0IHNhdmUgbXkgQ21ha2UgY29u
ZmlndXJhdGlvbg0KZWxzZXdoZXJlIGFuZCBybS1yZiAqIGluIGJ1aWxkLi4uDQpDbGVhbiBsZWF2
ZSBsb3RzIG9mIHN0dWZmIGJlaGluZDooDQoNCkhUSA0KTmlrb3MNCg0KT24gRnJpLCBKdWwgMjks
IDIwMjIgYXQgNDo0OCBQTSBXaGl0ZSwgSm9zaHVhIEoNCjxqandoaXRlQHJpdmVyc2lkZXJlc2Vh
cmNoLm9yZz4gd3JvdGU6DQo+DQo+IEkganVzdCB3ZW50IHRocm91Z2ggdGhpcyBteXNlbGYsIHNv
IEnigJlsbCB0cnkgdG8gaW5jbHVkZSBteSBleHBlcmllbmNlIGZvciB5b3UuDQo+DQo+DQo+DQo+
IEZpcnN0LCBtYWtlIHN1cmUgaWYgeW914oCZdmUgYWxyZWFkeSBidWlsdCBhbmQgaW5zdGFsbGVk
IFVIRCwgdW5pbnN0YWxsIGl0IGFuZCBydW4g4oCcbWFrZSBjbGVhbuKAnSBpbiB0aGUgYnVpbGQg
ZGlyZWN0b3J5LiBJZiB5b3XigJl2ZSBhbHJlYWR5IGJ1aWx0IGl0IGJ1dCBoYXZlbuKAmXQgaW5z
dGFsbGVkIGl0LCBydW5uaW5nIOKAnG1ha2UgY2xlYW7igJ0gc2hvdWxkIGJlIHN1ZmZpY2llbnQu
IE1ha2Ugc3VyZSB5b3UgaGF2ZSB0aGUg4oCYbWFzdGVy4oCZIGJyYW5jaCBvZiBVSEQgY2hlY2tl
ZCBvdXQsIGFuZCB3aGVuIHlvdSBydW4gY21ha2UsIG1ha2Ugc3VyZSB5b3UgaW5jbHVkZSB0aGUg
YXJndW1lbnQg4oCcLURFTkFCTEVfUFlUSE9OX0FQST1PTuKAnS4gWW91IHNob3VsZCBnZXQgYW4g
b3V0cHV0IGZyb20gY21ha2UgdGhhdCBsb29rcyBzb21ldGhpbmcgbGlrZSB0aGlzOg0KPg0KPg0K
Pg0KPiAtLSAjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMNCj4NCj4gLS0gIyBVSEQgZW5hYmxlZCBjb21wb25lbnRzDQo+DQo+IC0tICMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIw0KPg0KPiAtLSAg
ICogTGliVUhEDQo+DQo+IC0tICAgKiBMaWJVSEQgLSBDIEFQSQ0KPg0KPiAtLSAgICogTGliVUhE
IC0gUHl0aG9uIEFQSQ0KPg0KPiDigKYgb3RoZXIgc3R1ZmYg4oCmDQo+DQo+DQo+DQo+IFRoZSDi
gJxQeXRob24gQVBJ4oCdIGxpbmUgaXMgdGhlIG9uZSB5b3XigJlyZSBsb29raW5nIGZvci4gT25j
ZSB0aGF04oCZcyBkb25lIHJ1biDigJhtYWtl4oCZIGFuZCB0aGVuIOKAmHN1ZG8gbWFrZSBpbnN0
YWxs4oCZIGFuZCDigJhzdWRvIGxkY29uZmln4oCZIGFzIG5vcm1hbC4gT25jZSBpdOKAmXMgaW5z
dGFsbGVkLCB0ZXN0IHRoYXQgaXQgd29ya2VkIGNvcnJlY3RseSBieSBydW5uaW5nIOKAmHB5dGhv
bjPigJkgYW5kIHR5cGluZyDigJxpbXBvcnQgdWhk4oCdLiBJZiB5b3XigJlyZSBub3QgYWJsZSB0
byBpbXBvcnQgdGhlIHVoZCBtb2R1bGUsIG1ha2Ugc3VyZSB0aGF0IHRoZSB1aGQgZGlyZWN0b3J5
IGlzIGxvY2F0ZWQgaW4gdGhlIC91c3IvbG9jYWwvbGliL3B5dGhvbjMvZGlzdC1wYWNrYWdlcy8g
ZGlyZWN0b3J5LiBJZiBub3QsIHRyeSB0aGUgaW5zdGFsbGF0aW9uIHByb2Nlc3MgYWdhaW4uDQo+
DQo+DQo+DQo+IEkgaG9wZSB0aGlzIGhlbHBzLg0KPg0KPg0KPg0KPiBWZXJ5IHJlc3BlY3RmdWxs
eSwNCj4NCj4NCj4NCj4gSm9zaHVhIFdoaXRlDQo+DQo+IFByZWNpc2lvbiBUaW1pbmcgU3lzdGVt
cyBFbmdpbmVlcg0KPg0KPiBFbmdpbmVlcmluZyAmIFN1cHBvcnQgU29sdXRpb25zIERpcmVjdG9y
YXRlDQo+DQo+IHd3dy5yaXZlcnNpZGVyZXNlYXJjaC5vcmcNCj4NCj4gVDogOTM3Ljk4Ni4zMTUz
IHwgRjogOTM3LjQzMS4zODExDQo+DQo+DQo+DQo+IFRoaXMgZS1tYWlsIG1lc3NhZ2UsIGluY2x1
ZGluZyBhbnkgYXR0YWNobWVudHMsIGlzIGZvciB0aGUgc29sZSB1c2Ugb2YgdGhlIGludGVuZGVk
IHJlY2lwaWVudChzKSBhbmQgbWF5IGNvbnRhaW4gcHJvcHJpZXRhcnksIGNvbmZpZGVudGlhbCBv
ciBwcml2aWxlZ2VkIGluZm9ybWF0aW9uIG9yIG90aGVyd2lzZSBiZSBwcm90ZWN0ZWQgYnkgbGF3
LiBBbnkgdW5hdXRob3JpemVkIHJldmlldywgdXNlLCBkaXNjbG9zdXJlIG9yIGRpc3RyaWJ1dGlv
biBpcyBwcm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBw
bGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgYW5kIGRlc3Ryb3kgYWxsIGNvcGllcyBhbmQgdGhlIG9y
aWdpbmFsIG1lc3NhZ2UuDQo+DQo+DQo+DQo+IEZyb206IFNhdXJhdiBSb3kgdmlhIFVTUlAtdXNl
cnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgSnVseSAy
OCwgMjAyMiA5OjI1IEFNDQo+IFRvOiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBTdWJq
ZWN0OiBbVVNSUC11c2Vyc10gUmU6IFVIRCBQeXRob24gQVBJIG9uIHdpbmRvd3MNCj4NCj4NCj4N
Cj4gIENBVVRJT046IFRoaXMgZW1haWwgaXMgZnJvbSBvdXRzaWRlIG9mIFJpdmVyc2lkZSBSZXNl
YXJjaC4gQmUgY2FyZWZ1bCB3aGVuIGNsaWNraW5nIGxpbmtzIG9yIG9wZW5pbmcgYXR0YWNobWVu
dHMgdW5sZXNzIHlvdSBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUuDQo+DQo+DQo+DQo+IERlYXIg
c2lyL21hZGFtLA0KPg0KPiB3ZSBhcmUgdHJ5aW5nIHRvIGluc3RhbGwgVUhEIGFuZCBweXRob24g
QVBJIGZvciBCMjEwIGluIHdpbmRvd3MgMTEuIFdlIGFyZSBmb2xsb3dpbmcgYmluYXJ5IGluc3Rh
bGxhdGlvbiBmb3IgVUhELiBCdXQgYWZ0ZXIgdGhpcywgd2UgZG8gbm90IGtub3cgaG93IHRvIHBy
b2NlZWQgdG8gY3JlYXRlIHRoZSBweXRob24gQVBJLiBPbiB0aGlzIHBhZ2UsICBodHRwczovL2Zp
bGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV9weXRob24uaHRtbCBpbnN0cnVjdGlvbnMgYXJlIHJl
bGF0ZWQgdG8gJ2luc3RhbGwgdGhlIFB5dGhvbiBBUEkgd2hlbiBidWlsZGluZyBVSEQgZnJvbSBz
b3VyY2UuJyBDb3VsZCB5b3UgcGxlYXNlIHByb3ZpZGUgdGhlIFB5dGhvbiBBUEkgYnVpbGRpbmcg
c3RlcHMgZm9yIGJpbmFyeSBpbnN0YWxsYXRpb24gb2YgVUhEPyAgVGhhbmsgeW91IHZlcnkgbXVj
aC4NCj4NCj4NCj4gV2l0aCByZWdhcmRzDQo+DQo+IFNhdXJhdiBSb3kNCj4NCj4NCj4NCj4gU2Vu
dCBmcm9tIE1haWwgZm9yIFdpbmRvd3MNCj4NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
