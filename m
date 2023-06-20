Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE3E73634A
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jun 2023 07:52:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A4D3384BFC
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jun 2023 01:52:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687240338; bh=pPbsOY9Uy9uBomf23b2lI6c+lgx1JGNdvxj1ihS4rVo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=s799We1MGcBDwQs1LgsxqCfAd0BetFWi/MNJ3x05lRa8knkB5dSX/fRf0IEQujtK9
	 NJj/oK1SJSXKoG9eptMxXdmpAVIQU47z6dP3mUbl2e7A+6TAQUoDnsqEZMsingv/F3
	 q2KdK08FmPFnegKrHgLksbj4XgI7zS7e7FDUCw8NyxkduileMOgGIljHoHTnHZAbSh
	 DHP4XZ3fYfeVULjKxQnmrB6r7bdYrHQfAzjzTfm/SBOLrPs5oFijyszntrJqVpr8ny
	 cTnsG/TuXLd6lyvYcTi43DdC/apo3SIkSMFe+w0v4txRb8oo1iWPyLlUUamxfi1Sgn
	 6WP1od7lxZkaw==
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 1FBC1384B92
	for <usrp-users@lists.ettus.com>; Tue, 20 Jun 2023 01:51:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="w1Sp46qB";
	dkim-atps=neutral
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3112f2b9625so2642854f8f.1
        for <usrp-users@lists.ettus.com>; Mon, 19 Jun 2023 22:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1687240313; x=1689832313;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z5G6lVa1IDO13yX8I5uQS7q8DrwfqahdZIf7TiCtKzc=;
        b=w1Sp46qBm93nUnJBD1P9+28LKepJAajyXcCI26KVdtSu+sDvfJCP5HuKtYb74H6VAn
         XDfRHQeKsVuxDe7dLmvyFdWEK+q1cjjr2UNruxiFeUqQ5fKTvaqsrPnfm8JfrBTEd1Ou
         y53g+OI1aVvSL3BWXLPjlhlh76b7mfQFAfsEG8sofIAZJ+ueedWjp/Dn9E9R9a578ab0
         uubfrJG/KtM3xlIkJ+ZQfGILzczd0e48KdMUwOAcPII7jC59HPg/EyJeZJHqmOlMX+0n
         qxteh7Z1naWHz5+75fJgdBDLUT3EWlz5A6Z7WB8L5gtHIcwY6pO7rPAT/MjkqDcnIIoS
         yz2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687240313; x=1689832313;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z5G6lVa1IDO13yX8I5uQS7q8DrwfqahdZIf7TiCtKzc=;
        b=W90iwrYDITrSnnmlK5iBzJCGnb7g8E9sHEu5g4Wxr1FdW980NbPbIFuwAkqY+wPEqZ
         qdVzWdJOu9qvGEpyCYq96cy3uUV7VJxk+sKCgn8k1VpDjeDsNFvRkj007cLMNXTt3DGE
         i7xdmPwJzBBw2LxQ5L+Z0mFhkmJa4KF6ae1twFEpOT1IlfJBv6t3D0hbPX6J17v/OeOu
         VlQVDz7JMEtHZNqozjVPUj/uAMulOHsZbUs1RkTvjzP9La52YwPNmOJRYnE6uQNrKs90
         CbiiC4jcXjeUpdxjSN2RK8c3LThq2t6bwDZYHVlfh7xpb5xh733If+EHKWiTbLyQK6rM
         IScQ==
X-Gm-Message-State: AC+VfDz+mvlZhQT8Y+klOavX9qRlMBsNY9G9bqbUGbQDgBrQK65FyD5A
	aoIL/9SfkBV6hfUEWxl9V6wfHqZXNB1bTGr1dd9IaA==
X-Google-Smtp-Source: ACHHUZ5I/VbSiq232i+9ShBihApPhzGqrXF4hBVHz9/OmyDrCi25niHfyJue/VqJvW74cCQUj4voCw==
X-Received: by 2002:a5d:5272:0:b0:30f:c1c3:274a with SMTP id l18-20020a5d5272000000b0030fc1c3274amr7739515wrc.26.1687240312715;
        Mon, 19 Jun 2023 22:51:52 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3872:e800:998f:ca6a:6065:3212? ([2001:9e8:3872:e800:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id w18-20020a5d4b52000000b003127a21e986sm1105375wrs.104.2023.06.19.22.51.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 22:51:52 -0700 (PDT)
Message-ID: <2f68606f-2e66-bb50-b8bb-a50df2c6cf84@ettus.com>
Date: Tue, 20 Jun 2023 07:51:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3PvYd+9pPYgukF8iH-AHF9ut8LUAt=Maw+qU5mm2pJ9KWw@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAA=S3PvYd+9pPYgukF8iH-AHF9ut8LUAt=Maw+qU5mm2pJ9KWw@mail.gmail.com>
Message-ID-Hash: ETLEYRCCJTWAXTHM7PHNRNTBEZGY6QO6
X-Message-ID-Hash: ETLEYRCCJTWAXTHM7PHNRNTBEZGY6QO6
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: error in installing nuradio 3.8 with UHD4.2.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ETLEYRCCJTWAXTHM7PHNRNTBEZGY6QO6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGVhciBzcCwNCg0KdGhlIEdOVSBSYWRpbyBtYWlsaW5nIGxpc3QgY291bGRuJ3Qgc29sdmUgaXQg
YmVjYXVzZSB3ZSBhc2tlZCBmb3IgbGluZSBudW1iZXJzIGFuZCANCnZlcmJhdGltIGVycm9yIG1l
c3NhZ2VzWzFdLCBidXQgeW91IG5ldmVyIHRvbGQgdXMgOykgUGxlYXNlIGRvbid0IHB1dCB0aGUg
R05VIFJhZGlvIA0KbWFpbGluZyBsaXN0IGludG8gYmFkIGxpZ2h0LCBqdXN0IGJlY2F1c2Ugd2Ug
ZG9uJ3QgaGF2ZSBjbGFpcnZveWFuY2UhDQoNClRoaXMgZXJyb3IgdmVyeSBtdWNoIGxvb2tzIGxp
a2UgeW91ciBidWlsZCBpcyBtaXhpbmcgYW4gb2xkZXIgVUhEIHVoZDo6dXNycDo6ZGJvYXJkX2lm
YWNlLCANCndoaWNoIHVzZXMgYm9vc3Q6OmNocm9ubywgd2l0aCB5b3VyIG1vZGVybiBVSEQgNC4y
IG9uZSwgd2hpY2ggdXNlcyBzdGQ6OmNocm9uby4NCg0KUGxlYXNlIG1ha2Ugc3VyZSB0aGUgYnVp
bGQgY2Fubm90IGZpbmQgb2xkZXIgVUhEIGluc3RhbGxhdGlvbnMuIEhhdmUgeW91IHVuaW5zdGFs
bGVkIHlvdXIgDQpzeXN0ZW0ncyBVSEQgYmVmb3JlIHRyeWluZyB0byBpbnN0YWxsIFVIRCA0LjI/
DQoNCkJlc3QgcmVnYXJkcywNCk1hcmN1cw0KDQpbMV0gaHR0cHM6Ly9saXN0cy5nbnUub3JnL2Fy
Y2hpdmUvaHRtbC9kaXNjdXNzLWdudXJhZGlvLzIwMjMtMDYvbXNnMDAwMTUuaHRtbA0KDQpPbiAy
MC4wNi4yMyAwNjo0Niwgc3Agd3JvdGU6DQo+IHdoZW4gSSB3YW50IHRvIGJ1aWxkIEdudXJhZGlv
IDMuOC41IHdpdGggVUhENC4yLjAgSSBmYWNlZCBhIHN0cmFuZ2UgZXJyb3IgSSBzZW5kIGl0IHRv
IA0KPiB0aGUgR251cmFkaW8gbWFpbGluZyBsaXN0IHRoZXkgY2FuIG5vdCBzb2x2ZSBpdC4NCj4g
RG9lcyBhbnlvbmUgaGF2ZSBhbnkgaWRlYSB0aGF0IHNvbHZlcyBteSBwcm9ibGVtPyB0aGFua3Mg
aW4gYWR2YW5jZQ0KPg0KPiBbIDUxJV0gQnVpbGRpbmcgQ1hYIG9iamVjdCANCj4gZ3ItdWhkL3N3
aWcvQ01ha2VGaWxlcy91aGRfc3dpZy5kaXIvQ01ha2VGaWxlcy91aGRfc3dpZy5kaXIvdWhkX3N3
aWdQWVRIT05fd3JhcC5jeHgubw0KPiBbIDUxJV0gQnVpbGRpbmcgQ1hYIG9iamVjdCANCj4gZ3It
YmxvY2tzL2xpYi9DTWFrZUZpbGVzL2dudXJhZGlvLWJsb2Nrcy5kaXIvc3RyZWFtX3RvX3N0cmVh
bXNfaW1wbC5jYy5vDQo+IC9ob21lL3NwL0RvY3VtZW50cy9nbnVyYWRpby9idWlsZC9nci11aGQv
c3dpZy9DTWFrZUZpbGVzL3VoZF9zd2lnLmRpci91aGRfc3dpZ1BZVEhPTl93cmFwLmN4eDogDQo+
IEluIGZ1bmN0aW9uIOKAmFB5T2JqZWN0KiBfd3JhcF9kYm9hcmRfaWZhY2Vfc2xlZXAoUHlPYmpl
Y3QqLCBQeU9iamVjdCosIFB5T2JqZWN0KinigJk6DQo+IC9ob21lL3NwL0RvY3VtZW50cy9nbnVy
YWRpby9idWlsZC9nci11aGQvc3dpZy9DTWFrZUZpbGVzL3VoZF9zd2lnLmRpci91aGRfc3dpZ1BZ
VEhPTl93cmFwLmN4eDozMjc0ODoyMTogDQo+IGVycm9yOiBjYW5ub3QgY29udmVydCDigJhjb25z
dCBuYW5vc2Vjb25kc+KAmSB7YWthIOKAmGNvbnN0IHN0ZDo6Y2hyb25vOjpkdXJhdGlvbjxsb25n
IGludCwgDQo+IHN0ZDo6cmF0aW88MSwgMTAwMDAwMDAwMD4gPuKAmX0gdG8g4oCYY29uc3QgbmFu
b3NlY29uZHMm4oCZIHtha2Eg4oCYY29uc3QgDQo+IGJvb3N0OjpjaHJvbm86OmR1cmF0aW9uPGxv
bmcgaW50LCBib29zdDo6cmF0aW88MSwgMTAwMDAwMDAwMD4gPibigJl9DQo+IDMyNzQ4IHwgwqAg
wqAgwqAgKGFyZzEpLT5zbGVlcCgoc3RkOjpjaHJvbm86Om5hbm9zZWNvbmRzIGNvbnN0ICYpKmFy
ZzIpOw0KPiDCoCDCoCDCoCB8IF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fg0KPiDCoCDCoCDCoCB8IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHwNCj4gwqAgwqAg
wqAgfCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBjb25zdCBuYW5vc2Vjb25kcyB7YWth
IGNvbnN0IHN0ZDo6Y2hyb25vOjpkdXJhdGlvbjxsb25nIGludCwgDQo+IHN0ZDo6cmF0aW88MSwg
MTAwMDAwMDAwMD4gPn0NCj4gSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC91c3IvbG9jYWwvaW5jbHVk
ZS91aGQvdXNycC9tdWx0aV91c3JwLmhwcDozOCwNCj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqBmcm9tIA0KPiAvaG9tZS9zcC9Eb2N1bWVudHMvZ251cmFkaW8vZ3ItdWhkL2xpYi8uLi9pbmNs
dWRlL2dudXJhZGlvL3VoZC91c3JwX2Jsb2NrLmg6MjgsDQo+IMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgZnJvbSANCj4gL2hvbWUvc3AvRG9jdW1lbnRzL2dudXJhZGlvL2dyLXVoZC9saWIvLi4v
aW5jbHVkZS9nbnVyYWRpby91aGQvdXNycF9zb3VyY2UuaDoyNiwNCj4gwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBmcm9tIA0KPiAvaG9tZS9zcC9Eb2N1bWVudHMvZ251cmFkaW8vYnVpbGQvZ3It
dWhkL3N3aWcvQ01ha2VGaWxlcy91aGRfc3dpZy5kaXIvdWhkX3N3aWdQWVRIT05fd3JhcC5jeHg6
MzQxNToNCj4gL3Vzci9sb2NhbC9pbmNsdWRlL3VoZC91c3JwL2Rib2FyZF9pZmFjZS5ocHA6Mjgz
OjU4OiBub3RlOiBpbml0aWFsaXppbmcgYXJndW1lbnQgMSBvZiANCj4g4oCYdmlydHVhbCB2b2lk
IHVoZDo6dXNycDo6ZGJvYXJkX2lmYWNlOjpzbGVlcChjb25zdCBuYW5vc2Vjb25kcyYp4oCZDQo+
IMKgIDI4MyB8IMKgIMKgIHZpcnR1YWwgdm9pZCBzbGVlcChjb25zdCBib29zdDo6Y2hyb25vOjpu
YW5vc2Vjb25kcyYgdGltZSk7DQo+IMKgIMKgIMKgIHwgwqB+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+Xn5+fg0KPiAvaG9tZS9zcC9Eb2N1bWVudHMvZ251cmFkaW8vYnVpbGQvZ3It
dWhkL3N3aWcvQ01ha2VGaWxlcy91aGRfc3dpZy5kaXIvdWhkX3N3aWdQWVRIT05fd3JhcC5jeHg6
IA0KPiBJbiBmdW5jdGlvbiDigJhQeU9iamVjdCogX3dyYXBfZGJvYXJkX2lmYWNlX3NwdHJfc2xl
ZXAoUHlPYmplY3QqLCBQeU9iamVjdCosIFB5T2JqZWN0KinigJk6DQo+IC9ob21lL3NwL0RvY3Vt
ZW50cy9nbnVyYWRpby9idWlsZC9nci11aGQvc3dpZy9DTWFrZUZpbGVzL3VoZF9zd2lnLmRpci91
aGRfc3dpZ1BZVEhPTl93cmFwLmN4eDozNjE1MDoyMjogDQo+IGVycm9yOiBjYW5ub3QgY29udmVy
dCDigJhjb25zdCBuYW5vc2Vjb25kc+KAmSB7YWthIOKAmGNvbnN0IHN0ZDo6Y2hyb25vOjpkdXJh
dGlvbjxsb25nIGludCwgDQo+IHN0ZDo6cmF0aW88MSwgMTAwMDAwMDAwMD4gPuKAmX0gdG8g4oCY
Y29uc3QgbmFub3NlY29uZHMm4oCZIHtha2Eg4oCYY29uc3QgDQo+IGJvb3N0OjpjaHJvbm86OmR1
cmF0aW9uPGxvbmcgaW50LCBib29zdDo6cmF0aW88MSwgMTAwMDAwMDAwMD4gPibigJl9DQo+IDM2
MTUwIHwgwqAgwqAgwqAgKCphcmcxKS0+c2xlZXAoKHN0ZDo6Y2hyb25vOjpuYW5vc2Vjb25kcyBj
b25zdCAmKSphcmcyKTsNCj4gwqAgwqAgwqAgfCDCoF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fg0KPiDCoCDCoCDCoCB8IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgfA0KPiDCoCDCoCDCoCB8IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgY29uc3Qg
bmFub3NlY29uZHMge2FrYSBjb25zdCBzdGQ6OmNocm9ubzo6ZHVyYXRpb248bG9uZyANCj4gaW50
LCBzdGQ6OnJhdGlvPDEsIDEwMDAwMDAwMDA+ID59DQo+IEluIGZpbGUgaW5jbHVkZWQgZnJvbSAv
dXNyL2xvY2FsL2luY2x1ZGUvdWhkL3VzcnAvbXVsdGlfdXNycC5ocHA6MzgsDQo+IMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgZnJvbSANCj4gL2hvbWUvc3AvRG9jdW1lbnRzL2dudXJhZGlvL2dy
LXVoZC9saWIvLi4vaW5jbHVkZS9nbnVyYWRpby91aGQvdXNycF9ibG9jay5oOjI4LA0KPiDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZyb20gDQo+IC9ob21lL3NwL0RvY3VtZW50cy9nbnVyYWRp
by9nci11aGQvbGliLy4uL2luY2x1ZGUvZ251cmFkaW8vdWhkL3VzcnBfc291cmNlLmg6MjYsDQo+
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgZnJvbSANCj4gL2hvbWUvc3AvRG9jdW1lbnRzL2du
dXJhZGlvL2J1aWxkL2dyLXVoZC9zd2lnL0NNYWtlRmlsZXMvdWhkX3N3aWcuZGlyL3VoZF9zd2ln
UFlUSE9OX3dyYXAuY3h4OjM0MTU6DQo+IC91c3IvbG9jYWwvaW5jbHVkZS91aGQvdXNycC9kYm9h
cmRfaWZhY2UuaHBwOjI4Mzo1ODogbm90ZTogaW5pdGlhbGl6aW5nIGFyZ3VtZW50IDEgb2YgDQo+
IOKAmHZpcnR1YWwgdm9pZCB1aGQ6OnVzcnA6OmRib2FyZF9pZmFjZTo6c2xlZXAoY29uc3QgbmFu
b3NlY29uZHMmKeKAmQ0KPiDCoCAyODMgfCDCoCDCoCB2aXJ0dWFsIHZvaWQgc2xlZXAoY29uc3Qg
Ym9vc3Q6OmNocm9ubzo6bmFub3NlY29uZHMmIHRpbWUpOw0KPiDCoCDCoCDCoCB8IMKgfn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fl5+fn4NCj4gWyA1MiVdIEJ1aWxkaW5nIENYWCBv
YmplY3QgDQo+IGdyLWJsb2Nrcy9saWIvQ01ha2VGaWxlcy9nbnVyYWRpby1ibG9ja3MuZGlyL3N0
cmVhbV90b190YWdnZWRfc3RyZWFtX2ltcGwuY2Mubw0KPiBtYWtlWzJdOiAqKiogW2dyLXVoZC9z
d2lnL0NNYWtlRmlsZXMvdWhkX3N3aWcuZGlyL2J1aWxkLm1ha2U6NjM6IA0KPiBnci11aGQvc3dp
Zy9DTWFrZUZpbGVzL3VoZF9zd2lnLmRpci9DTWFrZUZpbGVzL3VoZF9zd2lnLmRpci91aGRfc3dp
Z1BZVEhPTl93cmFwLmN4eC5vXSANCj4gRXJyb3IgMQ0KPiBtYWtlWzFdOiAqKiogW0NNYWtlRmls
ZXMvTWFrZWZpbGUyOjExMTA5OiBnci11aGQvc3dpZy9DTWFrZUZpbGVzL3VoZF9zd2lnLmRpci9h
bGxdIEVycm9yIDINCj4gbWFrZVsxXTogKioqIFdhaXRpbmcgZm9yIHVuZmluaXNoZWQgam9icy4u
Li4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20N
Cj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3Rz
LmV0dHVzLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0
dXMuY29tCg==
