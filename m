Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FA14AA02C
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 20:34:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E40138566E
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 14:34:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="JJmjkdNI";
	dkim-atps=neutral
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 35891385633
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 14:33:32 -0500 (EST)
Received: by mail-qt1-f182.google.com with SMTP id o3so6549788qtm.12
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 11:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:references:organization:in-reply-to;
        bh=jz0trwuz4lFspYAeUbLXhJecczaCSKcBF0Gl5N1sZp8=;
        b=JJmjkdNIAwRA176tVak6rz43ziKmIe7PbP155yfDs0pkh7xGEGvH7QMAE3ptDt1kTb
         a5ssc/IVoOG2SIdaWIbZTQ8tH+mKYt1M5lBVBl5Yv5LGdY1wAAyaTh5VUGS9heHi3uaV
         2VGwWU0r4z7aSLnXBcPldKZFuqj/8oBv2xl4yZ2fj8hu+1JUs1+v0ddanXgTcyS395Fz
         wSDrWPkMl0qqkF757ne57G2dCq3CV2w7sJC/JEeQCRY02TizNyn7vXSo11r4VlPUdv3G
         9pQJahUtgbdhM5W+59/esWQSNAdX0p9emXJ0GSQqrEkd4D1o9RCmPPV0cayGA/0I+rCL
         duSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:references:organization:in-reply-to;
        bh=jz0trwuz4lFspYAeUbLXhJecczaCSKcBF0Gl5N1sZp8=;
        b=5jQ/JZal6xDWbcFy4B6FXXzqR0PFAvSc4Ahdh2k13R6GQx6HeSVM8nOe0gI0BElQVi
         kdMRepU2zScjprg3Hp6s/fdSZ258lPYH6oel/eMlgOycqTJHQxcPMv0xDn8MneytA0eD
         r1v3MndaWTQRHlTu+cYnUiHQP3AZX4QrQGYKY+iJRBeAXq7FlgOr3VwP8UDHaGKZzbi+
         v0AZq2EHVjbGIzaU/XkwcNeUIWlm3HL/WFgh61tXFPk1WZsOl00wB37dYjcvqcNoFOcj
         Js2s9r447f20S9nQDxwdfyWkeOKKAwKY7Fg9Ta5gdJe4sQbLKqqXvoKQ5aBOn504HbvZ
         MMQw==
X-Gm-Message-State: AOAM5321B4KdmO+MSA8ZhZiDs1b0qBewQUBqrRgNswBA7ZQGVU0WanyG
	r74AlD4vl+d0vaTiVIH5laugtrPRCAervQ==
X-Google-Smtp-Source: ABdhPJwJvtYWpg1wzoR/J1Qb9B6aDxVkckgWznJqKMt26GzlLUSJVt2Aizosa1cDraaISRGEnwjINw==
X-Received: by 2002:a05:622a:2ca:: with SMTP id a10mr422982qtx.298.1644003211502;
        Fri, 04 Feb 2022 11:33:31 -0800 (PST)
Received: from [10.3.226.59] ([154.3.44.37])
        by smtp.gmail.com with ESMTPSA id r22sm1589114qtw.35.2022.02.04.11.33.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Feb 2022 11:33:30 -0800 (PST)
Message-ID: <35ba5c00-e913-6b60-799b-c2ee0bda3e93@virginia.edu>
Date: Fri, 4 Feb 2022 14:33:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Content-Language: en-US
From: Dustin Widmann <dw2zq@virginia.edu>
To: Jim Palladino <jim@gardettoengineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
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
 <425a8e78-fc35-7c7e-a036-87cc6e97408c@virginia.edu>
 <MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12.prod.outlook.com>
 <7fdd4da5-271b-a418-9f22-9dd9610ff39f@virginia.edu>
Organization: University of Virginia
In-Reply-To: <7fdd4da5-271b-a418-9f22-9dd9610ff39f@virginia.edu>
Message-ID-Hash: LGUZ3ZDMWTQLNMPQ7X7YJXYOSULSO4CK
X-Message-ID-Hash: LGUZ3ZDMWTQLNMPQ7X7YJXYOSULSO4CK
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LGUZ3ZDMWTQLNMPQ7X7YJXYOSULSO4CK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8500374422384670017=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8500374422384670017==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FqSbv6R0B04RxqmDmjMAd8uk"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------FqSbv6R0B04RxqmDmjMAd8uk
Content-Type: multipart/mixed; boundary="------------45ifQnMNCgKWPOja1DbbTKL8";
 protected-headers="v1"
From: Dustin Widmann <dw2zq@virginia.edu>
To: Jim Palladino <jim@gardettoengineering.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <35ba5c00-e913-6b60-799b-c2ee0bda3e93@virginia.edu>
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
 <425a8e78-fc35-7c7e-a036-87cc6e97408c@virginia.edu>
 <MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12.prod.outlook.com>
 <7fdd4da5-271b-a418-9f22-9dd9610ff39f@virginia.edu>
In-Reply-To: <7fdd4da5-271b-a418-9f22-9dd9610ff39f@virginia.edu>

--------------45ifQnMNCgKWPOja1DbbTKL8
Content-Type: multipart/mixed; boundary="------------VdYp0hd0WKDnH2OGp9aDBkCy"

--------------VdYp0hd0WKDnH2OGp9aDBkCy
Content-Type: multipart/alternative;
 boundary="------------cZBqSAG1gjZhtVJO98PPBUUo"

--------------cZBqSAG1gjZhtVJO98PPBUUo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

VGVzdGVkIHdpdGggVUhEIDQuMC4wLjAgcmVsZWFzZSB0YWcgYW5kIFVIRCA0LjEuMC4wIHJl
bGVhc2UgdGFnIHdpdGggdGhlIA0Kc2FtZSByZXN1bHRzLiBIbW0uDQoNCg0KQ3JlYXRpbmcg
dGhlIHVzcnAgZGV2aWNlIHdpdGg6IC4uLg0KW0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysr
IHZlcnNpb24gMTEuMi4wOyBCb29zdF8xMDc0MDA7IA0KVUhEXzQuMS4wLkhFQUQtMC1nZDIx
NzM1ZDUNCltJTkZPXSBbWDMwMF0gWDMwMCBpbml0aWFsaXphdGlvbiBzZXF1ZW5jZS4uLg0K
W0lORk9dIFtYMzAwXSBNYXhpbXVtIGZyYW1lIHNpemU6IDgwMDAgYnl0ZXMuDQpbSU5GT10g
W0dQU10gTm8gR1BTRE8gZm91bmQNCltJTkZPXSBbWDMwMF0gUmFkaW8gMXggY2xvY2s6IDIw
MCBNSHoNClVzaW5nIERldmljZTogU2luZ2xlIFVTUlA6DQogwqAgRGV2aWNlOiBYLVNlcmll
cyBEZXZpY2UNCiDCoCBNYm9hcmQgMDogWDMxMA0KIMKgIFJYIENoYW5uZWw6IDANCiDCoMKg
wqAgUlggRFNQOiAwDQogwqDCoMKgIFJYIERib2FyZDogQQ0KIMKgwqDCoCBSWCBTdWJkZXY6
IFVCWCBSWA0KIMKgIFJYIENoYW5uZWw6IDENCiDCoMKgwqAgUlggRFNQOiAxDQogwqDCoMKg
IFJYIERib2FyZDogQg0KIMKgwqDCoCBSWCBTdWJkZXY6IFVCWCBSWA0KIMKgIFRYIENoYW5u
ZWw6IDANCiDCoMKgwqAgVFggRFNQOiAwDQogwqDCoMKgIFRYIERib2FyZDogQQ0KIMKgwqDC
oCBUWCBTdWJkZXY6IFVCWCBUWA0KIMKgIFRYIENoYW5uZWw6IDENCiDCoMKgwqAgVFggRFNQ
OiAxDQogwqDCoMKgIFRYIERib2FyZDogQg0KIMKgwqDCoCBUWCBTdWJkZXY6IFVCWCBUWA0K
DQoNClRlc3Rpbmcgc3VwcG9ydCBmb3IgdGltZWQgY29tbWFuZHMgb24gdGhpcyBoYXJkd2Fy
ZS4uLiBwYXNzDQoNClBlcmZvcm0gZmFzdCByZWFkYmFjayBvZiByZWdpc3RlcnM6DQogwqBE
aWZmZXJlbmNlIGJldHdlZW4gcGFpcmVkIHJlYWRzOiAxMTE3LjY2MTI1MCB1cw0KDQpUZXN0
aW5nIGNvbnRyb2wgdGltZWQgY29tbWFuZDoNCiDCoFNwYW7CoMKgwqDCoMKgIDogMTAwMDAw
LjAwMDAwMCB1cw0KIMKgTm93wqDCoMKgwqDCoMKgIDogMjgzMzM0LjYwMDAwMCB1cw0KIMKg
UmVzcG9uc2UgMTogMjg0NTU1LjgxMDAwMCB1cw0KIMKgUmVzcG9uc2UgMjogMjg1NzU3LjQ1
MDAwMCB1cw0KIMKgRGlmZmVyZW5jZSBvZiByZXNwb25zZSB0aW1lIDE6IC05ODc3OC43OTAw
MDAgdXMNCiDCoERpZmZlcmVuY2Ugb2YgcmVzcG9uc2UgdGltZSAyOiAtMTk3NTc3LjE1MDAw
MCB1cw0KIMKgRGlmZmVyZW5jZSBiZXR3ZWVuIGFjdHVhbCBhbmQgZXhwZWN0ZWQgdGltZSBk
ZWx0YTogLTk4Nzk4LjM2MDAwMCB1cw0KDQpBYm91dCB0byBzdGFydCBzdHJlYW1pbmcgdXNp
bmcgdGltZWQgY29tbWFuZDoNCiDCoFJlY2VpdmVkIHBhY2tldDogMTAwIHNhbXBsZXMsIDAg
ZnVsbCBzZWNzLCAwLjM5NDU1MyBmcmFjIHNlY3MNCiDCoFN0cmVhbSB0aW1lIHdhczogMCBm
dWxsIHNlY3MsIDAuMzk0NTUzIGZyYWMgc2Vjcw0KIMKgRGlmZmVyZW5jZSBiZXR3ZWVuIHN0
cmVhbSB0aW1lIGFuZCBmaXJzdCBwYWNrZXQ6IDAuMDAwMDAwIHVzDQoNCkRvbmUhDQoNCg0K
Q3JlYXRpbmcgdGhlIHVzcnAgZGV2aWNlIHdpdGg6IC4uLg0KW0lORk9dIFtVSERdIGxpbnV4
OyBHTlUgQysrIHZlcnNpb24gMTEuMi4wOyBCb29zdF8xMDc0MDA7IA0KVUhEXzQuMC4wLkhF
QUQtMC1nOTBjZTYwNjINCltJTkZPXSBbWDMwMF0gWDMwMCBpbml0aWFsaXphdGlvbiBzZXF1
ZW5jZS4uLg0KW0lORk9dIFtYMzAwXSBNYXhpbXVtIGZyYW1lIHNpemU6IDgwMDAgYnl0ZXMu
DQpbSU5GT10gW0dQU10gTm8gR1BTRE8gZm91bmQNCltJTkZPXSBbWDMwMF0gUmFkaW8gMXgg
Y2xvY2s6IDIwMCBNSHoNClVzaW5nIERldmljZTogU2luZ2xlIFVTUlA6DQogwqAgRGV2aWNl
OiBYLVNlcmllcyBEZXZpY2UNCiDCoCBNYm9hcmQgMDogWDMxMA0KIMKgIFJYIENoYW5uZWw6
IDANCiDCoMKgwqAgUlggRFNQOiAwDQogwqDCoMKgIFJYIERib2FyZDogQQ0KIMKgwqDCoCBS
WCBTdWJkZXY6IFVCWCBSWA0KIMKgIFJYIENoYW5uZWw6IDENCiDCoMKgwqAgUlggRFNQOiAx
DQogwqDCoMKgIFJYIERib2FyZDogQg0KIMKgwqDCoCBSWCBTdWJkZXY6IFVCWCBSWA0KIMKg
IFRYIENoYW5uZWw6IDANCiDCoMKgwqAgVFggRFNQOiAwDQogwqDCoMKgIFRYIERib2FyZDog
QQ0KIMKgwqDCoCBUWCBTdWJkZXY6IFVCWCBUWA0KIMKgIFRYIENoYW5uZWw6IDENCiDCoMKg
wqAgVFggRFNQOiAxDQogwqDCoMKgIFRYIERib2FyZDogQg0KIMKgwqDCoCBUWCBTdWJkZXY6
IFVCWCBUWA0KDQoNClRlc3Rpbmcgc3VwcG9ydCBmb3IgdGltZWQgY29tbWFuZHMgb24gdGhp
cyBoYXJkd2FyZS4uLiBwYXNzDQoNClBlcmZvcm0gZmFzdCByZWFkYmFjayBvZiByZWdpc3Rl
cnM6DQogwqBEaWZmZXJlbmNlIGJldHdlZW4gcGFpcmVkIHJlYWRzOiAxMDk2LjEzNTQwMCB1
cw0KDQpUZXN0aW5nIGNvbnRyb2wgdGltZWQgY29tbWFuZDoNCiDCoFNwYW7CoMKgwqDCoMKg
IDogMTAwMDAwLjAwMDAwMCB1cw0KIMKgTm93wqDCoMKgwqDCoMKgIDogMjgyNDEzLjc3MDAw
MCB1cw0KIMKgUmVzcG9uc2UgMTogMjgzNjUzLjM4NTAwMCB1cw0KIMKgUmVzcG9uc2UgMjog
Mjg1MjI1Ljc0MDAwMCB1cw0KIMKgRGlmZmVyZW5jZSBvZiByZXNwb25zZSB0aW1lIDE6IC05
ODc2MC4zODUwMDAgdXMNCiDCoERpZmZlcmVuY2Ugb2YgcmVzcG9uc2UgdGltZSAyOiAtMTk3
MTg4LjAzMDAwMCB1cw0KIMKgRGlmZmVyZW5jZSBiZXR3ZWVuIGFjdHVhbCBhbmQgZXhwZWN0
ZWQgdGltZSBkZWx0YTogLTk4NDI3LjY0NTAwMCB1cw0KDQpBYm91dCB0byBzdGFydCBzdHJl
YW1pbmcgdXNpbmcgdGltZWQgY29tbWFuZDoNCiDCoFJlY2VpdmVkIHBhY2tldDogMTAwIHNh
bXBsZXMsIDAgZnVsbCBzZWNzLCAwLjM5Mzg0NCBmcmFjIHNlY3MNCiDCoFN0cmVhbSB0aW1l
IHdhczogMCBmdWxsIHNlY3MsIDAuMzkzODQ0IGZyYWMgc2Vjcw0KIMKgRGlmZmVyZW5jZSBi
ZXR3ZWVuIHN0cmVhbSB0aW1lIGFuZCBmaXJzdCBwYWNrZXQ6IDAuMDAwMDAwIHVzDQoNCkRv
bmUhDQoNCg0KLUR1c3Rpbg0KDQpPbiAyLzQvMjIgMTM6MjMsIER1c3RpbiBXaWRtYW5uIHdy
b3RlOg0KPg0KPiBGb3IgcmVmZXJlbmNlLCBJJ3ZlIGRvbmUgaXQgb3ZlciBhZ2FpbiB3aXRo
IHRoZSBsYXRlc3QgY29tbWl0cyBmcm9tIA0KPiB0aGUgVUhELTQuMMKgIGFuZCBVSEQtMy4x
NS5MVFMgYnJhbmNoZXMuDQo+DQo+DQo+IENyZWF0aW5nIHRoZSB1c3JwIGRldmljZSB3aXRo
OiAuLi4NCj4gW0lORk9dIFtVSERdIGxpbnV4OyBDbGFuZyB2ZXJzaW9uIDEzLjAuMCA7IEJv
b3N0XzEwNzQwMDsgDQo+IFVIRF80LjAuMC4wLTI0MC1nYjM4YzlkODMNCj4gW0lORk9dIFtY
MzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLi4uDQo+IFtJTkZPXSBbWDMwMF0g
TWF4aW11bSBmcmFtZSBzaXplOiA4MDAwIGJ5dGVzLg0KPiBbSU5GT10gW1gzMDBdIFJhZGlv
IDF4IGNsb2NrOiAyMDAgTUh6DQo+IFVzaW5nIERldmljZTogU2luZ2xlIFVTUlA6DQo+IMKg
IERldmljZTogWC1TZXJpZXMgRGV2aWNlDQo+IMKgIE1ib2FyZCAwOiBYMzEwDQo+IMKgIFJY
IENoYW5uZWw6IDANCj4gwqDCoMKgIFJYIERTUDogMA0KPiDCoMKgwqAgUlggRGJvYXJkOiBB
DQo+IMKgwqDCoCBSWCBTdWJkZXY6IFVCWCBSWA0KPiDCoCBSWCBDaGFubmVsOiAxDQo+IMKg
wqDCoCBSWCBEU1A6IDENCj4gwqDCoMKgIFJYIERib2FyZDogQg0KPiDCoMKgwqAgUlggU3Vi
ZGV2OiBVQlggUlgNCj4gwqAgVFggQ2hhbm5lbDogMA0KPiDCoMKgwqAgVFggRFNQOiAwDQo+
IMKgwqDCoCBUWCBEYm9hcmQ6IEENCj4gwqDCoMKgIFRYIFN1YmRldjogVUJYIFRYDQo+IMKg
IFRYIENoYW5uZWw6IDENCj4gwqDCoMKgIFRYIERTUDogMQ0KPiDCoMKgwqAgVFggRGJvYXJk
OiBCDQo+IMKgwqDCoCBUWCBTdWJkZXY6IFVCWCBUWA0KPg0KPg0KPiBUZXN0aW5nIHN1cHBv
cnQgZm9yIHRpbWVkIGNvbW1hbmRzIG9uIHRoaXMgaGFyZHdhcmUuLi4gcGFzcw0KPg0KPiBQ
ZXJmb3JtIGZhc3QgcmVhZGJhY2sgb2YgcmVnaXN0ZXJzOg0KPiDCoERpZmZlcmVuY2UgYmV0
d2VlbiBwYWlyZWQgcmVhZHM6IDEwNjAuNjU5MTAwIHVzDQo+DQo+IFRlc3RpbmcgY29udHJv
bCB0aW1lZCBjb21tYW5kOg0KPiDCoFNwYW7CoMKgwqDCoMKgIDogMTAwMDAwLjAwMDAwMCB1
cw0KPiDCoE5vd8KgwqDCoMKgwqDCoCA6IDI0OTQzMS43NTAwMDAgdXMNCj4gwqBSZXNwb25z
ZSAxOiAyNTA1MTUuOTUwMDAwIHVzDQo+IMKgUmVzcG9uc2UgMjogMjUxNTIxLjg1MDAwMCB1
cw0KPiDCoERpZmZlcmVuY2Ugb2YgcmVzcG9uc2UgdGltZSAxOiAtOTg5MTUuODAwMDAwIHVz
DQo+IMKgRGlmZmVyZW5jZSBvZiByZXNwb25zZSB0aW1lIDI6IC0xOTc5MDkuOTAwMDAwIHVz
DQo+IMKgRGlmZmVyZW5jZSBiZXR3ZWVuIGFjdHVhbCBhbmQgZXhwZWN0ZWQgdGltZSBkZWx0
YTogLTk4OTk0LjEwMDAwMCB1cw0KPg0KPiBBYm91dCB0byBzdGFydCBzdHJlYW1pbmcgdXNp
bmcgdGltZWQgY29tbWFuZDoNCj4gwqBSZWNlaXZlZCBwYWNrZXQ6IDEwMCBzYW1wbGVzLCAw
IGZ1bGwgc2VjcywgMC4zNTk0NTIgZnJhYyBzZWNzDQo+IMKgU3RyZWFtIHRpbWUgd2FzOiAw
IGZ1bGwgc2VjcywgMC4zNTk0NTIgZnJhYyBzZWNzDQo+IMKgRGlmZmVyZW5jZSBiZXR3ZWVu
IHN0cmVhbSB0aW1lIGFuZCBmaXJzdCBwYWNrZXQ6IDAuMDAwMDAwIHVzDQo+DQo+IERvbmUh
DQo+DQo+DQo+IENyZWF0aW5nIHRoZSB1c3JwIGRldmljZSB3aXRoOiAuLi4NCj4gW0lORk9d
IFtVSERdIGxpbnV4OyBDbGFuZyB2ZXJzaW9uIDEzLjAuMCA7IEJvb3N0XzEwNzQwMDsgDQo+
IFVIRF8zLjE1LjAuMC03NC1nZTM1ZjY2ZTgNCj4gW0lORk9dIFtYMzAwXSBYMzAwIGluaXRp
YWxpemF0aW9uIHNlcXVlbmNlLi4uDQo+IFtJTkZPXSBbWDMwMF0gTWF4aW11bSBmcmFtZSBz
aXplOiA4MDAwIGJ5dGVzLg0KPiBbSU5GT10gW1gzMDBdIFJhZGlvIDF4IGNsb2NrOiAyMDAg
TUh6DQo+IFtJTkZPXSBbR1BTXSBObyBHUFNETyBmb3VuZA0KPiBbSU5GT10gWzAvRG1hRklG
T18wXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiANCj4gMHhGMUYwRDAw
MDAwMDAwMDAwKQ0KPiBbSU5GT10gWzAvRG1hRklGT18wXSBCSVNUIHBhc3NlZCAoVGhyb3Vn
aHB1dDogMTMwOSBNQi9zKQ0KPiBbSU5GT10gWzAvRG1hRklGT18wXSBCSVNUIHBhc3NlZCAo
VGhyb3VnaHB1dDogMTMxNSBNQi9zKQ0KPiBbSU5GT10gWzAvUmFkaW9fMF0gSW5pdGlhbGl6
aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHgxMkFEMTAwMDAwMDAwMDAxKQ0KPiBbSU5G
T10gWzAvUmFkaW9fMV0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wgKE5PQyBJRDogMHgx
MkFEMTAwMDAwMDAwMDAxKQ0KPiBbSU5GT10gWzAvRERDXzBdIEluaXRpYWxpemluZyBibG9j
ayBjb250cm9sIChOT0MgSUQ6IDB4RERDMDAwMDAwMDAwMDAwMCkNCj4gW0lORk9dIFswL0RE
Q18xXSBJbml0aWFsaXppbmcgYmxvY2sgY29udHJvbCAoTk9DIElEOiAweEREQzAwMDAwMDAw
MDAwMDApDQo+IFtJTkZPXSBbMC9EVUNfMF0gSW5pdGlhbGl6aW5nIGJsb2NrIGNvbnRyb2wg
KE5PQyBJRDogMHhEMEMwMDAwMDAwMDAwMDAwKQ0KPiBbSU5GT10gWzAvRFVDXzFdIEluaXRp
YWxpemluZyBibG9jayBjb250cm9sIChOT0MgSUQ6IDB4RDBDMDAwMDAwMDAwMDAwMCkNCj4g
VXNpbmcgRGV2aWNlOiBTaW5nbGUgVVNSUDoNCj4gwqAgRGV2aWNlOiBYLVNlcmllcyBEZXZp
Y2UNCj4gwqAgTWJvYXJkIDA6IFgzMTANCj4gwqAgUlggQ2hhbm5lbDogMA0KPiDCoMKgwqAg
UlggRFNQOiAwDQo+IMKgwqDCoCBSWCBEYm9hcmQ6IEENCj4gwqDCoMKgIFJYIFN1YmRldjog
VUJYIFJYDQo+IMKgIFJYIENoYW5uZWw6IDENCj4gwqDCoMKgIFJYIERTUDogMA0KPiDCoMKg
wqAgUlggRGJvYXJkOiBCDQo+IMKgwqDCoCBSWCBTdWJkZXY6IFVCWCBSWA0KPiDCoCBUWCBD
aGFubmVsOiAwDQo+IMKgwqDCoCBUWCBEU1A6IDANCj4gwqDCoMKgIFRYIERib2FyZDogQQ0K
PiDCoMKgwqAgVFggU3ViZGV2OiBVQlggVFgNCj4gwqAgVFggQ2hhbm5lbDogMQ0KPiDCoMKg
wqAgVFggRFNQOiAwDQo+IMKgwqDCoCBUWCBEYm9hcmQ6IEINCj4gwqDCoMKgIFRYIFN1YmRl
djogVUJYIFRYDQo+DQo+DQo+IFRlc3Rpbmcgc3VwcG9ydCBmb3IgdGltZWQgY29tbWFuZHMg
b24gdGhpcyBoYXJkd2FyZS4uLiBwYXNzDQo+DQo+IFBlcmZvcm0gZmFzdCByZWFkYmFjayBv
ZiByZWdpc3RlcnM6DQo+IMKgRGlmZmVyZW5jZSBiZXR3ZWVuIHBhaXJlZCByZWFkczogNjAu
NDM0MzUwIHVzDQo+DQo+IFRlc3RpbmcgY29udHJvbCB0aW1lZCBjb21tYW5kOg0KPiDCoFNw
YW7CoMKgwqDCoMKgIDogMTAwMDAwLjAwMDAwMCB1cw0KPiDCoE5vd8KgwqDCoMKgwqDCoCA6
IDE4NDg5NjQuNjAwMDAwIHVzDQo+IMKgUmVzcG9uc2UgMTogMTk0ODk2NC42NTUwMDAgdXMN
Cj4gwqBSZXNwb25zZSAyOiAyMDQ4OTY0LjY1NTAwMCB1cw0KPiDCoERpZmZlcmVuY2Ugb2Yg
cmVzcG9uc2UgdGltZSAxOiAwLjA1NTAwMCB1cw0KPiDCoERpZmZlcmVuY2Ugb2YgcmVzcG9u
c2UgdGltZSAyOiAwLjA1NTAwMCB1cw0KPiDCoERpZmZlcmVuY2UgYmV0d2VlbiBhY3R1YWwg
YW5kIGV4cGVjdGVkIHRpbWUgZGVsdGE6IDAuMDAwMDAwIHVzDQo+DQo+IEFib3V0IHRvIHN0
YXJ0IHN0cmVhbWluZyB1c2luZyB0aW1lZCBjb21tYW5kOg0KPiDCoFJlY2VpdmVkIHBhY2tl
dDogMTAwIHNhbXBsZXMsIDIgZnVsbCBzZWNzLCAwLjE1NTc3MCBmcmFjIHNlY3MNCj4gwqBT
dHJlYW0gdGltZSB3YXM6IDIgZnVsbCBzZWNzLCAwLjE1NTc3MCBmcmFjIHNlY3MNCj4gwqBE
aWZmZXJlbmNlIGJldHdlZW4gc3RyZWFtIHRpbWUgYW5kIGZpcnN0IHBhY2tldDogMC4wMDUw
MDAgdXMNCj4NCj4gRG9uZSENCj4NCj4NCj4NCj4gLS0gDQo+DQo+DQo+IFRoaXMgaXMgcHJl
dHR5IGNvbmNlcm5pbmcsIGxvb2tzIGxpa2UgdGhlIGxhdGVzdCBjb21taXQgb2YgdGhlIFVI
RC00LjAgDQo+IGJyYW5jaCBoYXMgdGhpcyBicm9rZW4gYXMgd2VsbD8gVGltZWQgY29tbWFu
ZHMgYXQgbGVhc3QgdXNlZCB0byB3b3JrIA0KPiBpbiBVSEQgNC4wLCBidXQgSSBoYWRuJ3Qg
dHJpZWQgaW4gYSB3aGlsZSwgYW5kIG5ldmVyIHdpdGggdGhpcyBuaWZ0eSANCj4gdGVzdCBw
cm9ncmFtLiBJJ20gZ29pbmcgdG8gaGF2ZSB0byBzZWUgaWYgSSBjYW4gZmluZCB3aGVyZSB0
aGUgDQo+IGJyZWFrYWdlIG9jY3VycmVkLCBzbyBJIGNhbiByb2xsIGJhY2sgZm9yIHRoZSB0
aW1lIGJlaW5nLg0KPg0KPg0KPiAtRHVzdGluDQo+DQo+DQo+IE9uIDIvNC8yMiAxMToyMywg
SmltIFBhbGxhZGlubyB3cm90ZToNCj4+IER1c3RpbiwNCj4+DQo+PiBUaGFuayB5b3UgZm9y
IHJ1bm5pbmcgdGhhdC4gU28gYXBwYXJlbnRseSwgaXQgaXNuJ3QganVzdCBhbiBpc3N1ZSBv
biANCj4+IG15IGVuZC4NCj4+DQo+PiBUaGFua3MsDQo+PiBKaW0NCj4+DQo+PiAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCj4+ICpGcm9tOiogRHVzdGluIFdpZG1hbm4gPGR3MnpxQHZpcmdpbmlh
LmVkdT4NCj4+ICpTZW50OiogRnJpZGF5LCBGZWJydWFyeSA0LCAyMDIyIDExOjE2IEFNDQo+
PiAqVG86KiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8dXNycC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20+DQo+PiAqU3ViamVjdDoqIFtVU1JQLXVzZXJzXSBSZTogVGltZWQgQ29tbWFu
ZHMgTm90IFdvcmtpbmcNCj4+DQo+PiAiSG9wZWZ1bGx5LCBzb21lb25lIGNhbiB0cnkgdGhl
IHVoZCAidGVzdF90aW1lZF9jb21tYW5kcyIgZXhhbXBsZSBpbiANCj4+IDQuMSB0by4uLiIN
Cj4+DQo+Pg0KPj4gRmlndXJlIEkgb3VnaHQgdG8gYmUgYWJvdXQgYXMgZ29vZCBhcyB0aGUg
bmV4dCBzb21lYm9keS4NCj4+DQo+PiB0ZXN0X3RpbWVkX2NvbW1hbmRzIG91dHB1dCB3aXRo
IFVIRCA0LjEuMCBhbmQgYW4gWDMxMA0KPj4NCj4+DQo+PiBDcmVhdGluZyB0aGUgdXNycCBk
ZXZpY2Ugd2l0aDogLi4uDQo+PiBbSU5GT10gW1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lv
biAxMS4yLjA7IEJvb3N0XzEwNzgwMDsgDQo+PiBVSERfNC4xLjAuSEVBRC0wLWc2YmQwYmU5
Yw0KPj4gW0lORk9dIFtYMzAwXSBYMzAwIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlLi4uDQo+
PiBbSU5GT10gW1gzMDBdIE1heGltdW0gZnJhbWUgc2l6ZTogODAwMCBieXRlcy4NCj4+IFtJ
TkZPXSBbWDMwMF0gUmFkaW8gMXggY2xvY2s6IDIwMCBNSHoNCj4+IFVzaW5nIERldmljZTog
U2luZ2xlIFVTUlA6DQo+PiDCoCBEZXZpY2U6IFgtU2VyaWVzIERldmljZQ0KPj4gwqAgTWJv
YXJkIDA6IFgzMTANCj4+IMKgIFJYIENoYW5uZWw6IDANCj4+IMKgwqDCoCBSWCBEU1A6IDAN
Cj4+IMKgwqDCoCBSWCBEYm9hcmQ6IEENCj4+IMKgwqDCoCBSWCBTdWJkZXY6IFVCWCBSWA0K
Pj4gwqAgUlggQ2hhbm5lbDogMQ0KPj4gwqDCoMKgIFJYIERTUDogMQ0KPj4gwqDCoMKgIFJY
IERib2FyZDogQg0KPj4gwqDCoMKgIFJYIFN1YmRldjogVUJYIFJYDQo+PiDCoCBUWCBDaGFu
bmVsOiAwDQo+PiDCoMKgwqAgVFggRFNQOiAwDQo+PiDCoMKgwqAgVFggRGJvYXJkOiBBDQo+
PiDCoMKgwqAgVFggU3ViZGV2OiBVQlggVFgNCj4+IMKgIFRYIENoYW5uZWw6IDENCj4+IMKg
wqDCoCBUWCBEU1A6IDENCj4+IMKgwqDCoCBUWCBEYm9hcmQ6IEINCj4+IMKgwqDCoCBUWCBT
dWJkZXY6IFVCWCBUWA0KPj4NCj4+DQo+PiBUZXN0aW5nIHN1cHBvcnQgZm9yIHRpbWVkIGNv
bW1hbmRzIG9uIHRoaXMgaGFyZHdhcmUuLi4gcGFzcw0KPj4NCj4+IFBlcmZvcm0gZmFzdCBy
ZWFkYmFjayBvZiByZWdpc3RlcnM6DQo+PiDCoERpZmZlcmVuY2UgYmV0d2VlbiBwYWlyZWQg
cmVhZHM6IDEwNzkuMDE1MzAwIHVzDQo+Pg0KPj4gVGVzdGluZyBjb250cm9sIHRpbWVkIGNv
bW1hbmQ6DQo+PiDCoFNwYW7CoMKgwqDCoMKgIDogMTAwMDAwLjAwMDAwMCB1cw0KPj4gwqBO
b3fCoMKgwqDCoMKgwqAgOiAyNTMyNTYuMzQwMDAwIHVzDQo+PiDCoFJlc3BvbnNlIDE6IDI1
NDQzNy4yMzAwMDAgdXMNCj4+IMKgUmVzcG9uc2UgMjogMjU1Njc2Ljg0MDAwMCB1cw0KPj4g
wqBEaWZmZXJlbmNlIG9mIHJlc3BvbnNlIHRpbWUgMTogLTk4ODE5LjExMDAwMCB1cw0KPj4g
wqBEaWZmZXJlbmNlIG9mIHJlc3BvbnNlIHRpbWUgMjogLTE5NzU3OS41MDAwMDAgdXMNCj4+
IMKgRGlmZmVyZW5jZSBiZXR3ZWVuIGFjdHVhbCBhbmQgZXhwZWN0ZWQgdGltZSBkZWx0YTog
LTk4NzYwLjM5MDAwMCB1cw0KPj4NCj4+IEFib3V0IHRvIHN0YXJ0IHN0cmVhbWluZyB1c2lu
ZyB0aW1lZCBjb21tYW5kOg0KPj4gwqBSZWNlaXZlZCBwYWNrZXQ6IDEwMCBzYW1wbGVzLCAw
IGZ1bGwgc2VjcywgMC4zNjU5MzUgZnJhYyBzZWNzDQo+PiDCoFN0cmVhbSB0aW1lIHdhczog
MCBmdWxsIHNlY3MsIDAuMzY1OTM1IGZyYWMgc2Vjcw0KPj4gwqBEaWZmZXJlbmNlIGJldHdl
ZW4gc3RyZWFtIHRpbWUgYW5kIGZpcnN0IHBhY2tldDogMC4wMDAwMDAgdXMNCj4+DQo+PiBE
b25lIQ0KPj4NCj4+IC1EdXN0aW4NCj4+DQo+PiBPbiAyLzMvMjIgMDg6MDIsIEppbSBQYWxs
YWRpbm8gd3JvdGU6DQo+Pj4gVGhhbmtzLCBSb2IuIEkgYWx3YXlzIGFwcHJlY2lhdGUgd2hl
biB5b3UgImNoaW1lIGluIi4gSG9wZWZ1bGx5LCANCj4+PiBzb21lb25lIGNhbiB0cnkgdGhl
IHVoZCAidGVzdF90aW1lZF9jb21tYW5kcyIgZXhhbXBsZSBpbiA0LjEgdG8gaGVscCANCj4+
PiBjb25maXJtIHdoZXRoZXIgb3Igbm90IGl0J3MgYSBwcm9ibGVtIHdpdGggc29tZXRoaW5n
IG9uIG15IGVuZCBvciANCj4+PiB3aXRoIFVIRC4gTWFyY3VzIGFscmVhZHkgY29uZmlybWVk
IGl0cyB3b3JraW5nIGZvciBoaW0gd2l0aCBhbiBOMzEwIA0KPj4+IGFuZCBVSEQgMy4xNS4N
Cj4+Pg0KPj4+IFRoYW5rcywNCj4+PiBKaW0NCj4+Pg0KPj4+IC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPj4+ICpGcm9tOiogUm9iIEtvc3NsZXIgPHJrb3NzbGVyQG5kLmVkdT4gPG1haWx0bzpy
a29zc2xlckBuZC5lZHU+DQo+Pj4gKlNlbnQ6KiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDIsIDIw
MjIgMzoyNiBQTQ0KPj4+ICpUbzoqIEppbSBQYWxsYWRpbm8gPGppbUBnYXJkZXR0b2VuZ2lu
ZWVyaW5nLmNvbT4gDQo+Pj4gPG1haWx0bzpqaW1AZ2FyZGV0dG9lbmdpbmVlcmluZy5jb20+
DQo+Pj4gKkNjOiogTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4g
DQo+Pj4gPG1haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT47IHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tIA0KPj4+IDxtYWlsdG86dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+
IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gDQo+Pj4gPG1haWx0bzp1c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbT4NCj4+PiAqU3ViamVjdDoqIFJlOiBbVVNSUC11c2Vyc10gUmU6
IFRpbWVkIENvbW1hbmRzIE5vdCBXb3JraW5nDQo+Pj4gSGkgSmltLA0KPj4+IFRoaXMgc291
bmRzIGxpa2UgYSBwcmV0dHkgYmlnIGlzc3VlLiBJIGhhdmVuJ3QgY2hpbWVkIGluIGJlY2F1
c2UgSSANCj4+PiBjb3VsZG4ndCBzYXkgZm9yIHN1cmUgaWYgdGltZWQgY29tbWFuZHMgd2Vy
ZSB3b3JraW5nIGZvciBtZSBvciBub3QgDQo+Pj4gaW4gVUhEIDQuMS4gSSBhbSB1c2luZyBO
MzIxcyB3aXRoIHNoYXJlZCBMTywgc28gdGhlIG5vcm1hbCBjb21tYW5kcyANCj4+PiBJIHVz
ZSBmb3Igc2V0dGluZyBmcmVxdWVuY3kgYXJlbid0IGNyaXRpY2FsIChmcm9tIGEgdGltZWQg
Y29tbWFuZCANCj4+PiBwZXJzcGVjdGl2ZSkgZXhjZXB0IGZvciBob3cgdGhlIEREQy9EVUMg
bWlnaHQgYmUgaGFuZGxpbmcgdGhlbS4gSW4gDQo+Pj4gYW55IGNhc2UsIG9uY2UgeW91IGZp
bmQgb3V0IHRoZSBpc3N1ZSwgY291bGQgeW91IHBsZWFzZSBzaGFyZSB0aGUgDQo+Pj4gc29s
dXRpb24gaGVyZS4gSWYgSSBnZXQgYSBjaGFuY2UsIEkgd2lsbCB0cnkgdGhpcyBvbiBzb21l
IG9mIG15IGRldmljZXMuDQo+Pj4gUm9iDQo+Pj4NCj4+PiBPbiBXZWQsIEZlYiAyLCAyMDIy
IGF0IDEyOjIyIFBNIEppbSBQYWxsYWRpbm8gDQo+Pj4gPGppbUBnYXJkZXR0b2VuZ2luZWVy
aW5nLmNvbSA8bWFpbHRvOmppbUBnYXJkZXR0b2VuZ2luZWVyaW5nLmNvbT4+IA0KPj4+IHdy
b3RlOg0KPj4+DQo+Pj4gICAgIEp1c3QgdG8gYWRkIG9uZSBtb3JlIGRhdGEgcG9pbnQsIEkg
anVzdCByYW4gdGVzdF90aW1lZF9jb21tYW5kcw0KPj4+ICAgICBvbiBhIGRpZmZlcmVudCBj
b21wdXRlciBjb25uZWN0ZWQgdG8gYW4gWDMxMCAtLSBzdGlsbCBVSEQgNC4xLiBJDQo+Pj4g
ICAgIGhhdmUgdGhlIHNhbWUgcHJvYmxlbSB3aXRoIHRoYXQgZGV2aWNlIHdoZXJlIGl0IGxv
b2tzIGxpa2UgdGltZWQNCj4+PiAgICAgY29tbWFuZHMgYXJlIG5vdCB3b3JraW5nIHJpZ2h0
Lg0KPj4+DQo+Pj4gICAgIFRoYW5rcywNCj4+PiAgICAgSmltDQo+Pj4NCj4+PiAgICAgLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tDQo+Pj4gICAgICpGcm9tOiogSmltIFBhbGxhZGlubyA8amltQGdh
cmRldHRvZW5naW5lZXJpbmcuY29tDQo+Pj4gICAgIDxtYWlsdG86amltQGdhcmRldHRvZW5n
aW5lZXJpbmcuY29tPj4NCj4+PiAgICAgKlNlbnQ6KiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDIs
IDIwMjIgMTA6NDQgQU0NCj4+PiAgICAgKlRvOiogTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZv
bmJyYXVuQGdtYWlsLmNvbQ0KPj4+ICAgICA8bWFpbHRvOnBhdGNodm9uYnJhdW5AZ21haWwu
Y29tPj47IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tDQo+Pj4gICAgIDxtYWlsdG86dXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0K
Pj4+ICAgICA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPj4NCj4+PiAgICAg
KlN1YmplY3Q6KiBSZTogW1VTUlAtdXNlcnNdIFJlOiBUaW1lZCBDb21tYW5kcyBOb3QgV29y
a2luZw0KPj4+ICAgICBDb3JyZWN0IC0tIEkgYW0gdXNpbmcgdGhlIHN0b2NrIEZQR0EgaW1h
Z2UgZm9yIHRoZSBFMzIwIGFuZCB0aGUNCj4+PiAgICAgTjMyMC4NCj4+Pg0KPj4+ICAgICBU
aGFua3MsDQo+Pj4gICAgIEppbQ0KPj4+DQo+Pj4gICAgIC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
Pj4+ICAgICAqRnJvbToqIE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5j
b20NCj4+PiAgICAgPG1haWx0bzpwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4+DQo+Pj4gICAg
ICpTZW50OiogV2VkbmVzZGF5LCBGZWJydWFyeSAyLCAyMDIyIDEwOjM5IEFNDQo+Pj4gICAg
ICpUbzoqIEppbSBQYWxsYWRpbm8gPGppbUBnYXJkZXR0b2VuZ2luZWVyaW5nLmNvbQ0KPj4+
ICAgICA8bWFpbHRvOmppbUBnYXJkZXR0b2VuZ2luZWVyaW5nLmNvbT4+Ow0KPj4+ICAgICB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tPg0KPj4+ICAgICA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPG1haWx0bzp1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4+DQo+Pj4gICAgICpTdWJqZWN0OiogUmU6IFtV
U1JQLXVzZXJzXSBSZTogVGltZWQgQ29tbWFuZHMgTm90IFdvcmtpbmcNCj4+PiAgICAgT24g
MjAyMi0wMi0wMiAxMDoyMSwgSmltIFBhbGxhZGlubyB3cm90ZToNCj4+Pj4gICAgIFRoYW5r
cyBNYXJjdXMuIFBsZWFzZSBsZXQgbWUga25vdyBpZiBSJkQgY29tZXMgYmFjayB3aXRoDQo+
Pj4+ICAgICBhbnl0aGluZy4gSSdtIGF0IGEgYml0IG9mIGEgbG9zcyAuIC4gLg0KPj4+Pg0K
Pj4+PiAgICAgVGhhbmtzLA0KPj4+PiAgICAgSmltDQo+Pj4+DQo+Pj4+ICAgICAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCj4+Pj4NCj4+PiAgICAgSnVzdCB0byBjbGFyaWZ5LS10aGlzIGlzIHdp
dGggdGhlIHN0b2NrIEZQR0EgaW1hZ2UsIGNvcnJlY3Q/DQo+Pj4NCj4+Pg0KPj4+ICAgICBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+ICAg
ICBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bQ0KPj4+ICAgICA8bWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KPj4+ICAg
ICBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlz
dHMuZXR0dXMuY29tDQo+Pj4gICAgIDxtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20+DQo+Pj4NCj4+Pg0KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+Pj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS11c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbSAgPG1haWx0bzp1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4NCj4+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvdXNycC11c2Vycy1s
ZWF2ZUBsaXN0cy5ldHR1cy5jb20gIDxtYWlsdG86dXNycC11c2Vycy1sZWF2ZUBsaXN0cy5l
dHR1cy5jb20+DQo=
--------------cZBqSAG1gjZhtVJO98PPBUUo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body spellcheck=3D"false" data-gramm=3D"false">
    <p>Tested with UHD 4.0.0.0 release tag and UHD 4.1.0.0 release tag
      with the same results. Hmm.</p>
    <p><br>
      Creating the usrp device with: ...<br>
      [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400;
      UHD_4.1.0.HEAD-0-gd21735d5<br>
      [INFO] [X300] X300 initialization sequence...<br>
      [INFO] [X300] Maximum frame size: 8000 bytes.<br>
      [INFO] [GPS] No GPSDO found<br>
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
      =C2=A0Difference between paired reads: 1117.661250 us<br>
      <br>
      Testing control timed command:<br>
      =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us<br>
      =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 283334.600000 us<br=
>
      =C2=A0Response 1: 284555.810000 us<br>
      =C2=A0Response 2: 285757.450000 us<br>
      =C2=A0Difference of response time 1: -98778.790000 us<br>
      =C2=A0Difference of response time 2: -197577.150000 us<br>
      =C2=A0Difference between actual and expected time delta: -98798.360=
000
      us<br>
      <br>
      About to start streaming using timed command:<br>
      =C2=A0Received packet: 100 samples, 0 full secs, 0.394553 frac secs=
<br>
      =C2=A0Stream time was: 0 full secs, 0.394553 frac secs<br>
      =C2=A0Difference between stream time and first packet: 0.000000 us<=
br>
      <br>
      Done!<br>
      <br>
      <br>
      Creating the usrp device with: ...<br>
      [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400;
      UHD_4.0.0.HEAD-0-g90ce6062<br>
      [INFO] [X300] X300 initialization sequence...<br>
      [INFO] [X300] Maximum frame size: 8000 bytes.<br>
      [INFO] [GPS] No GPSDO found<br>
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
      =C2=A0Difference between paired reads: 1096.135400 us<br>
      <br>
      Testing control timed command:<br>
      =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us<br>
      =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 282413.770000 us<br=
>
      =C2=A0Response 1: 283653.385000 us<br>
      =C2=A0Response 2: 285225.740000 us<br>
      =C2=A0Difference of response time 1: -98760.385000 us<br>
      =C2=A0Difference of response time 2: -197188.030000 us<br>
      =C2=A0Difference between actual and expected time delta: -98427.645=
000
      us<br>
      <br>
      About to start streaming using timed command:<br>
      =C2=A0Received packet: 100 samples, 0 full secs, 0.393844 frac secs=
<br>
      =C2=A0Stream time was: 0 full secs, 0.393844 frac secs<br>
      =C2=A0Difference between stream time and first packet: 0.000000 us<=
br>
      <br>
      Done!<br>
    </p>
    <p><br>
    </p>
    <p>-Dustin <br>
    </p>
    <div class=3D"moz-cite-prefix">On 2/4/22 13:23, Dustin Widmann wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:7fdd4da5-271b-a418-9f22-9dd9610ff39f@virginia.edu">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>For reference, I've done it over again with the latest commits
        from the UHD-4.0=C2=A0 and UHD-3.15.LTS branches.</p>
      <p><br>
      </p>
      <p>Creating the usrp device with: ...<br>
        [INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400;
        UHD_4.0.0.0-240-gb38c9d83<br>
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
        =C2=A0Difference between paired reads: 1060.659100 us<br>
        <br>
        Testing control timed command:<br>
        =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us<br>
        =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 249431.750000 us<=
br>
        =C2=A0Response 1: 250515.950000 us<br>
        =C2=A0Response 2: 251521.850000 us<br>
        =C2=A0Difference of response time 1: -98915.800000 us<br>
        =C2=A0Difference of response time 2: -197909.900000 us<br>
        =C2=A0Difference between actual and expected time delta:
        -98994.100000 us<br>
        <br>
        About to start streaming using timed command:<br>
        =C2=A0Received packet: 100 samples, 0 full secs, 0.359452 frac se=
cs<br>
        =C2=A0Stream time was: 0 full secs, 0.359452 frac secs<br>
        =C2=A0Difference between stream time and first packet: 0.000000 u=
s<br>
        <br>
        Done!<br>
        <br>
        <br>
        Creating the usrp device with: ...<br>
        [INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400;
        UHD_3.15.0.0-74-ge35f66e8<br>
        [INFO] [X300] X300 initialization sequence...<br>
        [INFO] [X300] Maximum frame size: 8000 bytes.<br>
        [INFO] [X300] Radio 1x clock: 200 MHz<br>
        [INFO] [GPS] No GPSDO found<br>
        [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
        0xF1F0D00000000000)<br>
        [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1309 MB/s)<br>
        [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)<br>
        [INFO] [0/Radio_0] Initializing block control (NOC ID:
        0x12AD100000000001)<br>
        [INFO] [0/Radio_1] Initializing block control (NOC ID:
        0x12AD100000000001)<br>
        [INFO] [0/DDC_0] Initializing block control (NOC ID:
        0xDDC0000000000000)<br>
        [INFO] [0/DDC_1] Initializing block control (NOC ID:
        0xDDC0000000000000)<br>
        [INFO] [0/DUC_0] Initializing block control (NOC ID:
        0xD0C0000000000000)<br>
        [INFO] [0/DUC_1] Initializing block control (NOC ID:
        0xD0C0000000000000)<br>
        Using Device: Single USRP:<br>
        =C2=A0 Device: X-Series Device<br>
        =C2=A0 Mboard 0: X310<br>
        =C2=A0 RX Channel: 0<br>
        =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
        =C2=A0=C2=A0=C2=A0 RX Dboard: A<br>
        =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
        =C2=A0 RX Channel: 1<br>
        =C2=A0=C2=A0=C2=A0 RX DSP: 0<br>
        =C2=A0=C2=A0=C2=A0 RX Dboard: B<br>
        =C2=A0=C2=A0=C2=A0 RX Subdev: UBX RX<br>
        =C2=A0 TX Channel: 0<br>
        =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
        =C2=A0=C2=A0=C2=A0 TX Dboard: A<br>
        =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
        =C2=A0 TX Channel: 1<br>
        =C2=A0=C2=A0=C2=A0 TX DSP: 0<br>
        =C2=A0=C2=A0=C2=A0 TX Dboard: B<br>
        =C2=A0=C2=A0=C2=A0 TX Subdev: UBX TX<br>
        <br>
        <br>
        Testing support for timed commands on this hardware... pass<br>
        <br>
        Perform fast readback of registers:<br>
        =C2=A0Difference between paired reads: 60.434350 us<br>
        <br>
        Testing control timed command:<br>
        =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us<br>
        =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 1848964.600000 us=
<br>
        =C2=A0Response 1: 1948964.655000 us<br>
        =C2=A0Response 2: 2048964.655000 us<br>
        =C2=A0Difference of response time 1: 0.055000 us<br>
        =C2=A0Difference of response time 2: 0.055000 us<br>
        =C2=A0Difference between actual and expected time delta: 0.000000=
 us<br>
        <br>
        About to start streaming using timed command:<br>
        =C2=A0Received packet: 100 samples, 2 full secs, 0.155770 frac se=
cs<br>
        =C2=A0Stream time was: 2 full secs, 0.155770 frac secs<br>
        =C2=A0Difference between stream time and first packet: 0.005000 u=
s<br>
        <br>
        Done!<br>
      </p>
      <p><br>
      </p>
      <p><br>
      </p>
      <p>-- <br>
      </p>
      <p><br>
      </p>
      <p>This is pretty concerning, looks like the latest commit of the
        UHD-4.0 branch has this broken as well? Timed commands at least
        used to work in UHD 4.0, but I hadn't tried in a while, and
        never with this nifty test program. I'm going to have to see if
        I can find where the breakage occurred, so I can roll back for
        the time being. <br>
      </p>
      <p><br>
      </p>
      <p>-Dustin<br>
      </p>
      <p><br>
      </p>
      <div class=3D"moz-cite-prefix">On 2/4/22 11:23, Jim Palladino wrote=
:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB33126BF9E653537F4BFE42CFB8299@MN2PR12MB3312.namprd12=
=2Eprod.outlook.com">
        <meta http-equiv=3D"Content-Type" content=3D"text/html;
          charset=3DUTF-8">
        <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;=
margin-bottom:0;}</style>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;=

          font-size: 12pt; color: rgb(0, 0, 0);"> Dustin,</div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;=

          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;=

          font-size: 12pt; color: rgb(0, 0, 0);"> Thank you for running
          that. So apparently, it isn't just an issue on my end.</div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;=

          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;=

          font-size: 12pt; color: rgb(0, 0, 0);"> Thanks,</div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;=

          font-size: 12pt; color: rgb(0, 0, 0);"> Jim</div>
        <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;=

          font-size: 12pt; color: rgb(0, 0, 0);"> <br>
        </div>
        <hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
        <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11=
pt"
            face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b>
            Dustin Widmann <a class=3D"moz-txt-link-rfc2396E"
              href=3D"mailto:dw2zq@virginia.edu" moz-do-not-send=3D"true"=
>&lt;dw2zq@virginia.edu&gt;</a><br>
            <b>Sent:</b> Friday, February 4, 2022 11:16 AM<br>
            <b>To:</b> <a class=3D"moz-txt-link-abbreviated
              moz-txt-link-freetext"
              href=3D"mailto:usrp-users@lists.ettus.com"
              moz-do-not-send=3D"true">usrp-users@lists.ettus.com</a> <a
              class=3D"moz-txt-link-rfc2396E"
              href=3D"mailto:usrp-users@lists.ettus.com"
              moz-do-not-send=3D"true">&lt;usrp-users@lists.ettus.com&gt;=
</a><br>
            <b>Subject:</b> [USRP-users] Re: Timed Commands Not Working</=
font>
          <div>=C2=A0</div>
        </div>
        <div>
          <p>"Hopefully, someone can try the uhd "test_timed_commands"
            example in 4.1 to..."</p>
          <p><br>
          </p>
          <p>Figure I ought to be about as good as the next somebody. <br=
>
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
            Testing support for timed commands on this hardware... pass<b=
r>
            <br>
            Perform fast readback of registers:<br>
            =C2=A0Difference between paired reads: 1079.015300 us<br>
            <br>
            Testing control timed command:<br>
            =C2=A0Span=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 100000.000000 us<b=
r>
            =C2=A0Now=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : 253256.340000=
 us<br>
            =C2=A0Response 1: 254437.230000 us<br>
            =C2=A0Response 2: 255676.840000 us<br>
            =C2=A0Difference of response time 1: -98819.110000 us<br>
            =C2=A0Difference of response time 2: -197579.500000 us<br>
            =C2=A0Difference between actual and expected time delta:
            -98760.390000 us<br>
            <br>
            About to start streaming using timed command:<br>
            =C2=A0Received packet: 100 samples, 0 full secs, 0.365935 fra=
c
            secs<br>
            =C2=A0Stream time was: 0 full secs, 0.365935 frac secs<br>
            =C2=A0Difference between stream time and first packet: 0.0000=
00
            us<br>
            <br>
            Done!<br>
            <br>
            -Dustin<br>
            <br>
          </p>
          <div class=3D"x_moz-cite-prefix">On 2/3/22 08:02, Jim Palladino=

            wrote:<br>
          </div>
          <blockquote type=3D"cite">
            <style type=3D"text/css" style=3D"display:none">p
	{margin-top:0;
	margin-bottom:0}</style>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;=

              font-size:12pt; color:rgb(0,0,0)"> Thanks, Rob. I always
              appreciate when you "chime in". Hopefully, someone can try
              the uhd "test_timed_commands" example in 4.1 to help
              confirm whether or not it's a problem with something on my
              end or with UHD. Marcus already confirmed its working for
              him with an N310 and UHD 3.15.</div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;=

              font-size:12pt; color:rgb(0,0,0)"> <br>
            </div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;=

              font-size:12pt; color:rgb(0,0,0)"> Thanks,</div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;=

              font-size:12pt; color:rgb(0,0,0)"> Jim</div>
            <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;=

              font-size:12pt; color:rgb(0,0,0)"> <br>
            </div>
            <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%"=
>
            <div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font
                style=3D"font-size:11pt" face=3D"Calibri, sans-serif"
                color=3D"#000000"><b>From:</b> Rob Kossler <a
                  class=3D"x_moz-txt-link-rfc2396E"
                  href=3D"mailto:rkossler@nd.edu" moz-do-not-send=3D"true=
">&lt;rkossler@nd.edu&gt;</a><br>
                <b>Sent:</b> Wednesday, February 2, 2022 3:26 PM<br>
                <b>To:</b> Jim Palladino <a
                  class=3D"x_moz-txt-link-rfc2396E"
                  href=3D"mailto:jim@gardettoengineering.com"
                  moz-do-not-send=3D"true">
                  &lt;jim@gardettoengineering.com&gt;</a><br>
                <b>Cc:</b> Marcus D. Leech <a
                  class=3D"x_moz-txt-link-rfc2396E"
                  href=3D"mailto:patchvonbraun@gmail.com"
                  moz-do-not-send=3D"true">
                  &lt;patchvonbraun@gmail.com&gt;</a>; <a
                  class=3D"x_moz-txt-link-abbreviated
                  moz-txt-link-freetext"
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true"> usrp-users@lists.ettus.com</a=
>
                <a class=3D"x_moz-txt-link-rfc2396E"
                  href=3D"mailto:usrp-users@lists.ettus.com"
                  moz-do-not-send=3D"true">
                  &lt;usrp-users@lists.ettus.com&gt;</a><br>
                <b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not
                Working</font>
              <div>=C2=A0</div>
            </div>
            <div>
              <div dir=3D"ltr">Hi Jim,
                <div>This sounds like a pretty big issue. I haven't
                  chimed in because I couldn't say for sure if timed
                  commands were working for me or not in UHD 4.1. I am
                  using N321s with shared LO, so the normal commands I
                  use for setting frequency aren't critical (from a
                  timed command perspective) except for how the DDC/DUC
                  might be handling them. In any case, once you find out
                  the issue, could you please share the solution here.
                  If I get a chance, I will try this on some of my
                  devices.</div>
                <div>Rob</div>
              </div>
              <br>
              <div class=3D"x_x_gmail_quote">
                <div dir=3D"ltr" class=3D"x_x_gmail_attr">On Wed, Feb 2,
                  2022 at 12:22 PM Jim Palladino &lt;<a
                    href=3D"mailto:jim@gardettoengineering.com"
                    class=3D"x_moz-txt-link-freetext
                    moz-txt-link-freetext" moz-do-not-send=3D"true">jim@g=
ardettoengineering.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"x_x_gmail_quote" style=3D"margin:0px=

                  0px 0px 0.8ex; border-left:1px solid rgb(204,204,204);
                  padding-left:1ex">
                  <div dir=3D"ltr">
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)"> Just to add one
                      more data point, I just ran test_timed_commands on
                      a different computer connected to an X310 -- still
                      UHD 4.1. I have the same problem with that device
                      where it looks like timed commands are not working
                      right.</div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)"> <br>
                    </div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)"> Thanks,</div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)"> Jim</div>
                    <div
                      style=3D"font-family:Calibri,Arial,Helvetica,sans-s=
erif;
                      font-size:12pt; color:rgb(0,0,0)"> <br>
                    </div>
                    <hr style=3D"display:inline-block; width:98%">
                    <div
                      id=3D"x_x_gmail-m_7375824889804353296divRplyFwdMsg"=

                      dir=3D"ltr"><font style=3D"font-size:11pt"
                        face=3D"Calibri, sans-serif" color=3D"#000000"><b=
>From:</b>
                        Jim Palladino &lt;<a
                          href=3D"mailto:jim@gardettoengineering.com"
                          target=3D"_blank" class=3D"x_moz-txt-link-freet=
ext
                          moz-txt-link-freetext" moz-do-not-send=3D"true"=
>jim@gardettoengineering.com</a>&gt;<br>
                        <b>Sent:</b> Wednesday, February 2, 2022 10:44
                        AM<br>
                        <b>To:</b> Marcus D. Leech &lt;<a
                          href=3D"mailto:patchvonbraun@gmail.com"
                          target=3D"_blank" class=3D"x_moz-txt-link-freet=
ext
                          moz-txt-link-freetext" moz-do-not-send=3D"true"=
>patchvonbraun@gmail.com</a>&gt;;
                        <a href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" class=3D"x_moz-txt-link-freet=
ext
                          moz-txt-link-freetext" moz-do-not-send=3D"true"=
>
                          usrp-users@lists.ettus.com</a> &lt;<a
                          href=3D"mailto:usrp-users@lists.ettus.com"
                          target=3D"_blank" class=3D"x_moz-txt-link-freet=
ext
                          moz-txt-link-freetext" moz-do-not-send=3D"true"=
>usrp-users@lists.ettus.com</a>&gt;<br>
                        <b>Subject:</b> Re: [USRP-users] Re: Timed
                        Commands Not Working</font>
                      <div>=C2=A0</div>
                    </div>
                    <div dir=3D"ltr">
                      <div
                        style=3D"font-family:Calibri,Arial,Helvetica,sans=
-serif;
                        font-size:12pt; color:rgb(0,0,0)"> Correct -- I
                        am using the stock FPGA image for the E320 and
                        the N320.</div>
                      <div
                        style=3D"font-family:Calibri,Arial,Helvetica,sans=
-serif;
                        font-size:12pt; color:rgb(0,0,0)"> <br>
                      </div>
                      <div
                        style=3D"font-family:Calibri,Arial,Helvetica,sans=
-serif;
                        font-size:12pt; color:rgb(0,0,0)"> Thanks,
                        <div>Jim</div>
                        <div><br>
                        </div>
                      </div>
                      <hr style=3D"display:inline-block; width:98%">
                      <div
                        id=3D"x_x_gmail-m_7375824889804353296x_divRplyFwd=
Msg"
                        dir=3D"ltr"><font style=3D"font-size:11pt"
                          face=3D"Calibri, sans-serif" color=3D"#000000">=
<b>From:</b>
                          Marcus D. Leech &lt;<a
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank"
                            class=3D"x_moz-txt-link-freetext
                            moz-txt-link-freetext"
                            moz-do-not-send=3D"true">patchvonbraun@gmail.=
com</a>&gt;<br>
                          <b>Sent:</b> Wednesday, February 2, 2022 10:39
                          AM<br>
                          <b>To:</b> Jim Palladino &lt;<a
                            href=3D"mailto:jim@gardettoengineering.com"
                            target=3D"_blank"
                            class=3D"x_moz-txt-link-freetext
                            moz-txt-link-freetext"
                            moz-do-not-send=3D"true">jim@gardettoengineer=
ing.com</a>&gt;;
                          <a href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank"
                            class=3D"x_moz-txt-link-freetext
                            moz-txt-link-freetext"
                            moz-do-not-send=3D"true">
                            usrp-users@lists.ettus.com</a> &lt;<a
                            href=3D"mailto:usrp-users@lists.ettus.com"
                            target=3D"_blank"
                            class=3D"x_moz-txt-link-freetext
                            moz-txt-link-freetext"
                            moz-do-not-send=3D"true">usrp-users@lists.ett=
us.com</a>&gt;<br>
                          <b>Subject:</b> Re: [USRP-users] Re: Timed
                          Commands Not Working</font>
                        <div>=C2=A0</div>
                      </div>
                      <div>
                        <div>On 2022-02-02 10:21, Jim Palladino wrote:<br=
>
                        </div>
                        <blockquote type=3D"cite">
                          <div
                            style=3D"font-family:Calibri,Arial,Helvetica,=
sans-serif;
                            font-size:12pt; color:rgb(0,0,0)"> Thanks
                            Marcus. Please let me know if R&amp;D comes
                            back with anything. I'm at a bit of a loss .
                            . .=C2=A0</div>
                          <div
                            style=3D"font-family:Calibri,Arial,Helvetica,=
sans-serif;
                            font-size:12pt; color:rgb(0,0,0)"> <br>
                          </div>
                          <div
                            style=3D"font-family:Calibri,Arial,Helvetica,=
sans-serif;
                            font-size:12pt; color:rgb(0,0,0)"> Thanks,</d=
iv>
                          <div
                            style=3D"font-family:Calibri,Arial,Helvetica,=
sans-serif;
                            font-size:12pt; color:rgb(0,0,0)"> Jim</div>
                          <div
                            style=3D"font-family:Calibri,Arial,Helvetica,=
sans-serif;
                            font-size:12pt; color:rgb(0,0,0)"> <br>
                          </div>
                          <hr style=3D"display:inline-block; width:98%"> =
<br>
                        </blockquote>
                        Just to clarify--this is with the stock FPGA
                        image, correct?<br>
                        <br>
                        <br>
                      </div>
                    </div>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a
                    href=3D"mailto:usrp-users@lists.ettus.com"
                    target=3D"_blank" class=3D"x_moz-txt-link-freetext
                    moz-txt-link-freetext" moz-do-not-send=3D"true">
                    usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a
                    href=3D"mailto:usrp-users-leave@lists.ettus.com"
                    target=3D"_blank" class=3D"x_moz-txt-link-freetext
                    moz-txt-link-freetext" moz-do-not-send=3D"true">
                    usrp-users-leave@lists.ettus.com</a><br>
                </blockquote>
              </div>
            </div>
            <br>
            <fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
            <pre class=3D"x_moz-quote-pre">______________________________=
_________________
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated moz-txt=
-link-freetext" href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-sen=
d=3D"true">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated mo=
z-txt-link-freetext" href=3D"mailto:usrp-users-leave@lists.ettus.com" moz=
-do-not-send=3D"true">usrp-users-leave@lists.ettus.com</a>
</pre>
          </blockquote>
        </div>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------cZBqSAG1gjZhtVJO98PPBUUo--

--------------VdYp0hd0WKDnH2OGp9aDBkCy
Content-Type: application/pgp-keys; name="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Disposition: attachment; filename="OpenPGP_0xCD731811BAE2BAF5.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
sFzBQeU7
=3DcOkO
-----END PGP PUBLIC KEY BLOCK-----

--------------VdYp0hd0WKDnH2OGp9aDBkCy--

--------------45ifQnMNCgKWPOja1DbbTKL8--

--------------FqSbv6R0B04RxqmDmjMAd8uk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEZTqEZfH+oyM3hkmvzXMYEbriuvUFAmH9f4gFAwAAAAAACgkQzXMYEbriuvUp
Qw/9Gaqw4Vyce0lP5w2eO6JpOQMQHTX97yfN14n52AK8ngAKleIQbw3ZC5e4ZZQj9BvgGmPwvOvt
gC5QLSpskey1HqZh0BG8LxyEP8p/kXi7t+D3H+oqg+oWex1xd9OEUMcKSmy4qhosWXUxgXmgG2ff
LqcoowejHDwr/F7L+++uRdA7qhZXoLDGfGN1GopWKRm7mLDJb1fLYQUJMfPIzRy4kpWDMCky0pJW
VghPdgQuQfdTJTq0xoqT4HezqEd8GeYMUpnTL6uGzr59w4HBPT9NAWxxTeV0nS0OvGqDsxKGo+bZ
N1J6SayJ1HiPLtyXMT3Is6uAFSyrhPzlc1c69nbL9zJ23kpucTEYxwMZfKdKQ0B43/y81SzRmoKb
zEYOF+xO7FXgV3zwVS660Dw55wxzyK4FGVU4fTw+gkvbJovJUV+eHbCbFT9AYjQVIHv9fRg0aoWx
f/OK8+4MOj5X7jbfTjtQCIFGaLtZOC0utB1IJUpGEytmYh+QjwIPGsmC2q6jyD8w+5TXWaXkebkV
5KyFBfPcf8sHBOYSTavjrmw1Amtof4s/wJRY0OocOmKrN0DAhrmK9VOCewXmBrqoH96JjoXe/j9B
P8JFl9Wrm0aNtr6HUGUKz+TaiFUQ3bWrLcY+cInTq2i5gj1LyjeNPifX2v0b3pCHSI3rkQbXR6aV
638=
=wVl8
-----END PGP SIGNATURE-----

--------------FqSbv6R0B04RxqmDmjMAd8uk--

--===============8500374422384670017==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8500374422384670017==--
