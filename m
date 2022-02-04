Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 411D44A9CBC
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 17:17:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BD09385DEE
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 11:17:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="KWyrqRBI";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 2556C38588A
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 11:16:29 -0500 (EST)
Received: by mail-qv1-f46.google.com with SMTP id d3so20607qvb.5
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 08:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=message-id:date:mime-version:user-agent:content-language:to
         :references:from:organization:subject:in-reply-to;
        bh=8T3zX6d3asJMZWWumgiC82Gf0TVnaT1+yL8gD7NTlxU=;
        b=KWyrqRBIMYwsj2RST3tpsQULoh3djCdIUhv5OfH1MGo+P0I3G9cmZxuNBxAGUt67+U
         8ZeGm0vDQJgaNcrAv47OKIyI2GzF/wmg4Pg4vbBD3FCEzyq0hn5kCF9hIOe8iXy6ewtU
         WyGPQ3dmDSVYVcNUJzAm8G0Qw+JajRPK9hgKBs+AIFaeWDUP7POg4yicoYp6CKzu7RsQ
         puxvON6Ep5vQG5MsAC65U7G3h/AUf1NmnsKXqM1TPnugABXSSmd3xgg8ZjpwZVWlW5fT
         hNzSFQYlsVlSxlfy1WtaOsrUqfJ2ZISvuN3I1/igJ1po1ilr7XjJkpKWlYupdZ6S5IhP
         rTiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:references:from:organization:subject
         :in-reply-to;
        bh=8T3zX6d3asJMZWWumgiC82Gf0TVnaT1+yL8gD7NTlxU=;
        b=QRLEGPN1NWFmWL3asIDbSmKtHs4ohqAnYCNG+XcCjV10Y5q0QJtL/4kW756VcJ6CA7
         j0PylxexMh6XmDZt/1yepnE9AVk6gyZfNSMS6HOysRVDLjqRCUHdhf6BC3snM4A1ObYS
         z8mVkqmb/bPsexzgvqXVlwnTL7AsDJ0w0TBnfaicT0YIgJI2pjbMRqMlDpfM/aglK20x
         2h5MiqTYri9bgdCe31FeTZBUUDYPTWLmgdc3wlwuSOHXKGo94+fPzjl66ZJgeLbqOXSf
         YoTTXWQn5beUg8u4lH+WnbOTTW+cnfxLapgNjp8l2UWSkUrmdqgJ42lYwo1/Ms1NHIzI
         3qtw==
X-Gm-Message-State: AOAM530XfBucUU0/E6TLnJKDflIAhWBfoPGD3A72Nt6icw+eaQCnCOqO
	RNMvz5DRpyzcpERB7IUIYSzNQ8V0TPoVaQ==
X-Google-Smtp-Source: ABdhPJwK9S7uCTM/QEdSI5Wf+SJbLKFRRDh+/b25ZQNQQteKXT4hOVjrauyw19ARkpFcx8zR/pN5sA==
X-Received: by 2002:ad4:5968:: with SMTP id eq8mr2399579qvb.80.1643991389081;
        Fri, 04 Feb 2022 08:16:29 -0800 (PST)
Received: from [10.3.226.59] ([154.3.44.37])
        by smtp.gmail.com with ESMTPSA id w8sm1324464qti.21.2022.02.04.08.16.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Feb 2022 08:16:28 -0800 (PST)
Message-ID: <425a8e78-fc35-7c7e-a036-87cc6e97408c@virginia.edu>
Date: Fri, 4 Feb 2022 11:16:26 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
 <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAB__hTT+rMDuE_Z2G-WPfmL5pa4Gp8WuaxNM8hU2hxK77rwQZQ@mail.gmail.com>
 <MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12.prod.outlook.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Organization: University of Virginia
In-Reply-To: <MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: PFRFI7427QBN6AFLYHBDHEWK3R7VNA7N
X-Message-ID-Hash: PFRFI7427QBN6AFLYHBDHEWK3R7VNA7N
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PFRFI7427QBN6AFLYHBDHEWK3R7VNA7N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8223315164483734154=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8223315164483734154==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IXPvnIgt5pJZNId0eKiat4sU"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------IXPvnIgt5pJZNId0eKiat4sU
Content-Type: multipart/mixed; boundary="------------l3IHvJpMZZIddTLeI7LBiaPS";
 protected-headers="v1"
From: Dustin Widmann <dw2zq@virginia.edu>
To: usrp-users@lists.ettus.com
Message-ID: <425a8e78-fc35-7c7e-a036-87cc6e97408c@virginia.edu>
Subject: Re: [USRP-users] Re: Timed Commands Not Working
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <8032a31f-48f3-af30-5a79-3d7c8dde12e2@gmail.com>
 <MN2PR12MB33129135EE23091DC520E48EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <a5b4ebc9-36db-b2d9-abbb-e7309562f33a@gmail.com>
 <MN2PR12MB33125E03CE4418143EC2F8AFB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <MN2PR12MB3312D53CEDAF9C0B074C6A8FB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
 <CAB__hTT+rMDuE_Z2G-WPfmL5pa4Gp8WuaxNM8hU2hxK77rwQZQ@mail.gmail.com>
 <MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12.prod.outlook.com>

--------------l3IHvJpMZZIddTLeI7LBiaPS
Content-Type: multipart/mixed; boundary="------------ejEPJNwN2BVGuxCoSg8QUaLS"

--------------ejEPJNwN2BVGuxCoSg8QUaLS
Content-Type: multipart/alternative;
 boundary="------------gXLx20YRxMt0G00NRk95GpGZ"

--------------gXLx20YRxMt0G00NRk95GpGZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

IkhvcGVmdWxseSwgc29tZW9uZSBjYW4gdHJ5IHRoZSB1aGQgInRlc3RfdGltZWRfY29tbWFu
ZHMiIGV4YW1wbGUgaW4gNC4xIA0KdG8uLi4iDQoNCg0KRmlndXJlIEkgb3VnaHQgdG8gYmUg
YWJvdXQgYXMgZ29vZCBhcyB0aGUgbmV4dCBzb21lYm9keS4NCg0KdGVzdF90aW1lZF9jb21t
YW5kcyBvdXRwdXQgd2l0aCBVSEQgNC4xLjAgYW5kIGFuIFgzMTANCg0KDQpDcmVhdGluZyB0
aGUgdXNycCBkZXZpY2Ugd2l0aDogLi4uDQpbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysg
dmVyc2lvbiAxMS4yLjA7IEJvb3N0XzEwNzgwMDsgDQpVSERfNC4xLjAuSEVBRC0wLWc2YmQw
YmU5Yw0KW0lORk9dIFtYMzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLi4uDQpb
SU5GT10gW1gzMDBdIE1heGltdW0gZnJhbWUgc2l6ZTogODAwMCBieXRlcy4NCltJTkZPXSBb
WDMwMF0gUmFkaW8gMXggY2xvY2s6IDIwMCBNSHoNClVzaW5nIERldmljZTogU2luZ2xlIFVT
UlA6DQogwqAgRGV2aWNlOiBYLVNlcmllcyBEZXZpY2UNCiDCoCBNYm9hcmQgMDogWDMxMA0K
IMKgIFJYIENoYW5uZWw6IDANCiDCoMKgwqAgUlggRFNQOiAwDQogwqDCoMKgIFJYIERib2Fy
ZDogQQ0KIMKgwqDCoCBSWCBTdWJkZXY6IFVCWCBSWA0KIMKgIFJYIENoYW5uZWw6IDENCiDC
oMKgwqAgUlggRFNQOiAxDQogwqDCoMKgIFJYIERib2FyZDogQg0KIMKgwqDCoCBSWCBTdWJk
ZXY6IFVCWCBSWA0KIMKgIFRYIENoYW5uZWw6IDANCiDCoMKgwqAgVFggRFNQOiAwDQogwqDC
oMKgIFRYIERib2FyZDogQQ0KIMKgwqDCoCBUWCBTdWJkZXY6IFVCWCBUWA0KIMKgIFRYIENo
YW5uZWw6IDENCiDCoMKgwqAgVFggRFNQOiAxDQogwqDCoMKgIFRYIERib2FyZDogQg0KIMKg
wqDCoCBUWCBTdWJkZXY6IFVCWCBUWA0KDQoNClRlc3Rpbmcgc3VwcG9ydCBmb3IgdGltZWQg
Y29tbWFuZHMgb24gdGhpcyBoYXJkd2FyZS4uLiBwYXNzDQoNClBlcmZvcm0gZmFzdCByZWFk
YmFjayBvZiByZWdpc3RlcnM6DQogwqBEaWZmZXJlbmNlIGJldHdlZW4gcGFpcmVkIHJlYWRz
OiAxMDc5LjAxNTMwMCB1cw0KDQpUZXN0aW5nIGNvbnRyb2wgdGltZWQgY29tbWFuZDoNCiDC
oFNwYW7CoMKgwqDCoMKgIDogMTAwMDAwLjAwMDAwMCB1cw0KIMKgTm93wqDCoMKgwqDCoMKg
IDogMjUzMjU2LjM0MDAwMCB1cw0KIMKgUmVzcG9uc2UgMTogMjU0NDM3LjIzMDAwMCB1cw0K
IMKgUmVzcG9uc2UgMjogMjU1Njc2Ljg0MDAwMCB1cw0KIMKgRGlmZmVyZW5jZSBvZiByZXNw
b25zZSB0aW1lIDE6IC05ODgxOS4xMTAwMDAgdXMNCiDCoERpZmZlcmVuY2Ugb2YgcmVzcG9u
c2UgdGltZSAyOiAtMTk3NTc5LjUwMDAwMCB1cw0KIMKgRGlmZmVyZW5jZSBiZXR3ZWVuIGFj
dHVhbCBhbmQgZXhwZWN0ZWQgdGltZSBkZWx0YTogLTk4NzYwLjM5MDAwMCB1cw0KDQpBYm91
dCB0byBzdGFydCBzdHJlYW1pbmcgdXNpbmcgdGltZWQgY29tbWFuZDoNCiDCoFJlY2VpdmVk
IHBhY2tldDogMTAwIHNhbXBsZXMsIDAgZnVsbCBzZWNzLCAwLjM2NTkzNSBmcmFjIHNlY3MN
CiDCoFN0cmVhbSB0aW1lIHdhczogMCBmdWxsIHNlY3MsIDAuMzY1OTM1IGZyYWMgc2Vjcw0K
IMKgRGlmZmVyZW5jZSBiZXR3ZWVuIHN0cmVhbSB0aW1lIGFuZCBmaXJzdCBwYWNrZXQ6IDAu
MDAwMDAwIHVzDQoNCkRvbmUhDQoNCi1EdXN0aW4NCg0KT24gMi8zLzIyIDA4OjAyLCBKaW0g
UGFsbGFkaW5vIHdyb3RlOg0KPiBUaGFua3MsIFJvYi4gSSBhbHdheXMgYXBwcmVjaWF0ZSB3
aGVuIHlvdSAiY2hpbWUgaW4iLiBIb3BlZnVsbHksIA0KPiBzb21lb25lIGNhbiB0cnkgdGhl
IHVoZCAidGVzdF90aW1lZF9jb21tYW5kcyIgZXhhbXBsZSBpbiA0LjEgdG8gaGVscCANCj4g
Y29uZmlybSB3aGV0aGVyIG9yIG5vdCBpdCdzIGEgcHJvYmxlbSB3aXRoIHNvbWV0aGluZyBv
biBteSBlbmQgb3Igd2l0aCANCj4gVUhELiBNYXJjdXMgYWxyZWFkeSBjb25maXJtZWQgaXRz
IHdvcmtpbmcgZm9yIGhpbSB3aXRoIGFuIE4zMTAgYW5kIFVIRCANCj4gMy4xNS4NCj4NCj4g
VGhhbmtzLA0KPiBKaW0NCj4NCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICpGcm9tOiogUm9i
IEtvc3NsZXIgPHJrb3NzbGVyQG5kLmVkdT4NCj4gKlNlbnQ6KiBXZWRuZXNkYXksIEZlYnJ1
YXJ5IDIsIDIwMjIgMzoyNiBQTQ0KPiAqVG86KiBKaW0gUGFsbGFkaW5vIDxqaW1AZ2FyZGV0
dG9lbmdpbmVlcmluZy5jb20+DQo+ICpDYzoqIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25i
cmF1bkBnbWFpbC5jb20+OyANCj4gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVzcnAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KPiAqU3ViamVjdDoqIFJlOiBbVVNSUC11c2Vyc10g
UmU6IFRpbWVkIENvbW1hbmRzIE5vdCBXb3JraW5nDQo+IEhpIEppbSwNCj4gVGhpcyBzb3Vu
ZHMgbGlrZSBhIHByZXR0eSBiaWcgaXNzdWUuIEkgaGF2ZW4ndCBjaGltZWQgaW4gYmVjYXVz
ZSBJIA0KPiBjb3VsZG4ndCBzYXkgZm9yIHN1cmUgaWYgdGltZWQgY29tbWFuZHMgd2VyZSB3
b3JraW5nIGZvciBtZSBvciBub3QgaW4gDQo+IFVIRCA0LjEuIEkgYW0gdXNpbmcgTjMyMXMg
d2l0aCBzaGFyZWQgTE8sIHNvIHRoZSBub3JtYWwgY29tbWFuZHMgSSB1c2UgDQo+IGZvciBz
ZXR0aW5nIGZyZXF1ZW5jeSBhcmVuJ3QgY3JpdGljYWwgKGZyb20gYSB0aW1lZCBjb21tYW5k
IA0KPiBwZXJzcGVjdGl2ZSkgZXhjZXB0IGZvciBob3cgdGhlIEREQy9EVUMgbWlnaHQgYmUg
aGFuZGxpbmcgdGhlbS4gSW4gYW55IA0KPiBjYXNlLCBvbmNlIHlvdSBmaW5kIG91dCB0aGUg
aXNzdWUsIGNvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgdGhlIHNvbHV0aW9uIA0KPiBoZXJlLiBJ
ZiBJIGdldCBhIGNoYW5jZSwgSSB3aWxsIHRyeSB0aGlzIG9uIHNvbWUgb2YgbXkgZGV2aWNl
cy4NCj4gUm9iDQo+DQo+IE9uIFdlZCwgRmViIDIsIDIwMjIgYXQgMTI6MjIgUE0gSmltIFBh
bGxhZGlubyANCj4gPGppbUBnYXJkZXR0b2VuZ2luZWVyaW5nLmNvbT4gd3JvdGU6DQo+DQo+
ICAgICBKdXN0IHRvIGFkZCBvbmUgbW9yZSBkYXRhIHBvaW50LCBJIGp1c3QgcmFuIHRlc3Rf
dGltZWRfY29tbWFuZHMgb24NCj4gICAgIGEgZGlmZmVyZW50IGNvbXB1dGVyIGNvbm5lY3Rl
ZCB0byBhbiBYMzEwIC0tIHN0aWxsIFVIRCA0LjEuIEkgaGF2ZQ0KPiAgICAgdGhlIHNhbWUg
cHJvYmxlbSB3aXRoIHRoYXQgZGV2aWNlIHdoZXJlIGl0IGxvb2tzIGxpa2UgdGltZWQNCj4g
ICAgIGNvbW1hbmRzIGFyZSBub3Qgd29ya2luZyByaWdodC4NCj4NCj4gICAgIFRoYW5rcywN
Cj4gICAgIEppbQ0KPg0KPiAgICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICAgICAqRnJvbToq
IEppbSBQYWxsYWRpbm8gPGppbUBnYXJkZXR0b2VuZ2luZWVyaW5nLmNvbT4NCj4gICAgICpT
ZW50OiogV2VkbmVzZGF5LCBGZWJydWFyeSAyLCAyMDIyIDEwOjQ0IEFNDQo+ICAgICAqVG86
KiBNYXJjdXMgRC4gTGVlY2ggPHBhdGNodm9uYnJhdW5AZ21haWwuY29tPjsNCj4gICAgIHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4N
Cj4gICAgICpTdWJqZWN0OiogUmU6IFtVU1JQLXVzZXJzXSBSZTogVGltZWQgQ29tbWFuZHMg
Tm90IFdvcmtpbmcNCj4gICAgIENvcnJlY3QgLS0gSSBhbSB1c2luZyB0aGUgc3RvY2sgRlBH
QSBpbWFnZSBmb3IgdGhlIEUzMjAgYW5kIHRoZSBOMzIwLg0KPg0KPiAgICAgVGhhbmtzLA0K
PiAgICAgSmltDQo+DQo+ICAgICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gICAgICpGcm9tOiog
TWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4NCj4gICAgICpTZW50
OiogV2VkbmVzZGF5LCBGZWJydWFyeSAyLCAyMDIyIDEwOjM5IEFNDQo+ICAgICAqVG86KiBK
aW0gUGFsbGFkaW5vIDxqaW1AZ2FyZGV0dG9lbmdpbmVlcmluZy5jb20+Ow0KPiAgICAgdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0K
PiAgICAgKlN1YmplY3Q6KiBSZTogW1VTUlAtdXNlcnNdIFJlOiBUaW1lZCBDb21tYW5kcyBO
b3QgV29ya2luZw0KPiAgICAgT24gMjAyMi0wMi0wMiAxMDoyMSwgSmltIFBhbGxhZGlubyB3
cm90ZToNCj4+ICAgICBUaGFua3MgTWFyY3VzLiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgUiZE
IGNvbWVzIGJhY2sgd2l0aA0KPj4gICAgIGFueXRoaW5nLiBJJ20gYXQgYSBiaXQgb2YgYSBs
b3NzIC4gLiAuDQo+Pg0KPj4gICAgIFRoYW5rcywNCj4+ICAgICBKaW0NCj4+DQo+PiAgICAg
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tDQo+Pg0KPiAgICAgSnVzdCB0byBjbGFyaWZ5LS10aGlzIGlz
IHdpdGggdGhlIHN0b2NrIEZQR0EgaW1hZ2UsIGNvcnJlY3Q/DQo+DQo+DQo+ICAgICBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiAgICAgVVNS
UC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4g
ICAgIFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS11c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCg==
--------------gXLx20YRxMt0G00NRk95GpGZ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body spellcheck=3D"false" data-gramm=3D"false">
    <p>"Hopefully, someone can try the uhd "test_timed_commands" example
      in 4.1 to..."</p>
    <p><br>
    </p>
    <p>Figure I ought to be about as good as the next somebody. <br>
    </p>
    <p>test_timed_commands output with UHD 4.1.0 and an X310</p>
    <p><br>
      Creating the usrp device with: ...<br>
      [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107800;
      UHD_4.1.0.HEAD-0-g6bd0be9c<br>
      [INFO] [X300] X300 initialization sequence...<br>
      [INFO] [X300] Maximum frame size: 8000 bytes.<br>
      [INFO] [X300] Radio 1x clock: 200 MHz<br>
      Using Device: Single USRP:<br>
      =C2=A0 Device: X-Series Device<br>
      =C2=A0 Mboard 0: X310<br>
      =C2=A0 RX Channel: 0<br>
      =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
      =C2=A0=C2=A0=C2=A0 RX Dboard: A<br>
      =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
      =C2=A0 RX Channel: 1<br>
      =C2=A0=C2=A0=C2=A0 RX DSP: 1<br>
      =C2=A0=C2=A0=C2=A0 RX Dboard: B<br>
      =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
      =C2=A0 TX Channel: 0<br>
      =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
      =C2=A0=C2=A0=C2=A0 TX Dboard: A<br>
      =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
      =C2=A0 TX Channel: 1<br>
      =C2=A0=C2=A0=C2=A0 TX DSP: 1<br>
      =C2=A0=C2=A0=C2=A0 TX Dboard: B<br>
      =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
      <br>
      <br>
      Testing support for timed commands on this hardware... pass<br>
      <br>
      Perform fast readback of registers:<br>
      =C2=A0Difference between paired reads: 1079.015300 us<br>
      <br>
      Testing control timed command:<br>
      =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us<br>
      =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 253256.340000 us<br=
>
      =C2=A0Response 1: 254437.230000 us<br>
      =C2=A0Response 2: 255676.840000 us<br>
      =C2=A0Difference of response time 1: -98819.110000 us<br>
      =C2=A0Difference of response time 2: -197579.500000 us<br>
      =C2=A0Difference between actual and expected time delta: -98760.390=
000
      us<br>
      <br>
      About to start streaming using timed command:<br>
      =C2=A0Received packet: 100 samples, 0 full secs, 0.365935 frac secs=
<br>
      =C2=A0Stream time was: 0 full secs, 0.365935 frac secs<br>
      =C2=A0Difference between stream time and first packet: 0.000000 us<=
br>
      <br>
      Done!<br>
      <br>
      -Dustin<br>
      <br>
    </p>
    <div class=3D"moz-cite-prefix">On 2/3/22 08:02, Jim Palladino wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB33127C45BA4FCB2206501932B8289@MN2PR12MB3312.namprd12=
=2Eprod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks, Rob. I always appreciate when you "chime in". Hopefully,
        someone can try the uhd "test_timed_commands" example in 4.1 to
        help confirm whether or not it's a problem with something on my
        end or with UHD. Marcus already confirmed its working for him
        with an N310 and UHD 3.15.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Jim</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Rob=

          Kossler <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:rkoss=
ler@nd.edu">&lt;rkossler@nd.edu&gt;</a><br>
          <b>Sent:</b> Wednesday, February 2, 2022 3:26 PM<br>
          <b>To:</b> Jim Palladino <a class=3D"moz-txt-link-rfc2396E" hre=
f=3D"mailto:jim@gardettoengineering.com">&lt;jim@gardettoengineering.com&=
gt;</a><br>
          <b>Cc:</b> Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" h=
ref=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a=
>;
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a> <a class=3D"moz-txt-link=
-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@list=
s.ettus.com&gt;</a><br>
          <b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not
          Working</font>
        <div>=C2=A0</div>
      </div>
      <div>
        <div dir=3D"ltr">Hi Jim,
          <div>This sounds like a pretty big issue. I haven't chimed in
            because I couldn't say for sure if timed commands were
            working for me or not in UHD 4.1. I am using N321s with
            shared LO, so the normal commands I use for setting
            frequency aren't critical (from a timed command perspective)
            except for how the DDC/DUC might be handling them. In any
            case, once you find out the issue, could you please share
            the solution here. If I get a chance, I will try this on
            some of my devices.</div>
          <div>Rob</div>
        </div>
        <br>
        <div class=3D"x_gmail_quote">
          <div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Feb 2, 2022 at
            12:22 PM Jim Palladino &lt;<a
              href=3D"mailto:jim@gardettoengineering.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ji=
m@gardettoengineering.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px=

            0.8ex; border-left:1px solid rgb(204,204,204);
            padding-left:1ex">
            <div dir=3D"ltr">
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Just to add one more data point, I just ran
                test_timed_commands on a different computer connected to
                an X310 -- still UHD 4.1. I have the same problem with
                that device where it looks like timed commands are not
                working right.</div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Thanks,</div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Jim</div>
              <div
                style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <hr style=3D"display:inline-block; width:98%">
              <div id=3D"x_gmail-m_7375824889804353296divRplyFwdMsg"
                dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibr=
i,
                  sans-serif" color=3D"#000000"><b>From:</b> Jim Palladin=
o
                  &lt;<a href=3D"mailto:jim@gardettoengineering.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">jim@gardettoengineeri=
ng.com</a>&gt;<br>
                  <b>Sent:</b> Wednesday, February 2, 2022 10:44 AM<br>
                  <b>To:</b> Marcus D. Leech &lt;<a
                    href=3D"mailto:patchvonbraun@gmail.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">patchvonbraun@gmail.c=
om</a>&gt;;
                  <a href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a>
                  &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" moz-do-not-send=3D"true"
                    class=3D"moz-txt-link-freetext">usrp-users@lists.ettu=
s.com</a>&gt;<br>
                  <b>Subject:</b> Re: [USRP-users] Re: Timed Commands
                  Not Working</font>
                <div>=C2=A0</div>
              </div>
              <div dir=3D"ltr">
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  Correct -- I am using the stock FPGA image for the
                  E320 and the N320.</div>
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  <br>
                </div>
                <div
                  style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;
                  font-size:12pt; color:rgb(0,0,0)">
                  Thanks,
                  <div>Jim</div>
                  <div><br>
                  </div>
                </div>
                <hr style=3D"display:inline-block; width:98%">
                <div id=3D"x_gmail-m_7375824889804353296x_divRplyFwdMsg"
                  dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Cali=
bri,
                    sans-serif" color=3D"#000000"><b>From:</b> Marcus D.
                    Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">patchvonbraun@gmail=
=2Ecom</a>&gt;<br>
                    <b>Sent:</b> Wednesday, February 2, 2022 10:39 AM<br>=

                    <b>To:</b> Jim Palladino &lt;<a
                      href=3D"mailto:jim@gardettoengineering.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">jim@gardettoenginee=
ring.com</a>&gt;;
                    <a href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>
                    &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"
                      target=3D"_blank" moz-do-not-send=3D"true"
                      class=3D"moz-txt-link-freetext">usrp-users@lists.et=
tus.com</a>&gt;<br>
                    <b>Subject:</b> Re: [USRP-users] Re: Timed Commands
                    Not Working</font>
                  <div>=C2=A0</div>
                </div>
                <div>
                  <div>On 2022-02-02 10:21, Jim Palladino wrote:<br>
                  </div>
                  <blockquote type=3D"cite">
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      Thanks Marcus. Please let me know if R&amp;D comes
                      back with anything. I'm at a bit of a loss . . .=C2=
=A0</div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      <br>
                    </div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      Thanks,</div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      Jim</div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)">
                      <br>
                    </div>
                    <hr style=3D"display:inline-block; width:98%">
                    <br>
                  </blockquote>
                  Just to clarify--this is with the stock FPGA image,
                  correct?<br>
                  <br>
                  <br>
                </div>
              </div>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">
              usrp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">
              usrp-users-leave@lists.ettus.com</a><br>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------gXLx20YRxMt0G00NRk95GpGZ--

--------------ejEPJNwN2BVGuxCoSg8QUaLS
Content-Type: application/pgp-keys; name="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Disposition: attachment; filename="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
sFzBQeU7
=3DcOkO
-----END PGP PUBLIC KEY BLOCK-----

--------------ejEPJNwN2BVGuxCoSg8QUaLS--

--------------l3IHvJpMZZIddTLeI7LBiaPS--

--------------IXPvnIgt5pJZNId0eKiat4sU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEZTqEZfH+oyM3hkmvzXMYEbriuvUFAmH9UVoFAwAAAAAACgkQzXMYEbriuvXE
Ow//WGWepv5R29MmGL8P5bzmQFMpx1iR0Qsg79gTHmV3rFzIKVl+ZVyA0r9XeyQ/LCwjASTshdXV
z/WNPUJLqF35+wFDwszWKoXJhEyrKLI696BMTdk93R5S9XLaFaFO2sDMD0W4VJhDGGsMt596pFFF
1uL5aUZ3F7iQ+Z4EPTiRXa8Kn5vHF4Hq3oH+a9SBs10IUFkpe+rLaS9I66OXuafJZmIEoJCYSult
nvcLC6koNuQcvNaBQN8wVfkpUhncnD3njbhbRgao6xOUn8XO3SnNFdavDJ7+ooOE8WVbP0FnjDDe
JBj82ZyvxEHiNsYpD7w57/P4ePkHUtqBgiLnwNpyL2tVPAf/E0mrMjS0Rrnme771rkRPLVWn5gzE
Ocxd9/TI+Z8OfMKAWopfmfLKZCs/2x+pj+pY9HrwgI4tKaYCGwST+mAjrpQcGVDQ47oLR5bp38WZ
RKo7yF+qVcDIFxBSGWhsUTl6Dpf/MCn3zAgqyzm9Q1m55oF+8en95OzPm0LHmHKHukyT5pwuwmIH
PbIYMbblr5HmrxpeKY3TP+0c/XKWqeWbWCXlHkW3RuRszS/Ssj9sEiGZ9Fj1/ToSZS1MenjuuSrS
yd61Edeh9Bv9AbrqAan87MF9q0TZMgL67gk703R10t3IEmpA/YL/Q6aBZ2+AjSjbJYvs1U141scn
Sf4=
=34z+
-----END PGP SIGNATURE-----

--------------IXPvnIgt5pJZNId0eKiat4sU--

--===============8223315164483734154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8223315164483734154==--
