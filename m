Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F57742A7A
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 18:19:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD3F6383F2E
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 12:19:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688055547; bh=qlOygVJuPHLSIzxe9FqwKCuCdCQ1MZwiuM/ucQ7fi9s=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iLTaLgPzk4ycVhkj08wD4r8aOvxV6d4Co1SCpS4+3Npbw3bPoacMI8cO2vzuyqARj
	 NGkkwXwQX1jUO10QUcGHg5VO8BQRXB78r787hzQN9we1OySAxagXrtrswsT+5Kv0S9
	 IM2HVqPkLpB8V/KYMDfuzbDEpo2F7GzpV58YgJFCsELAv3lPlK7G+4YYYhchrxjV2l
	 tF2LCnl58dG3ZSvBYmI78ugn/fSl3FvqalziSyIPIOZJOe4cz/a3gKIdDu3Rvu6kFE
	 n7FxiavR8516zjEYhTrw4612IqslLljWWhZXRZGy7ttcgSU9GkFMkQluMOQHhuXeNu
	 E9VDFAvQwQoMg==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 7E2A6380F0E
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 12:18:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Un2I1r/P";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-635de6776bdso6830966d6.2
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 09:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688055490; x=1690647490;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UgMAEGbRPOhU2YAnT0lqDdsp0K8Ai3MQNevlntZ3/Nk=;
        b=Un2I1r/P+v+Y68uQJs/fuEfgf+oNmREtqjgKp6O76y8d+s25Cij92kIjhdhWXs4YzK
         cljxl7eqzCt9R1Y7h6VO6cOqpUhoCln+aW3RyrC0Qr0GGZVkHwFq+E7/ENoP/LkhuDe+
         ZjEmV/2TrPipBNHvdWvXmWEz0rHNVfeQefrGoapxlrgp2iSUv+zY4DWDT62HcaMO1Jau
         uFEQH7Wfx/XWxZlUe5YdKGBrr2DFPYq7RWQWhNN7wwUsmrFcp/MDSuJKWYEv4JSXCFQ4
         ycn63BM3T9HjyWh2CraX4UzYV7wIqSJqNPry12qcUCL0jTIigsmFoJyXf/gmyZBETeuX
         lLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688055490; x=1690647490;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UgMAEGbRPOhU2YAnT0lqDdsp0K8Ai3MQNevlntZ3/Nk=;
        b=AmGrkDd/yLx+57fCpsevKrqQ7FcTzHytkqPYf+5fhN8uXAknU4Vvj0AEpcFk6ROXS7
         1bSBX5SuUEGiTH3mmeo9RxRHBCVWD565gpcjmmHWR6jw6K8P2y7hJfv2uuEUUN6M1mwx
         VtxPbTeUwwtr67aaWkKns8k3f/gCASnYjYgi63XFK5k9+PKLvh69otpFaxx2gKo9Ub1w
         ilziortQYol/o/0gm3t6QWvWx0bP5OoEEo9ehfrx3QExa3Kn5aDDSoOrGxQWSG14wzC0
         M/QzcJcPv0yxSNuV9klyjfKJR22/Wvl3UajvglvUwJuH9MHFD8uLyxipmYXUqFrOupLx
         XteA==
X-Gm-Message-State: ABy/qLYdpX9wOGpT5xF88A0XAUiVwzdV78qpdZS9qUviR56oQV/PFHS/
	x7sEeYe8tzCPhLeu1fpD3Mc=
X-Google-Smtp-Source: APBJJlECcHGBsD80roFE69WANqAm38QPb+JskV7d67GqkiBmQ9Pn5aHElcv96JrLSHp/p4fJo7RniA==
X-Received: by 2002:ad4:5943:0:b0:632:30e:314 with SMTP id eo3-20020ad45943000000b00632030e0314mr105297qvb.44.1688055489740;
        Thu, 29 Jun 2023 09:18:09 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id nd14-20020a056214420e00b006215d0bdf37sm7212801qvb.16.2023.06.29.09.18.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jun 2023 09:18:09 -0700 (PDT)
Message-ID: <c1998c9a-8fdd-b4e7-3908-24dd44262c1a@gmail.com>
Date: Thu, 29 Jun 2023 12:18:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <CAHRiTbnF-aJvp9RCXAHnFgjf9kcTvEYOLjdGrKdzw421Oy3zLA@mail.gmail.com>
 <ed80e51a-be7f-d6c0-7a25-3c0c7d19e4d6@gmail.com>
 <1346881245.172465.1688045768643@mail.yahoo.com>
 <e3300a45-cc33-2c9c-1c80-ebb3dfe9a2c3@gmail.com>
 <CAB__hTR1QV=7qdSNsZLSD6hq_3Uk_buTae6tNYeo1iXBNCvFHQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTR1QV=7qdSNsZLSD6hq_3Uk_buTae6tNYeo1iXBNCvFHQ@mail.gmail.com>
Message-ID-Hash: PHK7DKPN4PISM43GIJEFPIEMF4DIKYPI
X-Message-ID-Hash: PHK7DKPN4PISM43GIJEFPIEMF4DIKYPI
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LO carrier phase difference
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PHK7DKPN4PISM43GIJEFPIEMF4DIKYPI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjkvMDYvMjAyMyAxMTozOCwgUm9iIEtvc3NsZXIgd3JvdGU6DQo+IE9uIFRodSwgSnVuIDI5
LCAyMDIzIGF0IDExOjA54oCvQU0gTWFyY3VzIEQuIExlZWNoDQo+IDxwYXRjaHZvbmJyYXVuQGdt
YWlsLmNvbT4gd3JvdGU6DQo+PiBPbiAyOS8wNi8yMDIzIDA5OjM2LCB6aG91IHZpYSBVU1JQLXVz
ZXJzIHdyb3RlOg0KPj4gSSBhbSB1c2luZyBYMzEwIFVTUlBzLiBJIGRpZCBhIGxvb3BiYWNrIHRl
c3Qgd2l0aCB0aGlzIFVTUlAsIHRoYXQgaXMsIFR4IHdhcyBjb25uZWN0ZWQgdG8gUnggKHdpdGgg
YSAyMGRCIGF0dGVudWF0b3IgYmV0d2VlbiB0aGVtKS4gVGhpcyBpcyBmb3IgY2hlY2tpbmcgdGhl
IGNoYW5uZWwgc3RhdHVzLg0KPj4gSW4gbXkgdGVzdCwgVHggaXMgZnJlZSBydW5uaW5nIHdpdGhv
dXQgc3RvcCwgYW5kIFJ4IGlzIG9jY2FzaW9uYWwuIEJvdGggdHJhbnNtaXNzaW9uIGFuZCBjYXB0
dXJlIGFyZSB0aW1lLWJhc2VkLCB0aGF0IGlzLCBzaWduYWxzIGFyZSB0cmFuc21pdHRlZCBhdCBz
cGVjaWZpZWQgdGltZSwgYW5kIGNhcHR1cmUgc3RhcnRzIGF0IHNwZWNpZmllZCB0aW1lLg0KPj4N
Cj4+IE1hc3RlciBjbG9jayByYXRlOiAxODQuMzJNSHoNCj4+IFNhbXBsaW5nIHJhdGU6IDE4NC4z
Mk1Ieg0KPj4NCj4+IFVzaW5nIHRoZSBjYXB0dXJlZCBzaWduYWxzLCBJIGNhbiBjYWxjdWxhdGUg
dGhlIGNoYW5uZWwgY29lZmZpY2llbnQuIEEgZmV3IGNhcHR1cmVzIHdlcmUgbWFkZS4NCj4+DQo+
PiBJIGV4cGVjdGVkIGNvbnN0YW50IGNoYW5uZWwgYmVjYXVzZSBpdCB3YXMgY2FibGUgY29ubmVj
dGlvbiBhbmQgaXQgd2FzIGluIHRoZSBzYW1lIFVTUlAsIGJ1dCBJIGZvdW5kIHRoYXQgdGhlIGNv
bnN0ZWxsYXRpb25zIG9mIHRoZSBwaWxvdCBzaWduYWxzIHJvdGF0ZWQgd2hlbiBjb21wYXJpbmcg
ZGlmZmVyZW50IGNhcHR1cmVzLiBJIHRoaW5rIHRoaXMgY2FuIGJlIGNhdXNlZCBieSB0aGUgcGhh
c2UgZGlmZmVyZW5jZSBiZXR3ZWVuIFR4IExPIGFuZCBSeCBMTywgYnV0IG5vdCBzdXJlLg0KPj4N
Cj4+IFF1ZXN0aW9uczoNCj4+IDEuIGFyZSB0aGVyZSBpbmRlcGVuZGVudCBMT3MgZm9yIFR4IGFu
ZCBSeCBpbiBhIFVTUlA/DQo+Pg0KPj4gWWVzLiAgIEluIGZhY3QsIGluIGFueSByZWFsaXN0aWMg
b24tdGhlLWFpciBzY2VuYXJpbywgeW91ciBSWCBhbmQgVFggd2lsbCBuZXZlciBiZSBwaGFzZSBh
bGlnbmVkLCBvciBldmVuIHBoYXNlLWNvaGVyZW50Lg0KPiBBbHRob3VnaCB0aGVyZSBhcmUgc2Vw
YXJhdGUgTE9zLCB0aGV5IGFyZSBib3RoIGRpc2NpcGxpbmVkIHRvIHRoZSAxMA0KPiBNSHogcmVm
ZXJlbmNlLiBJZiB0aGV5IGFyZSBzZXQgdXNpbmcgdGltZWQgY29tbWFuZHMsIHRoZXkgY2FuIHBy
b3ZpZGUNCj4gcmVwZWF0YWJsZSBwaGFzZSAoYXQgbGVhc3QgZm9yIHNvbWUgZGF1Z2h0ZXJib2Fy
ZHMgbGlrZSBVQlggYW5kIFNCWCkuDQo+IEluIHJhZGFyIGFwcGxpY2F0aW9ucywgcGhhc2UgY29o
ZXJlbnQgUngvVHggaXMgY29tbW9uLg0KPg0KPj4gMi4gSXMgdGhlIFJ4IExPIG9uIGFuZCBvZmYg
aW4gdGVzdCwgdGhhdCBpcywgaXQgc3RhcnRzIHdoZW4gY2FwdHVyZSBzdGFydHMgYW5kIHN0b3Bz
IHdoZW4gY2FwdHVyZSBpcyBjb21wbGV0ZWQ/IFNvLCB0aGUgTE8gcGhhc2Ugb2Zmc2V0IGJldHdl
ZW4gVHggYW5kIFJ4IGlzIHJhbmRvbT8NCj4+DQo+PiBJIHdvdWxkIGV4cGVjdCB0aGUgUlggTE8g
cGhhc2UgdG8gcmFuZG9tIHdpdGggcmVzcGVjdCB0byB0aGUgVFggZXZlcnkgdGltZSB5b3Ugc3Rh
cnQvc3RvcCB0aGUgUlguDQo+IEluIHRoZSBkZXNjcmlwdGlvbiBhYm92ZSwgeW91IG1lbnRpb25l
ZCBmcmVlLXJ1bm5pbmcgVHggYnV0IHlvdSBhbHNvDQo+IG1lbnRpb25lZCB0aW1lZCB0cmFuc21p
c3Npb24gYW5kIGNhcHR1cmUuIElmIHlvdSBhcmUgdXNpbmcgdGltZWQgVHgNCj4gYW5kIFJ4IGFs
b25nIHdpdGggdGhlIHRpbWVkIHR1bmluZyBjb21tYW5kcywgSSB3b3VsZCBleHBlY3QgYQ0KPiBj
b25zaXN0ZW50IHBoYXNlIG9mZnNldCAoZGVwZW5kaW5nIGFnYWluIG9uIGRhdWdodGVyYm9hcmQp
LiAgSWYgeW91DQo+IGhhdmUgZnJlZSBydW5uaW5nIFR4LCB0aGVuIEkgd291bGQgZXhwZWN0IGl0
IHRvIGJlIHJhbmRvbS4NClNvbWV0aGluZyBlbHNlIHRvIG5vdGUgYWJvdXQgWDMxMCBpcyB0aGF0
IGluIG9yZGVyIGZvciB0aW1lZCB0dW5pbmcgdG8gDQp3b3JrIHdpdGggdGhlIEREQ3MsIHRoZXJl
IGhhcyB0byBiZSBhIHN0cmVhbSBydW5uaW5nDQogwqAgdGhyb3VnaCBpdCBhdCB0aGUgdGltZSwg
YmVjYXVzZSBpdCBnZXRzIGl0cyBub3Rpb25zIG9mIHRpbWUgZnJvbSB0aGUgDQpyYWRpbyBibG9j
ayBhbmQgdXNlcyB0YWdnZWQgc2FtcGxlcyBydW5uaW5nIHRocm91Z2ggaXQgdG8NCiDCoCB0aW1l
IHJlLXR1bmVzIHByZWNpc2UtdG8tdGhlLXNhbXBsZS4NCg0KSW4gdGhpcyBjYXNlLCBJIHRoaW5r
IHdlJ3JlIGp1c3QgdGFsa2luZyBhYm91dCB0aW1lZCAqc3RyZWFtaW5nKiwgd2hpY2ggDQpzaG91
bGRuJ3QgdG91Y2ggdGhlIExPcy9EREMvRFVDIGF0IGFsbC7CoCBIb3dldmVyLCBpZg0KIMKgIHRo
ZSBUWCBpcyBjb250aW51b3VzLCBhbmQgdGhlIFJYIGlzIGRpc2NvbnRpbnVvdXMsIHRoZSBSWCB3
aWxsIGJlIA0KcGlja2luZyB1cCB0aGUgVFggYXQgc29tZSByYW5kb20gcGhhc2UuDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFp
bGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K
