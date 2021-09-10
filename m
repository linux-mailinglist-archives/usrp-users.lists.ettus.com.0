Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAE1407408
	for <lists+usrp-users@lfdr.de>; Sat, 11 Sep 2021 01:44:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 69FE43847E8
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 19:44:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eCWd10h4";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 38E21384784
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 19:44:06 -0400 (EDT)
Received: by mail-qv1-f46.google.com with SMTP id cf2so1822790qvb.10
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 16:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=FNgnZmHOE8l59K/j1oz0OlvA/9cZ8umx9E5cx1O934o=;
        b=eCWd10h4t1QbcJB9bD4wDZmDPUT+6vU5GyHgc8Dvon7zIrN61S1kYch0dig83wTPSA
         YixqvtmOlSpd6RvsPDSrojotUCrcbj7Aq5eV0KUi+GFidKTq1R1De76YzG9wmeoO0VlF
         70PRdTcKCxDPNNYdjWnpTV2WKUJuV5UIDvDkqw7j2YlWMub1Pceomj4MwLCzd/JiRJwj
         R4NqFeJYZEah3MeicVRuuzS8hc0mPAFM7qzivRJqln5TvQf8OzTK/Yaeobr1gcOBmo1B
         pQKca0fUGhhsYO6TAZADnAD2dFzuHgSwQ0vtT7UyHDSl0Qc6ni69kmsoRcqD1WtXeXMi
         WzTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=FNgnZmHOE8l59K/j1oz0OlvA/9cZ8umx9E5cx1O934o=;
        b=V0H1ZyA0O9QLi9p8DqssJAvIZy2yrBoWYbsg+1eWzOZQPuynTt6/Eui1WWuf/9QzS3
         1YwcvXIQxUOxzFcOLtY+b+BhlabFkhj1DUNkCp8pLI/iVzV2wps/tw/zL6ZryZX94gJ8
         XlhV0byn8w+A8XDIz/RhTzn9WU5JZmd2s6MXorSnYoEPkMWGqs7jZ55PzBW/vW7qSccr
         cnbwN0kzKwnzxXoMtoSiAKNkVc9m0V0CMh5hyBYifxlnRPwNj5zHX2+dKS0MaESiYu8q
         Mq/3rJUcq3KNbyXEMtwecuh3Iz1o0He7UQz3W98ExDAZgxX8MAoM5V6e+bZlrBsaMm4u
         i3Nw==
X-Gm-Message-State: AOAM532vY4AdlvgBIEyLRERGXhGdnBGu0YHxCpMzrBhMfOs/lKMjNHXB
	1ywmu0NMtqMKASUDwk2yqipE+dm20nGnkw==
X-Google-Smtp-Source: ABdhPJxtcDlJoMghvuPoh5xjeF61osxOoGvqoYEQ9yT7HqZt3xvGvLpTbmLCen1IRjIHWqX8ztblpQ==
X-Received: by 2002:ad4:4943:: with SMTP id o3mr85482qvy.26.1631317445506;
        Fri, 10 Sep 2021 16:44:05 -0700 (PDT)
Received: from [192.168.2.249] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id p14sm97762qtq.43.2021.09.10.16.44.04
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 16:44:05 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <401c2280-1625-fcce-1ae5-a90e95da07e6@gmail.com>
 <75760422-a05d-95d1-10c1-f571ae8dccb2@gmail.com>
 <e255b7bf-ac54-37a7-1c1d-f0c8315b1f83@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <8c101f57-04d5-6d20-fe37-3e182bb707e0@gmail.com>
Date: Fri, 10 Sep 2021 19:44:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <e255b7bf-ac54-37a7-1c1d-f0c8315b1f83@gmail.com>
Content-Language: en-US
Message-ID-Hash: ADIWWERYCSUD2A56IJ7KDSXRD72FQGVT
X-Message-ID-Hash: ADIWWERYCSUD2A56IJ7KDSXRD72FQGVT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: how to use a usrp b210 with external gpsdo and nmea0183 as clock source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ADIWWERYCSUD2A56IJ7KDSXRD72FQGVT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMS0wOS0xMCA2OjU1IHAubS4sIG1zZnUgd3JvdGU6DQo+DQo+DQo+IHdoYXQgZG9lcyBh
IGNvbW1hbmQgbG9vayBsaWtlIHRvIHNldCBjbG9jayBhbmQgdGltZV9zb3VyY2UgdG8gZXh0ZXJu
YWw/DQpTZXR0aW5nIHRoZSBjbG9jayBjb25maWd1cmF0aW9uIGlzIHNvbWV0aGluZyB0aGF0IGV2
ZXJ5IGFwcGxpY2F0aW9uIHRoYXQgDQp1c2VzIGEgVVNSUCBoYXMgdG8gZG8NCiDCoCBhcyBwYXJ0
IG9mIGVzdGFibGlzaGluZyBhIHNlc3Npb24gd2l0aCB0aGUgVVNSUCBkZXZpY2UuDQo+DQo+IGkg
ZG9uKnQgcmVhbGx5IGtub3cgaG93IHRvIGhhbmRsZSBBUEkgQ2FsbHMuDQpTbywgeW91J3JlIG5v
dCByZWFsbHkgYSBzb2Z0d2FyZSBkZXZlbG9wZXIsIGJ1dCBhcmUgdXNpbmcgc29tZSANCipBUFBM
SUNBVElPTiogdGhhdCBoYXBwZW5zDQogwqAgdG8gdXNlIFVTUlBzP8KgIFdoYXQgaXMgdGhlIGFw
cGxpY2F0aW9uP8KgIFRoZXJlIGFyZSBodW5kcmVkcyBhbmQgDQpodW5kcmVkcyBvZiBTRFItdXNp
bmcNCiDCoCBhcHBsaWNhdGlvbnMgb3V0IGluIHRoZSBmaWVsZCB0aGF0IHVzZSBVU1JQcyBhbmQg
b3RoZXIgU0RScy7CoCBXZSANCmNhbid0IHBvc3NpYmx5IHRlbGwgeW91DQogwqAgaG93IHRvIHVz
ZSBhbmQgY29uZmlndXJlIGVhY2ggb2YgdGhvc2UuDQoNClRoYXQgKmFwcGxpY2F0aW9uKiB3b3Vs
ZCBuZWVkIHRvIHByb3ZpZGUgYSB3YXkgdG8gY29uZmlndXJlIHRoZSBjbG9jayANCmFuZCAxUFBT
IHNvdXJjZXMgd2hlbg0KIMKgaXQgc3RhcnRzIGEgc2Vzc2lvbiB3aXRoIHRoZSBkZXZpY2UuDQo+
DQo+IEkgYW0gdHJ5aW5nIHRvIHNldCB0aGUgZXh0ZXJuYWwgZ3BzZG8gd2l0aCAxME1IeiBhbmQg
MVBQUyBhcyB0aW1lIGFuZA0KPiBjbG9jayBzb3VyY2UgZm9yIG15IEdQUyBiZWNhdXNlIGl0cyBm
YXIgbW9yZSBleGFjdGx5IHNvIGZhciBhcyBpIGtub3cuLg0KUGxlYXNlIHNoYXJlIHdpdGggdXMg
dGhlIG91dHB1dCBvZjoNCg0KdWhkX3VzcnBfcHJvYmUgLS1hcmdzIHR5cGU9YjIwMA0KDQoNCj4N
Cj4gZG8gaSByZWFsbHkgaGF2ZSB0byBkaXNjb25uZWN0IHRoZSBpbnRlcm5hbCBncHNkbz8gY2Fu
J3QgaSBldmVuIGNoYW5nZQ0KPiB0aGUgc291cmNlIG9uIHNvZnR3YXJlIGJhc2U/DQpZZXMsIGxp
a2UgSSBzYWlkLCB0aGUgMTBNSHogbGluZSBpcyBzaGFyZWQsIGFuZCB0aGVyZSdzIG5vIHdheSB0
byBoYXZlIA0KdGhlIGhhcmR3YXJlIGRvIHRoZSByaWdodCB0aGluZw0KIMKgIGlmIHlvdSBoYXZl
IGFuIGludGVybmFsIEdQU0RPIGFuZCB3YW50IHRvIHVzZSBhbiBleHRlcm5hbCBjbG9jay4gSWYg
DQp5b3UgaGF2ZSBhbiAqaW50ZXJuYWwqIEdQU0RPLCB0aGVyZSdzDQogwqAgWkVSTyBuZWVkIHRv
IHVzZSBhbiBleHRlcm5hbCBvbmUgdW5sZXNzIHlvdSBuZWVkIHRvIHNoYXJlIDFQUFMgYW5kIA0K
MTBNSHogY2xvY2sgYW1vbmcgbXVsdGlwbGUNCiDCoCBkZXZpY2VzLsKgIEl0IGRvZXNuJ3Qgc291
bmQgbGlrZSB5b3UgbmVlZCB0aGF0LsKgIFRoZSBvdXRwdXQgb2YgDQp1aGRfdXNycF9wcm9iZSB3
aWxsIHRlbGwgdXMgc29tZSB0aGluZ3MsIGxpa2UNCiDCoCB3aGV0aGVyIHlvdSBhY3R1YWxseSBo
YXZlIGFuIG9uLWJvYXJkIEdQU0RPIG9yIG5vdC4NCg0KDQo+DQo+IHRoYW5rIHlvdQ0KPg0KPg0K
Pg0KPg0KPg0KPg0KPg0KPg0KPg0KPg0KPg0KPg0KPj4+DQo+Pj4gdGhhbmtzIGluIGFkdmFuY2UN
Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+
Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQ0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vy
cy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20K
