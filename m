Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C1008390679
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 18:19:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A947D38407D
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 12:19:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="szP24+gT";
	dkim-atps=neutral
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 2336E383F27
	for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 12:18:27 -0400 (EDT)
Received: by mail-wm1-f53.google.com with SMTP id z85-20020a1c7e580000b029017a76f3afbaso10621679wmc.2
        for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 09:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=pE+4F8cZZ6aZrS5dN2idTSXhscd0qTPE8XiIvDWMIoQ=;
        b=szP24+gTdoa/hEgeExhL40YmLAHcmChCluq9gIo9M3LlBPYfe/bWaUtCtGX0aktpak
         3So6TUtSTniH71yYTJzXQ3s0gp0SQGjsSFV0mtHRSL4RXA632rFERPY/26j3yYup0mD7
         zJQN4OjU+hujs1lRhonYAXCaLpSmPSJxy2fFcyLapz4T59vF8/3SSmgdn/CtBOE0wOd0
         yOn0fr9o3eSvMhq3NkcxFg1IyW6T+6mCcMgYfMDm6WvzdomwOyALmW/zqWApzq593BQa
         U7aYdTRFmrTLGSEFnl7Lx5Rh43K0q1jk/Xr99t2iHs413hJPQ0uq2iXa1A/AG3VGFVCv
         rDkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=pE+4F8cZZ6aZrS5dN2idTSXhscd0qTPE8XiIvDWMIoQ=;
        b=F6Vv68dkrWn499txIz/TwUInrL/Je1LexZ7N0bhdxzwPwKka2aMTEcfanPh17LPJYl
         Fl0sfSpr5H9MkYS4cmvmAO5L9WH1KxHz9zYfugUnacoYRQdIP/c9JHq743OwEicMnThh
         VnSssvy7futf3u0F602D3B3rVjmrhjl0Swo5eICxbcRB69I0lwhuUgNbMxESNfkLvUQe
         y5iFCpneBYqQJBnJUWRW88Z36bCURveUfW3qu6MjuKs0ALPdomsqG/A6LIkmCsDHMBJo
         tmSvillCKaEoOPwbpX19XpHoNZV3ABA4jKC2X3l7jq+3wZurNaYBtkt8xSF6l3gAM9Fp
         0YeA==
X-Gm-Message-State: AOAM5324w/hXkpPDYceHrCGPI+nABjFwzVt9nyGMR5UefIa3REAoUgLU
	hUhCfUg+TazKCmmLU/BLcRaX+pDBwHQuyINL
X-Google-Smtp-Source: ABdhPJzUJYT90+R/k3P8XXIVydmuA4rOPRDjZLyBs1uZJF6ohhKBn7QebJoD1ZrM7BuyE6Q8W0eoSw==
X-Received: by 2002:a1c:cc17:: with SMTP id h23mr24391010wmb.129.1621959506543;
        Tue, 25 May 2021 09:18:26 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-222.hsi.kabel-badenwuerttemberg.de. [46.223.162.222])
        by smtp.gmail.com with ESMTPSA id j101sm11911186wrj.66.2021.05.25.09.18.25
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 09:18:26 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <830ab06b95e9d2802b0a4a2455f6b301@mail.rambler.ru>
 <0f34e1d2b5e7b77bc818377793c427dd@mail.rambler.ru>
 <2a9683d393b9962474a1e25b84853e3a@mail.rambler.ru>
 <a638ffa1235ad3f3f0b58a401ed1669b@mail.rambler.ru>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <cc80deab-3233-4c41-fb53-5745d4dd4719@ettus.com>
Date: Tue, 25 May 2021 18:18:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <a638ffa1235ad3f3f0b58a401ed1669b@mail.rambler.ru>
Content-Language: en-US
Message-ID-Hash: WINZ32Z4DYNRIE44WQ6ZMI3QOPVBMUJI
X-Message-ID-Hash: WINZ32Z4DYNRIE44WQ6ZMI3QOPVBMUJI
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tune speed
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WINZ32Z4DYNRIE44WQ6ZMI3QOPVBMUJI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCnNhZGx5LCB5b3VyIGFwcHJvYWNoIGNhbid0IGJlIHVzZWQgdG8gbWVhc3VyZSB0dW5p
bmcgdGltZTogcXVlcnlpbmcgdGhlIHNlbnNvciBpcyBtdWNoDQpzbG93ZXIgdGhhbiB0aGUgdHVu
aW5nIGlzLiBZb3UncmUgc2FtcGxpbmcgdGhlIHNwZWVkIGF0IHdoaWNoIHlvdSBjYW4gKmFzayog
dGhlIGRldmljZQ0Kd2hldGhlciBpdHMgTE8gaXMgbG9ja2VkLCBub3QgdGhlIGFjdHVhbCB0dW5p
bmcgdGltZS4NCg0KSWYgeW91IHdhbnQgdG8gbWVhc3VyZSB0aGUgdHVuaW5nIHRpbWVzLCBJJ2Qg
cmVjb21tZW5kIGRvaW5nIHNvbWV0aGluZyBsaWtlOg0KDQoxLiBzZXQgYSBjb21tYW5kIHRpbWUs
IHNheSAyIHMgaW4gdGhlIGZ1dHVyZQ0KMi4gaXNzdWUgYSBnYWluIGNvbW1hbmQNCjMuIHNldCBh
IGNvbW1hbmQgdGltZSwgc2F5IDIuMDUgcyBpbiB0aGUgZnV0dXJlDQo0LiBpc3N1ZSBhIHR1bmUg
Y29tbWFuZA0KDQphbmQgb2JzZXJ2ZSB0aGUgb3V0cHV0IG9mIHlvdXIgVVNSUCwgb3Igb2JzZXJ2
ZSBhIGNvbnN0YW50LWFtcGxpdHVkZSBzaW5nbGUtdG9uZSBpbnB1dC4NCg0KQmVzdCByZWdhcmRz
LA0KTWFyY3VzDQoNCkRJU0NMQUlNRVI6IEFueSBhdHRhY2hlZCBDb2RlIGlzIHByb3ZpZGVkIEFz
IElzLiBJdCBoYXMgbm90IGJlZW4gdGVzdGVkIG9yIHZhbGlkYXRlZCBhcyBhIHByb2R1Y3QsIGZv
ciB1c2UgaW4gYSBkZXBsb3llZCBhcHBsaWNhdGlvbiBvciBzeXN0ZW0sIG9yIGZvciB1c2UgaW4g
aGF6YXJkb3VzIGVudmlyb25tZW50cy4gWW91IGFzc3VtZSBhbGwgcmlza3MgZm9yIHVzZSBvZiB0
aGUgQ29kZS4gVXNlIG9mIHRoZSBDb2RlIGlzIHN1YmplY3QgdG8gdGVybXMgb2YgdGhlIGxpY2Vu
c2VzIHRvIHRoZSBVSEQgb3IgUkZOb0MgY29kZSB3aXRoIHdoaWNoIHRoZSBDb2RlIGlzIHVzZWQu
IFN0YW5kYXJkIGxpY2Vuc2VzIHRvIFVIRCBhbmQgUkZOb0MgY2FuIGJlIGZvdW5kIGF0IGh0dHBz
Oi8vd3d3LmV0dHVzLmNvbS9zZHItc29mdHdhcmUvbGljZW5zZXMvLg0KDQpOSSB3aWxsIG9ubHkg
cGVyZm9ybSBzZXJ2aWNlcyBiYXNlZCBvbiBpdHMgdW5kZXJzdGFuZGluZyBhbmQgY29uZGl0aW9u
IHRoYXQgdGhlIGdvb2RzIG9yIHNlcnZpY2VzIChpKSBhcmUgbm90IGZvciB0aGUgdXNlIGluIHRo
ZSBwcm9kdWN0aW9uIG9yIGRldmVsb3BtZW50IG9mIGFueSBpdGVtIHByb2R1Y2VkLCBwdXJjaGFz
ZWQsIG9yIG9yZGVyZWQgYnkgYW55IGVudGl0eSB3aXRoIGEgZm9vdG5vdGUgMSBkZXNpZ25hdGlv
biBpbiB0aGUgbGljZW5zZSByZXF1aXJlbWVudCBjb2x1bW4gb2YgU3VwcGxlbWVudCBOby4gNCB0
byBQYXJ0IDc0NCwgVS5TLiBFeHBvcnQgQWRtaW5pc3RyYXRpb24gUmVndWxhdGlvbnMgYW5kIChp
aSkgc3VjaCBhIGNvbXBhbnkgaXMgbm90IGEgcGFydHkgdG8gdGhlIHRyYW5zYWN0aW9uLiAgSWYg
b3VyIHVuZGVyc3RhbmRpbmcgaXMgaW5jb3JyZWN0LCBwbGVhc2Ugbm90aWZ5IHVzIGltbWVkaWF0
ZWx5IGJlY2F1c2UgYSBzcGVjaWZpYyBhdXRob3JpemF0aW9uIG1heSBiZSByZXF1aXJlZCBmcm9t
IHRoZSBVLlMuIENvbW1lcmNlIERlcGFydG1lbnQgYmVmb3JlIHRoZSB0cmFuc2FjdGlvbiBtYXkg
cHJvY2VlZCBmdXJ0aGVyLg0KDQpPbiAyNS4wNS4yMSAxNDozMSwg0JDQvdC00YDQtdC5INCQIHZp
YSBVU1JQLXVzZXJzIHdyb3RlOg0KPiAjaW5jbHVkZSA8c3RkaW8uaD4NCj4gI2luY2x1ZGUgPHRp
bWUuaD4NCj4gI2luY2x1ZGUgPHVoZC5oPg0KPg0KPiAjZGVmaW5lIFNSIDI1DQo+ICNkZWZpbmUg
QlcgMjANCj4gI2RlZmluZSBNSHpUb0h6IDFlKzYNCj4NCj4gdWludDY0X3QgZ2V0X3Bvc2l4X2Ns
b2NrX3RpbWUgKCkNCj4gew0KPiAgICAgc3RydWN0IHRpbWVzcGVjIHRzOw0KPg0KPiAgICAgaWYg
KGNsb2NrX2dldHRpbWUgKENMT0NLX01PTk9UT05JQywgJnRzKSA9PSAwKQ0KPiAgICAgICAgIHJl
dHVybiAodWludDY0X3QpICh0cy50dl9zZWMgKiAxMDAwMDAwICsgdHMudHZfbnNlYyAvIDEwMDAp
Ow0KPiAgICAgZWxzZQ0KPiAgICAgICAgIHJldHVybiAwOw0KPiB9DQo+DQo+IHVoZF9lcnJvciBj
cmVhdGVMb2NrZWRTZW5zb3IodWhkX3VzcnBfaGFuZGxlIGhEZXZpY2UsdWhkX3NlbnNvcl92YWx1
ZV9oYW5kbGUgKmhTZW5zb3IpDQo+IHsNCj4gICAgIHVoZF9lcnJvciByOw0KPg0KPiAgICAgciA9
IHVoZF9zZW5zb3JfdmFsdWVfbWFrZV9mcm9tX2Jvb2woaFNlbnNvciwibG9fbG9ja2VkIixmYWxz
ZSwidHJ1ZSIsImZhbHNlIik7DQo+ICAgICBpZiAocikgcmV0dXJuIHI7DQo+DQo+ICAgICByID0g
dWhkX3VzcnBfZ2V0X3J4X3NlbnNvcihoRGV2aWNlLCJsb19sb2NrZWQiLDAsaFNlbnNvcik7DQo+
ICAgICBpZiAocikNCj4gICAgIHVoZF9zZW5zb3JfdmFsdWVfZnJlZShoU2Vuc29yKTsNCj4gICAg
IHJldHVybiByOw0KPiB9DQo+DQo+IHVoZF9lcnJvciBzZXRGcmVxKHVoZF91c3JwX2hhbmRsZSBo
RGV2aWNlLHVoZF9zZW5zb3JfdmFsdWVfaGFuZGxlIGhTZW5zb3IsZG91YmxlIGYpDQo+IHsNCj4g
ICAgIHVoZF90dW5lX3JlcXVlc3RfdCB0dW5lX3JlcXVlc3QgPQ0KPiAgICAgew0KPiAgICAgICAg
IC50YXJnZXRfZnJlcSA9IGYsDQo+ICAgICAgICAgLnJmX2ZyZXFfcG9saWN5ID0gVUhEX1RVTkVf
UkVRVUVTVF9QT0xJQ1lfQVVUTywNCj4gICAgICAgICAuZHNwX2ZyZXFfcG9saWN5ID0gVUhEX1RV
TkVfUkVRVUVTVF9QT0xJQ1lfQVVUTywNCj4gICAgIH07DQo+ICAgICB1aGRfdHVuZV9yZXN1bHRf
dCB0dW5lX3Jlc3VsdDsNCj4NCj4gICAgIHVoZF9lcnJvciByOw0KPiAgICAgYm9vbCBsb19sb2Nr
ZWQ7DQo+DQo+ICAgICByID0gdWhkX3VzcnBfc2V0X3J4X2ZyZXEoaERldmljZSwmdHVuZV9yZXF1
ZXN0LDAsJnR1bmVfcmVzdWx0KTsNCj4gICAgIGlmKHI9PVVIRF9FUlJPUl9OT05FICYmIGhTZW5z
b3IpDQo+ICAgICBkbw0KPiAgICAgew0KPiAgICAgICAgIHVoZF9zZW5zb3JfdmFsdWVfdG9fYm9v
bChoU2Vuc29yLCZsb19sb2NrZWQpOw0KPiAgICAgfQ0KPiAgICAgd2hpbGUgKCFsb19sb2NrZWQp
Ow0KPg0KPiAgICAgcmV0dXJuIHI7DQo+IH0NCj4NCj4gaW50IG1haW4oKQ0KPiB7DQo+ICAgICB1
aGRfZXJyb3IgcjsNCj4NCj4gICAgIHVoZF91c3JwX2hhbmRsZSBoRGV2aWNlID0gMDsNCj4gICAg
IHVoZF9zZW5zb3JfdmFsdWVfaGFuZGxlIGhTZW5zb3I9MDsNCj4NCj4gICAgIHIgPSB1aGRfdXNy
cF9tYWtlKCZoRGV2aWNlLCIiKTsNCj4gICAgIGlmIChyKSBnb3RvIGZyZWVfZGV2aWNlOw0KPg0K
PiAgICAgciA9IGNyZWF0ZUxvY2tlZFNlbnNvcihoRGV2aWNlLCZoU2Vuc29yKTsNCj4gICAgIGlm
IChyKSBnb3RvIGZyZWVfZGV2aWNlOw0KPg0KPiAgICAgaWYgKGhEZXZpY2UpDQo+ICAgICB7DQo+
ICAgICAgICAgaW50IGZfc3RhcnQsZl9jb3VudDsNCj4NCj4gICAgICAgICBwcmludGYgKCJFbnRl
ciBzdGFydCBmcmVxIFtNSHpdOiAiKTsNCj4gICAgICAgICBzY2FuZiAoIiVkIiwmZl9zdGFydCk7
DQo+DQo+ICAgICAgICAgcHJpbnRmICgiRW50ZXIgZnJlcSBjb3VudDogIik7DQo+ICAgICAgICAg
c2NhbmYgKCIlZCIsJmZfY291bnQpOw0KPiAgICAgICAgIGlmIChmX2NvdW50IDwgMSkgZ290byBm
cmVlX2RldmljZTsNCj4NCj4gICAgICAgICB1aW50NjRfdCB0MCx0Ow0KPg0KPiAgICAgICAgIGJv
b2wgcmV2ZXJzZSA9IGZhbHNlOw0KPg0KPiAgICAgICAgIGZvcihpbnQgaz0zO2s+MDstLWspDQo+
ICAgICAgICAgew0KPiAgICAgICAgICAgICBpbnQgZjsNCj4NCj4gICAgICAgICAgICAgaWYgKHJl
dmVyc2UpDQo+ICAgICAgICAgICAgICAgICBmID0gZl9zdGFydCtCVyooZl9jb3VudC0xKTsNCj4g
ICAgICAgICAgICAgZWxzZQ0KPiAgICAgICAgICAgICAgICAgZiA9IGZfc3RhcnQ7DQo+DQo+ICAg
ICAgICAgICAgIHQ9Z2V0X3Bvc2l4X2Nsb2NrX3RpbWUoKTsNCj4gICAgICAgICAgICAgZm9yKGlu
dCBpPTA7aTxmX2NvdW50O2krKykNCj4gICAgICAgICAgICAgew0KPiAgICAgICAgICAgICAgICAg
dDAgPSBnZXRfcG9zaXhfY2xvY2tfdGltZSgpOw0KPiAgICAgICAgICAgICAgICAgc2V0RnJlcSho
RGV2aWNlLGhTZW5zb3IsZipNSHpUb0h6KTsNCj4gICAgICAgICAgICAgICAgIHQwID0gZ2V0X3Bv
c2l4X2Nsb2NrX3RpbWUoKSAtIHQwOw0KPiAgICAgICAgICAgICAgICAgcHJpbnRmICgiZjogJWQg
dDogJTIuMWYgXG4iLGYsdDAqMWUtMyk7DQo+ICAgICAgICAgICAgICAgICBmID0gKHJldmVyc2Up
ID8gZi1CVzpmK0JXOw0KPiAgICAgICAgICAgICB9DQo+ICAgICAgICAgICAgIHQgPSBnZXRfcG9z
aXhfY2xvY2tfdGltZSgpIC0gdDsNCj4NCj4gICAgICAgICAgICAgcmV2ZXJzZT0hcmV2ZXJzZTsN
Cj4NCj4gICAgICAgICAgICAgcHJpbnRmICgiPj4gc2NhbiB0aW1lOiAlMi4xZiBcbiIsdCoxZS0z
KTsNCj4gICAgICAgICB9DQo+ICAgICB9DQo+DQo+ICAgICBmcmVlX2RldmljZToNCj4gICAgICAg
ICBpZiAoaERldmljZSkNCj4gICAgICAgICB1aGRfdXNycF9mcmVlKCZoRGV2aWNlKTsNCj4gICAg
ICAgICBpZiAoaFNlbnNvcikNCj4gICAgICAgICB1aGRfc2Vuc29yX3ZhbHVlX2ZyZWUoJmhTZW5z
b3IpOw0KPg0KPiAgICAgcmV0dXJuIDA7DQo+IH0NCj4NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0g
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==
