Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5129FEB75
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2024 23:45:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 079B7385AFB
	for <lists+usrp-users@lfdr.de>; Mon, 30 Dec 2024 17:45:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1735598749; bh=c0FJrQTMv+CZ8jSQLVHAZETjgl14rQkzPMY8rm0MVhY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XXaSRvfCmm+LWTNbsGvp0uzjhtqrfMis9CAKW1spHxLOJJE8b//ObswjxKZbz6eL+
	 Sz+BcqdvDhj9xuNJnI8FEJ8Rz8ww8Kubq/hryhmZS5iudLklLFlprw6UnC6sYGCtZ4
	 os3sSeY9xxM9vKQxvVpltjRTvkxVMcysZlfwTV4ciuOubxP6dg4LdsYrWd1qSyEvId
	 8J0Tgyn1i4fg0abIqC82PRtzm+GSFgUkAjfWQUFXk0TqMXU6SB+HgeNyZjQWztGNkH
	 cfZqXoQcEHvnzXLnRfcb02/NbbcvPYwXs6sl7ktj/lTdqEhe4j25ABkXcFEdBKDc5p
	 +Rwj+Q3cr0V8A==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 18C28385967
	for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2024 17:45:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kyFRL2Aa";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-467838e75ffso115591141cf.3
        for <usrp-users@lists.ettus.com>; Mon, 30 Dec 2024 14:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735598741; x=1736203541; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BgVljUaFoj4DURJwSUClJ6lh0089SLNfXmJVZeKEEro=;
        b=kyFRL2AafTHLNHb8a7ubl0JjqNQGFBgtAoqD2AhGVOVX+oWVGEHRnl0n7m7Zm3kevM
         CjyV6yrUaJ/Ubcs6cMyecmV9EYoK3xyi66BCXnhczD4nPb4ZBpBRpmvs8y1mQeis2Kgx
         SZB05sXPS9lxdMQmS7eYtaNSqnpcQqd4qeCga8Y6/THBszlHFDyfYl8Y5EZn7l9rJIdH
         6070tKYf0hHe7vM6lELtaaVBzmFFjU8V6DIs3GeefHUp8BwfJbeqKIcbyCZq8NcJGaVH
         1s00piFdD5Jy7vOONY2bZnD9vy7oQQ7uKISgvkh90+1OWdAUX5BLQ1i7Z9ong3Q0CH+0
         B5IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735598741; x=1736203541;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BgVljUaFoj4DURJwSUClJ6lh0089SLNfXmJVZeKEEro=;
        b=O85ZSMjSaxrHxhNbawkSHKhfjPekmiVjKR4WZqpf71fUp4fH+aovNC5SQg/mZSn/RD
         8snB/e0Jz3HTUyuboJynLGyNwf8bBbpxQsmT6kNhxqE1oMw19RpUyBYycrrbb5y8UHwj
         id9VB0+X/UwAICGftkK9bJV8Bn0RQqXlS5r5Rpn4iXuqfIYw2XT6Kxg1tXS8i+Z1ARjG
         AJjT7bTwf9HkyY//SGj0wqsq0MOtngDSOkDJ1ZnqaYQ3KZm6FAIPGEdRgpdNN4DmkP8L
         V4jti11DKku5bi+9lUXQ/QHvamOTeTB+YQSe8A+uKPwvqsv7t5RFp96BmLJSr7PnYQmr
         fCrQ==
X-Gm-Message-State: AOJu0YwXdc7fdT2H/hl9IQYdLwsWiZFYc/Hs9Q0gnuiOM+dWr4BFs0ax
	KyT+dGSNQoNErd7m7C8y8r0bc+YegTu/pEk32mv5mapqPRpFRFYTTOnMXA==
X-Gm-Gg: ASbGncsVFaCl0hEnDuYvdNFn7kKVC3TOf/Vnzp82N5KKT0kCHDtKX8RlAs01j7fxyi4
	mSlaco5W9/5RfkQdY2eHJG9SHdb3YeiAAYdu1Yt9AZ3vZKciAaJm2/b0nSvBbka8ZhC6Oht0DR7
	SlFjt8d9GdxwGTYf+jDdqTKf+DMDXH3P83mz3IFww5hZD25RFz4xlR0cKTMQYIOMNYclme5f4y7
	Zhpf08FiUCfkaknuwg8LrTe+F7KVJkdJgJcs4OPP5wuFzl240T/+ttEo3yfpaPCA24=
X-Google-Smtp-Source: AGHT+IFCQowRN7KpAv23pcYpGkJ2jGKM6YxFuzpvPL4ODDczUuPlsUQM0ZUDIqBFiWNXXLzFSyJsQw==
X-Received: by 2002:a05:622a:15c2:b0:466:954e:a89f with SMTP id d75a77b69052e-46a4a8cbc4dmr553523391cf.14.1735598741205;
        Mon, 30 Dec 2024 14:45:41 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-46a3eb2b550sm109202831cf.81.2024.12.30.14.45.40
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 14:45:40 -0800 (PST)
Message-ID: <8a29d9e2-2b89-4a55-bb28-1d5fb5a84e99@gmail.com>
Date: Mon, 30 Dec 2024 17:45:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <cd7a43dc-2d15-43c8-a4e7-abde149bf497@ettus.com>
 <a5fae5af-58fb-4f08-ae95-ffe5a04d2efb@gmail.com>
 <74765b69-2150-4cc1-84d2-70577f3eee1e@baseband.digital>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <74765b69-2150-4cc1-84d2-70577f3eee1e@baseband.digital>
Message-ID-Hash: C6LK3SMOL34F3IQVME23VIXE6OQQLOXV
X-Message-ID-Hash: C6LK3SMOL34F3IQVME23VIXE6OQQLOXV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Thanks for a decade of professional fun! (Or: so long, and see you around!)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/C6LK3SMOL34F3IQVME23VIXE6OQQLOXV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMzAvMTIvMjAyNCAxNzo0MywgTWFyY3VzIE3DvGxsZXIgd3JvdGU6DQo+IFRoYW5rcyA6KQ0K
Pg0KPiBhbmQ6IHllYWgsIHlvdSd2ZSBub3Qgc2VlbiB0aGUgbGFzdCBvZiBtZSA6KQ0KPg0KPiBT
ZWUgeW91IGFyb3VuZCwNCj4gTWFyY3VzDQo+DQo+IChQUzogV2UncmUgbW92aW5nIEdSQ29uIGNs
b3NlciB0byBDYW5hZGEuIFNhZGx5LCB3cm9uZyBlbmQsIGJ1dCBzdGlsbCANCj4gY2xvc2VyIHRv
IENhbmFkYSwgdGhpcyB5ZWFyLiBKdXN0IG5vcnRoIG9mIFNlYXR0bGUuIElmIHdlIGtlZXAgdXAg
dGhpcyANCj4gdHJlbmQsIEdSQ29uJzI3IHdpbGwgYmUgaG9zdGVkIGJ5IENDRVJBIGF0IENhcnAu
IElmIHdlIHN0YXJ0IA0KPiBjb252aW5jaW5nIE5lZWwgbm934oCmKQ0KT3VyIGZhY2lsaXR5IGlz
bid0IGJpZyBlbm91Z2ggdG8gaG9zdCBhIEdSQ29uLCBzYWRseS4NCg0KDQo+DQo+IE9uIDMwLjEy
LjI0IDIwOjAzLCBNYXJjdXMgRC4gTGVlY2ggd3JvdGU6DQo+PiBPbiAzMC8xMi8yMDI0IDEzOjU4
LCBNYXJjdXMgTcO8bGxlciB3cm90ZToNCj4+PiBIZWxsbyBVU1JQLVVzZXJzLA0KPj4+DQo+Pj4g
d2hlbiBJIHN0YXJ0ZWQgaGFuZ2luZyBhcm91bmQgb24gdGhpcyBtYWlsaW5nIGxpc3QgaW4gMjAx
MywgSSANCj4+PiB3b3VsZG4ndCBoYXZlIHRob3VnaHQgdGhhdCBJJ2Qgc3RpbGwgYmUgYXJvdW5k
IGVsZXZlbiB5ZWFycyBsYXRlci4NCj4+Pg0KPj4+IEJ1dCBtZSBhc2tpbmcgYWJvdXQgc3BvcmFk
aWMgc2lnbmFsIGlzc3VlcyBhZnRlciByZXR1bmluZywgd2hpY2ggSSANCj4+PiB3b3VsZCBsYXRl
ciBiZSBhYmxlIHRvIGF0dHJpYnV0ZSB0byB0aGUgaW1wdWxzZSByZXNwb25zZSBvZiB0aGUgREMg
DQo+Pj4gY2FuY2VsbGF0aW9uIElJUiBmaWx0ZXIgaW4gdGhlIE4yeDAgc2V0IG1lIG9uIGEgY291
cnNlIHRvLCBtb3N0bHkgDQo+Pj4gb3V0IG9mIGJvcmVkb20gZHVyaW5nIGxlbmd0aHkgY29tbXV0
ZSwgd291bGQgc3RhcnQgaGVscGluZyBwZW9wbGUgb24gDQo+Pj4gdGhpcyBtYWlsaW5nIGxpc3Qg
ZnJvbSBtZW1vcnkgYW5kIGxlY3R1cmUgb2YgdGhlIEdOVSBSYWRpbywgVUhEIChhbmQgDQo+Pj4g
Z2F0ZXdhcmUpIHNvdXJjZSBjb2RlLiBJdCB3YXMgdGhhdCB3aGljaCBpbiB0aGUgZW5kIGdvdCBt
ZSANCj4+PiBjb250cmFjdGVkIGFzIHN1cHBvcnQgZW5naW5lZXIgZm9yIEV0dHVzIGluIHNwcmlu
ZyAyMDE0Lg0KPj4+DQo+Pj4gU2luY2UgdGhlbiBJIGhhZCB0aGUgaW5kdWJpdGFibGUgZnVuIHRv
IHBsYXkgYSBzbWFsbCBzdXBwb3J0aW5nIHJvbGUgDQo+Pj4gaW4gc28gbWFueSBwcm9qZWN0cyBv
ZiB1c2VycyBvZiBVU1JQcyDigJMgZnJvbSB1bml2ZXJzaXR5IHN0dWRlbnRzIA0KPj4+IGRvaW5n
IHRoZXNlcywgb3ZlciBlbmdpbmVlcnMgZ2V0dGluZyBkZW1vcyB0byBkbyB3aGF0IHRoZXkgd2Fu
dCwgdG8gDQo+Pj4gcGh5c2ljaXN0cyBjb250cm9sbGluZyBpbnN0cnVtZW50cyBvciBvYnNlcnZp
bmcgdGhlIGNvc21vcywgdG8gDQo+Pj4gYmlvbG9naXN0cyB3b3JraW5nIGluIHRoZSBtb3N0IGRp
dmVyc2UgaW1hZ2luYWJsZSBmaWVsZHMsIGFuZCBvZiANCj4+PiBjb3Vyc2UgdGhlIG1hbnksIG1h
bnkgY29tbXVuaWNhdGlvbnMgZW5naW5lZXJzIGJ1aWxkaW5nIGZhbnRhc3RpYyANCj4+PiBzeXN0
ZW1zIGZyb20gKGJvdGggbGl0ZXJhbCBhbmQgU2hhbm5vbikgYml0cyBhbmQgcGllY2VzIQ0KPj4+
DQo+Pj4gV291bGRuJ3Qgd2FudCB0byBtaXNzIHRoYXQgZXhwZXJpZW5jZSEgU28gdGhhbmsgeW91
IGFsbCBmb3IgYmVpbmcsIA0KPj4+IHN1YnN1bWluZyBldmVyeXRoaW5nLCB0aGUgbmljZXN0IHVz
ZXIgY29tbXVuaXR5IGEgaGFyZHdhcmUvc29mdHdhcmUgDQo+Pj4gdmVuZG9yIGNvdWxkIHdpc2gg
Zm9yIDopIFRoZSBVU1JQIHNlcmllcyBvZiBkZXZpY2VzIHdpbGwgcmVtYWluIHRoZSANCj4+PiBj
bGFzcyBvZiBkZXZpY2VzIEknbSBtb3N0IGludGltYXRlbHkgZmFtaWxpYXIgd2l0aCDigJMgYW5k
IEknbSBzdXJlIA0KPj4+IHRoYXQgZXZlbiBhcyBOSS9FbWVyc29uIG1vdmVkIHRvIGhpZ2hlciBw
cmljZWQgc2VnbWVudHMgYW5kIHBhaWQgDQo+Pj4gc3VwcG9ydCBtb2RlbHMsIHlvdSB3aWxsIGNv
bnRpbnVlIHRvIGRvIGdyb3VuZGJyZWFraW5nIGFuZCANCj4+PiBpbmZyYXN0cnVjdHVyZS11cGhv
bGRpbmcgd29yayB3aXRoIHRoZW0hDQo+Pj4NCj4+PiBCdXQ6IGl0J3MgdGltZSBmb3IgbWUgdG8g
bW92ZSBvbiDigJMgdGhpcyBpcyBnb2luZyB0byBiZSBteSBsYXN0IA0KPj4+IHB1YmxpYyBlbWFp
bCBmcm9tIGFuIEBldHR1cy5jb20gYWRkcmVzcy4NCj4+Pg0KPj4+IFdoaWNoIGRvZXNuJ3QgbWVh
biBJJ2xsIG5vdCBiZSBhcm91bmQ7IHlvdSdsbCBzdGlsbCBmaW5kIG1lIG9uIHRoZSANCj4+PiBt
YWlsaW5nIGxpc3QgdW5kZXIgb3RoZXIgYWRkcmVzc2VzIChzZWUgdGhlIFJlcGx5LVRvOiBvZiB0
aGlzIA0KPj4+IG1lc3NhZ2UpLCBhbmQgeW91IG1pZ2h0IGtub3cgdGhhdCBJIGFscmVhZHkga2lu
ZCBvZiBzdHVjayB3aXRoIHRoZSANCj4+PiBHTlUgUmFkaW8gcHJvamVjdC4gTXkgcmVudCBpcyBz
dGlsbCBwYWlkIGZvciBieSBTRFIgc3lzdGVtIHdvcmssIGFuZCANCj4+PiBzbyB5b3UnbGwgcnVu
IGludG8gbWUgYXQgR1JDb24sIHlvdSdsbCBmaW5kIG1lIHBsYXN0ZXJpbmcgdGhlIA0KPj4+IGlu
dGVybmV0IHdpdGggZXhwbGFuYXRpb25zIG9mIHRoZSBzdHJhbmdlc3QgdGhpbmdzLg0KPj4+DQo+
Pj4gTm90IHRvIGdldCB0byBzZW50aW1lbnRhbDoNCj4+Pg0KPj4+IEtlZXAgb24gaGFja2luZyB0
aGUgZWxlY3Ryb21hZ25ldGljIHNwZWN0cnVtLCBuZXZlciBsZXQgeW91ciBzaWduYWwgDQo+Pj4g
cHJvY2Vzc2luZyBzbG93IGRvd24sIGFuZDoNCj4+Pg0KPj4+IFNlZSB5b3UgYXJvdW5kLA0KPj4+
DQo+Pj4gTWFyY3VzIE3DvGxsZXINCj4+Pg0KPj4gV2VsbCwgZnJvbSBvbmUgTWFyY3VzIHRvIGFu
b3RoZXIsIHRoYW5rcyBmb3IgaGFuZ2luZyBvdXQgZm9yIHNvIG1hbnkgDQo+PiB5ZWFycywgYW5k
IHNlZSB5b3UgZG93biB0aGUgcm9hZCBhIHdlZS4NCj4+DQo+PiBDaGVlcnMNCj4+DQo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gVVNSUC11c2Vy
cyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+IFRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20N
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVz
LmNvbQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNv
bQo=
