Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F33B8474B46
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 19:55:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EFFC23854A2
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 13:55:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="6yHop6Pb";
	dkim-atps=neutral
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 6889F385016
	for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 13:54:32 -0500 (EST)
Received: by mail-wr1-f48.google.com with SMTP id c4so34023067wrd.9
        for <usrp-users@lists.ettus.com>; Tue, 14 Dec 2021 10:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=EHGNLwjtRtWrk+ZUKJGRJOUnG8XyYITkU/YIqnPIQmU=;
        b=6yHop6Pb6kxq7e2lwdvGDIof8N0og7AwTRqwjQj6XJ+wQYhvUb7/b42Rc6BXjQPXp6
         Juf51KC2hZzvlQjSeCSYydwaFkppKjlb7GFSE70XiVEPDm5SZyav8N3yeKlhhrwY80SQ
         SGnDjzQIwjiVKNZ2MvqBkBOeG7AqLAXMFpMplal7Lwbewd0to1kRtesNPqxy6jAmDl9Q
         qJlY3R+AZd3gTKqt18TTTjer43FqvwnlxLGue4yNGgds8x1afMDFYtPOJxoWoT19LpVz
         bFTXAtOL6TJxujfGbrSYki4WNxdPwAzJ0UYOEaT4JdRNTeZNvJ9DOVInO4KoSw1OPloA
         iF5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EHGNLwjtRtWrk+ZUKJGRJOUnG8XyYITkU/YIqnPIQmU=;
        b=OF6HrIGMX2kXjfrbLnlI4yHv5c8Xt4aE8RebiddJc3yWAtCh5DiPlMtx5B7FyZ3ind
         1KnZ0/bp3Wi861/i0rNPMj0foQYy0it3sGC5IxUGiSwZvu07akxxl+Zno1liZstYK5xg
         VRnG8n8QSZ3SrbrHQm992myd2jarw1Paocb6jz8CajJxq5FHafQK1T+gL+Ot2cUgdUss
         YmgSryM0HKmRerdgMFB00SrghOW0Z/bclTL2vpDSBvekg7nZvnYqhhd0Q0b9aws8h8u6
         cPce8WXUjcHklNPObrq0BLuzebXpiG/Y/qaFgh4xCpubtzmvBGYdUs1J+IwJw0xSsOhk
         P+mA==
X-Gm-Message-State: AOAM533eFDdRKhhlTJSo2RIUM6FG49H/R45UWqCiiN3eEkd0GX6Sr0ky
	etQ+L3KA37VmepVL7YnX94Tq3nI4Dg5MMem4
X-Google-Smtp-Source: ABdhPJzg8JPHJzXmehLB99cdW9QkDsg+dF9LAcFOOUETzFLwwgpI3Da1+p0SQZ4w/vKWW4YhaUkOtQ==
X-Received: by 2002:a05:6000:1813:: with SMTP id m19mr876727wrh.51.1639508071049;
        Tue, 14 Dec 2021 10:54:31 -0800 (PST)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-58.hsi.kabel-badenwuerttemberg.de. [46.223.163.58])
        by smtp.gmail.com with ESMTPSA id p13sm3148262wmi.0.2021.12.14.10.54.30
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Dec 2021 10:54:30 -0800 (PST)
Message-ID: <e2581c16-c9d4-824b-de10-24aa5fd3163b@ettus.com>
Date: Tue, 14 Dec 2021 19:54:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAL0m=NZY2QvKHiiokbgR=2Xgj8YL+onxWJGmyEr3sVXar=z6cw@mail.gmail.com>
 <32a71ff5-f1e4-0a87-7f4f-91fd25100336@gmail.com>
 <CAL0m=Navs8QQfb==EvoqCYcRcvFC43Vv2VTDW3iZask0K=sT3Q@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAL0m=Navs8QQfb==EvoqCYcRcvFC43Vv2VTDW3iZask0K=sT3Q@mail.gmail.com>
Message-ID-Hash: DUGWWYMHKFVS2EKB5O37J67VIE2GEMUL
X-Message-ID-Hash: DUGWWYMHKFVS2EKB5O37J67VIE2GEMUL
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 - unexpected DC offset and harmonics
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DUGWWYMHKFVS2EKB5O37J67VIE2GEMUL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGVhciBIdWFjaGVuZywNCg0Kd2hpbGUgaXQncyBoYXJkIHRvIHJ1bGUgc29tZXRoaW5nIGxpa2Ug
dGhhdCBvdXQsIGl0J2QgYmUgc3VycHJpc2luZy4gTWF5YmUgeW91IGhhZCBhIHZlcnkgDQpzdHJv
bmcgaW50ZXJmZXJlciB0aGF0IGxlZCB0byB1bmRlc2lyZWQgaW50ZXJtb2R1bGF0aW9uPyBOZXh0
IHRpbWUgaXQgaGFwcGVucywgdHJ5IHRvIHNjYW4gDQp0aHJvdWdoIHRoZSBvdmVyYWxsIHNwZWN0
cnVtIChub3Qgb25seSB3aXRoaW4geW91ciBiYW5kd2lkdGggb2YgaW50ZXJlc3QhKSB3aXRoIGEg
c3BlY3RydW0gDQphbmFseXplciwgb3IgZHJhc3RpY2FsbHkgcmVkdWNlIHRoZSBSRiBnYWluIGlu
IHlvdXIgTjMxMDogaWYgcmVkdWNpbmcgdGhlIGZyb250ZW5kIGdhaW4gDQppbXByb3ZlcyBEQyBv
ZmZzZXQgcGVyZm9ybWFuY2UsIGNoYW5jZXMgYXJlIHRoZSBtaXhlciBkb2Vzbid0IG9wZXJhdGUg
aW4gdGhlIGV4cGVjdGVkIA0KcmVnaW1lIGR1ZSB0byBleHRlcm5hbCBwb3dlci4NCg0KQmVzdCBy
ZWdhcmRzLA0KTWFyY3VzDQoNCkRJU0NMQUlNRVI6IEFueSBhdHRhY2hlZCBDb2RlIGlzIHByb3Zp
ZGVkIEFzIElzLiBJdCBoYXMgbm90IGJlZW4gdGVzdGVkIG9yIHZhbGlkYXRlZCBhcyBhIHByb2R1
Y3QsIGZvciB1c2UgaW4gYSBkZXBsb3llZCBhcHBsaWNhdGlvbiBvciBzeXN0ZW0sIG9yIGZvciB1
c2UgaW4gaGF6YXJkb3VzIGVudmlyb25tZW50cy4gWW91IGFzc3VtZSBhbGwgcmlza3MgZm9yIHVz
ZSBvZiB0aGUgQ29kZS4gVXNlIG9mIHRoZSBDb2RlIGlzIHN1YmplY3QgdG8gdGVybXMgb2YgdGhl
IGxpY2Vuc2VzIHRvIHRoZSBVSEQgb3IgUkZOb0MgY29kZSB3aXRoIHdoaWNoIHRoZSBDb2RlIGlz
IHVzZWQuIFN0YW5kYXJkIGxpY2Vuc2VzIHRvIFVIRCBhbmQgUkZOb0MgY2FuIGJlIGZvdW5kIGF0
IGh0dHBzOi8vd3d3LmV0dHVzLmNvbS9zZHItc29mdHdhcmUvbGljZW5zZXMvLg0KDQpOSSB3aWxs
IG9ubHkgcGVyZm9ybSBzZXJ2aWNlcyBiYXNlZCBvbiBpdHMgdW5kZXJzdGFuZGluZyBhbmQgY29u
ZGl0aW9uIHRoYXQgdGhlIGdvb2RzIG9yIHNlcnZpY2VzIChpKSBhcmUgbm90IGZvciB0aGUgdXNl
IGluIHRoZSBwcm9kdWN0aW9uIG9yIGRldmVsb3BtZW50IG9mIGFueSBpdGVtIHByb2R1Y2VkLCBw
dXJjaGFzZWQsIG9yIG9yZGVyZWQgYnkgYW55IGVudGl0eSB3aXRoIGEgZm9vdG5vdGUgMSBkZXNp
Z25hdGlvbiBpbiB0aGUgbGljZW5zZSByZXF1aXJlbWVudCBjb2x1bW4gb2YgU3VwcGxlbWVudCBO
by4gNCB0byBQYXJ0IDc0NCwgVS5TLiBFeHBvcnQgQWRtaW5pc3RyYXRpb24gUmVndWxhdGlvbnMg
YW5kIChpaSkgc3VjaCBhIGNvbXBhbnkgaXMgbm90IGEgcGFydHkgdG8gdGhlIHRyYW5zYWN0aW9u
LiAgSWYgb3VyIHVuZGVyc3RhbmRpbmcgaXMgaW5jb3JyZWN0LCBwbGVhc2Ugbm90aWZ5IHVzIGlt
bWVkaWF0ZWx5IGJlY2F1c2UgYSBzcGVjaWZpYyBhdXRob3JpemF0aW9uIG1heSBiZSByZXF1aXJl
ZCBmcm9tIHRoZSBVLlMuIENvbW1lcmNlIERlcGFydG1lbnQgYmVmb3JlIHRoZSB0cmFuc2FjdGlv
biBtYXkgcHJvY2VlZCBmdXJ0aGVyLg0KDQpPbiAxMy4xMi4yMSAxNTo1MywgWmVuZywgSHVhY2hl
bmcgd3JvdGU6DQo+IEhpIE1hcmN1cywNCj4NCj4gSSBjb25zdGFudGx5IG9ic2VydmVkIHRoZSBE
QyBvZmZzZXQgYW5kIGhhcm1vbmljIHBlYWtzIHllc3RlcmRheS4gQnV0IHRoZXkgc2ltcGx5IA0K
PiBkaXNhcHBlYXJlZCB0b2RheS4gSSBhbSBwcmV0dHkgc3VyZSBJIGRpZCBub3QgbWFrZSBhbnkg
Y2hhbmdlcyBvbiBoYXJkd2FyZSBvciBzb2Z0d2FyZS4gDQo+IE9uZSBwb3NzaWJpbGl0eSBpcyB0
aGF0IHRoZXkgd2VyZSBjYXVzZWQgYnkgYSBsb25nIHRpbWUgdXNlIG9yIHRoZSB0ZW1wZXJhdHVy
ZSBjaGFuZ2UgDQo+IChyb29tIHRlbXBlcmF0dXJlIDwgMjVDKS4NCj4NCj4gSSB3aWxsIHJlcG9y
dCBoZXJlIGlmIEkgY2FuIHJlcHJvZHVjZSB0aGUgcHJvYmxlbS4gVGhhbmtzIGFueXdheSENCj4N
Cj4gSHVhY2hlbmcNCj4NCj4NCj4NCj4gT24gU3VuLCBEZWMgMTIsIDIwMjEgYXQgMjoyNCBQTSBN
YXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPiB3cm90ZToNCj4NCj4gICAg
IE9uIDIwMjEtMTItMTIgMTE6NTcsIFplbmcsIEh1YWNoZW5nIHdyb3RlOg0KPj4gICAgIEhlbGxv
LA0KPj4NCj4+ICAgICBJIGFtIHVzaW5nIE4zMTAgdG8gb2JzZXJ2ZSBpdHMgcmVjZWl2ZWQgc2ln
bmFsIGluIGl0cyBmb3VyIGNoYW5uZWxzLiBJIG9ic2VydmVkDQo+PiAgICAgc29tZSB1bmV4cGVj
dGVkIERDIG9mZnNldCBhbmQgaGFybW9uaWNzIGFzIHNob3duIGluIHRoZSBhdHRhY2hlZCBmaWd1
cmUuIEl0DQo+PiAgICAgaGFwcGVuZWQgb25seSBhdCBjaGFubmVscyBSRjAgJiBSRjI7IHRoZSBz
aWduYWwgZnJvbSBjaGFubmVscyBSRjEgJiBSRjMgbG9va3MNCj4+ICAgICBub3JtYWwuIEkgZGlz
Y29ubmVjdGVkIHRoZSBhbnRlbm5hcyBidXQgdGhlIERDIGFuZCBoYXJtb25pY3MgYXJlIHN0aWxs
IHRoZXJlLiBBbmQNCj4+ICAgICB0aGV5IHdvdWxkIG5vdCBjaGFuZ2UgaWYgSSBjaGFuZ2UgdGhl
IGNlbnRlciBmcmVxdWVuY3ksIHNhbXBsaW5nIHJhdGUsIG9yIFJGIGdhaW4uDQo+Pg0KPj4gICAg
IFRoZSBHTlUgUkFESU8gYW5kIFVIRCB2ZXJzaW9ucyBhcmUgYmVsb3c6DQo+PiAgICAgW0lORk9d
IFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gNy41LjA7IEJvb3N0XzEwNjUwMTsgVUhEXzMu
MTUuMC5IRUFELTAtZ2FlYTBlMmRlDQo+Pg0KPj4gICAgIEkgYWxzbyBhdHRhY2hlZCBteSBweXRo
b24gc2NyaXB0IGNvZGUgaW4gY2FzZSBpdCB3b3VsZCBiZSB1c2VmdWwgZm9yIHlvdSB0bw0KPj4g
ICAgIGlkZW50aWZ5IHRoZSBwcm9ibGVtLg0KPj4NCj4+ICAgICBBbnkgc3VnZ2VzdGlvbnM/IFRo
YW5rIHlvdcKgIGluIGFkdmFuY2UhDQo+Pg0KPj4gICAgIEh1YQ0KPj4NCj4+ICAgICBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4gICAgIFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0IC0tdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4+ICAgICBUbyB1
bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20NCj4gICAgIEFsc28sIGNvdWxkIHlvdSB0cnkgZXhwbGljaXRseSBzcGVjaWZ5aW5nIGEgc3Vi
ZGV2LXNwZWMgb2Y6DQo+DQo+ICAgICAiQTowIEE6MSBCOjAgQjoxIg0KPg0KPg0KPiAgICAgX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gICAgIFVTUlAt
dXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+ICAgICBU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2
ZUBsaXN0cy5ldHR1cy5jb20KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxp
c3RzLmV0dHVzLmNvbQo=
